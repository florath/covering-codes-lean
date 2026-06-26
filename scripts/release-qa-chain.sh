#!/usr/bin/env bash
# Full release QA chain with per-step logs and resume support.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${root}"

usage() {
  cat <<'EOF'
Usage: scripts/release-qa-chain.sh [OPTIONS]

Runs a clean native build, clean kernel build, smoke tests, and release
correctness checks.  Each step writes its own log under
build/release-qa-runs/RUN_ID and creates a done marker only after success.

Options:
  --resume DIR             Reuse a previous run directory and skip completed steps.
  --from STEP              Start or restart from STEP, even if earlier steps are done.
  --phase PHASE            Run all, native, or kernel steps. Default: all.
  --external-certificate-storage-limit SIZE
                           Pass --storage-limit to external certificate checks.
                           Defaults to EXTERNAL_CERTIFICATE_STORAGE_LIMIT.
  --list-steps             Print step names and exit.
  -h, --help               Show this help.

Resume example:
  scripts/release-qa-chain.sh --resume build/release-qa-runs/20260615T120000Z

Restart from a specific step:
  scripts/release-qa-chain.sh --resume build/release-qa-runs/20260615T120000Z \
    --from kernel_build_covering_codes
EOF
}

all_steps=(
  log_state
  check_source_policy
  clean_native
  native_external_certificates
  native_build_table_gen
  native_regenerate_table
  native_check_generated
  native_dump_reference_data
  native_check_reference_data
  native_build_covering_codes
  native_build_library_tests
  native_smoke_tests
  clean_kernel
  kernel_external_certificates
  kernel_build_table_gen
  kernel_build_covering_codes
  kernel_build_library_tests
  kernel_smoke_tests
)

native_steps=(
  log_state
  check_source_policy
  clean_native
  native_external_certificates
  native_build_table_gen
  native_regenerate_table
  native_check_generated
  native_dump_reference_data
  native_check_reference_data
  native_build_covering_codes
  native_build_library_tests
  native_smoke_tests
)

kernel_steps=(
  log_state
  check_source_policy
  clean_kernel
  kernel_external_certificates
  kernel_build_table_gen
  kernel_build_covering_codes
  kernel_build_library_tests
  kernel_smoke_tests
)

steps=("${all_steps[@]}")

describe_step() {
  case "$1" in
    log_state) echo "Record repository, toolchain, and machine state" ;;
    check_source_policy) echo "Check Lean sources for sorry/admit/axiom/unsafe" ;;
    clean_native) echo "lake clean before native build" ;;
    native_external_certificates) echo "Build external certificate-backed modules in native proof mode" ;;
    native_build_table_gen) echo "Build table_gen in native proof mode" ;;
    native_regenerate_table) echo "Regenerate the precomputed table in native proof mode" ;;
    native_check_generated) echo "Check generated table diff and metadata" ;;
    native_dump_reference_data) echo "Regenerate the Lean reference-data CSV in native proof mode" ;;
    native_check_reference_data) echo "Check Lean reference-data diff and BibTeX keys" ;;
    native_build_covering_codes) echo "Build covering_codes in native proof mode" ;;
    native_build_library_tests) echo "Build library, examples, and test modules in native proof mode" ;;
    native_smoke_tests) echo "Run native smoke tests" ;;
    clean_kernel) echo "lake clean before kernel build" ;;
    kernel_external_certificates) echo "Build external certificate-backed modules in kernel proof mode" ;;
    kernel_build_table_gen) echo "Build table_gen in kernel proof mode" ;;
    kernel_build_covering_codes) echo "Build covering_codes in kernel proof mode" ;;
    kernel_build_library_tests) echo "Build library, examples, and test modules in kernel proof mode" ;;
    kernel_smoke_tests) echo "Run kernel smoke tests" ;;
    *) echo "" ;;
  esac
}

list_steps() {
  for step in "${steps[@]}"; do
    printf '%-34s %s\n' "${step}" "$(describe_step "${step}")"
  done
}

valid_step() {
  local wanted="$1"
  local step
  for step in "${steps[@]}"; do
    [[ "${step}" == "${wanted}" ]] && return 0
  done
  return 1
}

