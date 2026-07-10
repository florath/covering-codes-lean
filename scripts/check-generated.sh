#!/usr/bin/env bash
# Full native-mode regeneration check.
# Run this after any change to:
#   - Trace.lean, Certificate.lean, BoundTable.lean, Tools/TableGen/Main.lean
#   - primitive or derived sources under Sources/
# This is the focused generated-table regeneration check used by the full QA chain.
set -euo pipefail

echo "==> Building external certificate-backed modules..."
# Keep extracted files: the K16 production import graph still has `include_str`
# smoke modules outside the external-certificate target manifest.
external_certificate_args=(--all --proof-mode native)
if [[ -n "${EXTERNAL_CERTIFICATE_STORAGE_LIMIT:-}" ]]; then
  external_certificate_args+=(--storage-limit "${EXTERNAL_CERTIFICATE_STORAGE_LIMIT}" --clean-extracted)
fi
python3 -B scripts/external-certificates.py check "${external_certificate_args[@]}"

if [[ -n "${EXTERNAL_CERTIFICATE_STORAGE_LIMIT:-}" ]]; then
  echo "==> Re-materializing external certificate data..."
  python3 -B scripts/external-certificates.py materialize --all
fi

echo "==> Regenerating precomputed table..."
scripts/build-proof-mode.sh native Tools.TableGen.Main
lake -KproofMode=native env lean --run Tools/TableGen/Main.lean

echo "==> Checking generated table is committed/up to date..."
git diff --exit-code -- \
  CoveringCodes/Database/GeneratedTable.lean \
  CoveringCodes/Database/GeneratedTable

echo "==> Checking generated table metadata..."
scripts/check-generated-metadata.sh

echo "==> Building covering_codes..."
scripts/build-proof-mode.sh native CoveringCodes.Database.GeneratedAPI covering_codes

echo "==> Smoke tests..."
lake -KproofMode=native env lean --run Main.lean 3 8 3
lake -KproofMode=native env lean --run Main.lean 2 7 1

echo "==> All regeneration checks passed."
