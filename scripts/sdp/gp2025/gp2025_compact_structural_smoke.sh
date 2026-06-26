#!/usr/bin/env bash
# Smoke regression for the GP2025 compact component structural route.
#
# The script writes generated JSON and Lean sources under build/. Compiled
# oleans go into the ordinary ignored .lake build cache so they share one olean
# root with the production modules imported by the generated smoke modules.
# It is intentionally production-shaped for K2(13,1), because the production
# CompactBridge and quotient fibers are fixed to 123 quotient variables,
# 560 full-orbit variables, 6283 scalar atoms, and 28 PSD blocks.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
OUT_ROOT="${ROOT}/build/gp2025-compact-structural-smoke"
LEAN_ROOT="${OUT_ROOT}/lean"
GEN_DIR="${LEAN_ROOT}/CoveringCodes/SDP/GijswijtPolak2025/Generated/CompactStructuralSmoke"
OLEAN_ROOT="${ROOT}/.lake/build/lib/lean"
OLEAN_GEN_DIR="${OLEAN_ROOT}/CoveringCodes/SDP/GijswijtPolak2025/Generated/CompactStructuralSmoke"
EXACT_JSON="${OUT_ROOT}/exact.json"
EXPR_JSON="${OUT_ROOT}/expr.json"
SOURCE_PLAN_JSON="${OUT_ROOT}/compact_scalar_source_plan.json"
MODULE_PREFIX="CoveringCodes.SDP.GijswijtPolak2025.Generated.CompactStructuralSmoke"
NAME="binaryK2_13_1"
BRIDGE_MODULE="CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1.CompactBridge"
BUILD_CERTIFICATE=0
BUILD_COMPACT_SEMANTIC=0
BUILD_SOURCE_SEMANTIC="${GP2025_COMPACT_SMOKE_SOURCE_SEMANTIC:-0}"
LEAN_TIMEOUT_SECONDS="${GP2025_COMPACT_SMOKE_LEAN_TIMEOUT:-120}"
LEAN_THREADS="${LEAN_NUM_THREADS:-1}"

usage() {
  cat <<'USAGE'
usage: scripts/sdp/gp2025/gp2025_compact_structural_smoke.sh [--compact-semantic] [--source-semantic] [--certificate]

Generates a production-shaped zero K2(13,1) fixture under
build/gp2025-compact-structural-smoke, checks the compact component structural
boundary, and compiles:
  CoveringCodes.SDP.GijswijtPolak2025.Generated.CompactStructuralSmoke.FullAggregateSemantic
  CoveringCodes.SDP.GijswijtPolak2025.Generated.CompactStructuralSmoke.CompactComponentTransport

Use --compact-semantic to also compile:
  CoveringCodes.SDP.GijswijtPolak2025.Generated.CompactStructuralSmoke.CompactSemantic

The compact semantic compile is skipped by default because this mixed-prefix
smoke fixture would compile native_decide coefficient leaves sequentially. The
real production `CompactSemantic` and root modules should still be built with
`lake build`, which uses the normal parallel build scheduler.

Use --source-semantic to generate the experimental compact scalar source
semantic route with derived source chunk data and compile the smallest
structural source chunk target under:
  LEAN_NUM_THREADS=${LEAN_NUM_THREADS:-1} timeout GP2025_COMPACT_SMOKE_LEAN_TIMEOUT
The timeout defaults to 120 seconds. This mixed-prefix zero fixture does not
compile the full source range bridge because it imports the production K2
CompactBridge, whose atom/multiplier data do not match the synthetic scalar
constraints.

Use --certificate after the compact objective-equality route is wired; it also
rejects `native_decide` in:
  CoveringCodes.SDP.GijswijtPolak2025.Generated.CompactStructuralSmoke.CompactCertificate

The compact certificate is not compiled in this mixed-prefix smoke fixture,
because it imports local certificate data and the production BinaryK2_13_1
CompactBridge, whose shared declaration names collide. Build the real
production-prefix CompactCertificate after this smoke check.
USAGE
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --certificate)
      BUILD_CERTIFICATE=1
      shift
      ;;
    --compact-semantic)
      BUILD_COMPACT_SEMANTIC=1
      shift
      ;;
    --source-semantic)
      BUILD_SOURCE_SEMANTIC=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "unknown argument: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