resume_dir=""
from_step=""
phase="all"
list_steps_requested=0
external_certificate_storage_limit="${EXTERNAL_CERTIFICATE_STORAGE_LIMIT:-}"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --resume)
      [[ $# -ge 2 ]] || { echo "missing value for --resume" >&2; exit 2; }
      resume_dir="$2"
      shift 2
      ;;
    --from)
      [[ $# -ge 2 ]] || { echo "missing value for --from" >&2; exit 2; }
      from_step="$2"
      shift 2
      ;;
    --phase)
      [[ $# -ge 2 ]] || { echo "missing value for --phase" >&2; exit 2; }
      phase="$2"
      shift 2
      ;;
    --external-certificate-storage-limit)
      [[ $# -ge 2 ]] || { echo "missing value for --external-certificate-storage-limit" >&2; exit 2; }
      external_certificate_storage_limit="$2"
      shift 2
      ;;
    --list-steps)
      list_steps_requested=1
      shift
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

case "${phase}" in
  all) steps=("${all_steps[@]}") ;;
  native) steps=("${native_steps[@]}") ;;
  kernel) steps=("${kernel_steps[@]}") ;;
  *)
    echo "unknown phase for --phase: ${phase}" >&2
    echo "Known phases: all, native, kernel" >&2
    exit 2
    ;;
esac

if [[ "${list_steps_requested}" -eq 1 ]]; then
  list_steps
  exit 0
fi

if [[ -n "${from_step}" ]] && ! valid_step "${from_step}"; then
  echo "unknown step for --from: ${from_step}" >&2
  echo "Known steps:" >&2
  list_steps >&2
  exit 2
fi

if [[ -n "${resume_dir}" ]]; then
  run_dir="${resume_dir}"
else
  run_dir="build/release-qa-runs/$(date -u +%Y%m%dT%H%M%SZ)"
fi

logs_dir="${run_dir}/logs"
done_dir="${run_dir}/done"
summary="${run_dir}/summary.tsv"
mkdir -p "${logs_dir}" "${done_dir}"

write_state_snapshot() {
  local path="$1"
  {
    echo "UTC: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
    echo "PWD: ${PWD}"
    echo
    echo "== Git =="
    git status --short --branch || true
    echo
    echo "HEAD: $(git rev-parse HEAD 2>/dev/null || true)"
    echo "Branch: $(git branch --show-current 2>/dev/null || true)"
    echo
    echo "-- staged name-status --"
    git diff --cached --name-status || true
    echo
    echo "-- staged stat --"
    git diff --cached --stat || true
    echo
    echo "-- unstaged name-status --"
    git diff --name-status || true
    echo
    echo "-- unstaged stat --"
    git diff --stat || true
    echo
    echo "== Toolchain =="
    [[ -f lean-toolchain ]] && cat lean-toolchain
    lean --version || true
    lake --version || true
    echo
    echo "== Machine =="
    uname -a || true
    command -v nproc >/dev/null 2>&1 && nproc || true
    command -v free >/dev/null 2>&1 && free -h || true
  } > "${path}"
}

state_ts="$(date -u +%Y%m%dT%H%M%SZ)"
write_state_snapshot "${run_dir}/state-${state_ts}.log"
cp "${run_dir}/state-${state_ts}.log" "${run_dir}/state.latest.log"

if [[ ! -f "${summary}" ]]; then
  printf 'utc\tstep\tstatus\tseconds\tlog\ttime_log\n' > "${summary}"
fi

quote_command() {
  printf '%q ' "$@"
}

