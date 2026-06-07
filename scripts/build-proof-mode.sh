#!/usr/bin/env bash
# Run `lake build` in the selected covering_decide proof mode.
set -euo pipefail

usage() {
  cat <<'EOF'
Usage: scripts/build-proof-mode.sh MODE [TARGETS...]

MODE:
  kernel   Build with ordinary/kernel decide mode.
  native   Build with native_decide for covering_decide proof leaves.

If TARGETS are omitted, Lake builds the package default targets.
EOF
}

if [[ $# -lt 1 ]]; then
  usage >&2
  exit 2
fi

mode="$1"
shift

case "${mode}" in
  kernel) proof_mode=kernel ;;
  native) proof_mode=native ;;
  -h|--help) usage; exit 0 ;;
  *)
    echo "Unknown proof mode: ${mode}" >&2
    usage >&2
    exit 2
    ;;
esac

exec lake "-KproofMode=${proof_mode}" --reconfigure build "$@"
