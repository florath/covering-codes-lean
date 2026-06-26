#!/usr/bin/env python3
"""Inspect a GP 2025 Julia dual export and prepare rationalization metadata.

This script intentionally does not certify an SDP bound.  It checks that a
solver export has the numerical margin needed for a requested integer lower
bound and records simple counts/errors before exact rational reconstruction.
"""

from __future__ import annotations

import argparse
import json
from decimal import Decimal, InvalidOperation, ROUND_FLOOR, getcontext
from fractions import Fraction
from pathlib import Path
from typing import Any


def decimal_from_export(value: str) -> Decimal:
    try:
        return Decimal(value)
    except InvalidOperation as exc:
        raise SystemExit(f"cannot parse decimal value {value!r}") from exc


def fraction_from_export(value: str) -> Fraction:
    return Fraction(decimal_from_export(value))


def exact_decimal_fraction(value: Decimal) -> Fraction:
    return Fraction(value)


def count_dual_errors(records: list[dict[str, Any]]) -> int:
    total = 0
    for record in records:
        dual = record.get("dual")
        if isinstance(dual, dict) and not dual.get("ok", False):
            total += 1
    return total


def paper_beta(n: int, r: int, inequality: str) -> int:
    if inequality == "sphere":
        return 1
    if inequality == "van_wee":
        return (n + 1 + r) // (r + 1)
    raise ValueError(f"unknown inequality slot {inequality!r}")


def dual_decimal_value(record: dict[str, Any]) -> Any | None:
    dual = record.get("dual")
    if not isinstance(dual, dict) or not dual.get("ok", False):
        return None
    return dual.get("value")


def dual_bound_from_constant_terms(data: dict[str, Any]) -> Decimal | None:
    """Compute the numerical dual bound from constant terms only.

    For an identity of the form `objective - bound = dual_expression`, the
    objective has zero constant term, so `bound = -dual_expression.const`.
    """

    if "scalar_constraints" not in data or "psd_constraints" not in data:
        return None
    n = int(data["n"])
    r = int(data["r"])
    const = Decimal(0)

    for record in data["scalar_constraints"]:
        value = dual_decimal_value(record)
        if value is None:
            continue
        if record.get("kind") == "matrix_cut_4":
            beta = paper_beta(n, r, record["meta"]["inequality"])
            const += Decimal(value) * Decimal(-beta)

    for record in data["psd_constraints"]:
        value = dual_decimal_value(record)
        if value is None:
            continue
        kind = record.get("kind")
        meta = record.get("meta", {})
        if kind == "complement_block" and meta.get("k") == 0:
            const += Decimal(value[0][0])
        elif kind == "lasserre_block" and meta.get("k") == 0:
            beta = paper_beta(n, r, meta["inequality"])
            const += Decimal(value[0][0]) * Decimal(-beta)

    return -const


def add_scaled_affine(
    const: Fraction,
    coeffs: list[Fraction],
    scale: Fraction,
    expr: dict[str, Any],
) -> tuple[Fraction, list[Fraction]]:
    const += scale * fraction_from_export(expr["const"])
    for idx, coeff in expr["coeffs"]:
        coeffs[int(idx) - 1] += scale * fraction_from_export(coeff)
    return const, coeffs


def objective_coefficients(data: dict[str, Any]) -> list[Fraction]:
    nvars = int(data["quotient_variable_count"])
    coeffs = [Fraction(0) for _ in range(nvars)]
    for term in data["objective_terms"]:
        coeffs[int(term["orbit_id"]) - 1] += Fraction(int(term["coeff"]))
    return coeffs


def dual_fraction_value(record: dict[str, Any], max_denominator: int | None) -> Any | None:
    value = dual_decimal_value(record)
    if value is None:
        return None
    frac = fraction_from_export(value)
    if max_denominator is not None:
        frac = frac.limit_denominator(max_denominator)
    return frac


def matrix_dual_fraction_value(value: str, max_denominator: int | None) -> Fraction:
    frac = fraction_from_export(value)
    if max_denominator is not None:
        frac = frac.limit_denominator(max_denominator)
    return frac


