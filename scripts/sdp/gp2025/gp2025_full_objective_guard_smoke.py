#!/usr/bin/env python3
"""Generator-only smoke for the compact full-objective guard route.

This script exercises the positive side of the compact full-sparse guard using
an exact payload with ``full_objective_subconst_expression``. When the default
ignored fixture is absent it synthesizes a zero-valued fixture with the same K2
shape, so the route guard stays reproducible from a fresh checkout. It does not
run Lean and does not touch production ``Generated/BinaryK2_13_1`` files.
"""

from __future__ import annotations

import argparse
import json
import shutil
import subprocess
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[3]
DEFAULT_EXACT = ROOT / "build/gp2025-route-a-shape-probe/exact.json"
DEFAULT_EXPR = ROOT / "build/gp2025-route-a-shape-probe/expr.json"
DEFAULT_OUTPUT = ROOT / "build/gp2025-full-objective-guard-smoke"
DEFAULT_MODULE_PREFIX = (
    "CoveringCodes.SDP.GijswijtPolak2025.Generated.FullObjectiveGuardSmoke"
)
DEFAULT_NAME = "binaryK2_13_1GuardSmoke"
SMOKE_N = 13
SMOKE_R = 1
SMOKE_QVARS = 123
SMOKE_SCALAR_COUNT = 6283
SMOKE_PSD_COUNT = 28


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description=(
            "Generate an ignored compact full-sparse/full-objective smoke tree "
            "and statically check that the raw CompactDataQuotientCoeff fallback "
            "is not emitted."
        )
    )
    parser.add_argument("--exact-json", type=Path, default=DEFAULT_EXACT)
    parser.add_argument("--expressions-json", type=Path, default=DEFAULT_EXPR)
    parser.add_argument("--output-root", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--module-prefix", default=DEFAULT_MODULE_PREFIX)
    parser.add_argument("--name", default=DEFAULT_NAME)
    parser.add_argument("--full-objective-eq-chunk-size", type=int, default=20)
    parser.add_argument(
        "--synthesize-fixture",
        action="store_true",
        help="write a zero-valued K2-shaped exact/expression fixture before generation",
    )
    parser.add_argument(
        "--keep-output",
        action="store_true",
        help="preserve an existing output tree instead of deleting it first",
    )
    return parser.parse_args()


def rel(path: Path) -> str:
    try:
        return str(path.relative_to(ROOT))
    except ValueError:
        return str(path)


def require_file(path: Path, label: str) -> None:
    if not path.is_file():
        raise SystemExit(f"{label} missing: {rel(path)}")


def exact_zero_expr() -> dict[str, object]:
    return {"const": [0, 1], "coeffs": []}


def export_zero_expr() -> dict[str, object]:
    return {"const": "0", "coeffs": []}


def write_json(path: Path, payload: dict[str, object]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def synthesize_fixture(exact: Path, expressions: Path) -> None:
    exact_zero = exact_zero_expr()
    exact_payload: dict[str, object] = {
        "n": SMOKE_N,
        "r": SMOKE_R,
        "target_L": 0,
        "raw_bound": [0, 1],
        "rational_denominator": 1,
        "variable_count": SMOKE_QVARS,
        "constraint_counts": {
            "scalar": SMOKE_SCALAR_COUNT,
            "psd": SMOKE_PSD_COUNT,
        },
        "aggregate_dual_expression": exact_zero,
        "full_aggregate_dual_expression": exact_zero,
        "full_objective_subconst_expression": exact_zero,
        "scalar_multipliers": [
            {"kind": "nonnegative_variable", "value": [0, 1]}
            for _ in range(SMOKE_SCALAR_COUNT)
        ],
        "psd_matrices": [{"matrix": []} for _ in range(SMOKE_PSD_COUNT)],
        "weighted_ldl": [
            {"size": 0, "rank": 0, "diag": [], "rows": []}
            for _ in range(SMOKE_PSD_COUNT)
        ],
        "stationarity_validation": {
            "objective_subconst_equals_full_aggregate_dual_expression": True,
            "full_components_sum_equals_full_aggregate_dual_expression": True,
        },
        "full_aggregate_dual_expression_components": {
            "scalar": exact_zero,
            "scalar_chunks": [
                {
                    "start": 0,
                    "end": SMOKE_SCALAR_COUNT,
                    "expr": exact_zero,
                }
            ],
            "psd": [{"expr": exact_zero} for _ in range(SMOKE_PSD_COUNT)],
        },
    }
    export_zero = export_zero_expr()
    expression_payload: dict[str, object] = {
        "n": SMOKE_N,
        "r": SMOKE_R,
        "variable_count": SMOKE_QVARS,
        "constraint_counts": {
            "scalar": SMOKE_SCALAR_COUNT,
            "psd": SMOKE_PSD_COUNT,
        },
        "objective_terms": [
            {"orbit_id": idx + 1, "coeff": 0}
            for idx in range(SMOKE_QVARS)
        ],
        "scalar_constraints": [
            {
                "kind": "nonnegative_variable",
                "meta": {"orbit_id": idx % SMOKE_QVARS + 1},
                "expr": export_zero,
            }
            for idx in range(SMOKE_SCALAR_COUNT)
        ],
        "psd_constraints": [
            {
                "kind": "primal_block",
                "meta": {"k": idx},
                "matrix_expr": [],
            }
            for idx in range(SMOKE_PSD_COUNT)
        ],
    }
    write_json(exact, exact_payload)
    write_json(expressions, expression_payload)


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def count_pattern(paths: list[Path], needle: str) -> int:
    return sum(read(path).count(needle) for path in paths)


def main() -> None:
    args = parse_args()
    exact = args.exact_json.resolve()
    expressions = args.expressions_json.resolve()
    output_root = args.output_root.resolve()
    split_dir = output_root / "lean/CoveringCodes/SDP/GijswijtPolak2025/Generated/FullObjectiveGuardSmoke"

    default_fixture_missing = (
        exact == DEFAULT_EXACT.resolve()
        and expressions == DEFAULT_EXPR.resolve()
        and (not exact.is_file() or not expressions.is_file())
    )
    if args.synthesize_fixture or default_fixture_missing:
        synthesize_fixture(exact, expressions)

    require_file(exact, "exact fixture")
    require_file(expressions, "expressions fixture")
    if not args.keep_output and output_root.exists():
        shutil.rmtree(output_root)

    cmd = [
        sys.executable,
        str(ROOT / "scripts/sdp/gp2025/gp2025_gen_lean_quotient_certificate.py"),
        str(exact),
        "--expressions-json",
        str(expressions),
        "--split-dir",
        str(split_dir),
        "--module-prefix",
        args.module_prefix,
        "--name",
        args.name,
        "--semantic-bridge-module",
        "CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1.CompactBridge",
        "--compact-full-sparse-semantic",
        "--full-aggregate-semantic-structural",
        "--component-eq-chunk-size",
        "40",
        "--scalar-component-eq-chunk-size",
        "40",
        "--compact-component-eq-chunk-size",
        "20",
        "--full-objective-eq-chunk-size",
        str(args.full_objective_eq_chunk_size),
        "--require-full-objective-subconst",
    ]
    subprocess.run(cmd, cwd=ROOT, check=True)

    lean_files = sorted(split_dir.glob("*.lean"))
    if not lean_files:
        raise SystemExit(f"no Lean files generated under {rel(split_dir)}")

    compact_objective = split_dir / "CompactObjective.lean"
    full_objective = split_dir / "FullObjective.lean"
    full_objective_data = split_dir / "FullObjectiveData.lean"
    require_file(compact_objective, "CompactObjective")
    require_file(full_objective, "FullObjective")
    require_file(full_objective_data, "FullObjectiveData")

    compact_objective_text = read(compact_objective)
    full_objective_text = read(full_objective)
    expected_import = f"import {args.module_prefix}.FullObjective"
    if expected_import not in compact_objective_text:
        raise SystemExit(f"CompactObjective does not import FullObjective: {rel(compact_objective)}")
    if "FullObjectiveExpression_eq_fullDual" not in compact_objective_text:
        raise SystemExit("CompactObjective does not use FullObjectiveExpression_eq_fullDual")
    if "FullObjectiveExpression_eq_fullDual" not in full_objective_text:
        raise SystemExit("FullObjective theorem FullObjectiveExpression_eq_fullDual is missing")

    quotient_coeff_files = sorted(split_dir.glob("CompactDataQuotientCoeff*.lean"))
    if quotient_coeff_files:
        listed = ", ".join(rel(path) for path in quotient_coeff_files[:5])
        raise SystemExit(f"raw CompactDataQuotientCoeff fallback emitted: {listed}")

    full_objective_coeffs = sorted(split_dir.glob("FullObjectiveCoeff*.lean"))
    literal_semantic_coeffs = sorted(split_dir.glob("FullAggregateDualLiteralSemanticCoeff*.lean"))
    if not full_objective_coeffs:
        raise SystemExit("FullObjectiveCoeff*.lean chunks were not emitted")
    if not literal_semantic_coeffs:
        raise SystemExit("FullAggregateDualLiteralSemanticCoeff*.lean chunks were not emitted")

    native_decide_count = count_pattern(lean_files, "native_decide")
    if native_decide_count != 0:
        raise SystemExit(f"generated smoke contains {native_decide_count} native_decide occurrences")

    print("GP2025 full-objective guard smoke passed")
    print(f"output: {rel(split_dir)}")
    print(f"lean_files: {len(lean_files)}")
    print(f"FullObjectiveCoeff files: {len(full_objective_coeffs)}")
    print(f"FullAggregateDualLiteralSemanticCoeff files: {len(literal_semantic_coeffs)}")
    print("CompactDataQuotientCoeff files: 0")
    print("native_decide: 0")


if __name__ == "__main__":
    main()
