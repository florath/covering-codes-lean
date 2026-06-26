#!/usr/bin/env python3
"""Prepare exact rational data from a GP 2025 binary dual export.

The output of this script is still an intermediate artifact, not a Lean proof.
It rationalizes solver duals, corrects tiny affine residuals using
nonnegative-variable atoms, serializes the corrected aggregate dual expression,
checks the affine identity exactly, and computes weighted-Gram/LDL witnesses
for all dual PSD matrices.
"""

from __future__ import annotations

import argparse
import json
import sys
from fractions import Fraction
from pathlib import Path
from typing import Any

import gp2025_rationalize_dual as rat
from gp2025_gen_support import binary_orbits

if hasattr(sys, "set_int_max_str_digits"):
    sys.set_int_max_str_digits(0)


def frac_json(value: Fraction) -> list[int]:
    return [value.numerator, value.denominator]


def frac_decimal(value: Fraction, digits: int = 80) -> str:
    sign = "-" if value < 0 else ""
    value = abs(value)
    integer = value.numerator // value.denominator
    rem = value.numerator % value.denominator
    out = [sign, str(integer), "."]
    for _ in range(digits):
        rem *= 10
        out.append(str(rem // value.denominator))
        rem %= value.denominator
        if rem == 0:
            break
    return "".join(out).rstrip(".")


def sparse_expression_json(
    const: Fraction, coeffs: list[Fraction]
) -> dict[str, Any]:
    return {
        "const": frac_json(const),
        "coeffs": [
            [idx, frac_json(value)]
            for idx, value in enumerate(coeffs)
            if value
        ],
    }


def variable_count(data: dict[str, Any]) -> int:
    if "variable_count" in data:
        return int(data["variable_count"])
    return int(data["quotient_variable_count"])


def objective_coefficients(data: dict[str, Any]) -> list[Fraction]:
    coeffs = [Fraction(0) for _ in range(variable_count(data))]
    for term in data["objective_terms"]:
        coeffs[int(term["orbit_id"]) - 1] += Fraction(int(term["coeff"]))
    return coeffs


def rationalized_scalar_multipliers(
    data: dict[str, Any], max_denominator: int
) -> list[Fraction]:
    multipliers: list[Fraction] = []
    for record in data["scalar_constraints"]:
        value = rat.dual_fraction_value(record, max_denominator)
        multipliers.append(Fraction(0) if value is None else value)
    return multipliers


def rationalized_psd_matrices(
    data: dict[str, Any], max_denominator: int
) -> list[list[list[Fraction]]]:
    matrices: list[list[list[Fraction]]] = []
    for record in data["psd_constraints"]:
        value = rat.dual_decimal_value(record)
        if value is None:
            matrices.append([])
            continue
        matrices.append([
            [rat.matrix_dual_fraction_value(entry, max_denominator) for entry in row]
            for row in value
        ])
    return matrices


def add_scaled_expr(
    coeffs: list[Fraction],
    const: Fraction,
    scale: Fraction,
    expr: dict[str, Any],
) -> tuple[list[Fraction], Fraction]:
    const += scale * rat.fraction_from_export(expr["const"])
    for idx, coeff in expr["coeffs"]:
        coeffs[int(idx) - 1] += scale * rat.fraction_from_export(coeff)
    return coeffs, const


def affine_identity(
    data: dict[str, Any],
    scalar_multipliers: list[Fraction],
    psd_matrices: list[list[list[Fraction]]],
) -> tuple[Fraction, list[Fraction], list[Fraction]]:
    nvars = variable_count(data)
    const = Fraction(0)
    coeffs = [Fraction(0) for _ in range(nvars)]
    for multiplier, record in zip(scalar_multipliers, data["scalar_constraints"], strict=True):
        coeffs, const = add_scaled_expr(coeffs, const, multiplier, record["expr"])
    for matrix, record in zip(psd_matrices, data["psd_constraints"], strict=True):
        for dual_row, expr_row in zip(matrix, record["matrix_expr"], strict=True):
            for dual_entry, expr_entry in zip(dual_row, expr_row, strict=True):
                coeffs, const = add_scaled_expr(coeffs, const, dual_entry, expr_entry)
    objective = rat.objective_coefficients(data)
    residuals = [coeffs[i] - objective[i] for i in range(nvars)]
    return const, coeffs, residuals


def orbit_key(record: dict[str, Any]) -> tuple[int, int, int]:
    return (int(record["i"]), int(record["j"]), int(record["t"]))


def scalar_kind_key(kind: str) -> str:
    if kind == "basic_left_upper":
        return "basic_diagonal_upper"
    return kind


def scalar_meta_key(record: dict[str, Any]) -> dict[str, Any]:
    return {
        key: value
        for key, value in record.get("meta", {}).items()
        if key != "orbit_id"
    }


def scalar_atom_is_matrix_cut(record: dict[str, Any]) -> bool:
    return str(record.get("kind", "")).startswith("matrix_cut_")


def scalar_range_metadata(
    data: dict[str, Any],
    start: int,
    end: int,
    term_count: int | None = None,
) -> dict[str, Any]:
    records = data["scalar_constraints"][start:end]
    has_matrix_cut = any(scalar_atom_is_matrix_cut(record) for record in records)
    all_matrix_cut = bool(records) and all(
        scalar_atom_is_matrix_cut(record) for record in records
    )
    metadata: dict[str, Any] = {
        "start": start,
        "end": end,
        "has_matrix_cut": has_matrix_cut,
        "all_matrix_cut": all_matrix_cut,
        "first_kind": records[0].get("kind") if records else None,
        "last_kind": records[-1].get("kind") if records else None,
    }
    if term_count is not None:
        metadata["term_count"] = term_count
    return metadata


def scalar_component_chunk_ranges(
    data: dict[str, Any],
    uniform_chunk_size: int,
    nonmatrix_chunk_size: int,
    matrix_cut_chunk_size: int,
) -> list[tuple[int, int]]:
    if nonmatrix_chunk_size < 0 or matrix_cut_chunk_size < 0:
        raise ValueError("family-aware scalar chunk sizes must be nonnegative")
    if nonmatrix_chunk_size or matrix_cut_chunk_size:
        if nonmatrix_chunk_size <= 0 or matrix_cut_chunk_size <= 0:
            raise ValueError(
                "family-aware scalar chunking requires both non-matrix and "
                "matrix-cut chunk sizes"
            )
        if uniform_chunk_size > 0:
            raise ValueError(
                "use either --full-scalar-component-chunk-size or family-aware "
                "scalar chunk sizes, not both"
            )
        ranges: list[tuple[int, int]] = []
        records = data["scalar_constraints"]
        start = 0
        while start < len(records):
            is_matrix_cut = scalar_atom_is_matrix_cut(records[start])
            chunk_size = matrix_cut_chunk_size if is_matrix_cut else nonmatrix_chunk_size
            boundary = start + 1
            while (
                boundary < len(records)
                and scalar_atom_is_matrix_cut(records[boundary]) == is_matrix_cut
            ):
                boundary += 1
            end = min(start + chunk_size, boundary)
            ranges.append((start, end))
            start = end
        return ranges

    if uniform_chunk_size <= 0:
        return []
    return [
        (start, min(start + uniform_chunk_size, len(data["scalar_constraints"])))
        for start in range(0, len(data["scalar_constraints"]), uniform_chunk_size)
    ]


def validate_full_expression_export(
    data: dict[str, Any], full_expr_data: dict[str, Any]
) -> None:
    if full_expr_data.get("format") != data.get("format"):
        raise ValueError("full expression export format does not match")
    for key in ("n", "r"):
        if full_expr_data.get(key) != data.get(key):
            raise ValueError(f"full expression export field {key!r} does not match")
    if full_expr_data.get("variable_mode") != "full":
        raise ValueError("full expression export must be produced with --full-variables")
    if full_expr_data.get("symmetry_constraints", False):
        raise ValueError("full expression export must not include symmetry constraints")


def representative_full_orbit_ids(
    data: dict[str, Any], full_expr_data: dict[str, Any]
) -> dict[int, int]:
    full_by_key = {
        orbit_key(record): int(record["id"])
        for record in full_expr_data["orbit_map"]
    }
    representatives: dict[int, int] = {}
    for record in data["orbit_map"]:
        representatives[int(record["id"])] = full_by_key[orbit_key(record)]
    return representatives


def nonnegative_full_expr(full_orbit_id: int) -> dict[str, Any]:
    return {"const": "0", "coeffs": [[full_orbit_id, "1"]]}


def full_scalar_expr_for_quotient_record(
    data: dict[str, Any],
    full_expr_data: dict[str, Any],
    representatives: dict[int, int],
    idx: int,
) -> dict[str, Any]:
    qvars = variable_count(data)
    full_vars = variable_count(full_expr_data)
    record = data["scalar_constraints"][idx]
    if idx < qvars:
        if record.get("kind") != "nonnegative_variable":
            raise ValueError(f"expected quotient nonnegative scalar at index {idx}")
        quotient_id = int(record["meta"]["orbit_id"])
        return nonnegative_full_expr(representatives[quotient_id])

    full_idx = idx + (full_vars - qvars)
    full_record = full_expr_data["scalar_constraints"][full_idx]
    if scalar_kind_key(record.get("kind", "")) != scalar_kind_key(full_record.get("kind", "")):
        raise ValueError(
            f"full scalar kind mismatch at quotient index {idx}, full index {full_idx}"
        )
    if scalar_meta_key(record) != scalar_meta_key(full_record):
        raise ValueError(
            f"full scalar metadata mismatch at quotient index {idx}, full index {full_idx}"
        )
    if "expr" not in full_record:
        raise ValueError("full expression export lacks scalar expression maps")
    return full_record["expr"]


def full_aggregate_identity(
    data: dict[str, Any],
    full_expr_data: dict[str, Any],
    scalar_multipliers: list[Fraction],
    psd_matrices: list[list[list[Fraction]]],
    scalar_component_chunk_size: int,
    scalar_component_nonmatrix_chunk_size: int,
    scalar_component_matrix_cut_chunk_size: int,
) -> tuple[
    Fraction,
    list[Fraction],
    tuple[Fraction, list[Fraction]],
    list[tuple[int, int, Fraction, list[Fraction]]],
    list[tuple[dict[str, Any], Fraction, list[Fraction]]],
]:
    validate_full_expression_export(data, full_expr_data)
    representatives = representative_full_orbit_ids(data, full_expr_data)
    nvars = variable_count(full_expr_data)
    scalar_const = Fraction(0)
    scalar_coeffs = [Fraction(0) for _ in range(nvars)]
    scalar_chunks: list[tuple[int, int, Fraction, list[Fraction]]] = []
    chunk_ranges = scalar_component_chunk_ranges(
        data,
        scalar_component_chunk_size,
        scalar_component_nonmatrix_chunk_size,
        scalar_component_matrix_cut_chunk_size,
    )
    scalar_chunk_by_idx: dict[int, int] = {}
    for chunk_idx, (start, end) in enumerate(chunk_ranges):
        scalar_chunks.append(
            (start, end, Fraction(0), [Fraction(0) for _ in range(nvars)])
        )
        for scalar_idx in range(start, end):
            scalar_chunk_by_idx[scalar_idx] = chunk_idx

    for idx, multiplier in enumerate(scalar_multipliers):
        expr = full_scalar_expr_for_quotient_record(
            data, full_expr_data, representatives, idx
        )
        scalar_coeffs, scalar_const = add_scaled_expr(
            scalar_coeffs, scalar_const, multiplier, expr
        )
        if scalar_chunks:
            chunk_idx = scalar_chunk_by_idx[idx]
            start, end, chunk_const, chunk_coeffs = scalar_chunks[chunk_idx]
            chunk_coeffs, chunk_const = add_scaled_expr(
                chunk_coeffs, chunk_const, multiplier, expr
            )
            scalar_chunks[chunk_idx] = (start, end, chunk_const, chunk_coeffs)

    validate_component_chunks(
        "full scalar component chunks",
        scalar_const,
        scalar_coeffs,
        scalar_chunks,
    )

    if len(data["psd_constraints"]) != len(full_expr_data["psd_constraints"]):
        raise ValueError("full expression PSD section has different length")
    psd_components: list[tuple[dict[str, Any], Fraction, list[Fraction]]] = []
    for idx, (matrix, record, full_record) in enumerate(zip(
        psd_matrices,
        data["psd_constraints"],
        full_expr_data["psd_constraints"],
        strict=True,
    )):
        if record.get("kind") != full_record.get("kind") or \
                record.get("meta") != full_record.get("meta"):
            raise ValueError(f"full expression PSD mismatch at index {idx}")
        if "matrix_expr" not in full_record:
            raise ValueError("full expression export lacks PSD expression maps")
        psd_const = Fraction(0)
        psd_coeffs = [Fraction(0) for _ in range(nvars)]
        for dual_row, expr_row in zip(matrix, full_record["matrix_expr"], strict=True):
            for dual_entry, expr_entry in zip(dual_row, expr_row, strict=True):
                psd_coeffs, psd_const = add_scaled_expr(
                    psd_coeffs, psd_const, dual_entry, expr_entry
                )
        psd_components.append((record, psd_const, psd_coeffs))

    const = scalar_const
    coeffs = scalar_coeffs[:]
    for _, psd_const, psd_coeffs in psd_components:
        const += psd_const
        for idx, coeff in enumerate(psd_coeffs):
            coeffs[idx] += coeff

    return const, coeffs, (scalar_const, scalar_coeffs), scalar_chunks, psd_components


def validate_component_chunks(
    label: str,
    expected_const: Fraction,
    expected_coeffs: list[Fraction],
    chunks: list[tuple[int, int, Fraction, list[Fraction]]],
) -> None:
    if not chunks:
        return
    total_const = Fraction(0)
    total_coeffs = [Fraction(0) for _ in expected_coeffs]
    for start, end, const, coeffs in chunks:
        if not 0 <= start < end:
            raise ValueError(f"{label}: invalid chunk range [{start}, {end})")
        if len(coeffs) != len(expected_coeffs):
            raise ValueError(f"{label}: chunk [{start}, {end}) has wrong dimension")
        total_const += const
        for idx, coeff in enumerate(coeffs):
            total_coeffs[idx] += coeff
    if total_const != expected_const:
        raise ValueError(
            f"{label}: const sum mismatch {total_const} != {expected_const}"
        )
    mismatches = [
        (idx, value, expected_coeffs[idx])
        for idx, value in enumerate(total_coeffs)
        if value != expected_coeffs[idx]
    ]
    if mismatches:
        idx, value, expected = mismatches[0]
        raise ValueError(
            f"{label}: coeff sum mismatch at {idx}: {value} != {expected}"
        )


def validate_sparse_expression_equal(
    label: str,
    left: dict[str, Any],
    right: dict[str, Any],
) -> None:
    if left != right:
        raise ValueError(f"{label}: sparse expressions differ")


def lean_ordered_full_coeffs(
    full_expr_data: dict[str, Any], export_order_coeffs: list[Fraction]
) -> list[Fraction]:
    """Convert full-export orbit IDs to the Lean support enumeration order."""

    n = int(full_expr_data["n"])
    lean_orbits = binary_orbits(n)
    if len(lean_orbits) != variable_count(full_expr_data):
        raise ValueError("Lean full support size does not match full expression export")
    lean_index_by_key = {
        (orbit.i, orbit.j, orbit.t): idx
        for idx, orbit in enumerate(lean_orbits)
    }
    lean_coeffs = [Fraction(0) for _ in range(len(lean_orbits))]
    seen_export_ids: set[int] = set()
    for record in full_expr_data["orbit_map"]:
        export_idx = int(record["id"]) - 1
        if export_idx < 0 or export_idx >= len(export_order_coeffs):
            raise ValueError(f"full export orbit id out of range: {record['id']}")
        if export_idx in seen_export_ids:
            raise ValueError(f"duplicate full export orbit id: {record['id']}")
        seen_export_ids.add(export_idx)
        key = orbit_key(record)
        if key not in lean_index_by_key:
            raise ValueError(f"full export orbit missing from Lean support: {key}")
        lean_coeffs[lean_index_by_key[key]] += export_order_coeffs[export_idx]
    if len(seen_export_ids) != len(export_order_coeffs):
        raise ValueError("full expression export orbit map does not cover all variables")
    return lean_coeffs


def correct_with_nonnegative_atoms(
    data: dict[str, Any],
    scalar_multipliers: list[Fraction],
    residuals: list[Fraction],
) -> list[dict[str, Any]]:
    failures: list[dict[str, Any]] = []
    nonnegative_positions = {
        int(record["meta"]["orbit_id"]): pos
        for pos, record in enumerate(data["scalar_constraints"])
        if record.get("kind") == "nonnegative_variable"
    }
    for var_id, residual in enumerate(residuals, start=1):
        pos = nonnegative_positions.get(var_id)
        if pos is None:
            failures.append({"variable": var_id, "reason": "missing nonnegative atom"})
            continue
        corrected = scalar_multipliers[pos] - residual
        if corrected < 0:
            failures.append({
                "variable": var_id,
                "reason": "negative corrected multiplier",
                "multiplier": frac_json(scalar_multipliers[pos]),
                "residual": frac_json(residual),
                "corrected": frac_json(corrected),
            })
            continue
        scalar_multipliers[pos] = corrected
    return failures


def weighted_ldl(matrix: list[list[Fraction]]) -> list[dict[str, Any]]:
    """Return rows d, v with A = sum d * v * v^T."""

    n = len(matrix)
    current = [row[:] for row in matrix]
    remaining = list(range(n))
    rows: list[dict[str, Any]] = []
    while remaining:
        pivot = None
        for idx in remaining:
            if current[idx][idx] > 0:
                pivot = idx
                break
        if pivot is None:
            nonzero = [
                (i, j, current[i][j])
                for i in remaining
                for j in remaining
                if current[i][j] != 0
            ]
            if nonzero:
                raise ValueError(f"nonzero zero-pivot tail: {nonzero[:5]}")
            break
        diag = current[pivot][pivot]
        row = [Fraction(0) for _ in range(n)]
        for idx in remaining:
            row[idx] = current[pivot][idx] / diag
        rows.append({"diag": diag, "row": row})
        for i in remaining:
            for j in remaining:
                current[i][j] -= diag * row[i] * row[j]
        remaining.remove(pivot)
    return rows


def check_weighted_ldl(
    matrix: list[list[Fraction]], rows: list[dict[str, Any]]
) -> Fraction:
    max_residual = Fraction(0)
    n = len(matrix)
    for i in range(n):
        for j in range(n):
            value = sum(item["diag"] * item["row"][i] * item["row"][j] for item in rows)
            residual = value - matrix[i][j]
            if abs(residual) > abs(max_residual):
                max_residual = residual
    return max_residual


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("export_json", type=Path)
    parser.add_argument("--expressions-json", type=Path, required=True)
    parser.add_argument(
        "--full-expressions-json",
        type=Path,
        default=None,
        help="optional --full-variables --include-expressions export for full aggregate data",
    )
    parser.add_argument(
        "--full-scalar-component-chunk-size",
        type=int,
        default=0,
        help=(
            "when full expressions are provided, emit scalar component chunks "
            "of this many scalar constraints; 0 disables scalar chunks"
        ),
    )
    parser.add_argument(
        "--full-scalar-component-nonmatrix-chunk-size",
        type=int,
        default=0,
        help=(
            "when full expressions are provided, emit family-aware scalar "
            "component chunks of this many non-matrix scalar constraints; "
            "requires --full-scalar-component-matrix-cut-chunk-size"
        ),
    )
    parser.add_argument(
        "--full-scalar-component-matrix-cut-chunk-size",
        type=int,
        default=0,
        help=(
            "when full expressions are provided, emit family-aware scalar "
            "component chunks of this many matrix-cut scalar constraints; "
            "requires --full-scalar-component-nonmatrix-chunk-size"
        ),
    )
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument("--L", type=int, default=None)
    parser.add_argument("--rational-denominator", type=int, required=True)
    args = parser.parse_args()
    if args.full_scalar_component_chunk_size < 0:
        parser.error("--full-scalar-component-chunk-size must be nonnegative")
    family_chunking = (
        args.full_scalar_component_nonmatrix_chunk_size > 0
        or args.full_scalar_component_matrix_cut_chunk_size > 0
    )
    if args.full_scalar_component_nonmatrix_chunk_size < 0:
        parser.error("--full-scalar-component-nonmatrix-chunk-size must be nonnegative")
    if args.full_scalar_component_matrix_cut_chunk_size < 0:
        parser.error(
            "--full-scalar-component-matrix-cut-chunk-size must be nonnegative"
        )
    if family_chunking:
        if args.full_scalar_component_chunk_size > 0:
            parser.error(
                "use either --full-scalar-component-chunk-size or family-aware "
                "scalar chunk sizes, not both"
            )
        if (
            args.full_scalar_component_nonmatrix_chunk_size <= 0
            or args.full_scalar_component_matrix_cut_chunk_size <= 0
        ):
            parser.error(
                "family-aware scalar chunking requires both "
                "--full-scalar-component-nonmatrix-chunk-size and "
                "--full-scalar-component-matrix-cut-chunk-size"
            )

    data = json.loads(args.export_json.read_text())
    expr_data = json.loads(args.expressions_json.read_text())
    rat.merge_expression_maps(data, expr_data)

    scalar_multipliers = rationalized_scalar_multipliers(data, args.rational_denominator)
    psd_matrices = rationalized_psd_matrices(data, args.rational_denominator)
    dual_const, _dual_coeffs, residuals = affine_identity(
        data, scalar_multipliers, psd_matrices
    )
    correction_failures = correct_with_nonnegative_atoms(data, scalar_multipliers, residuals)
    if correction_failures:
        raise SystemExit(f"nonnegative correction failed: {correction_failures[:3]}")
    dual_const, dual_coeffs, residuals = affine_identity(
        data, scalar_multipliers, psd_matrices
    )
    nonzero_residuals = sum(1 for residual in residuals if residual)
    if nonzero_residuals:
        max_residual = max(residuals, key=abs)
        raise SystemExit(
            "affine identity is not exact after correction: "
            f"{nonzero_residuals} residuals, max {max_residual}"
        )

    raw_bound = -dual_const
    scaled_bound = raw_bound * Fraction(2) ** int(data["n"])

    full_aggregate_dual_expression = None
    full_aggregate_dual_expression_components = None
    full_objective_subconst_expression = None
    stationarity_validation = None
    if args.full_expressions_json is not None:
        full_expr_data = json.loads(args.full_expressions_json.read_text())
        (
            full_dual_const,
            full_dual_coeffs,
            scalar_component,
            scalar_chunks,
            psd_components,
        ) = full_aggregate_identity(
            data,
            full_expr_data,
            scalar_multipliers,
            psd_matrices,
            args.full_scalar_component_chunk_size,
            args.full_scalar_component_nonmatrix_chunk_size,
            args.full_scalar_component_matrix_cut_chunk_size,
        )
        if full_dual_const != dual_const:
            raise SystemExit(
                "full aggregate constant does not match quotient aggregate: "
                f"{full_dual_const} != {dual_const}"
            )
        full_dual_lean_coeffs = lean_ordered_full_coeffs(
            full_expr_data, full_dual_coeffs
        )
        full_aggregate_dual_expression = sparse_expression_json(
            full_dual_const, full_dual_lean_coeffs
        )
        candidate_full_objective_subconst_expression = sparse_expression_json(
            -raw_bound,
            lean_ordered_full_coeffs(
                full_expr_data,
                objective_coefficients(full_expr_data),
            ),
        )
        full_stationarity_metadata = {
            "full_components_sum_equals_full_aggregate_dual_expression": True,
            "quotient_full_aggregate_equals_aggregate": True,
            "full_variable_count": variable_count(full_expr_data),
            "quotient_variable_count": variable_count(data),
            "rational_denominator": args.rational_denominator,
            "full_scalar_component_chunk_size":
                args.full_scalar_component_chunk_size,
            "full_scalar_component_nonmatrix_chunk_size":
                args.full_scalar_component_nonmatrix_chunk_size,
            "full_scalar_component_matrix_cut_chunk_size":
                args.full_scalar_component_matrix_cut_chunk_size,
        }
        try:
            validate_sparse_expression_equal(
                "full objective subConst vs full aggregate dual expression",
                candidate_full_objective_subconst_expression,
                full_aggregate_dual_expression,
            )
        except ValueError:
            full_objective_subconst_expression = None
            stationarity_validation = {
                **full_stationarity_metadata,
                "objective_subconst_equals_full_aggregate_dual_expression": False,
                "full_objective_subconst_expression_omitted": True,
                "full_objective_subconst_omitted_reason": (
                    "The raw full-variable objective stationarity identity is "
                    "not used by the compact/full quotient certificate route."
                ),
            }
        else:
            full_objective_subconst_expression = (
                candidate_full_objective_subconst_expression
            )
            stationarity_validation = {
                **full_stationarity_metadata,
                "objective_subconst_equals_full_aggregate_dual_expression": True,
                "full_objective_subconst_expression_omitted": False,
            }
        scalar_const, scalar_coeffs = scalar_component
        full_aggregate_dual_expression_components = {
            "scalar": sparse_expression_json(
                scalar_const,
                lean_ordered_full_coeffs(full_expr_data, scalar_coeffs),
            ),
            "psd": [
                {
                    "kind": record["kind"],
                    "meta": record["meta"],
                    "expr": sparse_expression_json(
                        psd_const,
                        lean_ordered_full_coeffs(full_expr_data, psd_coeffs),
                    ),
                }
                for record, psd_const, psd_coeffs in psd_components
            ],
        }
        if scalar_chunks:
            scalar_chunk_items = []
            for start, end, chunk_const, chunk_coeffs in scalar_chunks:
                lean_chunk_coeffs = lean_ordered_full_coeffs(
                    full_expr_data, chunk_coeffs
                )
                expr = sparse_expression_json(chunk_const, lean_chunk_coeffs)
                item = scalar_range_metadata(
                    data,
                    start,
                    end,
                    term_count=len(expr["coeffs"]),
                )
                item["expr"] = expr
                scalar_chunk_items.append(item)
            full_aggregate_dual_expression_components["scalar_chunks"] = (
                scalar_chunk_items
            )

    ldl_records = []
    max_ldl_residual = Fraction(0)
    for record, matrix in zip(data["psd_constraints"], psd_matrices, strict=True):
        rows = weighted_ldl(matrix)
        residual = check_weighted_ldl(matrix, rows)
        if residual:
            raise SystemExit(f"LDL residual for {record['kind']} {record['meta']}: {residual}")
        max_ldl_residual = max(max_ldl_residual, residual, key=abs)
        ldl_records.append({
            "kind": record["kind"],
            "meta": record["meta"],
            "size": len(matrix),
            "rank": len(rows),
            "diag": [frac_json(item["diag"]) for item in rows],
            "rows": [[frac_json(entry) for entry in item["row"]] for item in rows],
        })

    threshold = None if args.L is None else Fraction((args.L - 1) ** 3)

    output = {
        "format": "gp2025-binary-exact-certificate-data-v1",
        "n": data["n"],
        "r": data["r"],
        "target_L": args.L,
        "variable_mode": data.get("variable_mode", "quotient"),
        "symmetry_constraints": data.get("symmetry_constraints", False),
        "variable_count": variable_count(data),
        "constraint_counts": data.get("constraint_counts", {}),
        "rational_denominator": args.rational_denominator,
        "raw_bound": frac_json(raw_bound),
        "scaled_bound": frac_json(scaled_bound),
        "scaled_bound_decimal": frac_decimal(scaled_bound),
        "threshold": None if threshold is None else frac_json(threshold),
        "passes_threshold": None if threshold is None else threshold < scaled_bound,
        "aggregate_dual_expression": sparse_expression_json(dual_const, dual_coeffs),
        "scalar_multipliers": [
            {
                "kind": record["kind"],
                "meta": record["meta"],
                "value": frac_json(value),
            }
            for record, value in zip(data["scalar_constraints"], scalar_multipliers, strict=True)
        ],
        "psd_matrices": [
            {
                "kind": record["kind"],
                "meta": record["meta"],
                "matrix": [[frac_json(entry) for entry in row] for row in matrix],
            }
            for record, matrix in zip(data["psd_constraints"], psd_matrices, strict=True)
        ],
        "weighted_ldl": ldl_records,
    }
    if full_aggregate_dual_expression is not None:
        output["full_aggregate_dual_expression"] = full_aggregate_dual_expression
    if full_objective_subconst_expression is not None:
        output["full_objective_subconst_expression"] = (
            full_objective_subconst_expression
        )
    if stationarity_validation is not None:
        output["stationarity_validation"] = stationarity_validation
    if full_aggregate_dual_expression_components is not None:
        output["full_aggregate_dual_expression_components"] = (
            full_aggregate_dual_expression_components
        )

    args.out.write_text(json.dumps(output, separators=(",", ":")) + "\n")
    print(f"wrote {args.out}")
    print(f"scaled bound: {output['scaled_bound_decimal']}")
    if threshold is not None:
        print(f"passes threshold: {output['passes_threshold']}")
    if full_aggregate_dual_expression is not None:
        print("full aggregate expression: included")
    if full_objective_subconst_expression is not None:
        print("full objective subConst expression: included")
    if full_aggregate_dual_expression_components is not None:
        print("full aggregate expression components: included")
    print(f"PSD LDL blocks: {len(ldl_records)}")


if __name__ == "__main__":
    main()
