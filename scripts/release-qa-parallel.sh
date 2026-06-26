#!/usr/bin/env bash
# Run native and kernel release QA phases concurrently in isolated worktrees.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${root}"

usage() {
  cat <<'EOF'
Usage: scripts/release-qa-parallel.sh [OPTIONS]

Runs the native and kernel release QA phases in parallel git worktrees created
from the current checkout snapshot.  This avoids collisions between lake clean,
Lake reconfiguration, generated files, and build outputs.

Options:
  --run-dir DIR            Directory for logs, patches, and temporary worktrees.
                           Default: build/release-qa-parallel-runs/TIMESTAMP
  --keep-worktrees         Keep temporary worktrees after a successful run.
                           Failed runs always keep worktrees for inspection.
  --no-copy-lake-packages  Do not copy .lake/packages into each worktree.
  --external-certificate-storage-limit SIZE
                           Pass --storage-limit to external certificate checks.
                           Defaults to EXTERNAL_CERTIFICATE_STORAGE_LIMIT.
  -h, --help               Show this help.

Set LEAN_NUM_THREADS in the environment before running this script when native
and kernel builds should use fewer workers per phase.
EOF
}

run_dir=""
keep_worktrees=0
copy_lake_packages=1
external_certificate_storage_limit="${EXTERNAL_CERTIFICATE_STORAGE_LIMIT:-}"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --run-dir)
      [[ $# -ge 2 ]] || { echo "missing value for --run-dir" >&2; exit 2; }
      run_dir="$2"
      shift 2
      ;;
    --keep-worktrees)
      keep_worktrees=1
      shift
      ;;
    --no-copy-lake-packages)
      copy_lake_packages=0
      shift
      ;;
    --external-certificate-storage-limit)
      [[ $# -ge 2 ]] || { echo "missing value for --external-certificate-storage-limit" >&2; exit 2; }
      external_certificate_storage_limit="$2"
      shift 2
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "unknown option: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

if [[ -z "${run_dir}" ]]; then
  run_dir="build/release-qa-parallel-runs/$(date -u +%Y%m%dT%H%M%SZ)"
fi

mkdir -p "${run_dir}"
run_dir="$(cd "${run_dir}" && pwd)"
logs_dir="${run_dir}/logs"
patch_dir="${run_dir}/patches"
worktrees_dir="${run_dir}/worktrees"
mkdir -p "${logs_dir}" "${patch_dir}" "${worktrees_dir}"

if [[ -e "${worktrees_dir}/native" || -e "${worktrees_dir}/kernel" ]]; then
  echo "worktree paths already exist under ${worktrees_dir}" >&2
  echo "choose a fresh --run-dir or remove the old run directory" >&2
  exit 2
fi

head_sha="$(git rev-parse HEAD)"
staged_patch="${patch_dir}/staged.patch"
unstaged_patch="${patch_dir}/unstaged.patch"
untracked_list="${patch_dir}/untracked.zlist"

git diff --binary --cached > "${staged_patch}"
git diff --binary > "${unstaged_patch}"
git ls-files --others --exclude-standard -z > "${untracked_list}"

{
  echo "UTC: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo "ROOT: ${root}"
  echo "HEAD: ${head_sha}"
  echo "RUN_DIR: ${run_dir}"
  echo
  echo "== Source status =="
  git status --short --branch
  echo
  echo "== Parallelism =="
  echo "LEAN_NUM_THREADS=${LEAN_NUM_THREADS:-}"
  command -v nproc >/dev/null 2>&1 && echo "nproc: $(nproc)"
  command -v free >/dev/null 2>&1 && free -h
} > "${run_dir}/state.log"

copy_if_present() {
  local source="$1"
  local target="$2"
  if [[ -e "${source}" ]]; then
    mkdir -p "$(dirname "${target}")"
    cp -a "${source}" "${target}"
  fi
}

apply_snapshot() {
  local worktree="$1"
  local phase="$2"
  local log="${logs_dir}/${phase}.snapshot.log"

  {
    echo "UTC: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
    echo "WORKTREE: ${worktree}"
    echo "HEAD: ${head_sha}"
    echo

    if [[ -s "${staged_patch}" ]]; then
      echo "+ git apply staged.patch"
      git -C "${worktree}" apply "${staged_patch}"
    fi
    if [[ -s "${unstaged_patch}" ]]; then
      echo "+ git apply unstaged.patch"
      git -C "${worktree}" apply "${unstaged_patch}"
    fi

    echo "+ copy untracked files"
    while IFS= read -r -d '' path; do
      [[ -e "${root}/${path}" ]] || continue
      mkdir -p "${worktree}/$(dirname "${path}")"
      cp -a "${root}/${path}" "${worktree}/${path}"
      printf '  %s\n' "${path}"
    done < "${untracked_list}"

    if [[ "${copy_lake_packages}" -eq 1 && -d "${root}/.lake/packages" ]]; then
      echo "+ copy .lake/packages"
      mkdir -p "${worktree}/.lake"
      cp -a "${root}/.lake/packages" "${worktree}/.lake/packages"
    fi

    if [[ -d "${root}/data/external-certificates/cache" ]]; then
      echo "+ copy external certificate cache"
      copy_if_present \
        "${root}/data/external-certificates/cache" \
        "${worktree}/data/external-certificates/cache"
    fi

    echo
    echo "== Worktree status =="
    git -C "${worktree}" status --short --branch
  } > "${log}" 2>&1
}

create_worktree() {
  local phase="$1"
  local worktree="${worktrees_dir}/${phase}"
  local log="${logs_dir}/${phase}.worktree.log"

  git worktree add --detach "${worktree}" "${head_sha}" > "${log}" 2>&1
  apply_snapshot "${worktree}" "${phase}"
}

run_phase() {
  local phase="$1"
  local worktree="${worktrees_dir}/${phase}"
  local phase_run_dir="${run_dir}/${phase}"
  local log="${logs_dir}/${phase}.driver.log"
  local cmd=(scripts/release-qa-chain.sh --phase "${phase}" --resume "${phase_run_dir}")

  if [[ -n "${external_certificate_storage_limit}" ]]; then
    cmd+=(--external-certificate-storage-limit "${external_certificate_storage_limit}")
  fi

  {
    echo "UTC: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
    echo "PHASE: ${phase}"
    echo "WORKTREE: ${worktree}"
    echo "RUN_DIR: ${phase_run_dir}"
    printf 'COMMAND: '
    printf '%q ' "${cmd[@]}"
    echo
    echo
    cd "${worktree}"
    "${cmd[@]}"
  } > "${log}" 2>&1
}

cleanup_successful_worktrees() {
  local phase
  for phase in native kernel; do
    git worktree remove --force "${worktrees_dir}/${phase}" >> "${logs_dir}/cleanup.log" 2>&1 || true
  done
}

trap 'echo "Interrupted; worktrees kept under '"${worktrees_dir}"'" >&2; exit 130' INT TERM

echo "Run directory: ${run_dir}"
echo "Creating native worktree..."
create_worktree native
echo "Creating kernel worktree..."
create_worktree kernel

echo "Starting native and kernel phases..."
run_phase native &
native_pid=$!
run_phase kernel &
kernel_pid=$!

native_status=0
kernel_status=0
if wait "${native_pid}"; then
  native_status=0
else
  native_status=$?
fi
if wait "${kernel_pid}"; then
  kernel_status=0
else
  kernel_status=$?
fi

{
  printf 'phase\tstatus\tlog\trun_dir\tworktree\n'
  printf 'native\t%s\t%s\t%s\t%s\n' \
    "$([[ "${native_status}" -eq 0 ]] && echo OK || echo "FAIL:${native_status}")" \
    "${logs_dir}/native.driver.log" \
    "${run_dir}/native" \
    "${worktrees_dir}/native"
  printf 'kernel\t%s\t%s\t%s\t%s\n' \
    "$([[ "${kernel_status}" -eq 0 ]] && echo OK || echo "FAIL:${kernel_status}")" \
    "${logs_dir}/kernel.driver.log" \
    "${run_dir}/kernel" \
    "${worktrees_dir}/kernel"
} > "${run_dir}/summary.tsv"

if [[ "${native_status}" -eq 0 && "${kernel_status}" -eq 0 ]]; then
  echo "==> Parallel release QA completed"
  echo "Summary: ${run_dir}/summary.tsv"
  if [[ "${keep_worktrees}" -eq 0 ]]; then
    cleanup_successful_worktrees
    echo "Temporary worktrees removed. Logs kept under ${run_dir}."
  else
    echo "Worktrees kept under ${worktrees_dir}."
  fi
else
  echo "==> Parallel release QA failed" >&2
  echo "Summary: ${run_dir}/summary.tsv" >&2
  echo "Native log: ${logs_dir}/native.driver.log" >&2
  echo "Kernel log: ${logs_dir}/kernel.driver.log" >&2
  echo "Worktrees kept under ${worktrees_dir}" >&2
  exit 1
fi
