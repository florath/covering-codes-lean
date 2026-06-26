#!/usr/bin/env python3
"""Validate a GP2025 exact-certificate/provenance bundle before Lean generation.

This checker is intentionally read-only.  It catches wrong or stale exact JSON
inputs before the Lean generator spends time emitting a large tree.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import sys
from fractions import Fraction
from pathlib import Path
from typing import Any

if hasattr(sys, "set_int_max_str_digits"):
    sys.set_int_max_str_digits(0)

from gp2025_gen_lean_quotient_certificate import (
    binary_compact_quotient_fibers,
    binary_compact_support_config,
    build_compact_component_quotient_plan,
    validate_sparse_expr_sum,
)


DEFAULT_NAME = "binaryK2_13_1"
DEFAULT_EXPECT_N = 13
DEFAULT_EXPECT_R = 1
DEFAULT_EXPECT_L = 607
DEFAULT_EXPECT_QVARS = 123
DEFAULT_EXPECT_FULL_VARS = 560
DEFAULT_EXPECT_SCALARS = 6283
DEFAULT_EXPECT_PSD = 28
DEFAULT_EXPECT_NONMATRIX_CHUNK = 200
DEFAULT_EXPECT_MATRIX_CUT_CHUNK = 20


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def load_json(path: Path, label: str) -> dict[str, Any]:
    try:
        data = json.loads(path.read_text(encoding="utf-8"))
    except json.JSONDecodeError as exc:
        raise SystemExit(f"{label}: invalid JSON at {path}: {exc}") from exc
    if not isinstance(data, dict):
        raise SystemExit(f"{label}: expected top-level JSON object at {path}")
    return data


def canonical_sha256(data: Any) -> str:
    payload = json.dumps(
        data,
        sort_keys=True,
        separators=(",", ":"),
        ensure_ascii=True,
    ).encode("utf-8")
    return hashlib.sha256(payload).hexdigest()


def require_equal(label: str, actual: Any, expected: Any) -> None:
    if actual != expected:
        raise SystemExit(f"{label}: expected {expected!r}, got {actual!r}")


def require_key(data: dict[str, Any], key: str, label: str) -> Any:
    if key not in data:
        raise SystemExit(f"{label}: missing required key {key!r}")
    return data[key]


def check_identity(
    exact: dict[str, Any],
    support_full_vars: int,
    args: argparse.Namespace,
) -> None:
    require_equal("n", int(require_key(exact, "n", "exact")), args.expect_n)
    require_equal("r", int(require_key(exact, "r", "exact")), args.expect_r)
    require_equal(
        "target_L",
        int(require_key(exact, "target_L", "exact")),
        args.expect_l,
    )
    require_equal(
        "variable_count",
        int(require_key(exact, "variable_count", "exact")),
        args.expect_qvars,
    )
    require_equal("support full vars", support_full_vars, args.expect_full_vars)

    counts = require_key(exact, "constraint_counts", "exact")
    require_equal("scalar constraint count", int(counts["scalar"]), args.expect_scalars)
    require_equal("PSD block count", int(counts["psd"]), args.expect_psd)
    require_equal(
        "scalar_multipliers length",
        len(require_key(exact, "scalar_multipliers", "exact")),
        args.expect_scalars,
    )
    require_equal(
        "weighted_ldl length",
        len(require_key(exact, "weighted_ldl", "exact")),
        args.expect_psd,
    )
    if args.allow_missing_rational_denominator:
        denominator = exact.get("rational_denominator")
    else:
        denominator = require_key(exact, "rational_denominator", "exact")
    if denominator is not None and int(denominator) <= 0:
        raise SystemExit(f"rational_denominator: expected positive, got {denominator}")
    if args.expect_rational_denominator is not None:
        require_equal(
            "rational_denominator",
            int(require_key(exact, "rational_denominator", "exact")),
            args.expect_rational_denominator,
        )
    if exact.get("passes_threshold") is False:
        raise SystemExit("passes_threshold: exact certificate does not pass target")


def validate_export_identity(
    export: dict[str, Any],
    exact: dict[str, Any],
    label: str,
    *,
    require_full: bool,
) -> None:
    for key in ("n", "r"):
        if key in export:
            require_equal(f"{label} {key}", export[key], exact[key])
    if require_full:
        require_equal(f"{label} variable_mode", export.get("variable_mode"), "full")
        if export.get("symmetry_constraints", False):
            raise SystemExit(f"{label}: full-variable export has symmetry constraints")
    elif export.get("variable_mode") == "full":
        raise SystemExit(f"{label}: quotient expression export is full-variable")


def validate_expression_counts(
    expr_data: dict[str, Any],
    exact: dict[str, Any],
    label: str,
    *,
    expected_scalar_count: int | None = None,
    expected_psd_count: int | None = None,
) -> None:
    counts = exact["constraint_counts"]
    scalar_count = (
        int(counts["scalar"])
        if expected_scalar_count is None
        else expected_scalar_count
    )
    psd_count = int(counts["psd"]) if expected_psd_count is None else expected_psd_count
    export_counts = expr_data.get("constraint_counts")
    if isinstance(export_counts, dict):
        if "scalar" in export_counts:
            require_equal(
                f"{label} constraint_counts.scalar",
                int(export_counts["scalar"]),
                scalar_count,
            )
        if "psd" in export_counts:
            require_equal(
                f"{label} constraint_counts.psd",
                int(export_counts["psd"]),
                psd_count,
            )
    if "scalar_constraints" in expr_data:
        require_equal(
            f"{label} scalar_constraints length",
            len(expr_data["scalar_constraints"]),
            scalar_count,
        )
    if "psd_constraints" in expr_data:
        require_equal(
            f"{label} psd_constraints length",
            len(expr_data["psd_constraints"]),
            psd_count,
        )


def validate_full_expression_counts(
    full_expr_data: dict[str, Any],
    exact: dict[str, Any],
    *,
    full_vars: int,
) -> None:
    qvars = int(exact["variable_count"])
    if full_vars < qvars:
        raise SystemExit(
            f"full expression variables {full_vars} < quotient variables {qvars}"
        )
    if "variable_count" in full_expr_data:
        require_equal(
            "full expressions variable_count",
            int(full_expr_data["variable_count"]),
            full_vars,
        )
    validate_expression_counts(
        full_expr_data,
        exact,
        "full expressions",
        expected_scalar_count=(
            int(exact["constraint_counts"]["scalar"]) + full_vars - qvars
        ),
    )


def validate_component_payload(
    exact: dict[str, Any],
    *,
    name: str,
    qvars: int,
    full_vars: int,
    scalar_group_size: int,
    expected_psd: int,
) -> tuple[dict[str, int], list[tuple[int, int]]]:
    components = require_key(
        exact,
        "full_aggregate_dual_expression_components",
        "exact",
    )
    scalar_chunks = require_key(components, "scalar_chunks", "components")
    psd_components = require_key(components, "psd", "components")
    require_equal("PSD component count", len(psd_components), expected_psd)

    scale = Fraction(2) ** int(exact["n"])
    validate_sparse_expr_sum(
        require_key(exact, "full_aggregate_dual_expression", "exact"),
        [item["expr"] for item in scalar_chunks] + [item["expr"] for item in psd_components],
        full_vars,
        scale,
        "full component sum vs full aggregate dual expression",
    )

    support_config = binary_compact_support_config(
        int(exact["n"]),
        int(exact["r"]),
        qvars,
        name,
    )
    build_compact_component_quotient_plan(
        exact,
        name,
        qvars,
        full_vars,
        scale,
        binary_compact_quotient_fibers(support_config),
        scalar_group_size,
    )

    final_end = 0
    ranges: list[tuple[int, int]] = []
    lengths: dict[int, int] = {}
    for pos, item in enumerate(scalar_chunks):
        start = int(require_key(item, "start", f"scalar chunk {pos}"))
        end = int(require_key(item, "end", f"scalar chunk {pos}"))
        if start != final_end:
            raise SystemExit(
                f"scalar chunk {pos}: expected start {final_end}, got {start}"
            )
        if end <= start:
            raise SystemExit(f"scalar chunk {pos}: nonpositive range {start}..{end}")
        length = end - start
        ranges.append((start, end))
        lengths[length] = lengths.get(length, 0) + 1
        final_end = end
    require_equal("scalar chunk final end", final_end, int(exact["constraint_counts"]["scalar"]))

    return {
        "scalar_chunks": len(scalar_chunks),
        "psd_components": len(psd_components),
        "scalar_chunk_len_200": lengths.get(DEFAULT_EXPECT_NONMATRIX_CHUNK, 0),
        "scalar_chunk_len_20": lengths.get(DEFAULT_EXPECT_MATRIX_CUT_CHUNK, 0),
        "scalar_chunk_len_3": lengths.get(3, 0),
    }, ranges


def validate_full_objective_subconst(
    exact: dict[str, Any],
    full_vars: int,
    *,
    required: bool,
) -> bool:
    expr = exact.get("full_objective_subconst_expression")
    if expr is None:
        if required:
            raise SystemExit("exact: missing full_objective_subconst_expression")
        return False
    validate_sparse_expr_sum(
        require_key(exact, "full_aggregate_dual_expression", "exact"),
        [expr],
        full_vars,
        Fraction(1),
        "full objective subConst vs full aggregate dual expression",
    )
    validation = exact.get("stationarity_validation", {})
    if isinstance(validation, dict):
        if validation.get("objective_subconst_equals_full_aggregate_dual_expression") is False:
            raise SystemExit("stationarity_validation: objective/full aggregate flag is false")
    return True


def check_expected_k2_chunk_topology(
    summary: dict[str, int],
    ranges: list[tuple[int, int]],
) -> None:
    require_equal("scalar chunk count", summary["scalar_chunks"], 234)
    require_equal("scalar chunks of length 200", summary["scalar_chunk_len_200"], 9)
    require_equal("scalar chunks of length 20", summary["scalar_chunk_len_20"], 224)
    require_equal("scalar chunks of length 3", summary["scalar_chunk_len_3"], 1)
    require_equal("scalar chunk 9 boundary", ranges[9], (1800, 1803))
    require_equal("scalar chunk 10 boundary", ranges[10], (1803, 1823))


def provenance_input_record(
    provenance: dict[str, Any],
    key: str,
) -> dict[str, Any] | None:
    inputs = provenance.get("inputs")
    if not isinstance(inputs, dict):
        return None
    record = inputs.get(key)
    return record if isinstance(record, dict) else None


def validate_provenance(
    provenance_path: Path,
    exact_path: Path,
    exact: dict[str, Any],
    args: argparse.Namespace,
) -> None:
    provenance = load_json(provenance_path, "provenance")
    require_equal(
        "provenance format",
        require_key(provenance, "format", "provenance"),
        "gp2025-certificate-provenance-v1",
    )
    identity = require_key(provenance, "identity", "provenance")
    for key, expected in [
        ("name", args.name),
        ("n", args.expect_n),
        ("r", args.expect_r),
        ("L", args.expect_l),
        ("qvars", args.expect_qvars),
        ("full_vars", args.expect_full_vars),
        ("scalar_count", args.expect_scalars),
        ("psd_count", args.expect_psd),
    ]:
        require_equal(f"provenance identity {key}", identity.get(key), expected)

    validate_provenance_file_record(
        provenance,
        "exact_json",
        exact_path,
        required=args.strict_provenance,
    )
    validate_provenance_file_record(
        provenance,
        "solved_export",
        args.solved_export,
        required=args.strict_provenance,
    )
    validate_provenance_file_record(
        provenance,
        "quotient_expressions_export",
        args.expressions_json,
        required=args.strict_provenance,
    )
    validate_provenance_file_record(
        provenance,
        "full_expressions_export",
        args.full_expressions_json,
        required=args.strict_provenance,
    )

    prepare = provenance.get("prepare", {})
    if isinstance(prepare, dict) and prepare.get("rational_denominator") is not None:
        require_equal(
            "provenance prepare rational_denominator",
            str(prepare["rational_denominator"]),
            str(exact["rational_denominator"]),
        )
    elif args.strict_provenance:
        raise SystemExit("provenance prepare.rational_denominator missing")
    if args.production_k2 and isinstance(prepare, dict):
        require_equal(
            "provenance prepare full_scalar_component_nonmatrix_chunk_size",
            int(prepare.get("full_scalar_component_nonmatrix_chunk_size", -1)),
            DEFAULT_EXPECT_NONMATRIX_CHUNK,
        )
        require_equal(
            "provenance prepare full_scalar_component_matrix_cut_chunk_size",
            int(prepare.get("full_scalar_component_matrix_cut_chunk_size", -1)),
            DEFAULT_EXPECT_MATRIX_CUT_CHUNK,
        )

    validate_provenance_object_hash(
        provenance,
        "components_subobject_sha256",
        exact["full_aggregate_dual_expression_components"],
        required=args.strict_provenance,
    )
    validate_provenance_object_hash(
        provenance,
        "aggregate_dual_expression_sha256",
        exact["aggregate_dual_expression"],
        required=args.strict_provenance,
    )
    validate_provenance_object_hash(
        provenance,
        "full_aggregate_dual_expression_sha256",
        exact["full_aggregate_dual_expression"],
        required=args.strict_provenance,
    )
    if "full_objective_subconst_expression" in exact:
        validate_provenance_object_hash(
            provenance,
            "full_objective_subconst_expression_sha256",
            exact["full_objective_subconst_expression"],
            required=args.strict_provenance,
        )
    elif args.require_full_objective_subconst:
        raise SystemExit("provenance cannot hash missing full_objective_subconst_expression")


def validate_provenance_file_record(
    provenance: dict[str, Any],
    key: str,
    path: Path | None,
    *,
    required: bool,
) -> None:
    record = provenance_input_record(provenance, key)
    if record is None:
        if required:
            raise SystemExit(f"provenance inputs.{key} missing")
        return
    if path is None:
        if required:
            raise SystemExit(f"--{key.replace('_', '-')} is required by strict provenance")
        return
    recorded_sha = record.get("sha256")
    if recorded_sha:
        require_equal(f"provenance {key} sha256", recorded_sha, sha256_file(path))
    elif required:
        raise SystemExit(f"provenance inputs.{key}.sha256 missing")
    recorded_bytes = record.get("bytes")
    if recorded_bytes is not None:
        require_equal(f"provenance {key} bytes", int(recorded_bytes), path.stat().st_size)
    elif required:
        raise SystemExit(f"provenance inputs.{key}.bytes missing")


def validate_provenance_object_hash(
    provenance: dict[str, Any],
    key: str,
    value: Any,
    *,
    required: bool,
) -> None:
    component_validation = provenance.get("component_validation", {})
    digest = component_validation.get(key) if isinstance(component_validation, dict) else None
    if digest:
        require_equal(f"provenance {key}", digest, canonical_sha256(value))
    elif required:
        raise SystemExit(f"provenance component_validation.{key} missing")


def manifest_path(base: Path, text: str) -> Path:
    path = Path(text)
    if path.is_absolute():
        return path
    return base / path


def validate_manifest(manifest: Path) -> int:
    checked = 0
    base = manifest.parent
    for lineno, raw_line in enumerate(manifest.read_text(encoding="utf-8").splitlines(), 1):
        line = raw_line.strip()
        if not line or line.startswith("#"):
            continue
        parts = line.split(None, 1)
        if len(parts) != 2:
            raise SystemExit(f"{manifest}:{lineno}: expected '<sha256>  <path>'")
        expected, path_text = parts
        if len(expected) != 64 or any(ch not in "0123456789abcdefABCDEF" for ch in expected):
            raise SystemExit(f"{manifest}:{lineno}: invalid sha256 {expected!r}")
        path_text = path_text.lstrip("*")
        path = manifest_path(base, path_text)
        if not path.exists():
            raise SystemExit(f"{manifest}:{lineno}: listed file does not exist: {path}")
        require_equal(f"manifest hash for {path_text}", sha256_file(path), expected.lower())
        checked += 1
    return checked


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Validate GP2025 exact certificate JSON/provenance before Lean generation."
    )
    parser.add_argument("exact_json", type=Path)
    parser.add_argument("--solved-export", type=Path)
    parser.add_argument("--expressions-json", type=Path)
    parser.add_argument("--full-expressions-json", type=Path)
    parser.add_argument("--provenance", type=Path)
    parser.add_argument(
        "--manifest",
        type=Path,
        help="optional sha256sum-style manifest to verify before JSON checks",
    )
    parser.add_argument("--name", default=DEFAULT_NAME)
    parser.add_argument("--compact-scalar-group-size", type=int, default=16)
    parser.add_argument("--expect-n", type=int, default=DEFAULT_EXPECT_N)
    parser.add_argument("--expect-r", type=int, default=DEFAULT_EXPECT_R)
    parser.add_argument("--expect-l", type=int, default=DEFAULT_EXPECT_L)
    parser.add_argument("--expect-qvars", type=int, default=DEFAULT_EXPECT_QVARS)
    parser.add_argument("--expect-full-vars", type=int, default=DEFAULT_EXPECT_FULL_VARS)
    parser.add_argument("--expect-scalars", type=int, default=DEFAULT_EXPECT_SCALARS)
    parser.add_argument("--expect-psd", type=int, default=DEFAULT_EXPECT_PSD)
    parser.add_argument(
        "--expect-rational-denominator",
        type=int,
        default=None,
        help="require exact.rational_denominator to equal this value",
    )
    parser.add_argument(
        "--skip-k2-chunk-topology",
        action="store_true",
        help="skip the K2-specific 234 scalar chunk topology check",
    )
    parser.add_argument(
        "--allow-missing-rational-denominator",
        action="store_true",
        help="allow legacy smoke fixtures without rational_denominator",
    )
    parser.add_argument(
        "--require-full-objective-subconst",
        action="store_true",
        help="require and validate full_objective_subconst_expression",
    )
    parser.add_argument(
        "--production-k2",
        action="store_true",
        help="enforce the recovered production K2 identity and scalar chunk topology",
    )
    parser.add_argument(
        "--strict-provenance",
        action="store_true",
        help="require provenance JSON plus hashes/byte counts for all input files",
    )
    parser.add_argument(
        "--json",
        action="store_true",
        help="print a machine-readable JSON summary",
    )
    return parser


def main(argv: list[str] | None = None) -> int:
    parser = build_parser()
    args = parser.parse_args(argv)
    manifest_count = None
    if (
        args.expect_rational_denominator is not None
        and args.expect_rational_denominator <= 0
    ):
        parser.error("--expect-rational-denominator must be positive")
    if args.manifest is not None:
        manifest_count = validate_manifest(args.manifest)
    if args.production_k2:
        for label, actual, expected in [
            ("--expect-n", args.expect_n, DEFAULT_EXPECT_N),
            ("--expect-r", args.expect_r, DEFAULT_EXPECT_R),
            ("--expect-l", args.expect_l, DEFAULT_EXPECT_L),
            ("--expect-qvars", args.expect_qvars, DEFAULT_EXPECT_QVARS),
            ("--expect-full-vars", args.expect_full_vars, DEFAULT_EXPECT_FULL_VARS),
            ("--expect-scalars", args.expect_scalars, DEFAULT_EXPECT_SCALARS),
            ("--expect-psd", args.expect_psd, DEFAULT_EXPECT_PSD),
        ]:
            require_equal(f"production-k2 {label}", actual, expected)
    if args.strict_provenance and args.provenance is None:
        raise SystemExit("--strict-provenance requires --provenance")

    exact = load_json(args.exact_json, "exact")
    if args.solved_export is not None:
        load_json(args.solved_export, "solved export")
    qvars = int(exact["variable_count"])
    support_config = binary_compact_support_config(
        int(exact["n"]),
        int(exact["r"]),
        qvars,
        args.name,
    )

    check_identity(exact, support_config.full_vars, args)

    if args.expressions_json is not None:
        expr_data = load_json(args.expressions_json, "expressions")
        validate_export_identity(expr_data, exact, "expressions", require_full=False)
        validate_expression_counts(expr_data, exact, "expressions")
    if args.full_expressions_json is not None:
        full_expr_data = load_json(args.full_expressions_json, "full expressions")
        validate_export_identity(full_expr_data, exact, "full expressions", require_full=True)
        validate_full_expression_counts(
            full_expr_data,
            exact,
            full_vars=support_config.full_vars,
        )

    component_summary, scalar_ranges = validate_component_payload(
        exact,
        name=args.name,
        qvars=qvars,
        full_vars=support_config.full_vars,
        scalar_group_size=args.compact_scalar_group_size,
        expected_psd=args.expect_psd,
    )
    if args.production_k2 or not args.skip_k2_chunk_topology:
        check_expected_k2_chunk_topology(component_summary, scalar_ranges)
    full_objective_present = validate_full_objective_subconst(
        exact,
        support_config.full_vars,
        required=args.require_full_objective_subconst,
    )

    if args.provenance is not None:
        validate_provenance(args.provenance, args.exact_json, exact, args)

    summary = {
        "status": "pass",
        "exact_json": str(args.exact_json),
        "exact_json_sha256": sha256_file(args.exact_json),
        "component_summary": component_summary,
        "full_objective_subconst_expression": full_objective_present,
        "production_k2": bool(args.production_k2),
        "strict_provenance": bool(args.strict_provenance),
    }
    if manifest_count is not None:
        summary["manifest"] = str(args.manifest)
        summary["manifest_entries_checked"] = manifest_count
    if args.provenance is not None:
        summary["provenance"] = str(args.provenance)
        summary["provenance_sha256"] = sha256_file(args.provenance)
    if args.json:
        print(json.dumps(summary, indent=2, sort_keys=True))
        return 0

    print("GP2025 certificate bundle validation passed")
    if manifest_count is not None:
        print(f"manifest: {args.manifest}")
        print(f"manifest_entries_checked: {manifest_count}")
    print(f"exact_json: {args.exact_json}")
    print(f"exact_json_sha256: {sha256_file(args.exact_json)}")
    print(
        "component_summary: "
        f"{component_summary['scalar_chunks']} scalar chunks, "
        f"{component_summary['psd_components']} PSD components"
    )
    if args.provenance is not None:
        print(f"provenance: {args.provenance}")
        print(f"provenance_sha256: {sha256_file(args.provenance)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
