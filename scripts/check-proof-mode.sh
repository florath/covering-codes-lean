#!/usr/bin/env bash
# Check selected Lean proof files in kernel or native proof mode.
set -euo pipefail

usage() {
  cat <<'EOF'
Usage: scripts/check-proof-mode.sh MODE [FILES...]

MODE:
  kernel   Run covering_decide with kernel decide.
  native   Run covering_decide with native_decide.

If FILES are omitted, checks the current heavy proof-source modules.

Set LEAN_MEMORY_MB to pass Lean's `-M` memory cap, for example:
  LEAN_MEMORY_MB=64000 scripts/check-proof-mode.sh kernel FILE.lean

The van Laarhoven kernel certificates have been reported to need more than
350 GB RAM and more than 75 minutes.  To run them intentionally, use an
external timeout, set LEAN_MEMORY_MB, and set:
  ALLOW_VAN_LAARHOVEN_KERNEL=1
EOF
}

if [[ $# -lt 1 ]]; then
  usage >&2
  exit 2
fi

mode="$1"
shift

case "${mode}" in
  kernel) use_native=false ;;
  native) use_native=true ;;
  -h|--help) usage; exit 0 ;;
  *)
    echo "Unknown proof mode: ${mode}" >&2
    usage >&2
    exit 2
    ;;
esac

if [[ $# -eq 0 ]]; then
  set -- \
    CoveringCodes/Database/Sources/SmallExplicitUpper.lean \
    CoveringCodes/Database/Sources/SmallLowerBounds.lean
fi

if [[ "${mode}" == "kernel" ]]; then
  for file in "$@"; do
    if [[ "${file}" == *"VanLaarhoven1989.lean" && "${ALLOW_VAN_LAARHOVEN_KERNEL:-}" != "1" ]]; then
      echo "Refusing van Laarhoven kernel check: reported >350 GB RAM and >75 minutes." >&2
      echo "Use native mode, or set ALLOW_VAN_LAARHOVEN_KERNEL=1 with LEAN_MEMORY_MB and an external timeout." >&2
      exit 3
    fi
  done
fi

for file in "$@"; do
  echo "==> ${mode}: ${file}"
  lean_args=()
  if [[ -n "${LEAN_MEMORY_MB:-}" ]]; then
    lean_args+=("-M" "${LEAN_MEMORY_MB}")
  fi
  lake lean "${file}" -- "${lean_args[@]}" \
    -Dweak.coveringCodes.useNativeDecide="${use_native}"
done

echo "==> ${mode}: all selected files passed"
