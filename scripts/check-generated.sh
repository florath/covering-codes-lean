#!/usr/bin/env bash
# Full native-mode regeneration check.
# Run this after any change to:
#   - Trace.lean, Certificate.lean, BoundTable.lean, Tools/TableGen/Main.lean
#   - primitive or derived sources under Sources/
# This is the focused generated-table regeneration check used by the full QA chain.
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

echo "==> Building external certificate-backed modules..."
external_certificate_args=(--all --proof-mode native --clean-extracted)
if [[ -n "${EXTERNAL_CERTIFICATE_STORAGE_LIMIT:-}" ]]; then
  external_certificate_args+=(--storage-limit "${EXTERNAL_CERTIFICATE_STORAGE_LIMIT}")
fi
python3 -B scripts/external-certificates.py check "${external_certificate_args[@]}"

echo "==> Building covering_codes..."
scripts/build-proof-mode.sh native covering_codes

echo "==> Smoke tests..."
lake -KproofMode=native env lean --run Main.lean 3 8 3
lake -KproofMode=native env lean --run Main.lean 2 7 1

echo "==> All regeneration checks passed."