def affine_identity_residual(
    data: dict[str, Any],
    max_denominator: int | None = None,
    correct_nonnegative: bool = False,
) -> dict[str, Any]:
    if not data.get("scalar_constraints") or not data.get("psd_constraints"):
        raise ValueError("missing constraints")
    if "expr" not in data["scalar_constraints"][0]:
        raise ValueError("export lacks scalar expression maps; rerun with --include-expressions")
    if "matrix_expr" not in data["psd_constraints"][0]:
        raise ValueError("export lacks PSD expression maps; rerun with --include-expressions")

    nvars = int(data["quotient_variable_count"])
    objective = objective_coefficients(data)
    dual_const = Fraction(0)
    dual_coeffs = [Fraction(0) for _ in range(nvars)]

    for record in data["scalar_constraints"]:
        value = dual_fraction_value(record, max_denominator)
        if value is None:
            continue
        dual_const, dual_coeffs = add_scaled_affine(
            dual_const, dual_coeffs, value, record["expr"]
        )

    for record in data["psd_constraints"]:
        value = dual_decimal_value(record)
        if value is None:
            continue
        matrix = value
        expr_matrix = record["matrix_expr"]
        for row_dual, row_expr in zip(matrix, expr_matrix, strict=True):
            for entry_dual, entry_expr in zip(row_dual, row_expr, strict=True):
                dual_const, dual_coeffs = add_scaled_affine(
                    dual_const,
                    dual_coeffs,
                    matrix_dual_fraction_value(entry_dual, max_denominator),
                    entry_expr,
                )

    residuals = [dual_coeffs[i] - objective[i] for i in range(nvars)]
    correction_failures = []
    if correct_nonnegative:
        nonnegative_records = {
            int(record["meta"]["orbit_id"]): record
            for record in data["scalar_constraints"]
            if record.get("kind") == "nonnegative_variable"
        }
        for var_id, residual in enumerate(residuals, start=1):
            record = nonnegative_records.get(var_id)
            if record is None:
                correction_failures.append({"variable": var_id, "reason": "missing nonnegative atom"})
                continue
            multiplier = dual_fraction_value(record, max_denominator)
            if multiplier is None:
                correction_failures.append({"variable": var_id, "reason": "missing dual"})
                continue
            corrected = multiplier - residual
            if corrected < 0:
                correction_failures.append({
                    "variable": var_id,
                    "reason": "negative corrected multiplier",
                    "multiplier": multiplier,
                    "residual": residual,
                    "corrected": corrected,
                })
                continue
            # Nonnegative variable atoms have coefficient 1 on exactly this
            # variable and zero constant, so this multiplier correction kills
            # the residual without changing the bound.
            dual_coeffs[var_id - 1] -= residual
        residuals = [dual_coeffs[i] - objective[i] for i in range(nvars)]
    max_idx, max_residual = max(
        enumerate(residuals), key=lambda item: abs(item[1]), default=(0, Fraction(0))
    )
    raw_bound = -dual_const
    scaled_bound = raw_bound * Fraction(2) ** int(data["n"])
    return {
        "raw_bound": raw_bound,
        "scaled_bound": scaled_bound,
        "max_coeff_residual": max_residual,
        "max_coeff_residual_variable": max_idx + 1,
        "nonzero_coeff_residuals": sum(1 for x in residuals if x),
        "max_denominator": max_denominator,
        "correct_nonnegative": correct_nonnegative,
        "correction_failures": correction_failures,
    }


def merge_expression_maps(data: dict[str, Any], expr_data: dict[str, Any]) -> None:
    if data.get("format") != expr_data.get("format"):
        raise ValueError("expression export format does not match")
    for key in ("n", "r", "quotient_variable_count", "constraint_counts"):
        if data.get(key) != expr_data.get(key):
            raise ValueError(f"expression export field {key!r} does not match")

    for section, expr_key in (
        ("scalar_constraints", "expr"),
        ("psd_constraints", "matrix_expr"),
    ):
        records = data.get(section, [])
        expr_records = expr_data.get(section, [])
        if len(records) != len(expr_records):
            raise ValueError(f"expression export section {section!r} has different length")
        for idx, (record, expr_record) in enumerate(zip(records, expr_records, strict=True)):
            if record.get("kind") != expr_record.get("kind") or record.get("meta") != expr_record.get("meta"):
                raise ValueError(f"expression export mismatch in {section}[{idx}]")
            if expr_key not in expr_record:
                raise ValueError(
                    f"expression export lacks {expr_key!r}; rerun exporter with --include-expressions"
                )
            record[expr_key] = expr_record[expr_key]