run_step() {
  local step="$1"
  local description="$2"
  shift 2

  local selected=0
  local phase_step
  for phase_step in "${steps[@]}"; do
    [[ "${phase_step}" == "${step}" ]] && selected=1
  done
  if [[ "${selected}" -eq 0 ]]; then
    return 0
  fi

  if [[ -z "${from_step}" && -f "${done_dir}/${step}" ]]; then
    echo "==> SKIP ${step}: already completed"
    return 0
  fi

  if [[ -n "${from_step}" ]]; then
    local found=0
    local candidate
    for candidate in "${steps[@]}"; do
      [[ "${candidate}" == "${from_step}" ]] && found=1
      [[ "${candidate}" == "${step}" ]] && break
    done
    if [[ "${found}" -eq 0 ]]; then
      echo "==> SKIP ${step}: before --from ${from_step}"
      return 0
    fi
  fi

  local log="${logs_dir}/${step}.log"
  local time_log="${logs_dir}/${step}.time.log"
  local started ended status elapsed
  started="$(date +%s)"

  echo "==> ${step}: ${description}"
  {
    echo "UTC: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
    echo "PWD: ${PWD}"
    echo "STEP: ${step}"
    echo "DESC: ${description}"
    printf 'COMMAND: '
    quote_command "$@"
    echo
    echo
  } > "${log}"

  set +e
  if [[ -x /usr/bin/time ]]; then
    /usr/bin/time -v -o "${time_log}" "$@" >> "${log}" 2>&1
  else
    "$@" >> "${log}" 2>&1
  fi
  status=$?
  set -e

  ended="$(date +%s)"
  elapsed=$((ended - started))

  if [[ "${status}" -eq 0 ]]; then
    date -u +%Y-%m-%dT%H:%M:%SZ > "${done_dir}/${step}"
    rm -f "${run_dir}/LAST_FAILED"
    printf '%s\t%s\tOK\t%s\t%s\t%s\n' \
      "$(date -u +%Y-%m-%dT%H:%M:%SZ)" "${step}" "${elapsed}" "${log}" "${time_log}" >> "${summary}"
    echo "    OK (${elapsed}s), log: ${log}"
  else
    echo "${step}" > "${run_dir}/LAST_FAILED"
    printf '%s\t%s\tFAIL:%s\t%s\t%s\t%s\n' \
      "$(date -u +%Y-%m-%dT%H:%M:%SZ)" "${step}" "${status}" "${elapsed}" "${log}" "${time_log}" >> "${summary}"
    echo "    FAIL (${elapsed}s, exit ${status}), log: ${log}" >&2
    echo "    Resume with: scripts/release-qa-chain.sh --resume ${run_dir}" >&2
    exit "${status}"
  fi
}

echo "Run directory: ${run_dir}"
echo "Phase: ${phase}"
echo "State snapshot: ${run_dir}/state.latest.log"

run_step log_state "$(describe_step log_state)" \
  bash -c 'cat "$1"' _ "${run_dir}/state.latest.log"

run_step check_source_policy "$(describe_step check_source_policy)" \
  bash -c '
    set -euo pipefail
    pattern="sorry|admit|axiom|unsafe"
    if command -v rg >/dev/null 2>&1; then
      matches="$(rg "${pattern}" CoveringCodes.lean CoveringCodes Main.lean Tools -g "*.lean" || true)"
    else
      matches="$(
        {
          find CoveringCodes Tools -name "*.lean" -exec grep -HnE "${pattern}" {} +
          grep -HnE "${pattern}" CoveringCodes.lean
          grep -HnE "${pattern}" Main.lean
        } || true
      )"
    fi
    if [[ -n "${matches}" ]]; then
      printf "%s\n" "${matches}"
      echo "FAIL: found sorry/admit/axiom/unsafe in source files" >&2
      exit 1
    fi
    echo "source policy OK"
  '

external_certificate_native_args=(check --all --proof-mode native --clean-extracted)
external_certificate_kernel_args=(check --all --proof-mode kernel --clean-extracted)
if [[ -n "${external_certificate_storage_limit}" ]]; then
  external_certificate_native_args+=(--storage-limit "${external_certificate_storage_limit}")
  external_certificate_kernel_args+=(--storage-limit "${external_certificate_storage_limit}")
fi

run_step clean_native "$(describe_step clean_native)" lake clean
run_step native_external_certificates "$(describe_step native_external_certificates)" \
  python3 -B scripts/external-certificates.py "${external_certificate_native_args[@]}"
run_step native_build_table_gen "$(describe_step native_build_table_gen)" \
  scripts/build-proof-mode.sh native table_gen
run_step native_regenerate_table "$(describe_step native_regenerate_table)" \
  lake -KproofMode=native exe table_gen
run_step native_check_generated "$(describe_step native_check_generated)" \
  bash -c '
    set -euo pipefail
    git diff --exit-code -- \
      CoveringCodes/Database/GeneratedTable.lean \
      CoveringCodes/Database/GeneratedTable
    scripts/check-generated-metadata.sh
  '
run_step native_dump_reference_data "$(describe_step native_dump_reference_data)" \
  bash -c '
    set -euo pipefail
    scripts/build-proof-mode.sh native reference_data_dump
    lake -KproofMode=native env lean --run Tools/ReferenceDataDump/Main.lean
  '
