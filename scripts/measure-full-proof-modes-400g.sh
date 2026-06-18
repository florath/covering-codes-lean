#!/usr/bin/env bash
# Measure the configured proof-mode targets, including van Laarhoven, with a
# 400 GiB Lean memory cap and a 4 hour timeout per file/mode run.
set -euo pipefail

scripts/measure-proof-modes.py \
  --mode both \
  --timeout 14400 \
  --lean-memory-mb 409600 \
  --allow-van-laarhoven-kernel \
  --include-default-targets \
  --output-dir build/proof-mode-measurements/full-with-van-laarhoven-400g \
  vanLaarhovenK361,3,6,1,CoveringCodes/Database/Sources/VanLaarhoven1989/K_3_6_1.lean \
  vanLaarhovenK371,3,7,1,CoveringCodes/Database/Sources/VanLaarhoven1989/K_3_7_1.lean \
  vanLaarhovenK381,3,8,1,CoveringCodes/Database/Sources/VanLaarhoven1989/K_3_8_1.lean
