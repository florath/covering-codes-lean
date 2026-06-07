#!/usr/bin/env bash
# Full native-mode regeneration check.
# Run this after any change to:
#   - Trace.lean, Certificate.lean, BoundTable.lean, Tools/TableGen/Main.lean
#   - primitive or derived sources under Sources/
# This is slower than scripts/check.sh because it re-runs table_gen.
set -euo pipefail

echo "==> Regenerating precomputed table..."
scripts/build-proof-mode.sh native table_gen
lake -KproofMode=native exe table_gen

echo "==> Checking generated table is committed/up to date..."
git diff --exit-code -- \
  CoveringCodes/Database/GeneratedTable.lean \
  CoveringCodes/Database/GeneratedTable

echo "==> Checking generated table metadata..."
scripts/check-generated-metadata.sh

echo "==> Building covering_codes..."
scripts/build-proof-mode.sh native covering_codes

echo "==> Smoke tests..."
lake -KproofMode=native exe covering_codes 3 8 3
lake -KproofMode=native exe covering_codes 2 7 1

echo "==> All regeneration checks passed."
