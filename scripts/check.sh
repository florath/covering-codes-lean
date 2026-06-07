#!/usr/bin/env bash
# Heavy release kernel check: no sorry/admit, build, smoke-test.
# Run this before submitting changes that should be checked in kernel mode.
# Does NOT re-run table_gen (use scripts/check-generated.sh for that).
set -euo pipefail

echo "==> Checking for sorry/admit/axiom/unsafe..."
pattern="sorry|admit|axiom|unsafe"
if command -v rg >/dev/null 2>&1; then
  matches="$(rg "${pattern}" CoveringCodes.lean CoveringCodes Main.lean Tools -g '*.lean' || true)"
else
  matches="$(
    {
      find CoveringCodes Tools -name '*.lean' -exec grep -HnE "${pattern}" {} +
      grep -HnE "${pattern}" CoveringCodes.lean
      grep -HnE "${pattern}" Main.lean
    } || true
  )"
fi

if [[ -n "${matches}" ]]; then
  printf '%s\n' "${matches}"
  echo "FAIL: found sorry/admit/axiom/unsafe in source files" >&2
  exit 1
fi
echo "    OK"

echo "==> Building table_gen and core library..."
scripts/build-proof-mode.sh kernel table_gen

echo "==> Building covering_codes..."
scripts/build-proof-mode.sh kernel covering_codes

echo "==> Building library and verification modules..."
scripts/build-proof-mode.sh kernel \
  CoveringCodes \
  CoveringCodes.Database.Examples \
  CoveringCodes.Database.GeneratedTableSmokeTest \
  CoveringCodes.Database.ExactSmallCaseTest

echo "==> Smoke tests..."
lake -KproofMode=kernel exe covering_codes 3 8 3
lake -KproofMode=kernel exe covering_codes 2 7 1

echo "==> All checks passed."