def fraction_to_decimal_string(value: Fraction) -> str:
    return str(Decimal(value.numerator) / Decimal(value.denominator))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("export_json", type=Path)
    parser.add_argument("--L", type=int, default=None, help="target lower bound L")
    parser.add_argument("--out", type=Path, default=None, help="write summary JSON")
    parser.add_argument(
        "--check-affine",
        action="store_true",
        help="check numerical dual affine identity; requires --include-expressions export",
    )
    parser.add_argument(
        "--expressions-json",
        type=Path,
        default=None,
        help="merge expression maps from a no-solve --include-expressions export",
    )
    parser.add_argument(
        "--rational-denominator",
        type=int,
        default=None,
        help="when checking the affine identity, first round duals with limit_denominator(N)",
    )
    parser.add_argument(
        "--correct-nonnegative",
        action="store_true",
        help="after rationalization, correct coefficient residuals using nonnegative-variable atoms",
    )
    args = parser.parse_args()

    getcontext().prec = 200

    data = json.loads(args.export_json.read_text())
    if data.get("format") != "gp2025-binary-dual-candidate-v1":
        raise SystemExit(f"unexpected export format: {data.get('format')!r}")
    if args.expressions_json is not None:
        expr_data = json.loads(args.expressions_json.read_text())
        merge_expression_maps(data, expr_data)

    n = data["n"]
    r = data["r"]
    solved = "lean_objective_bound" in data

    summary: dict[str, Any] = {
        "n": n,
        "r": r,
        "solved": solved,
        "quotient_variable_count": data.get("quotient_variable_count"),
        "constraint_counts": data.get("constraint_counts", {}),
        "scalar_dual_errors": count_dual_errors(data.get("scalar_constraints", [])),
        "psd_dual_errors": count_dual_errors(data.get("psd_constraints", [])),
    }

    print(f"binary GP export: n={n}, r={r}")
    print(f"quotient variables: {summary['quotient_variable_count']}")
    print(f"constraints: {summary['constraint_counts']}")

    if solved:
        bound_decimal = decimal_from_export(data["lean_objective_bound"])
        bound_fraction = exact_decimal_fraction(bound_decimal)
        floor_bound = int(bound_decimal.to_integral_value(rounding=ROUND_FLOOR))
        dual_raw_bound = dual_bound_from_constant_terms(data)
        dual_scaled_bound = None
        if dual_raw_bound is not None:
            dual_scaled_bound = dual_raw_bound * (Decimal(2) ** int(n))
        summary["termination_status"] = data.get("termination_status")
        summary["primal_status"] = data.get("primal_status")
        summary["dual_status"] = data.get("dual_status")
        summary["lean_objective_bound_decimal"] = str(bound_decimal)
        summary["lean_objective_bound_floor"] = floor_bound
        summary["lean_objective_bound_decimal_fraction"] = {
            "num": bound_fraction.numerator,
            "den": bound_fraction.denominator,
        }

        print(f"termination: {summary['termination_status']}")
        print(f"primal/dual status: {summary['primal_status']} / {summary['dual_status']}")
        print(f"Lean objective bound decimal: {bound_decimal}")
        print(f"integer floor candidate: {floor_bound}")
        if dual_scaled_bound is not None:
            dual_floor = int(dual_scaled_bound.to_integral_value(rounding=ROUND_FLOOR))
            summary["dual_raw_bound_decimal"] = str(dual_raw_bound)
            summary["dual_scaled_bound_decimal"] = str(dual_scaled_bound)
            summary["dual_scaled_bound_floor"] = dual_floor
            print(f"dual-derived scaled bound: {dual_scaled_bound}")
            print(f"dual-derived integer floor candidate: {dual_floor}")

        if args.L is not None:
            threshold = (args.L - 1) ** 3
            margin_source = dual_scaled_bound if dual_scaled_bound is not None else bound_decimal
            margin = margin_source - Decimal(threshold)
            summary["target_L"] = args.L
            summary["cube_threshold"] = threshold
            summary["decimal_margin"] = str(margin)
            summary["passes_decimal_threshold"] = margin > 0
            print(f"target threshold ({args.L}-1)^3: {threshold}")
            print(f"decimal margin: {margin}")
            print(f"passes decimal threshold: {summary['passes_decimal_threshold']}")

        if args.check_affine:
            residual = affine_identity_residual(
                data, args.rational_denominator, args.correct_nonnegative
            )
            raw_bound = residual["raw_bound"]
            scaled_bound = residual["scaled_bound"]
            max_residual = residual["max_coeff_residual"]
            summary["affine_identity"] = {
                "rational_denominator": args.rational_denominator,
                "correct_nonnegative": args.correct_nonnegative,
                "raw_bound_decimal": fraction_to_decimal_string(raw_bound),
                "scaled_bound_decimal": fraction_to_decimal_string(scaled_bound),
                "max_coeff_residual_decimal": fraction_to_decimal_string(abs(max_residual)),
                "max_coeff_residual_variable": residual["max_coeff_residual_variable"],
                "nonzero_coeff_residuals": residual["nonzero_coeff_residuals"],
                "correction_failure_count": len(residual["correction_failures"]),
            }
            if args.rational_denominator is None:
                print("affine identity check:")
            else:
                print(
                    "affine identity check after limit_denominator("
                    f"{args.rational_denominator}):"
                )
            print(f"  raw bound from full identity: {fraction_to_decimal_string(raw_bound)}")
            print(f"  scaled bound from full identity: {fraction_to_decimal_string(scaled_bound)}")
            print(
                "  max coefficient residual: "
                f"{fraction_to_decimal_string(abs(max_residual))} "
                f"at variable {residual['max_coeff_residual_variable']}"
            )
            print(f"  nonzero coefficient residuals: {residual['nonzero_coeff_residuals']}")
            if args.correct_nonnegative:
                print(
                    "  nonnegative correction failures: "
                    f"{len(residual['correction_failures'])}"
                )
    else:
        print("export was generated with --no-solve; no objective or dual values are present")

    print(f"scalar dual extraction errors: {summary['scalar_dual_errors']}")
    print(f"PSD dual extraction errors: {summary['psd_dual_errors']}")

    if args.out is not None:
        args.out.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")
        print(f"wrote {args.out}")


if __name__ == "__main__":
    main()