require_grep() {
  local pattern="$1"
  local file="$2"
  local description="$3"
  if ! grep -Eq -- "$pattern" "$file"; then
    echo "FAIL: missing ${description} in ${file}" >&2
    echo "pattern: ${pattern}" >&2
    exit 1
  fi
}

reject_grep() {
  local pattern="$1"
  local file="$2"
  local description="$3"
  if grep -En -- "$pattern" "$file"; then
    echo "FAIL: unexpected ${description} in ${file}" >&2
    exit 1
  fi
}

echo "==> Resetting smoke output under build/"
rm -rf "${OUT_ROOT}"
rm -rf "${OLEAN_GEN_DIR}"
mkdir -p "${GEN_DIR}"

echo "==> Checking generator syntax"
python3 -m py_compile "${ROOT}/scripts/sdp/gp2025/gp2025_gen_lean_quotient_certificate.py"

echo "==> Writing production-shaped zero fixture"
python3 - "${EXACT_JSON}" "${EXPR_JSON}" <<'PY'
import json
import sys
from pathlib import Path

exact_path = Path(sys.argv[1])
expr_path = Path(sys.argv[2])

qvars = 123
scalar_count = 6283
psd_count = 28
zero_frac = [0, 1]
zero_expr_exact = {"const": zero_frac, "coeffs": []}
zero_expr_export = {"const": "0", "coeffs": []}

exact = {
    "n": 13,
    "r": 1,
    "variable_count": qvars,
    "constraint_counts": {"scalar": scalar_count, "psd": psd_count},
    "target_L": 0,
    "raw_bound": zero_frac,
    "scalar_multipliers": [{"value": zero_frac} for _ in range(scalar_count)],
    "psd_matrices": [{"matrix": []} for _ in range(psd_count)],
    "weighted_ldl": [
        {"size": 0, "rank": 0, "diag": [], "rows": []}
        for _ in range(psd_count)
    ],
    "aggregate_dual_expression": zero_expr_exact,
    "full_aggregate_dual_expression": zero_expr_exact,
    "full_aggregate_dual_expression_components": {
        "scalar": zero_expr_exact,
        "scalar_chunks": [
            {"start": 0, "end": scalar_count, "expr": zero_expr_exact}
        ],
        "psd": [{"expr": zero_expr_exact} for _ in range(psd_count)],
    },
}

expr = {
    "objective_terms": [],
    "scalar_constraints": [
        {
            "kind": "nonnegative_variable",
            "meta": {"orbit_id": 1},
            "expr": zero_expr_export,
        }
        for _ in range(scalar_count)
    ],
    "psd_constraints": [
        {"kind": "primal_block", "meta": {"k": 0}, "matrix_expr": []}
        for _ in range(psd_count)
    ],
}

exact_path.write_text(json.dumps(exact, sort_keys=True) + "\n")
expr_path.write_text(json.dumps(expr, sort_keys=True) + "\n")
PY

echo "==> Generating compact component smoke modules"
generator_source_semantic_args=()
if [[ "${BUILD_SOURCE_SEMANTIC}" -eq 1 ]]; then
  generator_source_semantic_args+=(
    --compact-scalar-source-derived-data
    --compact-scalar-source-semantic
  )
fi
PYTHONPATH="${ROOT}/scripts${PYTHONPATH:+:${PYTHONPATH}}" \
  python3 "${ROOT}/scripts/sdp/gp2025/gp2025_gen_lean_quotient_certificate.py" \
    "${EXACT_JSON}" \
    --expressions-json "${EXPR_JSON}" \
    --split-dir "${GEN_DIR}" \
    --module-prefix "${MODULE_PREFIX}" \
    --name "${NAME}" \
    --semantic-bridge-module "${BRIDGE_MODULE}" \
    --component-eq-chunk-size 10 \
    --scalar-component-eq-chunk-size 560 \
    --full-aggregate-semantic-structural \
    --compact-component-semantic \
    --compact-component-semantic-coeff-chunk-size 20 \
    --compact-scalar-component-semantic-coeff-chunk-size 5 \
    --compact-component-eq-chunk-size 20 \
    --compact-scalar-group-size 4 \
    --compact-scalar-source-data \
    "${generator_source_semantic_args[@]}" \
    --compact-scalar-source-chunk-size 1000 \
    --compact-scalar-source-plan-output "${SOURCE_PLAN_JSON}" \
    --compact-objective-eq-chunk-size 10