run_step native_check_reference_data "$(describe_step native_check_reference_data)" \
  bash -c '
    set -euo pipefail
    git diff --exit-code -- reference-data/lean/non_mixed_covering_codes.csv
    python3 -B reference-data/scripts/check_reference_keys.py
  '
run_step native_build_covering_codes "$(describe_step native_build_covering_codes)" \
  scripts/build-proof-mode.sh native covering_codes
run_step native_build_library_tests "$(describe_step native_build_library_tests)" \
  scripts/build-proof-mode.sh native \
    CoveringCodes \
    CoveringCodes.Database.Examples \
    CoveringCodes.Database.GeneratedTableSmokeTest \
    CoveringCodes.Database.ExactSmallCaseTest
run_step native_smoke_tests "$(describe_step native_smoke_tests)" \
  bash -c '
    set -euo pipefail
    check_covering_codes_result() {
      local mode="$1"
      local q="$2"
      local n="$3"
      local r="$4"
      local expected_range="$5"
      local expected_source="$6"
      local output
      output="$(lake "-KproofMode=${mode}" env lean --run Main.lean "${q}" "${n}" "${r}")"
      printf "%s\n" "${output}"
      grep -Fq "K_${q}(${n},${r})" <<< "${output}"
      grep -Fq "${expected_range}" <<< "${output}"
      grep -Fq "${expected_source}" <<< "${output}"
    }

    lake -KproofMode=native env lean --run Main.lean 8 4 2
    lake -KproofMode=native env lean --run Main.lean 3 8 3
    lake -KproofMode=native env lean --run Main.lean 2 7 1
    check_covering_codes_result native 3 6 1 "[57, 73]" "lit_laarhoven_aarts_van_lint_wille_1989"
    check_covering_codes_result native 3 7 1 "[146, 186]" "lit_laarhoven_aarts_van_lint_wille_1989"
    check_covering_codes_result native 3 8 1 "[386, 486]" "lit_laarhoven_aarts_van_lint_wille_1989"
  '

run_step clean_kernel "$(describe_step clean_kernel)" lake clean
run_step kernel_external_certificates "$(describe_step kernel_external_certificates)" \
  python3 -B scripts/external-certificates.py "${external_certificate_kernel_args[@]}"
run_step kernel_build_table_gen "$(describe_step kernel_build_table_gen)" \
  scripts/build-proof-mode.sh kernel table_gen
run_step kernel_build_covering_codes "$(describe_step kernel_build_covering_codes)" \
  scripts/build-proof-mode.sh kernel covering_codes
run_step kernel_build_library_tests "$(describe_step kernel_build_library_tests)" \
  scripts/build-proof-mode.sh kernel \
    CoveringCodes \
    CoveringCodes.Database.Examples \
    CoveringCodes.Database.GeneratedTableSmokeTest \
    CoveringCodes.Database.ExactSmallCaseTest
run_step kernel_smoke_tests "$(describe_step kernel_smoke_tests)" \
  bash -c '
    set -euo pipefail
    check_covering_codes_result() {
      local mode="$1"
      local q="$2"
      local n="$3"
      local r="$4"
      local expected_range="$5"
      local expected_source="$6"
      local output
      output="$(lake "-KproofMode=${mode}" env lean --run Main.lean "${q}" "${n}" "${r}")"
      printf "%s\n" "${output}"
      grep -Fq "K_${q}(${n},${r})" <<< "${output}"
      grep -Fq "${expected_range}" <<< "${output}"
      grep -Fq "${expected_source}" <<< "${output}"
    }

    lake -KproofMode=kernel env lean --run Main.lean 8 4 2
    lake -KproofMode=kernel env lean --run Main.lean 3 8 3
    lake -KproofMode=kernel env lean --run Main.lean 2 7 1
    check_covering_codes_result kernel 3 6 1 "[57, 73]" "lit_laarhoven_aarts_van_lint_wille_1989"
    check_covering_codes_result kernel 3 7 1 "[146, 186]" "lit_laarhoven_aarts_van_lint_wille_1989"
    check_covering_codes_result kernel 3 8 1 "[386, 486]" "lit_laarhoven_aarts_van_lint_wille_1989"
  '

if [[ "${phase}" == "all" ]]; then
  echo "==> All release QA steps completed"
else
  echo "==> Release QA ${phase} phase completed"
fi
echo "Run directory: ${run_dir}"
echo "Summary: ${summary}"
