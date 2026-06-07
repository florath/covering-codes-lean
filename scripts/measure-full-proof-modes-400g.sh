#!/usr/bin/env bash
# Measure the configured proof-mode targets, including van Laarhoven, with a
# 400 GiB Lean memory cap and a 4 hour timeout per file/mode run.
set -euo pipefail

scripts/measure-proof-modes.py \
  --mode both \
  --timeout 14400 \
  --lean-memory-mb 409600 \
  --allow-van-laarhoven-kernel \
  --output-dir build/proof-mode-measurements/full-with-van-laarhoven-400g \
  smallExplicitUpper,,,,CoveringCodes/Database/Sources/SmallExplicitUpper.lean \
  smallLowerBounds,,,,CoveringCodes/Database/Sources/SmallLowerBounds.lean \
  vanLaarhoven,3,6-8,1,CoveringCodes/Database/Sources/VanLaarhoven1989.lean