echo "==> Checking generated structural shape"
require_grep \
  "def ${NAME}CompactDualExpressionData : SparseLinExprData 123 where" \
  "${GEN_DIR}/CompactData.lean" \
  "explicit compact quotient aggregate data"
reject_grep \
  "${NAME}FullAggregateComponentTargetData" \
  "${GEN_DIR}/CompactData.lean" \
  "target data dependency in CompactData"
require_grep \
  "def ${NAME}FullAggregateComponentTargetData : SparseLinExprData 560 :=" \
  "${GEN_DIR}/FullAggregateTarget.lean" \
  "structural full aggregate target data"
require_grep \
  "theorem ${NAME}FullAggregateComponentSum_eq_targetData" \
  "${GEN_DIR}/FullAggregateComponentTargetEq.lean" \
  "component target equality"
require_grep \
  "theorem ${NAME}FullAggregateComponentTarget_const_semantic :" \
  "${GEN_DIR}/FullAggregateSemantic.lean" \
  "closed full aggregate const semantic theorem"
require_grep \
  "^theorem ${NAME}FullAggregateComponentTarget_coeff_semantic$" \
  "${GEN_DIR}/FullAggregateSemantic.lean" \
  "closed full aggregate coeff semantic theorem"
reject_grep \
  "native_decide" \
  "${GEN_DIR}/CompactSemantic.lean" \
  "compact/full sparse bridge native_decide"
reject_grep \
  "native_decide" \
  "${GEN_DIR}/Multiplier.lean" \
  "multiplier nonnegativity native_decide"
if [[ "${BUILD_SOURCE_SEMANTIC}" -eq 1 ]]; then
  require_grep \
    "theorem ${NAME}CompactScalarSourceSumData_semantic" \
    "${GEN_DIR}/CompactScalarSourceSemantic.lean" \
    "compact scalar source semantic summary"
  require_grep \
    "theorem ${NAME}CompactScalarSourceSemanticChunk0Data_semantic" \
    "${GEN_DIR}/CompactScalarSourceSemanticChunk0.lean" \
    "compact scalar source semantic chunk theorem"
  reject_grep \
    "native_decide" \
    "${GEN_DIR}/CompactScalarSourceSemanticChunk0.lean" \
    "source semantic chunk native_decide"
  reject_grep \
    "ofLinExprByFin" \
    "${GEN_DIR}/CompactScalarSourceChunk0.lean" \
    "literal source chunk data"
  require_grep \
    "theorem ${NAME}CompactScalarSourceChunk0Data_eq_semanticData" \
    "${GEN_DIR}/CompactScalarSourceDataEq0.lean" \
    "compact scalar source chunk semantic-data equality"
  if [[ ! -f "${GEN_DIR}/CompactScalarSourceChunk0RangeBridge.lean" ]]; then
    echo "FAIL: missing source range bridge module for generated route" >&2
    exit 1
  fi
else
  require_grep \
    "def ${NAME}CompactScalarGroup0DirectSemanticExpr" \
    "${GEN_DIR}/CompactScalarGroup0DirectSemanticExpr.lean" \
    "grouped compact scalar direct semantic expression"
  require_grep \
    "theorem ${NAME}CompactScalarGroup0Data_semantic" \
    "${GEN_DIR}/CompactScalarGroup0Semantic.lean" \
    "grouped compact scalar semantic summary"
fi
require_grep \
  "theorem ${NAME}CompactScalarComponentData_semantic" \
  "${GEN_DIR}/CompactSemantic.lean" \
  "compact scalar component semantic theorem"
require_grep \
  "${NAME}CompactLinearAtomExpr" \
  "${GEN_DIR}/CompactComponentTransport.lean" \
  "compact scalar atom transport"
require_grep \
  "theorem ${NAME}CompactScalarComponentData_eq_sourceSum" \
  "${GEN_DIR}/CompactScalarSourceEq.lean" \
  "compact scalar source sum equality"
require_grep \
  "def ${NAME}CompactPsdComponentExpr0 : LinExpr ${NAME}QVar :=" \
  "${GEN_DIR}/CompactPsdComponent0Expr.lean" \
  "compact-side PSD component expression"
require_grep \
  "theorem ${NAME}CompactPsdComponentExpr0_eq_quotientFull" \
  "${GEN_DIR}/CompactPsdComponent0Expr.lean" \
  "compact-side PSD structural quotient theorem"
