#!/usr/bin/env bash
# Standalone proof-mode compile/RSS measurement run formerly embedded in release QA.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${root}"

scripts/measure-proof-modes.py \
  --mode both \
  --timeout 14400 \
  "k8_4_2,8,4,2,CoveringCodes/Database/Sources/OctonaryFourTwo.lean"