require_grep \
  "${NAME}CompactPsdComponentExpr0\\.coeff" \
  "${GEN_DIR}/CompactPsdComponent0SemanticCoeff0.lean" \
  "compact-side PSD coefficient target"
reject_grep \
  "FullAggregatePsdRangeTerm" \
  "${GEN_DIR}/CompactPsdComponent0SemanticCoeff0.lean" \
  "full-side PSD range term in compact PSD coefficient chunk"
require_grep \
  "theorem ${NAME}CompactPsdComponent0Data_semantic" \
  "${GEN_DIR}/CompactPsdComponent0Semantic.lean" \
  "PSD data-to-compact semantic theorem"
require_grep \
  "theorem ${NAME}CompactPsdComponent0Data_eq_quotientFull" \
  "${GEN_DIR}/CompactPsdComponent0Semantic.lean" \
  "PSD data-to-full quotient theorem"

psd_expr_count="$(find "${GEN_DIR}" -maxdepth 1 -name 'CompactPsdComponent*Expr.lean' | wc -l | tr -d ' ')"
if [[ "${psd_expr_count}" != "28" ]]; then
  echo "FAIL: expected 28 compact PSD expression files, found ${psd_expr_count}" >&2
  exit 1
fi
psd_coeff_count="$(find "${GEN_DIR}" -maxdepth 1 -name 'CompactPsdComponent*SemanticCoeff*.lean' | wc -l | tr -d ' ')"
if [[ "${psd_coeff_count}" != "196" ]]; then
  echo "FAIL: expected 196 compact PSD coefficient files, found ${psd_coeff_count}" >&2
  exit 1
fi

generated_count="$(find "${GEN_DIR}" -maxdepth 1 -name '*.lean' | wc -l | tr -d ' ')"
if (( generated_count > 600 )); then
  echo "FAIL: compact smoke generated too many Lean files: ${generated_count}" >&2
  exit 1
fi

echo "==> Checking compact scalar source plan"
python3 - "${SOURCE_PLAN_JSON}" <<'PY'
import json
import sys
from pathlib import Path

plan = json.loads(Path(sys.argv[1]).read_text())
assert plan["source_data_dim"] == 123
assert plan["validation"]["source_group_coverage"]
assert plan["validation"]["source_sum_equals_compact_scalar_component"]
assert plan["source_groups"]["count"] == 6283
assert (
    plan["file_estimate"]["planned_native_coeff_files_for_scalar_semantics"]
    == 0
)
PY

stale_semantic_files="$(
  find "${GEN_DIR}" \
    \( -name 'FullAggregateScalarChunk*SemanticCoeff*.lean' \
    -o -name 'FullAggregateScalarChunk*Semantic.lean' \
    -o -name 'FullAggregateScalarSemantic.lean' \
    -o -name 'FullAggregatePsd*Semantic*.lean' \
    -o -name 'FullAggregatePsdSemantic.lean' \) \
    -print
)"
if [[ -n "${stale_semantic_files}" ]]; then
  echo "FAIL: old structural semantic coefficient files were generated:" >&2
  printf '%s\n' "${stale_semantic_files}" >&2
  exit 1
fi

stale_compact_files="$(
  find "${GEN_DIR}" \
    \( -name 'CompactScalarChunk*SemanticCoeff*.lean' \
    -o -name 'CompactScalarChunk*Semantic.lean' \
    -o -name 'CompactScalarGroup*Eq*.lean' \
    -o -name 'BridgeScalar.lean' \
    -o -name 'BridgeScalarDispatch*.lean' \
    -o -name 'BridgeScalarProof*.lean' \
    -o -name 'BridgeMatrix*.lean' \) \
    -print
)"
if [[ -n "${stale_compact_files}" ]]; then
  echo "FAIL: old compact bridge/scalar proof-family files were generated:" >&2
  printf '%s\n' "${stale_compact_files}" >&2
  exit 1
fi

if [[ "${BUILD_SOURCE_SEMANTIC}" -eq 1 ]]; then
  stale_source_semantic_files="$(
    find "${GEN_DIR}" \
      \( -name 'CompactScalarGroup*SemanticCoeff*.lean' \
      -o -name 'CompactScalarGroup*Semantic.lean' \
      -o -name 'CompactScalarGroup*DirectSemanticExpr*.lean' \
      -o -name 'CompactScalarSource*SemanticCoeff*.lean' \) \
      -print
  )"
  if [[ -n "${stale_source_semantic_files}" ]]; then
    echo "FAIL: stale scalar semantic proof-family files were generated:" >&2
    printf '%s\n' "${stale_source_semantic_files}" >&2
    exit 1
  fi
fi

BASE_LEAN_PATH="$(cd "${ROOT}" && lake env printenv LEAN_PATH)"
declare -A VISITED_MODULES=()
declare -A COMPILED_MODULES=()
COMPILE_ORDER=()

module_to_file() {
  local module="$1"
  printf '%s/%s.lean\n' "${LEAN_ROOT}" "${module//./\/}"
}

visit_generated_module() {
  local module="$1"
  if [[ -n "${VISITED_MODULES[$module]:-}" ]]; then
    return
  fi
  VISITED_MODULES[$module]=1

  local file
  file="$(module_to_file "$module")"
  if [[ ! -f "${file}" ]]; then
    echo "FAIL: generated source not found for ${module}: ${file}" >&2
    exit 1
  fi

  local imported
  while read -r imported; do
    if [[ "${imported}" == "${MODULE_PREFIX}"* ]]; then
      visit_generated_module "${imported}"
    fi
  done < <(awk '/^import / { print $2 }' "${file}")

  COMPILE_ORDER+=("${module}")
}

compile_generated_module() {
  local module="$1"
  VISITED_MODULES=()
  COMPILE_ORDER=()
  visit_generated_module "${module}"

  local dep file olean
  for dep in "${COMPILE_ORDER[@]}"; do
    if [[ -n "${COMPILED_MODULES[$dep]:-}" ]]; then
      continue
    fi
    file="$(module_to_file "$dep")"
    olean="${OLEAN_ROOT}/${dep//./\/}.olean"
    mkdir -p "$(dirname "${olean}")"
    echo "    lean ${dep}"
    (
      cd "${ROOT}"
      env LEAN_NUM_THREADS="${LEAN_THREADS}" timeout "${LEAN_TIMEOUT_SECONDS}" \
        lake env env LEAN_PATH="${BASE_LEAN_PATH}" \
          lean -R "${LEAN_ROOT}" -o "${olean}" "${file}"
    )
    COMPILED_MODULES[$dep]=1
  done
}

echo "==> Building production compact bridge dependency"
(cd "${ROOT}" && env LEAN_NUM_THREADS="${LEAN_THREADS}" timeout "${LEAN_TIMEOUT_SECONDS}" lake build "${BRIDGE_MODULE}")

echo "==> Compiling generated smoke modules"
compile_generated_module "${MODULE_PREFIX}.FullAggregateSemantic"
compile_generated_module "${MODULE_PREFIX}.CompactComponentTransport"
if [[ "${BUILD_SOURCE_SEMANTIC}" -eq 1 ]]; then
  echo "==> Compiling source semantic split smoke targets"
  compile_generated_module "${MODULE_PREFIX}.CompactScalarSourceEq"
  compile_generated_module "${MODULE_PREFIX}.CompactScalarSourceSemanticChunk0"
  compile_generated_module "${MODULE_PREFIX}.CompactScalarSourceDataEq0Coeff0"
else
  compile_generated_module "${MODULE_PREFIX}.CompactScalarSourceEq"
  echo "==> Skipping source-semantic compile; pass --source-semantic to exercise it"
fi

if [[ "${BUILD_COMPACT_SEMANTIC}" -eq 1 ]]; then
  echo "==> Compiling CompactSemantic on request"
  compile_generated_module "${MODULE_PREFIX}.CompactSemantic"
else
  echo "==> Skipping CompactSemantic; pass --compact-semantic for the slow native_decide leaf compile"
fi

if [[ "${BUILD_CERTIFICATE}" -eq 1 ]]; then
  reject_grep \
    "native_decide" \
    "${GEN_DIR}/CompactCertificate.lean" \
    "compact certificate native_decide"
  echo "==> CompactCertificate native_decide check passed"
  echo "==> Skipping CompactCertificate compile in mixed-prefix smoke fixture"
else
  echo "==> Skipping CompactCertificate; pass --certificate after objective equality is wired"
fi

echo "==> Compact component structural smoke passed (${generated_count} generated Lean files)"
