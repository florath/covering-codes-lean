#!/usr/bin/env python3
"""Generate a Lean quotient SDP certificate from exact GP 2025 data.

This is an initial generator for inspecting the exact Lean term shape.  For the
full `(n,r) = (13,1)` instance, the monolithic output is too large to be a good
checked artifact; the next production step is to split the emitted data/proofs
into smaller generated modules.
"""

from __future__ import annotations

import argparse
from dataclasses import dataclass
import hashlib
import json
import re
import sys
from fractions import Fraction
from pathlib import Path
from typing import Any

import gp2025_rationalize_dual as rat

if hasattr(sys, "set_int_max_str_digits"):
    sys.set_int_max_str_digits(0)

NAT_WORD = {
    0: "Zero",
    1: "One",
    2: "Two",
    3: "Three",
    4: "Four",
    5: "Five",
    6: "Six",
    7: "Seven",
    8: "Eight",
    9: "Nine",
    10: "Ten",
    11: "Eleven",
    12: "Twelve",
    13: "Thirteen",
}


@dataclass(frozen=True)
class BinaryCompactSupportConfig:
    n: int
    r: int
    name: str
    qvars: int
    full_vars: int
    support_module: str
    support_file: Path
    support_prefix: str
    qvar_type: str
    orbit_of_fin: str
    orbit_to_fin: str
    orbit_of_fin_to_fin: str
    orbit_to_fin_of_fin: str
    quotient_of_orbit_fin: str
    quotient_fiber: str
    quotient_linexpr: str

    @property
    def full_orbit_type(self) -> str:
        return f"BinaryOrbitIndex {self.n}"

    @property
    def quotient_fiber_list(self) -> str:
        return f"{self.quotient_fiber}List"


@dataclass(frozen=True)
class CompactScalarSourceRoute:
    source_eq_module: str
    source_module: str
    source_sum_name: str
    source_groups: list[dict[str, Any]]
    source_chunks: list[dict[str, Any]]
    source_derived_data: bool


def frac_from_json(value: list[int]) -> Fraction:
    return Fraction(int(value[0]), int(value[1]))


def lean_rat(value: Fraction) -> str:
    if value.denominator == 1:
        return f"({value.numerator} : Rat)"
    return f"(({value.numerator} : Rat) / ({value.denominator} : Rat))"


def lean_nnrat(value: Fraction) -> str:
    if value < 0:
        raise ValueError(f"expected nonnegative rational, got {value}")
    if value.denominator == 1:
        return f"({value.numerator} : NNRat)"
    return f"(({value.numerator} : NNRat) / ({value.denominator} : NNRat))"


def expr_from_export(expr: dict[str, Any], scale: Fraction = Fraction(1)) -> str:
    const = scale * rat.fraction_from_export(expr["const"])
    terms = [
        f"({int(idx) - 1}, {lean_rat(scale * rat.fraction_from_export(coeff))})"
        for idx, coeff in expr["coeffs"]
        if scale * rat.fraction_from_export(coeff) != 0
    ]
    return f"sparseLinExpr {lean_rat(const)} [{', '.join(terms)}]"


def expr_from_exact_coeffs(expr: dict[str, Any], scale: Fraction = Fraction(1)) -> str:
    const = scale * frac_from_json(expr["const"])
    terms = exact_coeff_terms(expr, scale)
    return f"sparseLinExpr {lean_rat(const)} [{', '.join(terms)}]"


def exact_coeff_terms(expr: dict[str, Any], scale: Fraction = Fraction(1)) -> list[str]:
    return [
        f"({int(idx)}, {lean_rat(scale * frac_from_json(coeff))})"
        for idx, coeff in expr["coeffs"]
        if scale * frac_from_json(coeff) != 0
    ]


def exact_coeff_map(
    expr: dict[str, Any],
    dim: int,
    scale: Fraction = Fraction(1),
) -> dict[int, Fraction]:
    coeffs: dict[int, Fraction] = {}
    for raw_idx, raw_coeff in expr["coeffs"]:
        idx = int(raw_idx)
        if idx < 0 or idx >= dim:
            raise ValueError(f"sparse coefficient index {idx} outside [0, {dim})")
        coeff = scale * frac_from_json(raw_coeff)
        if coeff == 0:
            continue
        coeffs[idx] = coeffs.get(idx, Fraction(0)) + coeff
        if coeffs[idx] == 0:
            del coeffs[idx]
    return coeffs


def sparse_terms_from_coeffs(coeffs: dict[int, Fraction]) -> list[str]:
    return [
        f"({idx}, {lean_rat(value)})"
        for idx, value in sorted(coeffs.items())
        if value
    ]


def sparse_data_lines_from_coeffs(
    def_name: str,
    dim: int,
    const: Fraction,
    coeffs: dict[int, Fraction],
) -> list[str]:
    terms = sparse_terms_from_coeffs(coeffs)
    return [
        f"def {def_name} : SparseLinExprData {dim} where",
        f"  const := {lean_rat(const)}",
        f"  terms := [{', '.join(terms)}]",
        "",
    ]


def objective_coeff_map(
    expr_data: dict[str, Any],
    dim: int,
    scale: Fraction,
) -> dict[int, Fraction]:
    coeffs: dict[int, Fraction] = {}
    for term in expr_data["objective_terms"]:
        idx = int(term["orbit_id"]) - 1
        if idx < 0 or idx >= dim:
            raise ValueError(f"objective coefficient index {idx} outside [0, {dim})")
        coeff = scale * Fraction(int(term["coeff"]))
        if coeff == 0:
            continue
        coeffs[idx] = coeffs.get(idx, Fraction(0)) + coeff
        if coeffs[idx] == 0:
            del coeffs[idx]
    return coeffs


def validate_sparse_coeff_maps_equal(
    label: str,
    left_const: Fraction,
    left_coeffs: dict[int, Fraction],
    right_const: Fraction,
    right_coeffs: dict[int, Fraction],
) -> None:
    if left_const != right_const:
        raise ValueError(
            f"{label} constant mismatch: {left_const} != {right_const}"
        )
    if left_coeffs != right_coeffs:
        for idx in sorted(set(left_coeffs) | set(right_coeffs)):
            left = left_coeffs.get(idx, Fraction(0))
            right = right_coeffs.get(idx, Fraction(0))
            if left != right:
                raise ValueError(
                    f"{label} coefficient mismatch at index {idx}: "
                    f"{left} != {right}"
                )
        raise ValueError(f"{label} coefficient mismatch")


def validate_compact_objective_data(
    objective_coeffs: dict[int, Fraction],
    scaled_bound: Fraction,
    aggregate_dual_expression: dict[str, Any],
    qvars: int,
    scale: Fraction,
) -> None:
    validate_sparse_coeff_maps_equal(
        "compact objective subConst data vs aggregate dual expression",
        -scaled_bound,
        objective_coeffs,
        scale * frac_from_json(aggregate_dual_expression["const"]),
        exact_coeff_map(aggregate_dual_expression, qvars, scale),
    )


def binary_compact_quotient_fibers(
    support_config: BinaryCompactSupportConfig,
) -> list[list[int]]:
    text = support_config.support_file.read_text()
    pattern = re.compile(r"\|\s*⟨(\d+), _⟩\s*=>\s*⟨(\d+), by omega⟩")
    mapping: dict[int, int] = {}
    in_def = False
    fin_def = f"def {support_config.quotient_of_orbit_fin}"
    orbit_def = f"def {support_config.support_prefix}QuotientOfOrbit"
    for line in text.splitlines():
        if line.startswith(fin_def):
            in_def = True
            continue
        if in_def and line.startswith(orbit_def):
            break
        if not in_def:
            continue
        match = pattern.search(line)
        if match:
            mapping[int(match.group(1))] = int(match.group(2))
    full_vars = support_config.full_vars
    qvars = support_config.qvars
    if sorted(mapping) != list(range(full_vars)):
        missing = sorted(set(range(full_vars)) - set(mapping))
        raise ValueError(
            f"could not parse all {support_config.support_prefix} "
            "quotient mappings; "
            f"missing {missing[:10]}"
        )
    fibers: list[list[int]] = [[] for _ in range(qvars)]
    for full_idx in range(full_vars):
        quotient_idx = mapping[full_idx]
        if quotient_idx < 0 or quotient_idx >= qvars:
            raise ValueError(
                f"quotient index {quotient_idx} outside [0, {qvars})"
            )
        fibers[quotient_idx].append(full_idx)
    return fibers


def binary_compact_orbit_of_fin_names(
    support_config: BinaryCompactSupportConfig,
) -> list[str]:
    text = support_config.support_file.read_text()
    pattern = re.compile(r"\|\s*⟨(\d+), _⟩\s*=>\s*([A-Za-z0-9_']+)")
    mapping: dict[int, str] = {}
    in_def = False
    fin_def = f"def {support_config.orbit_of_fin}"
    stop_def = f"def {support_config.quotient_of_orbit_fin}"
    for line in text.splitlines():
        if line.startswith(fin_def):
            in_def = True
            continue
        if in_def and line.startswith(stop_def):
            break
        if not in_def:
            continue
        match = pattern.search(line)
        if match:
            mapping[int(match.group(1))] = match.group(2)
    if sorted(mapping) != list(range(support_config.full_vars)):
        missing = sorted(set(range(support_config.full_vars)) - set(mapping))
        raise ValueError(
            f"could not parse all {support_config.support_prefix} orbit names; "
            f"missing {missing[:10]}"
        )
    return [mapping[idx] for idx in range(support_config.full_vars)]


def binary_length_thirteen_quotient_fibers() -> list[list[int]]:
    return binary_compact_quotient_fibers(
        binary_compact_support_config(13, 1, 123, "binaryK2_13_1")
    )


def validate_compact_full_quotient_data(
    aggregate_dual_expression: dict[str, Any],
    full_aggregate_dual_expression: dict[str, Any],
    qvars: int,
    full_vars: int,
    scale: Fraction,
    support_config: BinaryCompactSupportConfig,
) -> None:
    if qvars != support_config.qvars or full_vars != support_config.full_vars:
        raise ValueError(
            "compact full quotient validation currently expects the "
            f"{support_config.support_prefix} quotient fibers"
        )
    aggregate_coeffs = exact_coeff_map(aggregate_dual_expression, qvars, scale)
    full_coeffs = exact_coeff_map(full_aggregate_dual_expression, full_vars, scale)
    quotient_coeffs: dict[int, Fraction] = {}
    for qidx, fiber in enumerate(binary_compact_quotient_fibers(support_config)):
        coeff = sum((full_coeffs.get(idx, Fraction(0)) for idx in fiber), Fraction(0))
        if coeff:
            quotient_coeffs[qidx] = coeff
    validate_sparse_coeff_maps_equal(
        "compact aggregate data vs full quotient data",
        scale * frac_from_json(aggregate_dual_expression["const"]),
        aggregate_coeffs,
        scale * frac_from_json(full_aggregate_dual_expression["const"]),
        quotient_coeffs,
    )


def validate_binary_quotient_fibers(
    fibers: list[list[int]],
    full_vars: int,
    qvars: int,
) -> None:
    if len(fibers) != qvars:
        raise ValueError(f"quotient fiber count {len(fibers)} != {qvars}")
    seen: list[int] = []
    for qidx, fiber in enumerate(fibers):
        for idx in fiber:
            if idx < 0 or idx >= full_vars:
                raise ValueError(
                    f"quotient fiber {qidx} contains full index {idx} "
                    f"outside [0, {full_vars})"
                )
            seen.append(idx)
    expected = list(range(full_vars))
    if sorted(seen) != expected:
        raise ValueError("quotient fibers do not form a full partition")
    if len(set(seen)) != len(seen):
        raise ValueError("quotient fibers contain duplicate full indices")


def quotient_coeff_map(
    full_coeffs: dict[int, Fraction],
    fibers: list[list[int]],
) -> dict[int, Fraction]:
    quotient_coeffs: dict[int, Fraction] = {}
    for qidx, fiber in enumerate(fibers):
        coeff = sum(
            (full_coeffs.get(idx, Fraction(0)) for idx in fiber),
            Fraction(0),
        )
        if coeff:
            quotient_coeffs[qidx] = coeff
    return quotient_coeffs


def quotient_expr_data_over_fibers(
    expr: dict[str, Any],
    full_vars: int,
    scale: Fraction,
    fibers: list[list[int]],
) -> tuple[Fraction, dict[int, Fraction]]:
    full_coeffs = exact_coeff_map(expr, full_vars, scale)
    return (
        scale * frac_from_json(expr["const"]),
        quotient_coeff_map(full_coeffs, fibers),
    )


def add_coeff_maps(
    maps: list[dict[int, Fraction]],
) -> dict[int, Fraction]:
    total: dict[int, Fraction] = {}
    for coeffs in maps:
        for idx, coeff in coeffs.items():
            total[idx] = total.get(idx, Fraction(0)) + coeff
            if total[idx] == 0:
                del total[idx]
    return total


def validate_compact_component_quotient_sum(
    aggregate_dual_expression: dict[str, Any],
    component_records: list[dict[str, Any]],
    qvars: int,
    scale: Fraction,
) -> None:
    component_const = sum(
        (record["const"] for record in component_records),
        Fraction(0),
    )
    component_coeffs = add_coeff_maps([
        record["coeffs"] for record in component_records
    ])
    validate_sparse_coeff_maps_equal(
        "compact component quotient sum vs aggregate dual expression",
        component_const,
        component_coeffs,
        scale * frac_from_json(aggregate_dual_expression["const"]),
        exact_coeff_map(aggregate_dual_expression, qvars, scale),
    )


def build_compact_component_quotient_plan(
    exact: dict[str, Any],
    name: str,
    qvars: int,
    full_vars: int,
    scale: Fraction,
    fibers: list[list[int]],
    scalar_group_size: int,
) -> dict[str, Any]:
    if scalar_group_size <= 0:
        raise ValueError("compact scalar group size must be positive")
    components = exact.get("full_aggregate_dual_expression_components")
    aggregate_dual_expression = exact.get("aggregate_dual_expression")
    if components is None or aggregate_dual_expression is None:
        raise ValueError(
            "compact component semantic route requires full aggregate "
            "components and aggregate_dual_expression"
        )
    validate_binary_quotient_fibers(fibers, full_vars, qvars)

    scalar_records: list[dict[str, Any]] = []
    for idx, item in enumerate(components.get("scalar_chunks", [])):
        const, coeffs = quotient_expr_data_over_fibers(
            item["expr"],
            full_vars,
            scale,
            fibers,
        )
        scalar_records.append({
            "kind": "scalar",
            "idx": idx,
            "start": int(item["start"]),
            "end": int(item["end"]),
            "def": f"{name}CompactScalarChunkData{idx}",
            "module": f"CompactScalarChunkData{idx}",
            "semantic_expr": f"{name}FullAggregateScalarChunkSemanticExpr{idx}",
            "const": const,
            "coeffs": coeffs,
            "expr": item["expr"],
        })

    psd_records: list[dict[str, Any]] = []
    for idx, item in enumerate(components.get("psd", [])):
        const, coeffs = quotient_expr_data_over_fibers(
            item["expr"],
            full_vars,
            scale,
            fibers,
        )
        psd_records.append({
            "kind": "psd",
            "idx": idx,
            "def": f"{name}CompactPsdComponentData{idx}",
            "module": f"CompactPsdComponentData{idx}",
            "const": const,
            "coeffs": coeffs,
            "expr": item["expr"],
        })

    validate_compact_component_quotient_sum(
        aggregate_dual_expression,
        [*scalar_records, *psd_records],
        qvars,
        scale,
    )

    scalar_groups: list[dict[str, Any]] = []
    for group_idx, start in enumerate(range(0, len(scalar_records), scalar_group_size)):
        records = scalar_records[start:start + scalar_group_size]
        scalar_groups.append({
            "idx": group_idx,
            "start": start,
            "end": start + len(records),
            "records": records,
            "def": f"{name}CompactScalarGroupData{group_idx}",
            "sum_def": f"{name}CompactScalarGroupChunkSumData{group_idx}",
            "module": f"CompactScalarGroup{group_idx}",
        })

    return {
        "scalar_records": scalar_records,
        "psd_records": psd_records,
        "scalar_groups": scalar_groups,
    }


def validate_sparse_expr_sum(
    target: dict[str, Any],
    parts: list[dict[str, Any]],
    dim: int,
    scale: Fraction,
    label: str,
) -> None:
    target_const = scale * frac_from_json(target["const"])
    parts_const = sum(
        (scale * frac_from_json(part["const"]) for part in parts),
        Fraction(0),
    )
    if parts_const != target_const:
        raise ValueError(
            f"{label} constant mismatch: component sum {parts_const} "
            f"!= target {target_const}"
        )

    target_coeffs = exact_coeff_map(target, dim, scale)
    parts_coeffs: dict[int, Fraction] = {}
    for part in parts:
        for idx, coeff in exact_coeff_map(part, dim, scale).items():
            parts_coeffs[idx] = parts_coeffs.get(idx, Fraction(0)) + coeff
            if parts_coeffs[idx] == 0:
                del parts_coeffs[idx]

    if parts_coeffs != target_coeffs:
        for idx in sorted(set(parts_coeffs) | set(target_coeffs)):
            left = parts_coeffs.get(idx, Fraction(0))
            right = target_coeffs.get(idx, Fraction(0))
            if left != right:
                raise ValueError(
                    f"{label} coefficient mismatch at index {idx}: "
                    f"component sum {left} != target {right}"
                )
        raise ValueError(f"{label} coefficient mismatch")


def validate_full_objective_subconst_expression(
    exact: dict[str, Any],
    full_vars: int,
) -> bool:
    full_objective = exact.get("full_objective_subconst_expression")
    full_aggregate = exact.get("full_aggregate_dual_expression")
    if full_objective is None:
        return False
    if full_aggregate is None:
        raise ValueError(
            "full_objective_subconst_expression requires "
            "full_aggregate_dual_expression"
        )
    validate_sparse_expr_sum(
        full_aggregate,
        [full_objective],
        full_vars,
        Fraction(1),
        "full objective subConst vs full aggregate dual expression",
    )
    validation = exact.get("stationarity_validation", {})
    if isinstance(validation, dict) and (
        validation.get("objective_subconst_equals_full_aggregate_dual_expression")
        is False
    ):
        raise ValueError("stationarity_validation objective/full aggregate flag is false")
    return True


def sparse_data_lines(
    def_name: str,
    dim: int,
    expr: dict[str, Any],
    scale: Fraction = Fraction(1),
    const_expr: str | None = None,
) -> list[str]:
    terms = exact_coeff_terms(expr, scale)
    const = scale * frac_from_json(expr["const"])
    return [
        f"def {def_name} : SparseLinExprData {dim} where",
        f"  const := {const_expr if const_expr is not None else lean_rat(const)}",
        f"  terms := [{', '.join(terms)}]",
        "",
    ]


def nested_linexpr_add_lines(
    terms: list[str],
    base: str,
    indent: str = "  ",
) -> list[str]:
    if not terms:
        return [f"{indent}{base}"]
    lines = [
        f"{indent}LinExpr.add",
        f"{indent}  ({terms[0]})",
    ]
    if len(terms) == 1:
        lines.append(f"{indent}  ({base})")
        return lines
    tail = nested_linexpr_add_lines(terms[1:], base, indent + "  ")
    tail[0] = f"{indent}  ({tail[0].lstrip()}"
    tail[-1] = f"{tail[-1]})"
    lines.extend(tail)
    return lines


def binary_full_orbit_count(n: int) -> int:
    count = 0
    for i in range(n + 1):
        for j in range(n + 1):
            for t in range(n + 1):
                if t <= i and t <= j and i + j <= n + t:
                    count += 1
    return count


def binary_length_prefix(n: int) -> str:
    if n not in NAT_WORD:
        raise ValueError(f"no binary length name configured for n={n}")
    return f"binaryLength{NAT_WORD[n]}"


def binary_compact_support_config(
    n: int,
    r: int,
    qvars: int,
    name: str,
) -> BinaryCompactSupportConfig:
    support_prefix = binary_length_prefix(n)
    support_module = (
        "CoveringCodes.SDP.GijswijtPolak2025.Generated."
        f"BinaryLength{NAT_WORD[n]}Support"
    )
    support_file = (
        Path(__file__).resolve().parents[3]
        / "CoveringCodes/SDP/GijswijtPolak2025/Generated"
        / f"BinaryLength{NAT_WORD[n]}Support.lean"
    )
    return BinaryCompactSupportConfig(
        n=n,
        r=r,
        name=name,
        qvars=qvars,
        full_vars=binary_full_orbit_count(n),
        support_module=support_module,
        support_file=support_file,
        support_prefix=support_prefix,
        qvar_type=f"{name}QVar",
        orbit_of_fin=f"{support_prefix}OrbitOfFin",
        orbit_to_fin=f"{support_prefix}OrbitToFin",
        orbit_of_fin_to_fin=f"{support_prefix}OrbitOfFin_toFin",
        orbit_to_fin_of_fin=f"{support_prefix}OrbitToFin_ofFin",
        quotient_of_orbit_fin=f"{support_prefix}QuotientOfOrbitFin",
        quotient_fiber=f"{support_prefix}QuotientFiber",
        quotient_linexpr=f"{support_prefix}QuotientLinExpr",
    )


def matrix_expr_cases(matrix: list[list[dict[str, Any]]], scale: Fraction) -> list[str]:
    lines: list[str] = ["      fun row col =>", "        match row.val, col.val with"]
    for i, row in enumerate(matrix):
        for j, expr in enumerate(row):
            lines.append(f"        | {i}, {j} => {expr_from_export(expr, scale)}")
    lines.append("        | _, _ => sparseLinExpr 0 []")
    return lines


def rat_matrix_cases(matrix: list[list[Fraction]], scale: Fraction = Fraction(1)) -> list[str]:
    lines: list[str] = ["      fun row col =>", "        match row.val, col.val with"]
    for i, row in enumerate(matrix):
        for j, value in enumerate(row):
            lines.append(f"        | {i}, {j} => {lean_rat(scale * value)}")
    lines.append("        | _, _ => 0")
    return lines


def weight_l_function_lines(rows: list[list[Fraction]], indent: str) -> list[str]:
    lines: list[str] = [f"{indent}fun k i =>", f"{indent}  match k.val, i.val with"]
    for k, row in enumerate(rows):
        for i, value in enumerate(row):
            if value:
                lines.append(f"{indent}  | {k}, {i} => {lean_rat(value)}")
    lines.append(f"{indent}  | _, _ => 0")
    return lines


def weight_l_cases(rows: list[list[Fraction]]) -> list[str]:
    return weight_l_function_lines(rows, "          ")


def weight_diag_cases(diag: list[Fraction], scale: Fraction) -> list[str]:
    return weight_diag_function_lines(diag, scale, "          ")


def weight_diag_function_lines(
    diag: list[Fraction],
    scale: Fraction,
    indent: str,
) -> list[str]:
    lines: list[str] = [f"{indent}fun k =>", f"{indent}  match k.val with"]
    for k, value in enumerate(diag):
        lines.append(f"{indent}  | {k} => {lean_rat(scale * value)}")
    lines.append(f"{indent}  | _ => 0")
    return lines


def weight_l_def_lines(
    def_name: str,
    rank: int,
    size: int,
    rows: list[list[Fraction]],
) -> list[str]:
    return [
        f"def {def_name} : Matrix (Fin {rank}) (Fin {size}) Rat :=",
        *weight_l_function_lines(rows, "  "),
        "",
    ]


def weight_diag_def_lines(
    def_name: str,
    rank: int,
    diag: list[Fraction],
    scale: Fraction,
) -> list[str]:
    return [
        f"def {def_name} : Fin {rank} -> Rat :=",
        *weight_diag_function_lines(diag, scale, "  "),
        "",
    ]


def weighted_gram_certificate_lines(
    def_name: str,
    size: int,
    rank: int,
    matrix_name: str,
    l_name: str,
    diag_name: str,
) -> list[str]:
    return [
        f"def {def_name} : "
        f"WeightedGramEntryCertificate (Fin {size}) (Fin {rank}) "
        f"{matrix_name} :=",
        "  WeightedGramEntryCertificate.ofWeightedGramMatrix",
        f"    {l_name}",
        f"    {diag_name}",
        "    (by",
        "      intro k",
        f"      fin_cases k <;> norm_num [{diag_name}])",
        "",
    ]


def validate_weighted_ldl_blocks(exact: dict[str, Any], scale: Fraction) -> None:
    block_count = int(exact["constraint_counts"]["psd"])
    weighted_ldl = exact["weighted_ldl"]
    psd_matrices = exact["psd_matrices"]
    if len(weighted_ldl) != block_count:
        raise ValueError(
            f"weighted_ldl length {len(weighted_ldl)} != psd count {block_count}"
        )
    if len(psd_matrices) != block_count:
        raise ValueError(
            f"psd_matrices length {len(psd_matrices)} != psd count {block_count}"
        )
    for block_idx, record in enumerate(weighted_ldl):
        size = int(record["size"])
        rank = int(record["rank"])
        diag = [frac_from_json(value) for value in record["diag"]]
        rows = [[frac_from_json(entry) for entry in row] for row in record["rows"]]
        if len(diag) != rank:
            raise ValueError(
                f"weighted_ldl block {block_idx} diag length {len(diag)} "
                f"!= rank {rank}"
            )
        if len(rows) != rank:
            raise ValueError(
                f"weighted_ldl block {block_idx} row count {len(rows)} "
                f"!= rank {rank}"
            )
        for row_idx, row in enumerate(rows):
            if len(row) != size:
                raise ValueError(
                    f"weighted_ldl block {block_idx} row {row_idx} length "
                    f"{len(row)} != size {size}"
                )
        matrix = [
            [frac_from_json(entry) for entry in row]
            for row in psd_matrices[block_idx]["matrix"]
        ]
        if len(matrix) != size:
            raise ValueError(
                f"psd matrix block {block_idx} row count {len(matrix)} "
                f"!= size {size}"
            )
        for row_idx, row in enumerate(matrix):
            if len(row) != size:
                raise ValueError(
                    f"psd matrix block {block_idx} row {row_idx} length "
                    f"{len(row)} != size {size}"
                )
        scaled_diag = [scale * value for value in diag]
        for i in range(size):
            for j in range(size):
                expected = scale * matrix[i][j]
                actual = sum(
                    (
                        scaled_diag[k] * rows[k][i] * rows[k][j]
                        for k in range(rank)
                    ),
                    Fraction(0),
                )
                if actual != expected:
                    raise ValueError(
                        f"weighted_ldl block {block_idx} mismatch at "
                        f"({i}, {j}): LDL {actual} != matrix {expected}"
                    )


def binary_orbit_const_name(n: int, i: int, j: int, t: int) -> str:
    prefix = binary_length_prefix(n)
    if n < 10:
        return f"{prefix}Idx{i}{j}{t}"
    return f"{prefix}Idx_{i}_{j}_{t}"


def binary_block_index(n: int, k: int) -> str:
    return f"({{ k := {k}, hk := by omega }} : BinaryBlockIndex {n})"


def binary_positive_block_index(n: int, k: int) -> str:
    return f"⟨{binary_block_index(n, k)}, by decide⟩"


def table_inequality(name: str) -> str:
    if name == "sphere":
        return "BinaryTableInequality.sphere"
    if name == "van_wee":
        return "BinaryTableInequality.vanWee"
    raise ValueError(f"unknown table inequality: {name}")


def full_scalar_atom_case(n: int, record: dict[str, Any]) -> str:
    kind = record["kind"]
    meta = record["meta"]
    if kind == "nonnegative_variable":
        quotient_id = int(meta["orbit_id"]) - 1
        source = f"(binaryLengthThirteenRepresentativeOrbit ⟨{quotient_id}, by omega⟩)"
        return f"BinaryTableScalarAtom.nonneg {source}"
    source = binary_orbit_const_name(n, int(meta["i"]), int(meta["j"]), int(meta["t"]))
    if kind in ("basic_left_upper", "basic_diagonal_upper"):
        return f"BinaryTableScalarAtom.diagonalUpper {source}"
    if kind == "basic_triangle_lower":
        return f"BinaryTableScalarAtom.basicTriangleLower {source}"
    if kind == "basic_distance_upper":
        return f"BinaryTableScalarAtom.basicDistanceUpper {source}"
    if kind.startswith("matrix_cut_"):
        cut = int(kind.removeprefix("matrix_cut_")) - 1
        ineq = table_inequality(meta["inequality"])
        return f"BinaryTableScalarAtom.matrixCut {ineq} ⟨{cut}, by omega⟩ {source}"
    raise ValueError(f"unknown scalar kind: {kind}")


def full_matrix_atom_case(n: int, record: dict[str, Any]) -> str:
    kind = record["kind"]
    meta = record["meta"]
    k = int(meta["k"])
    if kind == "primal_block":
        return f"BinaryTableMatrixAtom.primal {binary_block_index(n, k)}"
    if kind == "complement_block":
        if k == 0:
            return "BinaryTableMatrixAtom.complementZero"
        return f"BinaryTableMatrixAtom.complementPositive {binary_positive_block_index(n, k)}"
    if kind == "lasserre_block":
        ineq = table_inequality(meta["inequality"])
        if k == 0:
            return f"BinaryTableMatrixAtom.lasserreZero {ineq}"
        return (
            f"BinaryTableMatrixAtom.lasserrePositive {ineq} "
            f"{binary_positive_block_index(n, k)}"
        )
    raise ValueError(f"unknown matrix kind: {kind}")


def scalar_atom_is_matrix_cut(record: dict[str, Any]) -> bool:
    return str(record.get("kind", "")).startswith("matrix_cut_")


def matrix_cut_index(record: dict[str, Any]) -> int:
    kind = str(record.get("kind", ""))
    if not kind.startswith("matrix_cut_"):
        raise ValueError(f"not a matrix-cut scalar atom: {kind}")
    cut = int(kind.removeprefix("matrix_cut_")) - 1
    if not 0 <= cut < 4:
        raise ValueError(f"matrix-cut scalar atom has invalid cut index: {kind}")
    return cut


def matrix_cut_source_groups(
    n: int,
    expr_data: dict[str, Any],
    exact: dict[str, Any],
    start: int,
    end: int,
    scale: Fraction,
) -> list[dict[str, Any]]:
    group_order: list[tuple[str, int, int, int]] = []
    groups: dict[tuple[str, int, int, int], dict[str, Any]] = {}
    for atom_idx in range(start, end):
        record = expr_data["scalar_constraints"][atom_idx]
        if not scalar_atom_is_matrix_cut(record):
            raise ValueError(
                "matrix-cut source-group semantic emission requires every "
                f"selected atom to be matrix-cut; atom {atom_idx} is "
                f"{record.get('kind')}"
            )
        meta = record["meta"]
        ineq_name = str(meta["inequality"])
        i = int(meta["i"])
        j = int(meta["j"])
        t = int(meta["t"])
        key = (ineq_name, i, j, t)
        if key not in groups:
            group_order.append(key)
            groups[key] = {
                "ineq": table_inequality(ineq_name),
                "source": binary_orbit_const_name(n, i, j, t),
                "weights": [Fraction(0) for _ in range(4)],
                "atom_indices": [[] for _ in range(4)],
            }
        cut = matrix_cut_index(record)
        groups[key]["weights"][cut] += (
            scale * frac_from_json(exact["scalar_multipliers"][atom_idx]["value"])
        )
        groups[key]["atom_indices"][cut].append(atom_idx)
    result: list[dict[str, Any]] = []
    for key in group_order:
        group = groups[key]
        cut_atom_indices = group["atom_indices"]
        if not all(len(cut_atoms) == 1 for cut_atoms in cut_atom_indices):
            raise ValueError(
                "matrix-cut source-group bridge requires exactly one scalar "
                f"atom per cut for source group {key}; got {cut_atom_indices}"
            )
        atom_indices = [cut_atoms[0] for cut_atoms in cut_atom_indices]
        range_start = atom_indices[0]
        expected = list(range(range_start, range_start + 4))
        if atom_indices != expected:
            raise ValueError(
                "matrix-cut source-group bridge requires cut atoms to be "
                f"contiguous in cut order for source group {key}; got "
                f"{atom_indices}, expected {expected}"
            )
        group["range_start"] = range_start
        group["range_end"] = range_start + 4
        result.append(group)
    return result


def validate_source_group_range_cover(
    groups: list[dict[str, Any]],
    start: int,
    end: int,
    label: str,
) -> None:
    cursor = start
    for group in groups:
        group_start = int(group["range_start"])
        group_end = int(group["range_end"])
        if group_start != cursor or group_end < group_start:
            raise ValueError(
                f"{label} source groups must form a contiguous chain covering "
                f"[{start}, {end}); got ({group_start}, {group_end}) after "
                f"cursor {cursor}"
            )
        cursor = group_end
    if cursor != end:
        raise ValueError(
            f"{label} source groups must cover [{start}, {end}); stopped at "
            f"{cursor}"
        )


def scalar_range_matrix_status(
    expr_data: dict[str, Any],
    start: int,
    end: int,
) -> tuple[bool, bool]:
    records = expr_data["scalar_constraints"][start:end]
    has_matrix_cut = any(scalar_atom_is_matrix_cut(record) for record in records)
    all_matrix_cut = bool(records) and all(
        scalar_atom_is_matrix_cut(record) for record in records
    )
    return has_matrix_cut, all_matrix_cut


def scalar_semantic_planned_ranges(
    expr_data: dict[str, Any],
    default_atom_chunk_size: int,
    matrix_cut_atom_chunk_size: int,
) -> list[dict[str, Any]]:
    if default_atom_chunk_size <= 0:
        return []
    if matrix_cut_atom_chunk_size < 0:
        raise ValueError("matrix-cut scalar semantic atom chunk size must be nonnegative")

    records = expr_data["scalar_constraints"]
    ranges: list[dict[str, Any]] = []
    start = 0
    while start < len(records):
        is_matrix_cut = scalar_atom_is_matrix_cut(records[start])
        chunk_size = (
            matrix_cut_atom_chunk_size
            if is_matrix_cut and matrix_cut_atom_chunk_size > 0
            else default_atom_chunk_size
        )
        boundary = start + 1
        while (
            boundary < len(records)
            and scalar_atom_is_matrix_cut(records[boundary]) == is_matrix_cut
        ):
            boundary += 1
        end = min(start + chunk_size, boundary)
        ranges.append({
            "start": start,
            "end": end,
            "atom_count": end - start,
            "has_matrix_cut": is_matrix_cut,
            "all_matrix_cut": is_matrix_cut,
            "first_kind": records[start].get("kind"),
            "last_kind": records[end - 1].get("kind"),
        })
        start = end
    return ranges


def scalar_semantic_existing_chunk_report(
    exact: dict[str, Any],
    expr_data: dict[str, Any],
) -> list[dict[str, Any]]:
    components = exact.get("full_aggregate_dual_expression_components") or {}
    scalar_chunks = components.get("scalar_chunks", [])
    report: list[dict[str, Any]] = []
    for idx, item in enumerate(scalar_chunks):
        start = int(item["start"])
        end = int(item["end"])
        has_matrix_cut, all_matrix_cut = scalar_range_matrix_status(
            expr_data, start, end
        )
        records = expr_data["scalar_constraints"][start:end]
        report.append({
            "index": idx,
            "start": start,
            "end": end,
            "atom_count": end - start,
            "has_matrix_cut": has_matrix_cut,
            "all_matrix_cut": all_matrix_cut,
            "first_kind": records[0].get("kind") if records else None,
            "last_kind": records[-1].get("kind") if records else None,
        })
    return report


def write_scalar_semantic_plan(
    exact: dict[str, Any],
    expr_data: dict[str, Any],
    output_path: Path,
    default_atom_chunk_size: int,
    matrix_cut_atom_chunk_size: int,
) -> None:
    plan = {
        "n": int(exact["n"]),
        "r": int(exact["r"]),
        "scalar_count": int(exact["constraint_counts"]["scalar"]),
        "default_atom_chunk_size": default_atom_chunk_size,
        "matrix_cut_atom_chunk_size": matrix_cut_atom_chunk_size,
        "planned_ranges": scalar_semantic_planned_ranges(
            expr_data,
            default_atom_chunk_size,
            matrix_cut_atom_chunk_size,
        ),
        "existing_scalar_chunks": scalar_semantic_existing_chunk_report(
            exact,
            expr_data,
        ),
    }
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(plan, indent=2, sort_keys=True) + "\n")


def exported_coeff_map(
    expr: dict[str, Any],
    dim: int,
    scale: Fraction,
    index_base: int,
) -> dict[int, Fraction]:
    coeffs: dict[int, Fraction] = {}
    for raw_idx, raw_coeff in expr["coeffs"]:
        idx = int(raw_idx) - index_base
        if idx < 0 or idx >= dim:
            raise ValueError(f"export coefficient index {idx} outside [0, {dim})")
        coeff = scale * rat.fraction_from_export(raw_coeff)
        if coeff == 0:
            continue
        coeffs[idx] = coeffs.get(idx, Fraction(0)) + coeff
        if coeffs[idx] == 0:
            del coeffs[idx]
    return coeffs


def scalar_atom_quotient_data(
    exact: dict[str, Any],
    expr_data: dict[str, Any],
    atom_idx: int,
    qvars: int,
    scale: Fraction,
) -> tuple[Fraction, dict[int, Fraction]]:
    multiplier = scale * frac_from_json(
        exact["scalar_multipliers"][atom_idx]["value"]
    )
    expr = expr_data["scalar_constraints"][atom_idx]["expr"]
    return (
        multiplier * rat.fraction_from_export(expr["const"]),
        exported_coeff_map(expr, qvars, multiplier, 1),
    )


def fraction_token(value: Fraction) -> str:
    return f"{value.numerator}/{value.denominator}"


def sparse_data_digest(const: Fraction, coeffs: dict[int, Fraction]) -> str:
    parts = [f"const:{fraction_token(const)}"]
    parts.extend(
        f"{idx}:{fraction_token(value)}"
        for idx, value in sorted(coeffs.items())
        if value
    )
    return hashlib.sha256("\n".join(parts).encode("utf-8")).hexdigest()


def source_group_sum(
    groups: list[dict[str, Any]],
) -> tuple[Fraction, dict[int, Fraction]]:
    const = sum((group["const"] for group in groups), Fraction(0))
    coeffs = add_coeff_maps([group["coeffs"] for group in groups])
    return const, coeffs


def compact_scalar_source_group_width(group: dict[str, Any]) -> int:
    family = str(group["family"])
    if family == "nonnegative":
        return 1
    if family == "basic":
        return 3
    if family.startswith("matrix_cut_"):
        return 4
    raise ValueError(f"unknown compact scalar source family: {family}")


def compact_scalar_source_group_source(
    n: int,
    group: dict[str, Any],
) -> str:
    family = str(group["family"])
    key = group["key"]
    if family == "nonnegative":
        quotient_idx = int(key["orbit_id"]) - 1
        return f"(binaryLengthThirteenRepresentativeOrbit ⟨{quotient_idx}, by omega⟩)"
    if family == "basic":
        return binary_orbit_const_name(
            n,
            int(key["i"]),
            int(key["j"]),
            int(key["t"]),
        )
    if family.startswith("matrix_cut_"):
        return binary_orbit_const_name(
            n,
            int(key["i"]),
            int(key["j"]),
            int(key["t"]),
        )
    raise ValueError(f"unknown compact scalar source family: {family}")


def compact_scalar_source_group_weights(
    exact: dict[str, Any],
    group: dict[str, Any],
    scale: Fraction,
) -> list[Fraction]:
    weights = [
        scale * frac_from_json(exact["scalar_multipliers"][atom_idx]["value"])
        for atom_idx in group["atom_indices"]
    ]
    width = compact_scalar_source_group_width(group)
    if len(weights) != width:
        raise ValueError(
            f"compact scalar source group {group['index']} has "
            f"{len(weights)} atoms, expected {width}"
        )
    return weights


def compact_scalar_source_contribution_term(
    n: int,
    group: dict[str, Any],
    weight_name: str,
) -> str:
    family = str(group["family"])
    source = compact_scalar_source_group_source(n, group)
    if family == "nonnegative":
        return f"binaryLengthThirteenNonnegativeSourceContribution {source} {weight_name}"
    if family == "basic":
        return f"binaryLengthThirteenBasicSourceContribution {source} {weight_name}"
    if family.startswith("matrix_cut_"):
        ineq = table_inequality(str(group["key"]["inequality"]))
        return (
            "binaryLengthThirteenMatrixCutSourceContribution "
            f"{ineq} {source} {weight_name}"
        )
    raise ValueError(f"unknown compact scalar source family: {family}")


def compact_scalar_source_atom_expr(
    n: int,
    group: dict[str, Any],
    idx_name: str,
) -> str:
    family = str(group["family"])
    source = compact_scalar_source_group_source(n, group)
    if family == "nonnegative":
        return f"BinaryTableScalarAtom.nonneg {source}"
    if family == "basic":
        return f"binaryLengthThirteenBasicSourceAtom {source} {idx_name}"
    if family.startswith("matrix_cut_"):
        ineq = table_inequality(str(group["key"]["inequality"]))
        return (
            f"BinaryTableScalarAtom.matrixCut {ineq} {idx_name} {source}"
        )
    raise ValueError(f"unknown compact scalar source family: {family}")


def compact_scalar_source_contribution_change_lines(
    n: int,
    group: dict[str, Any],
    idx_name: str,
    weight_name: str,
) -> list[str]:
    family = str(group["family"])
    source = compact_scalar_source_group_source(n, group)
    if family == "nonnegative":
        return [
            "    LinExpr.sum Finset.univ (fun idx : Fin 1 =>",
            f"      LinExpr.smul ({weight_name} idx)",
            "        (binaryLengthThirteenTableScalarAtomExprFin",
            f"          (BinaryTableScalarAtom.nonneg {source}))) =",
        ]
    if family == "basic":
        return [
            "    LinExpr.sum Finset.univ (fun idx : Fin 3 =>",
            f"      LinExpr.smul ({weight_name} idx)",
            "        (binaryLengthThirteenTableScalarAtomExprFin",
            f"          (binaryLengthThirteenBasicSourceAtom {source} idx))) =",
        ]
    if family.startswith("matrix_cut_"):
        ineq = table_inequality(str(group["key"]["inequality"]))
        return [
            "    LinExpr.sum Finset.univ (fun cut : Fin 4 =>",
            f"      LinExpr.smul ({weight_name} cut)",
            "        (binaryLengthThirteenTableScalarAtomExprFin",
            f"          (BinaryTableScalarAtom.matrixCut {ineq} cut",
            f"            {source}))) =",
        ]
    raise ValueError(f"unknown compact scalar source family: {family}")


def compact_scalar_source_groups(
    exact: dict[str, Any],
    expr_data: dict[str, Any],
    qvars: int,
    scale: Fraction,
) -> list[dict[str, Any]]:
    constraints = expr_data["scalar_constraints"]
    scalar_count = int(exact["constraint_counts"]["scalar"])
    if len(constraints) != scalar_count:
        raise ValueError(
            f"scalar constraint count mismatch: expressions have "
            f"{len(constraints)}, exact data has {scalar_count}"
        )
    if len(exact["scalar_multipliers"]) != scalar_count:
        raise ValueError(
            f"scalar multiplier count mismatch: "
            f"{len(exact['scalar_multipliers'])} != {scalar_count}"
        )

    groups: list[dict[str, Any]] = []
    cursor = 0
    while cursor < scalar_count:
        record = constraints[cursor]
        kind = str(record.get("kind", ""))
        if kind == "nonnegative_variable":
            meta = record["meta"]
            atom_indices = [cursor]
            family = "nonnegative"
            key = {
                "orbit_id": int(meta["orbit_id"]),
            }
            label = f"nonnegative orbit {key['orbit_id']}"
        elif kind in ("basic_left_upper", "basic_diagonal_upper"):
            atom_indices = [cursor, cursor + 1, cursor + 2]
            if atom_indices[-1] >= scalar_count:
                raise ValueError(
                    f"basic source group starting at {cursor} exceeds scalar count"
                )
            records = [constraints[idx] for idx in atom_indices]
            actual_kinds = [str(item.get("kind", "")) for item in records]
            if (
                actual_kinds[0] not in ("basic_left_upper", "basic_diagonal_upper")
                or actual_kinds[1:] != [
                    "basic_triangle_lower",
                    "basic_distance_upper",
                ]
            ):
                raise ValueError(
                    f"basic source group starting at {cursor} has kinds "
                    f"{actual_kinds}, expected a diagonal/left upper basic "
                    "atom followed by triangle lower and distance upper"
                )
            metas = [item["meta"] for item in records]
            source_key = (
                int(metas[0]["i"]),
                int(metas[0]["j"]),
                int(metas[0]["t"]),
                int(metas[0]["orbit_id"]),
            )
            for meta in metas[1:]:
                if (
                    int(meta["i"]),
                    int(meta["j"]),
                    int(meta["t"]),
                    int(meta["orbit_id"]),
                ) != source_key:
                    raise ValueError(
                        f"basic source group starting at {cursor} has "
                        "inconsistent metadata"
                    )
            family = "basic"
            key = {
                "i": source_key[0],
                "j": source_key[1],
                "t": source_key[2],
                "orbit_id": source_key[3],
            }
            label = (
                f"basic orbit {source_key[3]} "
                f"({source_key[0]}, {source_key[1]}, {source_key[2]})"
            )
        elif kind == "matrix_cut_1":
            atom_indices = [cursor, cursor + 1, cursor + 2, cursor + 3]
            if atom_indices[-1] >= scalar_count:
                raise ValueError(
                    f"matrix-cut source group starting at {cursor} exceeds "
                    "scalar count"
                )
            records = [constraints[idx] for idx in atom_indices]
            actual_kinds = [str(item.get("kind", "")) for item in records]
            expected_kinds = [
                "matrix_cut_1",
                "matrix_cut_2",
                "matrix_cut_3",
                "matrix_cut_4",
            ]
            if actual_kinds != expected_kinds:
                raise ValueError(
                    f"matrix-cut source group starting at {cursor} has kinds "
                    f"{actual_kinds}, expected {expected_kinds}"
                )
            metas = [item["meta"] for item in records]
            source_key = (
                str(metas[0]["inequality"]),
                int(metas[0]["i"]),
                int(metas[0]["j"]),
                int(metas[0]["t"]),
            )
            for meta in metas[1:]:
                if (
                    str(meta["inequality"]),
                    int(meta["i"]),
                    int(meta["j"]),
                    int(meta["t"]),
                ) != source_key:
                    raise ValueError(
                        f"matrix-cut source group starting at {cursor} has "
                        "inconsistent metadata"
                    )
            family = f"matrix_cut_{source_key[0]}"
            key = {
                "inequality": source_key[0],
                "i": source_key[1],
                "j": source_key[2],
                "t": source_key[3],
            }
            label = (
                f"matrix-cut {source_key[0]} "
                f"({source_key[1]}, {source_key[2]}, {source_key[3]})"
            )
        else:
            raise ValueError(
                f"unexpected scalar source-group boundary at atom {cursor}: {kind}"
            )

        atom_data = [
            scalar_atom_quotient_data(exact, expr_data, atom_idx, qvars, scale)
            for atom_idx in atom_indices
        ]
        const = sum((item[0] for item in atom_data), Fraction(0))
        coeffs = add_coeff_maps([item[1] for item in atom_data])
        groups.append({
            "index": len(groups),
            "family": family,
            "key": key,
            "label": label,
            "start": atom_indices[0],
            "end": atom_indices[-1] + 1,
            "atom_count": len(atom_indices),
            "atom_indices": atom_indices,
            "const": const,
            "coeffs": coeffs,
        })
        cursor = atom_indices[-1] + 1
    return groups


def scalar_chunk_source_splits(
    scalar_chunks: list[dict[str, Any]],
    source_groups: list[dict[str, Any]],
) -> list[dict[str, Any]]:
    group_boundaries = {
        boundary
        for group in source_groups
        for boundary in (int(group["start"]), int(group["end"]))
    }
    scalar_count = int(source_groups[-1]["end"]) if source_groups else 0
    splits: list[dict[str, Any]] = []
    for chunk_idx, chunk in enumerate(scalar_chunks[:-1]):
        boundary = int(chunk["end"])
        if boundary <= 0 or boundary >= scalar_count or boundary in group_boundaries:
            continue
        owner = next(
            group
            for group in source_groups
            if int(group["start"]) < boundary < int(group["end"])
        )
        splits.append({
            "scalar_chunk": chunk_idx,
            "boundary": boundary,
            "source_group": int(owner["index"]),
            "source_family": owner["family"],
            "source_start": int(owner["start"]),
            "source_end": int(owner["end"]),
        })
    return splits


def compact_scalar_source_chunk_plan(
    source_groups: list[dict[str, Any]],
    source_chunk_size: int,
) -> list[dict[str, Any]]:
    return [
        {
            "index": int(chunk["index"]),
            "family": chunk["family"],
            "family_chunk": int(chunk["family_chunk"]),
            "source_group_start": int(chunk["source_group_start"]),
            "source_group_end": int(chunk["source_group_end"]),
            "atom_start": int(chunk["atom_start"]),
            "atom_end": int(chunk["atom_end"]),
            "source_group_count": int(chunk["source_group_count"]),
            "atom_count": int(chunk["atom_count"]),
            "term_count": len(chunk["coeffs"]),
            "const_nonzero": chunk["const"] != 0,
            "digest": sparse_data_digest(chunk["const"], chunk["coeffs"]),
            "first_source": chunk["first_source"],
            "last_source": chunk["last_source"],
        }
        for chunk in compact_scalar_source_chunks(
            source_groups,
            source_chunk_size,
            "",
        )
    ]


def compact_scalar_source_chunks(
    source_groups: list[dict[str, Any]],
    source_chunk_size: int,
    name: str,
) -> list[dict[str, Any]]:
    if source_chunk_size <= 0:
        raise ValueError("compact scalar source chunk size must be positive")
    families: dict[str, list[dict[str, Any]]] = {}
    family_order: list[str] = []
    for group in source_groups:
        family = str(group["family"])
        if family not in families:
            family_order.append(family)
            families[family] = []
        families[family].append(group)

    chunks: list[dict[str, Any]] = []
    for family in family_order:
        family_groups = families[family]
        for family_chunk, start in enumerate(
            range(0, len(family_groups), source_chunk_size)
        ):
            groups = family_groups[start:start + source_chunk_size]
            const, coeffs = source_group_sum(groups)
            chunk_idx = len(chunks)
            chunks.append({
                "index": chunk_idx,
                "def": (
                    f"{name}CompactScalarSourceChunkData{chunk_idx}"
                    if name else ""
                ),
                "module": f"CompactScalarSourceChunk{chunk_idx}",
                "semantic_expr": (
                    f"{name}CompactScalarSourceChunk{chunk_idx}SemanticExpr"
                    if name else ""
                ),
                "family": family,
                "family_chunk": family_chunk,
                "source_group_start": int(groups[0]["index"]),
                "source_group_end": int(groups[-1]["index"]) + 1,
                "atom_start": int(groups[0]["start"]),
                "atom_end": int(groups[-1]["end"]),
                "source_group_count": len(groups),
                "atom_count": sum(int(group["atom_count"]) for group in groups),
                "const": const,
                "coeffs": coeffs,
                "groups": groups,
                "first_source": groups[0]["label"],
                "last_source": groups[-1]["label"],
            })
    return chunks


def compact_scalar_source_family_stats(
    source_groups: list[dict[str, Any]],
) -> dict[str, dict[str, Any]]:
    stats: dict[str, dict[str, Any]] = {}
    for group in source_groups:
        family = str(group["family"])
        term_count = len(group["coeffs"])
        if family not in stats:
            stats[family] = {
                "source_groups": 0,
                "atoms": 0,
                "term_count_total": 0,
                "term_count_min": term_count,
                "term_count_max": term_count,
                "nonzero_const_groups": 0,
            }
        item = stats[family]
        item["source_groups"] += 1
        item["atoms"] += int(group["atom_count"])
        item["term_count_total"] += term_count
        item["term_count_min"] = min(item["term_count_min"], term_count)
        item["term_count_max"] = max(item["term_count_max"], term_count)
        if group["const"] != 0:
            item["nonzero_const_groups"] += 1
    return stats


def generate_compact_scalar_source_data_modules(
    exact: dict[str, Any],
    expr_data: dict[str, Any],
    output_dir: Path,
    module_prefix: str,
    name: str,
    scalar_component_name: str,
    scalar_component_const: Fraction,
    scalar_component_coeffs: dict[int, Fraction],
    qvars: int,
    scale: Fraction,
    source_chunk_size: int,
    eq_chunk_size: int,
    derived_data: bool,
    support_config: BinaryCompactSupportConfig,
) -> CompactScalarSourceRoute:
    n = int(exact["n"])
    source_groups = compact_scalar_source_groups(exact, expr_data, qvars, scale)
    source_const, source_coeffs = source_group_sum(source_groups)
    validate_sparse_coeff_maps_equal(
        "compact scalar source data sum vs compact scalar component",
        source_const,
        source_coeffs,
        scalar_component_const,
        scalar_component_coeffs,
    )
    source_chunks = compact_scalar_source_chunks(
        source_groups,
        source_chunk_size,
        name,
    )
    remove_stale_generated_modules(
        output_dir,
        [
            "CompactScalarSource.lean",
            "CompactScalarSourceEq.lean",
            "CompactScalarSourceEqCoeff*.lean",
            "CompactScalarSourceChunk*.lean",
            "CompactScalarSourceSemantic*.lean",
        ],
    )
    source_chunk_modules: list[str] = []
    source_chunk_defs: list[str] = []
    for chunk in source_chunks:
        source_chunk_modules.append(f"{module_prefix}.{chunk['module']}")
        source_chunk_defs.append(chunk["def"])
        lines = module_prelude(
            ["CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr"],
            (
                "Generated compact scalar source chunk data "
                f"{chunk['index']}"
            ),
        )
        lines.extend(sparse_data_lines_from_coeffs(
            chunk["def"],
            qvars,
            chunk["const"],
            chunk["coeffs"],
        ))
        lines.extend(module_postlude())
        write_module(output_dir / f"{chunk['module']}.lean", lines)

    source_sum_name = f"{name}CompactScalarSourceSumData"
    lines = module_prelude(
        [
            "CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr",
            f"{module_prefix}.CompactScalar",
            *source_chunk_modules,
        ],
        "Generated compact scalar source sum data",
    )
    lines.extend([
        f"def {source_sum_name} : SparseLinExprData {qvars} :=",
        "  SparseLinExprData.listSum",
        f"    [{', '.join(source_chunk_defs)}]",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactScalarSource.lean", lines)

    simp_names = [
        scalar_component_name,
        source_sum_name,
        *source_chunk_defs,
    ]
    coeff_modules = generate_sparse_data_eq_coeff_modules(
        output_dir,
        module_prefix,
        f"{module_prefix}.CompactScalarSource",
        "Generated compact scalar source sum equality",
        f"{name}CompactScalarComponentData_eq_sourceSum",
        scalar_component_name,
        source_sum_name,
        qvars,
        eq_chunk_size,
        simp_names,
        "CompactScalarSourceEq",
    )
    source_eq_module = generate_sparse_data_eq_summary_module(
        output_dir,
        module_prefix,
        "CompactScalarSourceEq",
        coeff_modules,
        "Generated compact scalar source sum equality summary",
        name,
        f"{name}CompactScalarComponentData_eq_sourceSum",
        scalar_component_name,
        source_sum_name,
        qvars,
        eq_chunk_size,
        simp_names,
    )
    return CompactScalarSourceRoute(
        source_eq_module=source_eq_module,
        source_module=f"{module_prefix}.CompactScalarSource",
        source_sum_name=source_sum_name,
        source_groups=source_groups,
        source_chunks=source_chunks,
        source_derived_data=derived_data,
    )


def generate_compact_scalar_source_semantic_modules(
    exact: dict[str, Any],
    output_dir: Path,
    module_prefix: str,
    name: str,
    qvars: int,
    source_route: CompactScalarSourceRoute,
    scale: Fraction,
    source_semantic_coeff_chunk_size: int,
    support_config: BinaryCompactSupportConfig,
) -> str:
    if source_semantic_coeff_chunk_size <= 0:
        raise ValueError(
            "compact scalar source semantic chunk size must be positive"
        )
    if not source_route.source_derived_data:
        raise ValueError(
            "compact scalar source semantic route requires "
            "--compact-scalar-source-derived-data so a separate structural "
            "semantic data layer is emitted for source chunks"
        )
    remove_stale_generated_modules(
        output_dir,
        [
            "CompactScalarSourceChunk*SemanticExpr.lean",
            "CompactScalarSourceChunk*RangeBridge.lean",
            "CompactScalarSourceChunk*SemanticCoeff*.lean",
            "CompactScalarSourceChunk*Semantic.lean",
            "CompactScalarSourceSemanticChunk*.lean",
            "CompactScalarSourceDataEq*.lean",
            "CompactScalarSourceSemanticCoeff*.lean",
            "CompactScalarSourceSemantic.lean",
        ],
    )
    scalar_count = int(exact["constraint_counts"]["scalar"])
    full_orbit_type = support_config.full_orbit_type
    quotient_linexpr = support_config.quotient_linexpr
    source_semantic_modules: list[str] = []
    source_bridge_modules: list[str] = []
    source_bridge_theorems: list[str] = []
    source_chunk_ranges: list[tuple[int, int]] = []
    source_expr_names: list[str] = []
    source_data_eq_modules: list[str] = []
    source_data_semantic_theorems: list[str] = []
    for chunk in source_route.source_chunks:
        chunk_idx = int(chunk["index"])
        atom_start = int(chunk["atom_start"])
        atom_end = int(chunk["atom_end"])
        atom_count = int(chunk["atom_count"])
        if atom_end - atom_start != atom_count:
            raise ValueError(
                "compact scalar source semantic prototype requires contiguous "
                f"atom ranges; chunk {chunk_idx} has [{atom_start}, {atom_end}) "
                f"with atom_count={atom_count}"
        )
        data_def = str(chunk["def"])
        expr_name = str(chunk["semantic_expr"])
        semantic_file = f"CompactScalarSourceSemanticChunk{chunk_idx}"
        semantic_module = f"{module_prefix}.{semantic_file}"
        data_semantic_theorem = (
            f"{name}CompactScalarSourceChunk{chunk_idx}Data_semantic"
        )
        source_expr_names.append(expr_name)
        source_data_semantic_theorems.append(data_semantic_theorem)

        lines = module_prelude(
            [
                f"{module_prefix}.{chunk['module']}",
                f"{module_prefix}.CompactComponentTransport",
                "CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr",
                "CoveringCodes.SDP.GijswijtPolak2025.BinaryK2_13_1ScalarSourceContribution",
                "CoveringCodes.SDP.GijswijtPolak2025.BinaryK2_13_1MatrixCutSourceContribution",
            ],
            f"Generated compact scalar source semantic chunk {chunk_idx}",
        )
        contribution_terms: list[str] = []
        for local_idx, group in enumerate(chunk["groups"]):
            width = compact_scalar_source_group_width(group)
            weights = compact_scalar_source_group_weights(exact, group, scale)
            weight_name = (
                f"{name}CompactScalarSourceSemanticChunk{chunk_idx}"
                f"SourceGroup{local_idx}Weight"
            )
            lines.extend([
                f"def {weight_name} (idx : Fin {width}) : Rat :=",
                "  match idx.val with",
            ])
            for weight_idx, weight in enumerate(weights[:-1]):
                lines.append(f"  | {weight_idx} => {lean_rat(weight)}")
            lines.extend([
                f"  | _ => {lean_rat(weights[-1])}",
                "",
            ])
            contribution_terms.append(
                compact_scalar_source_contribution_term(
                    support_config.n,
                    group,
                    weight_name,
                )
            )
        lines.extend([
            f"def {expr_name} : LinExpr ({full_orbit_type}) :=",
        ])
        if contribution_terms:
            lines.append("  [")
            for term in contribution_terms[:-1]:
                lines.append(f"    {term},")
            lines.append(f"    {contribution_terms[-1]}")
            lines.extend([
                f"  ].foldr LinExpr.add (LinExpr.constExpr ({full_orbit_type}) 0)",
            ])
        else:
            lines.append(f"  LinExpr.constExpr ({full_orbit_type}) 0")
        lines.append("")
        lines.extend(module_postlude())
        write_module(output_dir / f"{semantic_file}.lean", lines)

        eq_file_prefix = f"CompactScalarSourceDataEq{chunk_idx}"
        eq_coeff_modules = generate_sparse_data_semantic_coeff_modules(
            output_dir,
            module_prefix,
            semantic_module,
            f"Generated compact scalar source chunk {chunk_idx} semantic equality",
            data_semantic_theorem,
            data_def,
            expr_name,
            f"{name}QVar",
            quotient_linexpr,
            qvars,
            source_semantic_coeff_chunk_size,
            eq_file_prefix,
        )
        eq_module = generate_sparse_data_semantic_summary_module(
            output_dir,
            module_prefix,
            eq_file_prefix,
            [semantic_module, *eq_coeff_modules],
            f"Generated compact scalar source chunk {chunk_idx} semantic equality summary",
            data_semantic_theorem,
            data_def,
            expr_name,
            f"{name}QVar",
            quotient_linexpr,
            qvars,
            source_semantic_coeff_chunk_size,
        )
        source_data_eq_modules.append(eq_module)

        bridge_module, bridge_theorem = (
            generate_compact_scalar_source_range_bridge_module(
                output_dir,
                module_prefix,
                name,
                support_config.n,
                scalar_count,
                chunk,
                semantic_file,
            )
        )
        source_bridge_modules.append(bridge_module)
        source_bridge_theorems.append(bridge_theorem)
        source_chunk_ranges.append((atom_start, atom_end))
        source_semantic_modules.append(semantic_module)

    validate_contiguous_ranges(
        source_chunk_ranges,
        scalar_count,
        "compact scalar source semantic chunks",
    )
    source_exprs_name = f"{name}CompactScalarSourceSemanticExprs"
    source_ranges_name = f"{name}CompactScalarSourceChunkRanges"
    source_chunked_theorem = f"{name}CompactScalarSourceSumData_semantic_chunked"
    source_final_theorem = f"{name}CompactScalarSourceSumData_semantic"
    source_literal_data_list = ", ".join(
        str(chunk["def"]) for chunk in source_route.source_chunks
    )
    lines = module_prelude(
        [
            source_route.source_module,
            f"{module_prefix}.CompactComponentTransport",
            f"{module_prefix}.FullAggregateSemantic",
            *source_semantic_modules,
            *source_data_eq_modules,
            *source_bridge_modules,
        ],
        "Generated compact scalar source semantic assembly",
    )
    ranges_literal = ", ".join(
        f"({start}, {end})" for start, end in source_chunk_ranges
    )
    lines.extend([
        f"def {source_exprs_name} : List (LinExpr ({full_orbit_type})) :=",
        f"  [{', '.join(source_expr_names)}]",
        "",
        f"def {source_ranges_name} : List (Nat × Nat) :=",
        f"  [{ranges_literal}]",
        "",
        f"theorem {source_ranges_name}_chain :",
        f"    LinExpr.FinRangeChain 0 {source_ranges_name} {scalar_count} := by",
    ])
    lines.extend(fin_range_chain_proof_lines(source_chunk_ranges, scalar_count))
    lines.extend([
        "",
        f"theorem {source_chunked_theorem} :",
        f"    linExprOfSparseData {source_route.source_sum_name} =",
        f"      ({source_exprs_name}.map {quotient_linexpr}).foldr",
        f"        LinExpr.add (LinExpr.constExpr {name}QVar 0) := by",
        "  calc",
        f"    linExprOfSparseData {source_route.source_sum_name} =",
        f"        [{source_literal_data_list}].foldr",
        "          (fun data acc => LinExpr.add (linExprOfSparseData data) acc)",
        f"          (LinExpr.constExpr {name}QVar 0) := by",
        "          simp [",
        "            linExprOfSparseData_listSum,",
        f"            {source_route.source_sum_name}]",
        f"    _ = ({source_exprs_name}.map {quotient_linexpr}).foldr",
        f"          LinExpr.add (LinExpr.constExpr {name}QVar 0) := by",
        "          simp [",
        f"            {source_exprs_name},",
    ])
    for theorem in source_data_semantic_theorems[:-1]:
        lines.append(f"            {theorem},")
    if source_data_semantic_theorems:
        lines.append(f"            {source_data_semantic_theorems[-1]}]")
    else:
        lines.append("            ]")
    lines.extend([
        "",
        f"theorem {name}CompactScalarSourceSemanticExprs_eq_rangeFold :",
        f"    {source_exprs_name}.foldr LinExpr.add",
        f"        (LinExpr.constExpr ({full_orbit_type}) 0) =",
        f"      LinExpr.foldFinRanges {name}FullAggregateScalarRangeTerm",
        f"        {source_ranges_name} := by",
        f"  unfold {source_exprs_name}",
        f"  unfold {source_ranges_name} LinExpr.foldFinRanges",
        "  rw [",
    ])
    for theorem in source_bridge_theorems[:-1]:
        lines.append(f"    {theorem},")
    if source_bridge_theorems:
        lines.append(f"    {source_bridge_theorems[-1]}]")
    else:
        lines.append("    ]")
    lines.extend([
        "  rfl",
        "",
        f"theorem {name}CompactScalarSourceSemanticExprs_eq_range :",
        f"    {source_exprs_name}.foldr LinExpr.add",
        f"        (LinExpr.constExpr ({full_orbit_type}) 0) =",
        f"      {name}FullAggregateScalarRangeFold := by",
        "  calc",
        f"    {source_exprs_name}.foldr LinExpr.add",
        f"        (LinExpr.constExpr ({full_orbit_type}) 0) =",
        f"        LinExpr.foldFinRanges {name}FullAggregateScalarRangeTerm",
        f"          {source_ranges_name} := by",
        f"          exact {name}CompactScalarSourceSemanticExprs_eq_rangeFold",
        f"    _ = LinExpr.sum Finset.univ {name}FullAggregateScalarRangeTerm := by",
        f"          exact (LinExpr.sum_fin_univ_eq_foldFinRanges",
        f"            {name}FullAggregateScalarRangeTerm",
        f"            {source_ranges_name}",
        f"            {source_ranges_name}_chain).symm",
        f"    _ = {name}FullAggregateScalarRangeFold := by",
        f"          exact {name}FullAggregateScalarRangePartition",
        "",
        f"theorem {name}CompactScalarSourceSemanticExprs_eq_full :",
        f"    {source_exprs_name}.foldr LinExpr.add",
        f"        (LinExpr.constExpr ({full_orbit_type}) 0) =",
        f"      {name}FullAggregateScalarSemanticFold := by",
        "  calc",
        f"    {source_exprs_name}.foldr LinExpr.add",
        f"        (LinExpr.constExpr ({full_orbit_type}) 0) =",
        f"        {name}FullAggregateScalarRangeFold := by",
        f"          exact {name}CompactScalarSourceSemanticExprs_eq_range",
        f"    _ = {name}FullAggregateScalarSemanticFold := by",
        f"          exact {name}FullAggregateScalarSemanticFold_eq_rangeFold.symm",
        "",
        "",
        f"theorem {source_final_theorem} :",
        f"    linExprOfSparseData {source_route.source_sum_name} =",
        f"      {quotient_linexpr} {name}FullAggregateScalarSemanticFold := by",
        "  calc",
        f"    linExprOfSparseData {source_route.source_sum_name} =",
        f"        ({source_exprs_name}.map {quotient_linexpr}).foldr",
        f"          LinExpr.add (LinExpr.constExpr {name}QVar 0) := by",
        f"          exact {source_chunked_theorem}",
        f"    _ = {quotient_linexpr} ({source_exprs_name}.foldr LinExpr.add",
        f"          (LinExpr.constExpr ({full_orbit_type}) 0)) := by",
        f"          exact ({name}QuotientLinExpr_foldr_add {source_exprs_name}).symm",
        f"    _ = {quotient_linexpr} {name}FullAggregateScalarSemanticFold := by",
        f"          rw [{name}CompactScalarSourceSemanticExprs_eq_full]",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactScalarSourceSemantic.lean", lines)
    return f"{module_prefix}.CompactScalarSourceSemantic"


def write_compact_scalar_source_plan(
    exact: dict[str, Any],
    expr_data: dict[str, Any],
    output_path: Path,
    name: str,
    support_config: BinaryCompactSupportConfig,
    compact_scalar_group_size: int,
    scalar_semantic_coeff_chunk_size: int,
    source_chunk_size: int,
) -> None:
    n = int(exact["n"])
    r = int(exact["r"])
    qvars = int(exact["variable_count"])
    scalar_count = int(exact["constraint_counts"]["scalar"])
    full_vars = support_config.full_vars
    scale = Fraction(2) ** n
    fibers = binary_compact_quotient_fibers(support_config)
    component_plan = build_compact_component_quotient_plan(
        exact,
        name,
        qvars,
        full_vars,
        scale,
        fibers,
        compact_scalar_group_size,
    )
    source_groups = compact_scalar_source_groups(exact, expr_data, qvars, scale)
    source_const, source_coeffs = source_group_sum(source_groups)
    scalar_const, scalar_coeffs = source_group_sum(component_plan["scalar_records"])
    validate_sparse_coeff_maps_equal(
        "compact scalar source-group sum vs compact scalar component",
        source_const,
        source_coeffs,
        scalar_const,
        scalar_coeffs,
    )

    components = exact.get("full_aggregate_dual_expression_components") or {}
    scalar_chunks = components.get("scalar_chunks", [])
    source_chunks = compact_scalar_source_chunk_plan(
        source_groups,
        source_chunk_size,
    )
    scalar_semantic_coeff_chunks = (
        qvars + scalar_semantic_coeff_chunk_size - 1
    ) // scalar_semantic_coeff_chunk_size
    current_scalar_group_count = len(component_plan["scalar_groups"])
    split_boundaries = scalar_chunk_source_splits(scalar_chunks, source_groups)
    plan = {
        "n": n,
        "r": r,
        "name": name,
        "qvars": qvars,
        "full_vars": full_vars,
        "scalar_count": scalar_count,
        "source_data_dim": qvars,
        "compact_scalar_group_size": compact_scalar_group_size,
        "scalar_semantic_coeff_chunk_size": scalar_semantic_coeff_chunk_size,
        "source_chunk_size": source_chunk_size,
        "validation": {
            "source_group_coverage": (
                source_groups[0]["start"] == 0
                and source_groups[-1]["end"] == scalar_count
                and all(
                    int(left["end"]) == int(right["start"])
                    for left, right in zip(source_groups, source_groups[1:])
                )
            ),
            "source_sum_equals_compact_scalar_component": True,
            "support_quotient_fibers": len(fibers),
            "scalar_chunk_boundaries_splitting_sources": len(split_boundaries),
            "first_scalar_chunk_source_splits": split_boundaries[:20],
        },
        "source_groups": {
            "count": len(source_groups),
            "family_stats": compact_scalar_source_family_stats(source_groups),
            "first": {
                "family": source_groups[0]["family"],
                "atom_start": source_groups[0]["start"],
                "atom_end": source_groups[0]["end"],
                "label": source_groups[0]["label"],
            },
            "last": {
                "family": source_groups[-1]["family"],
                "atom_start": source_groups[-1]["start"],
                "atom_end": source_groups[-1]["end"],
                "label": source_groups[-1]["label"],
            },
        },
        "source_chunks": {
            "count": len(source_chunks),
            "chunks": source_chunks,
        },
        "compact_scalar_component": {
            "term_count": len(scalar_coeffs),
            "digest": sparse_data_digest(scalar_const, scalar_coeffs),
        },
        "source_sum": {
            "term_count": len(source_coeffs),
            "digest": sparse_data_digest(source_const, source_coeffs),
        },
        "file_estimate": {
            "current_compact_scalar_groups": current_scalar_group_count,
            "current_compact_scalar_semantic_coeff_files": (
                current_scalar_group_count * scalar_semantic_coeff_chunks
            ),
            "planned_source_chunk_files": len(source_chunks),
            "planned_native_coeff_files_for_scalar_semantics": 0,
        },
    }
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(plan, indent=2, sort_keys=True) + "\n")


def fin_function(
    name: str,
    domain_size: int,
    codomain: str,
    cases: list[str],
    impossible: str = "by omega",
) -> list[str]:
    lines = [f"def {name} : Fin {domain_size} -> {codomain}"]
    lines.extend(cases)
    lines.append(f"  | ⟨m + {domain_size}, h⟩ => {impossible}")
    lines.append("")
    return lines


def module_prelude(imports: list[str], title: str) -> list[str]:
    lines: list[str] = []
    for imported in imports:
        lines.append(f"import {imported}")
    lines.extend([
        "",
        "/-!",
        f"# {title}",
        "",
        "This file is generated from exact rationalized Julia dual data.",
        "-/",
        "",
        "namespace CoveringCodes",
        "namespace SDP",
        "namespace GijswijtPolak2025",
        "",
        "noncomputable section",
        "",
        "set_option maxRecDepth 20000",
        "set_option maxHeartbeats 4000000",
        "",
    ])
    return lines


def module_postlude() -> list[str]:
    return [
        "end",
        "",
        "end GijswijtPolak2025",
        "end SDP",
        "end CoveringCodes",
        "",
    ]


def write_module(path: Path, lines: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines))


def generate_quotient_fiber_module(
    output_dir: Path,
    module_prefix: str,
    support_config: BinaryCompactSupportConfig,
) -> str:
    fibers = binary_compact_quotient_fibers(support_config)
    validate_binary_quotient_fibers(
        fibers,
        support_config.full_vars,
        support_config.qvars,
    )
    lines = module_prelude(
        [f"{module_prefix}.Core"],
        (
            "Generated quotient fibers for "
            f"({2},{support_config.n},{support_config.r})"
        ),
    )
    lines.append(
        f"def {support_config.quotient_fiber_list} : "
        f"{support_config.qvar_type} -> List (Fin {support_config.full_vars})"
    )
    for qidx, fiber in enumerate(fibers):
        entries = ", ".join(f"⟨{idx}, by decide⟩" for idx in fiber)
        lines.append(f"  | ⟨{qidx}, _⟩ => [{entries}]")
    lines.append(f"  | ⟨m + {support_config.qvars}, h⟩ => by omega")
    lines.extend([
        "",
        f"def {support_config.quotient_fiber} (q : {support_config.qvar_type}) :",
        f"    Finset (Fin {support_config.full_vars}) :=",
        f"  ({support_config.quotient_fiber_list} q).toFinset",
        "",
        f"def {support_config.quotient_linexpr}",
        f"    (expr : LinExpr ({support_config.full_orbit_type})) :",
        f"    LinExpr {support_config.qvar_type} where",
        f"  coeff q := ({support_config.quotient_fiber} q).sum",
        f"    (fun idx => expr.coeff ({support_config.orbit_of_fin} idx))",
        "  const := expr.const",
        "",
        f"theorem {support_config.quotient_fiber}_eq_filter",
        f"    (q : {support_config.qvar_type}) :",
        f"    {support_config.quotient_fiber} q =",
        f"      Finset.univ.filter",
        f"        (fun idx : Fin {support_config.full_vars} =>",
        f"          {support_config.quotient_of_orbit_fin} idx = q) := by",
        "  fin_cases q <;> decide",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "QuotientFiber.lean", lines)
    return f"{module_prefix}.QuotientFiber"


def generate_compact_instance_module(
    output_dir: Path,
    module_prefix: str,
    name: str,
    n: int,
    r: int,
    l_value: int,
) -> str:
    lines = module_prelude(
        [f"{module_prefix}.CompactCertificate"],
        f"Generated K2({n},{r}) quotient certificate instance",
    )
    lines.extend([
        f"theorem {name}_lower_of_codeCellTableConstraints",
        "    (codeCellConstraints :",
        f"      forall C : Finset (QaryWord 2 {n}),",
        f"        CoversFinset C {r} ->",
        f"          BinaryTableConstraints {n} {r} (binaryCodeCellX C)) :",
        f"    QaryKLower 2 {n} {r} {l_value} := by",
        "  exact binary_quotient_table_sdp_lower_bound_expression",
        f"    {name}CompactBridge",
        f"    {name}CompactExpressionDualCertificate",
        "    (binaryTableCodeObjectiveBound_of_codeCellConstraints codeCellConstraints)",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "Instance.lean", lines)
    return f"{module_prefix}.Instance"


def qvar_chunk_dispatch_lines(
    theorem_prefix: str,
    qvar_type: str,
    qvars: int,
    chunk_size: int,
) -> list[str]:
    lines = [
        "  cases q with",
        "  | mk idx hidx =>",
    ]
    indent = "      "
    for chunk, start in enumerate(range(0, qvars, chunk_size)):
        end = min(start + chunk_size, qvars)
        theorem_name = f"{theorem_prefix}Chunk{chunk}"
        if end < qvars:
            lines.extend([
                f"{indent}by_cases h{chunk} : idx < {end}",
                f"{indent}· simpa using {theorem_name} idx (by omega) h{chunk}",
            ])
        else:
            lines.append(
                f"{indent}simpa using {theorem_name} idx (by omega) hidx"
            )
    return lines


def fin_chunk_dispatch_lines(
    theorem_prefix: str,
    fin_size: int,
    chunk_size: int,
) -> list[str]:
    lines = [
        "  cases idx with",
        "  | mk idx hidx =>",
    ]
    indent = "      "
    for chunk, start in enumerate(range(0, fin_size, chunk_size)):
        end = min(start + chunk_size, fin_size)
        theorem_name = f"{theorem_prefix}Chunk{chunk}"
        if end < fin_size:
            lines.extend([
                f"{indent}by_cases h{chunk} : idx < {end}",
                f"{indent}· simpa using {theorem_name} idx (by omega) h{chunk}",
            ])
        else:
            lines.append(
                f"{indent}simpa using {theorem_name} idx (by omega) hidx"
            )
    return lines


def generate_aggregate_compact_certificate_modules(
    output_dir: Path,
    module_prefix: str,
    name: str,
    n: int,
    r: int,
    l_value: int,
    qvars: int,
    full_vars: int,
    data_const: Fraction,
    data_terms: list[str],
    full_data_const: Fraction,
    full_data_terms: list[str],
    bound: str,
    compact_bridge_module: str,
    support_config: BinaryCompactSupportConfig,
    chunk_size: int,
) -> None:
    if chunk_size <= 0:
        raise ValueError("aggregate compact certificate chunk size must be positive")
    if not full_data_terms:
        raise ValueError(
            "aggregate compact certificate route requires full aggregate data"
        )

    data_module = f"{module_prefix}.CompactCertificateData"
    native_module = f"{module_prefix}.CompactCertificateNative"
    semantic_module = f"{module_prefix}.CompactCertificateSemantic"
    objective_module = f"{module_prefix}.CompactObjective"

    lines = module_prelude(
        [
            compact_bridge_module,
            "CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr",
        ],
        f"Generated compact aggregate certificate data for ({2},{n},{r})",
    )
    lines.extend([
        f"def {name}CompactDualExpressionData : SparseLinExprData {qvars} where",
        f"  const := {lean_rat(data_const)}",
        f"  terms := [{', '.join(data_terms)}]",
        "",
        f"def {name}FullAggregateDualExpressionData : SparseLinExprData {full_vars} where",
        f"  const := {lean_rat(full_data_const)}",
        f"  terms := [{', '.join(full_data_terms)}]",
        "",
        f"def {name}FullAggregateDualExpressionFiberSum (q : {name}QVar) : Rat :=",
        f"  {name}FullAggregateDualExpressionData.coeffSum",
        f"    ({support_config.quotient_fiber} q)",
        "",
        f"theorem {name}FullAggregateDualExpressionFiberSum_eq_sum_coeff",
        f"    (q : {name}QVar) :",
        f"    {name}FullAggregateDualExpressionFiberSum q =",
        f"      ({support_config.quotient_fiber} q).sum",
        f"        (fun idx => (linExprOfSparseData {name}FullAggregateDualExpressionData).coeff idx) := by",
        "  exact SparseLinExprData.coeffSum_eq_sum_coeff",
        f"    {name}FullAggregateDualExpressionData",
        f"    ({support_config.quotient_fiber} q)",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactCertificateData.lean", lines)

    compact_coeff_modules: list[str] = []
    full_dual_coeff_modules: list[str] = []
    objective_coeff_modules: list[str] = []
    for chunk, start in enumerate(range(0, qvars, chunk_size)):
        end = min(start + chunk_size, qvars)

        file_stem = f"CompactCertificateCompactCoeff{chunk}"
        theorem_name = (
            f"{name}CompactDualExpression_coeff_eq_fullAggregateFiberSumChunk{chunk}"
        )
        compact_coeff_modules.append(f"{module_prefix}.{file_stem}")
        lines = module_prelude(
            [data_module],
            f"Generated compact aggregate coefficient check chunk {chunk}",
        )
        lines.extend([
            "set_option linter.unnecessarySeqFocus false",
            "",
            f"theorem {theorem_name}",
            f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
            f"    {name}CompactDualExpression.coeff (⟨idx, by omega⟩ : {name}QVar) =",
            f"      {name}FullAggregateDualExpressionFiberSum",
            f"        (⟨idx, by omega⟩ : {name}QVar) := by",
            "  interval_cases idx <;> native_decide +revert",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"{file_stem}.lean", lines)

        file_stem = f"CompactObjectiveCoeff{chunk}"
        theorem_name = f"{name}CompactObjectiveExpressionCoeffEqChunk{chunk}"
        objective_coeff_modules.append(f"{module_prefix}.{file_stem}")
        lines = module_prelude(
            [data_module],
            f"Generated compact objective coefficient check chunk {chunk}",
        )
        lines.extend([
            "set_option linter.unnecessarySeqFocus false",
            "",
            f"theorem {theorem_name}",
            f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
            f"    (LinExpr.subConst {name}Objective {bound}).coeff",
            f"        (⟨idx, by omega⟩ : {name}QVar) =",
            f"      {name}CompactDualExpression.coeff",
            f"        (⟨idx, by omega⟩ : {name}QVar) := by",
            "  interval_cases idx <;> native_decide +revert",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"{file_stem}.lean", lines)

    for chunk, start in enumerate(range(0, full_vars, chunk_size)):
        end = min(start + chunk_size, full_vars)

        file_stem = f"CompactCertificateFullDualCoeff{chunk}"
        theorem_name = (
            f"{name}FullAggregateDualExpression_coeff_eq_fullDualChunk{chunk}"
        )
        full_dual_coeff_modules.append(f"{module_prefix}.{file_stem}")
        lines = module_prelude(
            [data_module],
            f"Generated full-dual aggregate full-index coefficient check chunk {chunk}",
        )
        lines.extend([
            "set_option linter.unnecessarySeqFocus false",
            "",
            f"theorem {theorem_name}",
            f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
            f"    (linExprOfSparseData {name}FullAggregateDualExpressionData).coeff",
            f"        (⟨idx, by omega⟩ : Fin {full_vars}) =",
            f"      {name}FullDualExpression.coeff",
            f"        ({support_config.orbit_of_fin}",
            f"          (⟨idx, by omega⟩ : Fin {full_vars})) := by",
            "  interval_cases idx <;> native_decide +revert",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"{file_stem}.lean", lines)

    lines = module_prelude(
        [
            data_module,
            *compact_coeff_modules,
            *full_dual_coeff_modules,
        ],
        f"Generated compact aggregate native check assembly for ({2},{n},{r})",
    )
    lines.extend([
        f"theorem {name}CompactDualExpression_const_eq_fullAggregateData :",
        f"    {name}CompactDualExpression.const =",
        f"      (linExprOfSparseData {name}FullAggregateDualExpressionData).const := by",
        "  native_decide",
        "",
        f"theorem {name}FullAggregateDualExpression_const_eq_fullDual :",
        f"    (linExprOfSparseData {name}FullAggregateDualExpressionData).const =",
        f"      {name}FullDualExpression.const := by",
        "  native_decide",
        "",
        f"theorem {name}CompactDualExpression_coeff_eq_fullAggregateFiberSum",
        f"    (q : {name}QVar) :",
        f"    {name}CompactDualExpression.coeff q =",
        f"      {name}FullAggregateDualExpressionFiberSum q := by",
    ])
    lines.extend(qvar_chunk_dispatch_lines(
        f"{name}CompactDualExpression_coeff_eq_fullAggregateFiberSum",
        f"{name}QVar",
        qvars,
        chunk_size,
    ))
    lines.extend([
        "",
        f"theorem {name}FullAggregateDualExpression_coeff_eq_fullDual",
        f"    (idx : Fin {full_vars}) :",
        f"    (linExprOfSparseData {name}FullAggregateDualExpressionData).coeff idx =",
        f"      {name}FullDualExpression.coeff",
        f"        ({support_config.orbit_of_fin} idx) := by",
    ])
    lines.extend(fin_chunk_dispatch_lines(
        f"{name}FullAggregateDualExpression_coeff_eq_fullDual",
        full_vars,
        chunk_size,
    ))
    lines.extend([
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactCertificateNative.lean", lines)

    semantic_type = compact_semantic_expression_lines(name, "      ")
    lines = module_prelude(
        [native_module],
        f"Generated compact aggregate semantic wrapper for ({2},{n},{r})",
    )
    lines.extend([
        f"theorem {name}CompactDualExpression_semantic :",
        f"    {name}CompactDualExpression =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(f"{semantic_type[-1]} := by")
    lines.extend([
        f"  exact {name}CompactDualExpression_semantic_of_fullSparseData",
        f"    {name}CompactDualExpression",
        f"    {name}FullAggregateDualExpressionData",
        f"    {name}CompactDualExpression_const_eq_fullAggregateData",
        f"    {name}CompactDualExpression_coeff_eq_fullAggregateFiberSum",
        f"    {name}FullAggregateDualExpression_const_eq_fullDual",
        f"    {name}FullAggregateDualExpression_coeff_eq_fullDual",
        "",
        f"theorem {name}CompactDualExpression_const_semantic :",
        f"    {name}CompactDualExpression.const =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(f"{semantic_type[-1]}.const := by")
    lines.extend([
        f"  rw [{name}CompactDualExpression_semantic]",
        "",
        f"theorem {name}CompactDualExpression_coeff_semantic",
        f"    (i : {name}QVar) :",
        f"    {name}CompactDualExpression.coeff i =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(f"{semantic_type[-1]}.coeff i := by")
    lines.extend([
        f"  rw [{name}CompactDualExpression_semantic]",
        "",
        f"theorem {name}CompactDualExpression_coeff_0_semantic :",
        f"    {name}CompactDualExpression.coeff (⟨0, by omega⟩ : {name}QVar) =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(
        f"{semantic_type[-1]}.coeff (⟨0, by omega⟩ : {name}QVar) := by"
    )
    lines.append(
        f"  exact {name}CompactDualExpression_coeff_semantic (⟨0, by omega⟩ : {name}QVar)"
    )
    lines.append("")
    lines.extend(module_postlude())
    write_module(output_dir / "CompactCertificateSemantic.lean", lines)

    lines = module_prelude(
        [data_module, *objective_coeff_modules],
        f"Generated compact objective equality for ({2},{n},{r})",
    )
    lines.extend([
        f"theorem {name}CompactObjectiveExpression_coeff_eq",
        f"    (q : {name}QVar) :",
        f"    (LinExpr.subConst {name}Objective {bound}).coeff q =",
        f"      {name}CompactDualExpression.coeff q := by",
    ])
    lines.extend(qvar_chunk_dispatch_lines(
        f"{name}CompactObjectiveExpressionCoeffEq",
        f"{name}QVar",
        qvars,
        chunk_size,
    ))
    lines.extend([
        "",
        f"theorem {name}CompactObjectiveExpression_const_eq :",
        f"    (LinExpr.subConst {name}Objective {bound}).const =",
        f"      {name}CompactDualExpression.const := by",
        "  native_decide",
        "",
        f"theorem {name}CompactObjectiveExpression_eq :",
        f"    LinExpr.subConst {name}Objective {bound} =",
        f"      {name}CompactDualExpression := by",
        "  rw [LinExpr.mk.injEq]",
        "  constructor",
        "  · funext i",
        f"    exact {name}CompactObjectiveExpression_coeff_eq i",
        f"  · exact {name}CompactObjectiveExpression_const_eq",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactObjective.lean", lines)

    lines = module_prelude(
        [
            semantic_module,
            objective_module,
            f"{module_prefix}.Weighted",
        ],
        f"Generated compact aggregate SDP certificate for ({2},{n},{r})",
    )
    lines.extend([
        f"def {name}CompactObjectiveExpressionCertificate :",
        f"    SDPObjectiveLowerWeightedExpressionCertificate {name}QVar {name}LinAtom",
        f"      {name}Block {name}BlockCoord {name}WeightCoord",
        f"      {name}CompactLinearAtomExpr {name}CompactMatrixAtomExpr {name}Objective",
        f"      {bound} :=",
        "  SDPObjectiveLowerWeightedExpressionCertificate.ofExpressionEqualities",
        f"    {name}CompactDualExpression",
        f"    {name}LinearMultiplier",
        f"    {name}LinearMultiplier_nonneg",
        "    0",
        "    (by norm_num)",
        f"    {name}DualMatrix",
        f"    {name}Weighted",
        f"    {name}CompactDualExpression_semantic",
        f"    {name}CompactObjectiveExpression_eq",
        "",
        f"def {name}CompactExpressionDualCertificate :",
        f"    BinaryQuotientTableExpressionDualCertificate (WeightIdx := {name}WeightCoord)",
        f"      {n} {r} {l_value} {name}CompactModel where",
        f"  bound := {bound}",
        "  cubeThreshold := by norm_num",
        f"  objectiveCertificate := {name}CompactObjectiveExpressionCertificate",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactCertificate.lean", lines)


def remove_stale_generated_modules(output_dir: Path, patterns: list[str]) -> None:
    if not output_dir.exists():
        return
    for pattern in patterns:
        for path in output_dir.glob(pattern):
            if path.is_file() and path.suffix == ".lean":
                path.unlink()


def generate_trivial_compact_bridge_module(
    output_dir: Path,
    module_prefix: str,
    name: str,
    support_config: BinaryCompactSupportConfig,
) -> str:
    n = support_config.n
    quotient = support_config.quotient_linexpr
    full_type = support_config.full_orbit_type
    lines = module_prelude(
        [
            f"{module_prefix}.Data",
            f"{module_prefix}.Multiplier",
            f"{module_prefix}.QuotientFiber",
        ],
        f"Generated trivial compact quotient bridge for ({2},{n},{support_config.r})",
    )
    lines.extend([
        f"theorem {quotient}_constExpr (a : Rat) :",
        f"    {quotient}",
        f"      (LinExpr.constExpr ({full_type}) a) =",
        f"      LinExpr.constExpr {name}QVar a := by",
        "  rw [LinExpr.mk.injEq]",
        "  constructor",
        "  · funext q",
        f"    unfold {quotient} LinExpr.constExpr",
        "    simp",
        "  · rfl",
        "",
        f"theorem {quotient}_add",
        f"    (e f : LinExpr ({full_type})) :",
        f"    {quotient} (LinExpr.add e f) =",
        f"      LinExpr.add ({quotient} e)",
        f"        ({quotient} f) := by",
        "  rw [LinExpr.mk.injEq]",
        "  constructor",
        "  · funext q",
        f"    unfold {quotient} LinExpr.add",
        "    dsimp",
        "    rw [Finset.sum_add_distrib]",
        "  · rfl",
        "",
        f"theorem {quotient}_smul",
        f"    (a : Rat) (e : LinExpr ({full_type})) :",
        f"    {quotient} (LinExpr.smul a e) =",
        f"      LinExpr.smul a ({quotient} e) := by",
        "  rw [LinExpr.mk.injEq]",
        "  constructor",
        "  · funext q",
        f"    unfold {quotient} LinExpr.smul",
        "    dsimp",
        "    rw [Finset.mul_sum]",
        "  · rfl",
        "",
        f"theorem {quotient}_subConst",
        f"    (e : LinExpr ({full_type})) (a : Rat) :",
        f"    {quotient} (LinExpr.subConst e a) =",
        f"      LinExpr.subConst ({quotient} e) a := by",
        "  rw [LinExpr.mk.injEq]",
        "  constructor",
        "  · funext q",
        f"    unfold {quotient} LinExpr.subConst",
        "    dsimp",
        "  · rfl",
        "",
        f"theorem {quotient}_sum {{α : Type}}",
        f"    (s : Finset α) (f : α -> LinExpr ({full_type})) :",
        f"    {quotient} (LinExpr.sum s f) =",
        f"      LinExpr.sum s (fun a => {quotient} (f a)) := by",
        "  rw [LinExpr.mk.injEq]",
        "  constructor",
        "  · funext q",
        f"    unfold {quotient} LinExpr.sum",
        "    dsimp",
        "    rw [Finset.sum_comm]",
        f"  · unfold {quotient} LinExpr.sum",
        "    dsimp",
        "",
        f"theorem {quotient}_innerExpr",
        "    {ι : Type} [Fintype ι]",
        "    (S : Matrix ι ι Rat)",
        f"    (M : Matrix ι ι (LinExpr ({full_type}))) :",
        f"    {quotient} (MatrixLinExpr.innerExpr S M) =",
        "      MatrixLinExpr.innerExpr S",
        f"        (fun row col => {quotient} (M row col)) := by",
        "  unfold MatrixLinExpr.innerExpr",
        f"  rw [{quotient}_sum]",
        "  apply congrArg",
        "  funext row",
        f"  rw [{quotient}_sum]",
        "  apply congrArg",
        "  funext col",
        f"  rw [{quotient}_smul]",
        "",
        f"theorem {quotient}_sdpDualExpression",
        "    {LinAtom Block : Type} {Idx : Block -> Type}",
        "    [Fintype LinAtom] [Fintype Block] [forall b : Block, Fintype (Idx b)]",
        f"    (linearAtoms : LinAtom -> LinExpr ({full_type}))",
        "    (matrixAtoms : forall b : Block,",
        f"      Matrix (Idx b) (Idx b) (LinExpr ({full_type})))",
        "    (linearMultiplier : LinAtom -> Rat)",
        "    (slack : Rat)",
        "    (dualMatrix : forall b : Block, Matrix (Idx b) (Idx b) Rat) :",
        f"    {quotient}",
        "      (sdpDualExpression linearAtoms matrixAtoms linearMultiplier slack dualMatrix) =",
        "      sdpDualExpression",
        f"        (fun a => {quotient} (linearAtoms a))",
        f"        (fun b row col => {quotient} (matrixAtoms b row col))",
        "        linearMultiplier slack dualMatrix := by",
        "  unfold sdpDualExpression",
        f"  rw [{quotient}_add]",
        f"  rw [{quotient}_constExpr]",
        f"  rw [{quotient}_add]",
        "  have hlinear :",
        f"      {quotient}",
        "          (LinExpr.sum Finset.univ fun a =>",
        "            LinExpr.smul (linearMultiplier a) (linearAtoms a)) =",
        "        LinExpr.sum Finset.univ fun a =>",
        "          LinExpr.smul (linearMultiplier a)",
        f"            ({quotient} (linearAtoms a)) := by",
        f"    rw [{quotient}_sum]",
        "    apply congrArg",
        "    funext a",
        f"    rw [{quotient}_smul]",
        "  have hmatrix :",
        f"      {quotient}",
        "          (LinExpr.sum Finset.univ fun b =>",
        "            MatrixLinExpr.innerExpr (dualMatrix b) (matrixAtoms b)) =",
        "        LinExpr.sum Finset.univ fun b =>",
        "          MatrixLinExpr.innerExpr (dualMatrix b)",
        f"            (fun row col => {quotient} (matrixAtoms b row col)) := by",
        f"    rw [{quotient}_sum]",
        "    apply congrArg",
        "    funext b",
        f"    rw [{quotient}_innerExpr]",
        "  rw [hlinear, hmatrix]",
        "",
        f"def {name}CompactLinearAtomExpr :",
        f"    {name}LinAtom -> LinExpr {name}QVar",
        "  | ⟨m + 0, h⟩ => by omega",
        "",
        f"def {name}CompactMatrixAtomExpr : forall b : {name}Block,",
        f"    Matrix ({name}BlockCoord b) ({name}BlockCoord b)",
        f"      (LinExpr {name}QVar)",
        "  | ⟨m + 0, h⟩ => by omega",
        "",
        f"def {name}FullLinearAtomExpr",
        f"    : {name}LinAtom -> LinExpr ({full_type})",
        "  | ⟨m + 0, h⟩ => by omega",
        "",
        f"def {name}FullMatrixAtomExpr : forall b : {name}Block,",
        f"    Matrix ({name}BlockCoord b) ({name}BlockCoord b)",
        f"      (LinExpr ({full_type}))",
        "  | ⟨m + 0, h⟩ => by omega",
        "",
        f"def {name}FullDualExpression : LinExpr ({full_type}) :=",
        "  sdpDualExpression",
        f"    {name}FullLinearAtomExpr",
        f"    {name}FullMatrixAtomExpr",
        f"    {name}LinearMultiplier",
        "    0",
        f"    {name}DualMatrix",
        "",
        f"theorem {name}CompactDualExpression_eq_quotientFull :",
        "    sdpDualExpression",
        f"      {name}CompactLinearAtomExpr",
        f"      {name}CompactMatrixAtomExpr",
        f"      {name}LinearMultiplier",
        "      0",
        f"      {name}DualMatrix =",
        f"      {quotient}",
        f"        {name}FullDualExpression := by",
        f"  rw [{name}FullDualExpression]",
        f"  rw [{quotient}_sdpDualExpression]",
        "  rfl",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactBridge.lean", lines)
    return f"{module_prefix}.CompactBridge"


def validate_contiguous_ranges(
    ranges: list[tuple[int, int]],
    stop: int,
    label: str,
) -> None:
    cursor = 0
    for start, end in ranges:
        if start != cursor or end < start:
            raise ValueError(
                f"{label} ranges must form a contiguous chain covering "
                f"[0, {stop}); got ({start}, {end}) after cursor {cursor}"
            )
        cursor = end
    if cursor != stop:
        raise ValueError(
            f"{label} ranges must cover [0, {stop}); stopped at {cursor}"
        )


def fin_range_chain_proof_lines(
    ranges: list[tuple[int, int]],
    stop: int,
) -> list[str]:
    if not ranges:
        return [f"  exact LinExpr.FinRangeChain.nil {stop}"]
    lines = ["  exact"]
    for idx, _range in enumerate(ranges):
        indent = "    " + "  " * idx
        if idx == 0:
            lines.append(f"{indent}LinExpr.FinRangeChain.cons (by decide)")
        else:
            lines.append(f"{indent}(LinExpr.FinRangeChain.cons (by decide)")
    indent = "    " + "  " * len(ranges)
    close_nested = ")" * max(0, len(ranges) - 1)
    lines.append(f"{indent}(LinExpr.FinRangeChain.nil {stop}{close_nested})")
    return lines


def generate_full_aggregate_range_terms_module(
    output_dir: Path,
    module_prefix: str,
    name: str,
    n: int,
    compact_bridge_module: str,
) -> None:
    lines = module_prelude(
        [
            "CoveringCodes.SDP.GijswijtPolak2025.Certificates.Dual",
            compact_bridge_module,
        ],
        "Generated full aggregate range terms",
    )
    lines.extend([
        f"def {name}FullAggregateScalarRangeTerm",
        f"    (atom : {name}LinAtom) : LinExpr (BinaryOrbitIndex {n}) :=",
        f"  LinExpr.smul ({name}LinearMultiplier atom)",
        f"    ({name}FullLinearAtomExpr atom)",
        "",
        f"def {name}FullAggregatePsdRangeTerm",
        f"    (block : {name}Block) : LinExpr (BinaryOrbitIndex {n}) :=",
        f"  MatrixLinExpr.innerExpr ({name}DualMatrix block)",
        f"    ({name}FullMatrixAtomExpr block)",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "FullAggregateRangeTerms.lean", lines)


def generate_matrix_cut_source_bridge_module(
    output_dir: Path,
    module_prefix: str,
    name: str,
    n: int,
    scalar_count: int,
    chunk_idx: int,
    start: int,
    end: int,
    groups: list[dict[str, Any]],
    data_file_stem: str,
) -> None:
    validate_source_group_range_cover(
        groups,
        start,
        end,
        f"full aggregate scalar chunk {chunk_idx}",
    )
    file_stem = f"FullAggregateScalarChunk{chunk_idx}SourceBridge"
    ranges_name = f"{name}FullAggregateScalarChunk{chunk_idx}SourceGroupRanges"
    bridge_terms: list[str] = []
    contribution_theorems: list[str] = []
    lines = module_prelude(
        [
            f"{module_prefix}.{data_file_stem}",
            f"{module_prefix}.FullAggregateRangeTerms",
        ],
        (
            "Generated full aggregate scalar chunk source-group range bridge "
            f"chunk {chunk_idx}"
        ),
    )
    lines.extend([
        "set_option linter.unnecessarySeqFocus false",
        "",
    ])
    for group_idx, group in enumerate(groups):
        group_start = int(group["range_start"])
        group_end = int(group["range_end"])
        if group_end != group_start + 4:
            raise ValueError(
                "matrix-cut source-group bridge expects four scalar atoms; "
                f"chunk {chunk_idx}, group {group_idx} has range "
                f"[{group_start}, {group_end})"
            )
        weight_name = (
            f"{name}FullAggregateScalarChunk{chunk_idx}"
            f"SourceGroup{group_idx}Weight"
        )
        atom_theorem = (
            f"{name}FullAggregateScalarChunk{chunk_idx}"
            f"SourceGroup{group_idx}AtomShift"
        )
        multiplier_theorem = (
            f"{name}FullAggregateScalarChunk{chunk_idx}"
            f"SourceGroup{group_idx}MultiplierShift"
        )
        contribution_theorem = (
            f"{name}FullAggregateScalarChunk{chunk_idx}"
            f"SourceGroup{group_idx}Contribution_eq_range"
        )
        contribution_theorems.append(contribution_theorem)
        bridge_terms.append(
            "binaryLengthThirteenMatrixCutSourceContribution "
            f"{group['ineq']} {group['source']} {weight_name}"
        )
        lines.extend([
            f"theorem {atom_theorem} (cut : Fin 4) :",
            f"    {name}FullScalarAtom",
            f"      ((LinExpr.finShiftEmbedding {scalar_count} {group_start} 4",
            "        (by decide)) cut) =",
            f"    BinaryTableScalarAtom.matrixCut {group['ineq']} cut",
            f"      {group['source']} := by",
            "  fin_cases cut <;> rfl",
            "",
            f"theorem {multiplier_theorem} (cut : Fin 4) :",
            f"    {name}LinearMultiplier",
            f"      ((LinExpr.finShiftEmbedding {scalar_count} {group_start} 4",
            "        (by decide)) cut) =",
            f"    {weight_name} cut := by",
            "  fin_cases cut <;> rfl",
            "",
            f"theorem {contribution_theorem} :",
            "    binaryLengthThirteenMatrixCutSourceContribution",
            f"      {group['ineq']} {group['source']} {weight_name} =",
            f"    LinExpr.sumFinRange {name}FullAggregateScalarRangeTerm",
            f"      {group_start} {group_end} := by",
            "  change",
            "    LinExpr.sum Finset.univ (fun cut : Fin 4 =>",
            f"      LinExpr.smul ({weight_name} cut)",
            "        (binaryLengthThirteenTableScalarAtomExprFin",
            f"          (BinaryTableScalarAtom.matrixCut {group['ineq']} cut",
            f"            {group['source']}))) =",
            "    LinExpr.sumFinRange",
            f"      (fun atom : {name}LinAtom =>",
            f"        LinExpr.smul ({name}LinearMultiplier atom)",
            f"          ({name}FullLinearAtomExpr atom))",
            f"      {group_start} ({group_start} + 4)",
            "  exact LinExpr.sum_smul_eq_sumFinRange_of_shift",
            f"    {name}LinearMultiplier",
            f"    {name}FullLinearAtomExpr",
            f"    {weight_name}",
            "    (fun cut : Fin 4 =>",
            "      binaryLengthThirteenTableScalarAtomExprFin",
            f"        (BinaryTableScalarAtom.matrixCut {group['ineq']} cut",
            f"          {group['source']}))",
            "    (by norm_num)",
            f"    {multiplier_theorem}",
            "    (by",
            "      intro cut",
            f"      simp [{name}FullLinearAtomExpr, {atom_theorem} cut])",
            "",
        ])

    source_ranges = [
        (int(group["range_start"]), int(group["range_end"]))
        for group in groups
    ]
    ranges_literal = ", ".join(
        f"({group_start}, {group_end})" for group_start, group_end in source_ranges
    )
    lines.extend([
        f"def {ranges_name} : List (Nat × Nat) :=",
        f"  [{ranges_literal}]",
        "",
        f"theorem {ranges_name}_chain :",
        f"    LinExpr.FinRangeChain {start} {ranges_name} {end} := by",
    ])
    lines.extend(fin_range_chain_proof_lines(source_ranges, end))
    lines.extend([
        "",
        f"theorem {name}FullAggregateScalarChunk{chunk_idx}SemanticExpr_eq_rangeFold :",
        f"    {name}FullAggregateScalarChunkSemanticExpr{chunk_idx} =",
        f"      LinExpr.foldFinRanges {name}FullAggregateScalarRangeTerm",
        f"        {ranges_name} := by",
        f"  unfold {name}FullAggregateScalarChunkSemanticExpr{chunk_idx}",
        f"  unfold {ranges_name} LinExpr.foldFinRanges",
        "  rw [",
    ])
    for theorem in contribution_theorems[:-1]:
        lines.append(f"    {theorem},")
    if contribution_theorems:
        lines.append(f"    {contribution_theorems[-1]}]")
    else:
        lines.append("    ]")
    lines.append("  rfl")
    lines.extend([
        "",
        f"theorem {name}FullAggregateScalarChunk{chunk_idx}SemanticExpr_eq_range :",
        f"    {name}FullAggregateScalarChunkSemanticExpr{chunk_idx} =",
        f"      LinExpr.sumFinRange {name}FullAggregateScalarRangeTerm",
        f"        {start} {end} := by",
        f"  rw [{name}FullAggregateScalarChunk{chunk_idx}SemanticExpr_eq_rangeFold]",
        f"  exact LinExpr.foldFinRanges_eq_sumFinRange_of_chain",
        f"    {name}FullAggregateScalarRangeTerm",
        f"    {ranges_name}_chain",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / f"{file_stem}.lean", lines)


def generate_scalar_chunk_range_bridge_module(
    output_dir: Path,
    module_prefix: str,
    name: str,
    n: int,
    scalar_count: int,
    chunk_idx: int,
    start: int,
    end: int,
    data_file_stem: str,
    atoms_name: str,
) -> None:
    atom_count = end - start
    file_stem = f"FullAggregateScalarChunk{chunk_idx}RangeBridge"
    stop_theorem = f"{atoms_name}_stop"
    semantic_expr_name = f"{name}FullAggregateScalarChunkSemanticExpr{chunk_idx}"
    lines = module_prelude(
        [
            f"{module_prefix}.{data_file_stem}",
            f"{module_prefix}.FullAggregateRangeTerms",
        ],
        f"Generated full aggregate scalar chunk range bridge chunk {chunk_idx}",
    )
    lines.extend([
        f"theorem {name}FullAggregateScalarChunk{chunk_idx}SemanticExpr_eq_range :",
        f"    {semantic_expr_name} =",
        f"      LinExpr.sumFinRange {name}FullAggregateScalarRangeTerm",
        f"        {start} {end} := by",
        f"  unfold {semantic_expr_name}",
        f"  unfold {atoms_name}",
        "  change",
        f"    (List.ofFn (fun offset : Fin {atom_count} =>",
        f"      {name}FullAggregateScalarRangeTerm",
        f"        ((LinExpr.finShiftEmbedding {scalar_count} {start} {atom_count}",
        f"          {stop_theorem}) offset))).foldr",
        f"      LinExpr.add (LinExpr.constExpr (BinaryOrbitIndex {n}) 0) =",
        f"    LinExpr.sumFinRange {name}FullAggregateScalarRangeTerm",
        f"      {start} {end}",
        "  rw [LinExpr.foldr_add_ofFn_eq_sum]",
        f"  exact (LinExpr.sumFinRange_eq_fin_sum_shift",
        f"    (n := {scalar_count}) (start := {start}) (len := {atom_count})",
        f"    {name}FullAggregateScalarRangeTerm",
        f"    {stop_theorem}).symm",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / f"{file_stem}.lean", lines)


def generate_compact_scalar_source_range_bridge_module(
    output_dir: Path,
    module_prefix: str,
    name: str,
    n: int,
    scalar_count: int,
    chunk: dict[str, Any],
    expr_file: str,
) -> tuple[str, str]:
    chunk_idx = int(chunk["index"])
    start = int(chunk["atom_start"])
    end = int(chunk["atom_end"])
    groups = list(chunk["groups"])
    cursor = start
    for group_idx, group in enumerate(groups):
        group_start = int(group["start"])
        group_end = int(group["end"])
        if group_start != cursor or group_end < group_start:
            raise ValueError(
                "compact scalar source semantic bridge expects source groups "
                f"to cover chunk {chunk_idx} range [{start}, {end}); group "
                f"{group_idx} has [{group_start}, {group_end}) after cursor "
                f"{cursor}"
            )
        cursor = group_end
    if cursor != end:
        raise ValueError(
            "compact scalar source semantic bridge source groups stopped at "
            f"{cursor}, expected chunk {chunk_idx} end {end}"
        )

    file_stem = f"CompactScalarSourceChunk{chunk_idx}RangeBridge"
    ranges_name = (
        f"{name}CompactScalarSourceChunk{chunk_idx}SourceGroupRanges"
    )
    expr_name = str(chunk["semantic_expr"])
    bridge_module = f"{module_prefix}.{file_stem}"
    range_theorem = (
        f"{name}CompactScalarSourceChunk{chunk_idx}"
        "SemanticExpr_eq_range"
    )
    contribution_theorems: list[str] = []
    lines = module_prelude(
        [
            f"{module_prefix}.{expr_file}",
            f"{module_prefix}.FullAggregateRangeTerms",
        ],
        (
            "Generated compact scalar source chunk range bridge "
            f"{chunk_idx}"
        ),
    )
    lines.extend([
        "set_option linter.unnecessarySeqFocus false",
        "",
    ])
    for local_idx, group in enumerate(groups):
        width = compact_scalar_source_group_width(group)
        group_start = int(group["start"])
        group_end = int(group["end"])
        if group_end != group_start + width:
            raise ValueError(
                "compact scalar source semantic bridge width mismatch; "
                f"chunk {chunk_idx}, group {local_idx} has range "
                f"[{group_start}, {group_end}) but width {width}"
            )
        weight_name = (
            f"{name}CompactScalarSourceSemanticChunk{chunk_idx}"
            f"SourceGroup{local_idx}Weight"
        )
        atom_theorem = (
            f"{name}CompactScalarSourceChunk{chunk_idx}"
            f"SourceGroup{local_idx}AtomShift"
        )
        multiplier_theorem = (
            f"{name}CompactScalarSourceChunk{chunk_idx}"
            f"SourceGroup{local_idx}MultiplierShift"
        )
        contribution_theorem = (
            f"{name}CompactScalarSourceChunk{chunk_idx}"
            f"SourceGroup{local_idx}Contribution_eq_range"
        )
        contribution_theorems.append(contribution_theorem)
        idx_var = "idx" if width != 4 else "cut"
        atom_expr = compact_scalar_source_atom_expr(n, group, idx_var)
        contribution_term = compact_scalar_source_contribution_term(
            n,
            group,
            weight_name,
        )
        lines.extend([
            f"theorem {atom_theorem} ({idx_var} : Fin {width}) :",
            f"    {name}FullScalarAtom",
            f"      ((LinExpr.finShiftEmbedding {scalar_count} {group_start} {width}",
            f"        (by decide)) {idx_var}) =",
            f"    {atom_expr} := by",
            f"  fin_cases {idx_var} <;> rfl",
            "",
            f"theorem {multiplier_theorem} ({idx_var} : Fin {width}) :",
            f"    {name}LinearMultiplier",
            f"      ((LinExpr.finShiftEmbedding {scalar_count} {group_start} {width}",
            f"        (by decide)) {idx_var}) =",
            f"    {weight_name} {idx_var} := by",
            f"  fin_cases {idx_var} <;> rfl",
            "",
            f"theorem {contribution_theorem} :",
            f"    {contribution_term} =",
            f"    LinExpr.sumFinRange {name}FullAggregateScalarRangeTerm",
            f"      {group_start} {group_end} := by",
            "  change",
        ])
        lines.extend(compact_scalar_source_contribution_change_lines(
            n,
            group,
            idx_var,
            weight_name,
        ))
        lines.extend([
            "    LinExpr.sumFinRange",
            f"      (fun atom : {name}LinAtom =>",
            f"        LinExpr.smul ({name}LinearMultiplier atom)",
            f"          ({name}FullLinearAtomExpr atom))",
            f"      {group_start} ({group_start} + {width})",
            "  exact LinExpr.sum_smul_eq_sumFinRange_of_shift",
            f"    {name}LinearMultiplier",
            f"    {name}FullLinearAtomExpr",
            f"    {weight_name}",
            f"    (fun {idx_var} : Fin {width} =>",
            "      binaryLengthThirteenTableScalarAtomExprFin",
            f"        ({atom_expr}))",
            "    (by norm_num)",
            f"    {multiplier_theorem}",
            "    (by",
            f"      intro {idx_var}",
            f"      simp [{name}FullLinearAtomExpr, {atom_theorem} {idx_var}])",
            "",
        ])

    source_ranges = [
        (int(group["start"]), int(group["end"]))
        for group in groups
    ]
    ranges_literal = ", ".join(
        f"({group_start}, {group_end})" for group_start, group_end in source_ranges
    )
    lines.extend([
        f"def {ranges_name} : List (Nat × Nat) :=",
        f"  [{ranges_literal}]",
        "",
        f"theorem {ranges_name}_chain :",
        f"    LinExpr.FinRangeChain {start} {ranges_name} {end} := by",
    ])
    lines.extend(fin_range_chain_proof_lines(source_ranges, end))
    lines.extend([
        "",
        f"theorem {name}CompactScalarSourceChunk{chunk_idx}SemanticExpr_eq_rangeFold :",
        f"    {expr_name} =",
        f"      LinExpr.foldFinRanges {name}FullAggregateScalarRangeTerm",
        f"        {ranges_name} := by",
        f"  unfold {expr_name}",
        f"  unfold {ranges_name} LinExpr.foldFinRanges",
        "  rw [",
    ])
    for theorem in contribution_theorems[:-1]:
        lines.append(f"    {theorem},")
    if contribution_theorems:
        lines.append(f"    {contribution_theorems[-1]}]")
    else:
        lines.append("    ]")
    lines.append("  rfl")
    lines.extend([
        "",
        f"theorem {range_theorem} :",
        f"    {expr_name} =",
        f"      LinExpr.sumFinRange {name}FullAggregateScalarRangeTerm",
        f"        {start} {end} := by",
        f"  rw [{name}CompactScalarSourceChunk{chunk_idx}SemanticExpr_eq_rangeFold]",
        f"  exact LinExpr.foldFinRanges_eq_sumFinRange_of_chain",
        f"    {name}FullAggregateScalarRangeTerm",
        f"    {ranges_name}_chain",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / f"{file_stem}.lean", lines)
    return bridge_module, range_theorem


def compact_semantic_expression_lines(name: str, indent: str) -> list[str]:
    return [
        f"{indent}(sdpDualExpression",
        f"{indent}  {name}CompactLinearAtomExpr",
        f"{indent}  {name}CompactMatrixAtomExpr",
        f"{indent}  {name}LinearMultiplier",
        f"{indent}  0",
        f"{indent}  {name}DualMatrix)",
    ]


def generate_compact_semantic_coeff_modules(
    exact: dict[str, Any],
    output_dir: Path,
    module_prefix: str,
    name: str,
    aggregate_dual_expression: dict[str, Any],
    compact_semantic_coeff_chunk_size: int,
    semantic_bridge_module: str | None,
) -> str:
    n = int(exact["n"])
    r = int(exact["r"])
    qvars = int(exact["variable_count"])
    if qvars <= 0:
        raise ValueError("compact semantic chunks require positive variable_count")
    scale = Fraction(2) ** n
    data_name = f"{name}CompactDualExpressionData"
    compact_bridge_module = semantic_bridge_module or f"{module_prefix}.CompactBridge"

    lines = module_prelude(
        ["CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr"],
        f"Generated compact aggregate SDP sparse data for ({2},{n},{r})",
    )
    lines.extend(sparse_data_lines(data_name, qvars, aggregate_dual_expression, scale))
    lines.extend(module_postlude())
    write_module(output_dir / "CompactData.lean", lines)

    coeff_modules: list[str] = []
    semantic_type = compact_semantic_expression_lines(name, "      ")
    for chunk, start in enumerate(range(0, qvars, compact_semantic_coeff_chunk_size)):
        end = min(start + compact_semantic_coeff_chunk_size, qvars)
        file_stem = f"CompactSemanticCoeff{chunk}"
        theorem_name = f"{name}CompactDualExpressionSemanticCoeffEqChunk{chunk}"
        coeff_modules.append(f"{module_prefix}.{file_stem}")
        lines = module_prelude(
            [
                f"{module_prefix}.CompactData",
                compact_bridge_module,
            ],
            (
                "Generated compact aggregate semantic coefficient equality "
                f"chunk {chunk}"
            ),
        )
        lines.extend([
            f"theorem {theorem_name}",
            f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
            f"    sparseLinExprCoeff {data_name}.terms idx =",
        ])
        lines.extend(semantic_type[:-1])
        lines.append(f"{semantic_type[-1]}.coeff")
        lines.extend([
            f"      (⟨idx, by omega⟩ : {name}QVar) := by",
            "  interval_cases idx",
            "  all_goals native_decide +revert",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"{file_stem}.lean", lines)

    lines = module_prelude(
        coeff_modules,
        f"Generated compact aggregate semantic equality for ({2},{n},{r})",
    )
    lines.extend([
        f"theorem {name}CompactDualExpression_const_semantic :",
        f"    (linExprOfSparseData {data_name}).const =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(f"{semantic_type[-1]}.const := by")
    lines.extend([
        "  native_decide +revert",
        "",
        f"theorem {name}CompactDualExpression_coeff_semantic_nat",
        f"    (idx : Nat) (hidx : idx < {qvars}) :",
        f"    sparseLinExprCoeff {data_name}.terms idx =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(f"{semantic_type[-1]}.coeff")
    lines.extend([
        f"      (⟨idx, hidx⟩ : {name}QVar) := by",
    ])
    chunk_count = (qvars + compact_semantic_coeff_chunk_size - 1) // (
        compact_semantic_coeff_chunk_size
    )
    for chunk in range(chunk_count - 1):
        end = min((chunk + 1) * compact_semantic_coeff_chunk_size, qvars)
        lines.extend([
            f"  by_cases h{chunk} : idx < {end}",
            f"  · exact {name}CompactDualExpressionSemanticCoeffEqChunk{chunk}",
            f"      idx (by omega) h{chunk}",
        ])
    last = chunk_count - 1
    lines.extend([
        f"  exact {name}CompactDualExpressionSemanticCoeffEqChunk{last}",
        "    idx (by omega) hidx",
        "",
        f"theorem {name}CompactDualExpression_coeff_semantic",
        f"    (q : {name}QVar) :",
        f"    (linExprOfSparseData {data_name}).coeff q =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(f"{semantic_type[-1]}.coeff q := by")
    lines.extend([
        "  cases q with",
        "  | mk idx hidx =>",
        f"      simpa using {name}CompactDualExpression_coeff_semantic_nat idx hidx",
        "",
        f"theorem {name}CompactDualExpression_coeff_0_semantic :",
        f"    (linExprOfSparseData {data_name}).coeff (⟨0, by omega⟩ : {name}QVar) =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(
        f"{semantic_type[-1]}.coeff (⟨0, by omega⟩ : {name}QVar) := by"
    )
    lines.extend([
        f"  exact {name}CompactDualExpression_coeff_semantic",
        f"    (⟨0, by omega⟩ : {name}QVar)",
        "",
        f"theorem {name}CompactDualExpression_semantic :",
        f"    linExprOfSparseData {data_name} =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(f"{semantic_type[-1]} := by")
    lines.extend([
        "  apply linExprOfSparseData_eq_of_nat_data_coeffs",
        f"  · simpa using {name}CompactDualExpression_const_semantic",
        "  · intro idx hidx",
        f"    exact {name}CompactDualExpression_coeff_semantic_nat idx hidx",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactSemantic.lean", lines)
    return f"{module_prefix}.CompactSemantic"


def generate_full_aggregate_semantic_modules(
    output_dir: Path,
    module_prefix: str,
    name: str,
    full_data_name: str,
    full_vars: int,
    full_aggregate_semantic_coeff_chunk_size: int,
    semantic_bridge_module: str | None,
    support_config: BinaryCompactSupportConfig,
) -> str:
    if full_aggregate_semantic_coeff_chunk_size <= 0:
        raise ValueError("full aggregate semantic coefficient chunk size must be positive")
    compact_bridge_module = semantic_bridge_module or f"{module_prefix}.CompactBridge"
    coeff_modules: list[str] = []
    for chunk, start in enumerate(
        range(0, full_vars, full_aggregate_semantic_coeff_chunk_size)
    ):
        end = min(start + full_aggregate_semantic_coeff_chunk_size, full_vars)
        file_stem = f"FullAggregateSemanticCoeff{chunk}"
        theorem_name = f"{name}FullAggregateDualExpressionSemanticCoeffEqChunk{chunk}"
        coeff_modules.append(f"{module_prefix}.{file_stem}")
        lines = module_prelude(
            [
                f"{module_prefix}.CompactData",
                compact_bridge_module,
            ],
            f"Generated full aggregate semantic coefficient equality chunk {chunk}",
        )
        lines.extend([
            f"theorem {theorem_name}",
            f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
            f"    sparseLinExprCoeff {full_data_name}.terms idx =",
            f"      {name}FullDualExpression.coeff",
            f"        ({support_config.orbit_of_fin} (⟨idx, by omega⟩ : Fin {full_vars})) := by",
            "  interval_cases idx",
            "  all_goals native_decide +revert",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"{file_stem}.lean", lines)

    lines = module_prelude(
        coeff_modules,
        "Generated full aggregate sparse-data semantic summary",
    )
    lines.extend([
        f"theorem {name}FullAggregateDualExpression_const_semantic :",
        f"    (linExprOfSparseData {full_data_name}).const =",
        f"      {name}FullDualExpression.const := by",
        "  native_decide",
        "",
        f"theorem {name}FullAggregateDualExpression_coeff_semantic_nat",
        f"    (idx : Nat) (hidx : idx < {full_vars}) :",
        f"    sparseLinExprCoeff {full_data_name}.terms idx =",
        f"      {name}FullDualExpression.coeff",
        f"        ({support_config.orbit_of_fin} (⟨idx, hidx⟩ : Fin {full_vars})) := by",
    ])
    chunk_count = (
        full_vars + full_aggregate_semantic_coeff_chunk_size - 1
    ) // full_aggregate_semantic_coeff_chunk_size
    for chunk in range(chunk_count - 1):
        end = min((chunk + 1) * full_aggregate_semantic_coeff_chunk_size, full_vars)
        lines.extend([
            f"  by_cases h{chunk} : idx < {end}",
            f"  · exact {name}FullAggregateDualExpressionSemanticCoeffEqChunk{chunk}",
            f"      idx (by omega) h{chunk}",
        ])
    last = chunk_count - 1
    lines.extend([
        f"  exact {name}FullAggregateDualExpressionSemanticCoeffEqChunk{last}",
        "    idx (by omega) hidx",
        "",
        f"theorem {name}FullAggregateDualExpression_coeff_semantic",
        f"    (idx : Fin {full_vars}) :",
        f"    (linExprOfSparseData {full_data_name}).coeff idx =",
        f"      {name}FullDualExpression.coeff",
        f"        ({support_config.orbit_of_fin} idx) := by",
        "  cases idx with",
        "  | mk idx hidx =>",
        f"      simpa using {name}FullAggregateDualExpression_coeff_semantic_nat idx hidx",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "FullAggregateSemantic.lean", lines)
    return f"{module_prefix}.FullAggregateSemantic"


def generate_compact_full_sparse_semantic_modules(
    exact: dict[str, Any],
    output_dir: Path,
    module_prefix: str,
    name: str,
    aggregate_dual_expression: dict[str, Any],
    full_aggregate_dual_expression: dict[str, Any],
    full_aggregate_semantic_coeff_chunk_size: int,
    semantic_bridge_module: str | None,
    support_config: BinaryCompactSupportConfig,
) -> str:
    n = int(exact["n"])
    r = int(exact["r"])
    qvars = int(exact["variable_count"])
    if n != support_config.n:
        raise ValueError(
            "compact full-sparse semantic route currently uses "
            f"{support_config.support_prefix} quotient fibers"
        )
    if qvars != support_config.qvars:
        raise ValueError(
            "compact full-sparse semantic route quotient variable mismatch"
        )
    full_vars = binary_full_orbit_count(n)
    if full_vars != support_config.full_vars:
        raise ValueError("compact full-sparse semantic route full orbit mismatch")
    scale = Fraction(2) ** n
    data_name = f"{name}CompactDualExpressionData"
    full_data_name = f"{name}FullAggregateDualExpressionData"
    target_name = f"{name}FullAggregateComponentTargetData"
    quotient_name = f"{name}CompactDualExpressionQuotient"
    compact_bridge_module = semantic_bridge_module or f"{module_prefix}.CompactBridge"
    semantic_type = compact_semantic_expression_lines(name, "      ")
    use_structural_full_data = full_aggregate_semantic_coeff_chunk_size == 0
    full_const_semantic = f"{name}FullAggregateDualExpression_const_semantic"
    full_coeff_semantic = f"{name}FullAggregateDualExpression_coeff_semantic"
    compact_coeff_chunk_size = 16
    remove_stale_generated_modules(
        output_dir,
        [
            "CompactComponent*.lean",
            "CompactDataQuotientCoeff*.lean",
            "CompactObjectiveDataEqCoeff*.lean",
            "CompactPsdComponent*.lean",
            "CompactScalar*.lean",
            "FullAggregateSemanticCoeff*.lean",
        ],
    )

    data_imports = [
        "CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr",
    ]
    if use_structural_full_data:
        data_imports.append(f"{module_prefix}.FullAggregateTarget")
    lines = module_prelude(
        data_imports,
        f"Generated compact/full aggregate SDP sparse data for ({2},{n},{r})",
    )
    if use_structural_full_data:
        lines.extend([
            f"abbrev {full_data_name} : SparseLinExprData {full_vars} :=",
            f"  {name}FullAggregateComponentTargetData",
            "",
        ])
        lines.extend(sparse_data_lines(
            data_name,
            qvars,
            aggregate_dual_expression,
            scale,
            const_expr=f"{full_data_name}.const",
        ))
    else:
        lines.extend(sparse_data_lines(data_name, qvars, aggregate_dual_expression, scale))
        lines.extend(sparse_data_lines(
            full_data_name, full_vars, full_aggregate_dual_expression, scale
        ))
    lines.extend(module_postlude())
    write_module(output_dir / "CompactData.lean", lines)

    if full_aggregate_semantic_coeff_chunk_size > 0:
        full_semantic_module = generate_full_aggregate_semantic_modules(
            output_dir,
            module_prefix,
            name,
            full_data_name,
            full_vars,
            full_aggregate_semantic_coeff_chunk_size,
            semantic_bridge_module,
            support_config,
        )
    else:
        full_semantic_module = f"{module_prefix}.FullAggregateSemantic"

    semantic_imports = [
        f"{module_prefix}.CompactData",
        compact_bridge_module,
        full_semantic_module,
    ]
    if use_structural_full_data:
        semantic_imports.append(f"{module_prefix}.FullAggregateQuotientBridge")
    lines = module_prelude(
        semantic_imports,
        f"Generated compact full-sparse semantic bridge for ({2},{n},{r})",
    )
    if use_structural_full_data:
        # `FullAggregateSemantic` already exports the semantic theorems for the
        # structural target data. Re-emitting the same theorem names here would
        # collide with those imports.
        pass
    lines.extend([
        f"def {name}FullAggregateDualExpressionFiberSum (q : {name}QVar) : Rat :=",
        f"  {full_data_name}.coeffSum",
        f"    ({support_config.quotient_fiber} q)",
        "",
        f"theorem {name}FullAggregateDualExpressionFiberSum_eq_sum_coeff",
        f"    (q : {name}QVar) :",
        f"    {name}FullAggregateDualExpressionFiberSum q =",
        f"      ({support_config.quotient_fiber} q).sum",
        f"        (fun idx => (linExprOfSparseData {full_data_name}).coeff idx) := by",
        "  exact SparseLinExprData.coeffSum_eq_sum_coeff",
        f"    {full_data_name}",
        f"    ({support_config.quotient_fiber} q)",
        "",
        f"def {quotient_name} : LinExpr {name}QVar :=",
        f"  quotientLinExprOfSparseData {support_config.quotient_fiber}",
        f"    {full_data_name}",
        "",
    ])
    lines.extend([
        "",
        f"theorem {quotient_name}_const_eq_fullAggregateData :",
        f"    {quotient_name}.const =",
        f"      (linExprOfSparseData {full_data_name}).const := by",
    ])
    lines.append("  rfl")
    lines.extend([
        "",
        f"theorem {quotient_name}_coeff_eq_fullAggregateData",
        f"    (q : {name}QVar) :",
        f"    {quotient_name}.coeff q =",
        f"      {full_data_name}.coeffSum",
        f"        ({support_config.quotient_fiber} q) := by",
    ])
    lines.append("  rfl")
    lines.extend([
        "",
        f"theorem {quotient_name}_coeff_eq_sum_coeff",
        f"    (q : {name}QVar) :",
        f"    {quotient_name}.coeff q =",
        f"      ({support_config.quotient_fiber} q).sum",
        f"        (fun idx => (linExprOfSparseData {full_data_name}).coeff idx) := by",
    ])
    lines.append("  exact quotientLinExprOfSparseData_coeff_eq_sum_coeff")
    lines.extend([
        f"    {support_config.quotient_fiber}",
        f"    {full_data_name}",
        "    q",
        "",
        f"theorem {name}CompactDualExpression_semantic :",
        f"    {quotient_name} =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(f"{semantic_type[-1]} := by")
    lines.extend([
        f"  exact {name}CompactDualExpression_semantic_of_fullSparseData",
        f"    {quotient_name}",
        f"    {full_data_name}",
        f"    {quotient_name}_const_eq_fullAggregateData",
        f"    {quotient_name}_coeff_eq_fullAggregateData",
        f"    {full_const_semantic}",
        f"    {full_coeff_semantic}",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactSemantic.lean", lines)
    return f"{module_prefix}.CompactSemantic"


def chunk_dispatch_lines(
    theorem_prefix: str,
    qvars: int,
    chunk_size: int,
) -> list[str]:
    chunk_count = (qvars + chunk_size - 1) // chunk_size
    lines: list[str] = []
    for chunk in range(chunk_count - 1):
        end = min((chunk + 1) * chunk_size, qvars)
        lines.extend([
            f"  by_cases h{chunk} : idx < {end}",
            f"  · exact {theorem_prefix}{chunk}",
            f"      idx (by omega) h{chunk}",
        ])
    last = chunk_count - 1
    lines.extend([
        f"  exact {theorem_prefix}{last}",
        "    idx (by omega) hidx",
    ])
    return lines


def generate_compact_objective_equality_modules(
    output_dir: Path,
    module_prefix: str,
    name: str,
    qvars: int,
    objective_coeffs: dict[int, Fraction],
    full_aggregate_dual_expression: dict[str, Any] | None,
    scaled_bound: Fraction,
    compact_objective_eq_chunk_size: int,
    compact_component_eq_chunk_size: int,
    compact_full_sparse_semantic: bool,
    full_aggregate_semantic_coeff_chunk_size: int,
    compact_semantic_module: str,
    support_config: BinaryCompactSupportConfig,
    psd_block_count: int = 0,
    full_objective_module: str | None = None,
) -> str:
    if compact_objective_eq_chunk_size <= 0:
        raise ValueError("compact objective equality chunk size must be positive")
    if compact_component_eq_chunk_size <= 0:
        raise ValueError("compact component equality chunk size must be positive")
    if qvars <= 0:
        raise ValueError("compact objective equality requires positive variable_count")

    bound = lean_rat(scaled_bound)
    objective_data_name = f"{name}ObjectiveSubConstData"
    data_name = f"{name}CompactDualExpressionData"
    quotient_name = f"{name}CompactDualExpressionQuotient"
    full_data_name = f"{name}FullAggregateDualExpressionData"
    target_name = f"{name}FullAggregateComponentTargetData"

    if compact_full_sparse_semantic and full_objective_module is not None:
        remove_stale_generated_modules(
            output_dir,
            [
                "CompactObjectiveData.lean",
                "CompactObjectiveSemanticCoeff*.lean",
                "CompactObjectiveDataEqCoeff*.lean",
                "CompactDataQuotientCoeff*.lean",
            ],
        )
        quotient = support_config.quotient_linexpr
        reduced_objective = f"{support_config.support_prefix}ReducedObjectiveExprFin"
        lines = module_prelude(
            [
                f"{module_prefix}.CompactQuotientExpression",
                full_objective_module,
            ],
            "Generated compact objective equality from full objective stationarity",
        )
        lines.extend([
            f"theorem {name}CompactObjectiveExpression_eq :",
            f"    LinExpr.subConst {name}Objective {name}ScaledBound =",
            f"      {quotient_name} := by",
            "  calc",
            f"    LinExpr.subConst {name}Objective {name}ScaledBound =",
            f"        {quotient}",
            f"          (LinExpr.subConst {reduced_objective} {name}ScaledBound) := by",
            f"      rw [{name}Objective_eq_quotientReducedObjective]",
            f"      exact ({quotient}_subConst",
            f"        {reduced_objective} {name}ScaledBound).symm",
            f"    _ = {quotient} {name}FullDualExpression := by",
            f"      rw [{name}FullObjectiveExpression_eq_fullDual]",
            f"    _ = {quotient_name} := by",
            f"      exact {name}CompactDualExpressionQuotient_eq_quotientFull.symm",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / "CompactObjective.lean", lines)
        return f"{module_prefix}.CompactObjective"

    if compact_full_sparse_semantic and full_objective_module is None:
        remove_stale_generated_modules(
            output_dir,
            [
                "CompactObjectiveData.lean",
                "CompactObjectiveSemanticCoeff*.lean",
                "CompactObjectiveDataEqCoeff*.lean",
                "CompactDataQuotientCoeff*.lean",
            ],
        )

    objective_semantic_modules: list[str] = []
    if compact_full_sparse_semantic:
        remove_stale_generated_modules(
            output_dir,
            [
                "CompactObjectiveData.lean",
                "CompactObjectiveSemanticCoeff*.lean",
                "CompactObjectiveDataEqCoeff*.lean",
            ],
        )
    else:
        lines = module_prelude(
            [
                f"{module_prefix}.Core",
                f"{module_prefix}.CompactData",
            ],
            "Generated compact objective sparse data",
        )
        lines.extend(sparse_data_lines_from_coeffs(
            objective_data_name,
            qvars,
            -scaled_bound,
            objective_coeffs,
        ))
        lines.extend(module_postlude())
        write_module(output_dir / "CompactObjectiveData.lean", lines)

        for chunk, start in enumerate(range(0, qvars, compact_objective_eq_chunk_size)):
            end = min(start + compact_objective_eq_chunk_size, qvars)

            file_stem = f"CompactObjectiveSemanticCoeff{chunk}"
            theorem_name = f"{name}ObjectiveSubConstDataSemanticCoeffEqChunk{chunk}"
            objective_semantic_modules.append(f"{module_prefix}.{file_stem}")
            lines = module_prelude(
                [f"{module_prefix}.CompactObjectiveData"],
                f"Generated compact objective semantic coefficient chunk {chunk}",
            )
            lines.extend([
                "set_option linter.unnecessarySeqFocus false",
                "",
            ])
            lines.extend([
                f"theorem {theorem_name}",
                f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
                f"    sparseLinExprCoeff {objective_data_name}.terms idx =",
                f"      (LinExpr.subConst {name}Objective {bound}).coeff",
                f"        (⟨idx, by omega⟩ : {name}QVar) := by",
                "  interval_cases idx <;>",
                f"    norm_num [{objective_data_name}, {name}CompactDualExpressionData, {name}Objective,",
                "      sparseLinExprCoeff, sparseLinExpr, LinExpr.subConst]",
                "",
            ])
            lines.extend(module_postlude())
            write_module(output_dir / f"{file_stem}.lean", lines)

    compact_data_quotient_modules: list[str] = []
    if compact_full_sparse_semantic:
        compact_data_import = f"{module_prefix}.CompactData"
        quotient_import = f"{module_prefix}.CompactQuotientExpression"
        quotient_component_simp_names = [
            f"{name}FullAggregateScalarComponentData",
            *[
                f"{name}FullAggregatePsdComponentData{idx}"
                for idx in range(psd_block_count)
            ],
        ]
        quotient_simp_names = [
            data_name,
            quotient_name,
            target_name,
            *quotient_component_simp_names,
            "quotientLinExprOfSparseData",
            "SparseLinExprData.coeffSum",
            "SparseLinExprData.listSum",
            "SparseLinExprData.add",
            "SparseLinExprData.zero",
            "sparseLinExprCoeff",
            "sparseLinExprCoeff_append",
            support_config.quotient_fiber,
            support_config.quotient_fiber_list,
        ]
        quotient_simp = ", ".join(quotient_simp_names)
        for chunk, start in enumerate(range(0, qvars, compact_component_eq_chunk_size)):
            end = min(start + compact_component_eq_chunk_size, qvars)
            file_stem = f"CompactDataQuotientCoeff{chunk}"
            theorem_name = f"{name}CompactDataQuotientCoeffEqChunk{chunk}"
            compact_data_quotient_modules.append(f"{module_prefix}.{file_stem}")
            lines = module_prelude(
                [compact_data_import, quotient_import],
                f"Generated compact data quotient equality chunk {chunk}",
            )
            lines.extend([
                "set_option linter.unnecessarySeqFocus false",
                "",
            ])
            lines.extend([
                f"theorem {theorem_name}",
                f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
                f"    sparseLinExprCoeff {data_name}.terms idx =",
                f"      {quotient_name}.coeff (⟨idx, by omega⟩ : {name}QVar) := by",
                "  interval_cases idx",
                "  all_goals native_decide +revert",
                "",
            ])
            lines.extend(module_postlude())
            write_module(output_dir / f"{file_stem}.lean", lines)

    if compact_full_sparse_semantic:
        if full_aggregate_dual_expression is None:
            raise ValueError(
                "compact full-sparse objective equality requires "
                "full_aggregate_dual_expression"
            )
        if full_aggregate_semantic_coeff_chunk_size > 0:
            raise ValueError(
                "compact full-sparse objective equality requires the "
                "structural full aggregate quotient bridge"
            )

    if compact_full_sparse_semantic:
        imports = [
            f"{module_prefix}.CompactDataCore",
            f"{module_prefix}.CompactQuotientExpression",
            *compact_data_quotient_modules,
        ]
    else:
        imports = [
            f"{module_prefix}.CompactData",
            *objective_semantic_modules,
        ]
    lines = module_prelude(
        imports,
        "Generated compact objective equality assembly",
    )
    if not compact_full_sparse_semantic:
        lines.extend([
            f"theorem {name}ObjectiveSubConstData_const_semantic :",
            f"    {objective_data_name}.const =",
            f"      (LinExpr.subConst {name}Objective {bound}).const := by",
            f"  norm_num [{objective_data_name}, {data_name}, {name}Objective,",
            "    sparseLinExpr, LinExpr.subConst]",
            "",
            f"theorem {name}ObjectiveSubConstData_coeff_semantic_nat",
            f"    (idx : Nat) (hidx : idx < {qvars}) :",
            f"    sparseLinExprCoeff {objective_data_name}.terms idx =",
            f"      (LinExpr.subConst {name}Objective {bound}).coeff",
            f"        (⟨idx, hidx⟩ : {name}QVar) := by",
        ])
        lines.extend(chunk_dispatch_lines(
            f"{name}ObjectiveSubConstDataSemanticCoeffEqChunk",
            qvars,
            compact_objective_eq_chunk_size,
        ))
        lines.extend([
            "",
            f"theorem {name}ObjectiveSubConstData_semantic :",
            f"    LinExpr.subConst {name}Objective {bound} =",
            f"      linExprOfSparseData {objective_data_name} := by",
            "  symm",
            "  apply linExprOfSparseData_eq_of_nat_data_coeffs",
            f"  · exact {name}ObjectiveSubConstData_const_semantic",
            "  · intro idx hidx",
            f"    exact {name}ObjectiveSubConstData_coeff_semantic_nat idx hidx",
            "",
            f"theorem {name}ObjectiveSubConstData_eq_compactData_const :",
            f"    {objective_data_name}.const = {data_name}.const := by",
            "  rfl",
            "",
            "",
            f"theorem {name}ObjectiveSubConstData_eq_compactData :",
            f"    linExprOfSparseData {objective_data_name} =",
            f"      linExprOfSparseData {data_name} := by",
            "  rfl",
            "",
        ])
    if compact_full_sparse_semantic:
        lines.extend([
            f"theorem {name}CompactData_eq_quotient_const :",
            f"    {data_name}.const = {quotient_name}.const := by",
            f"  norm_num [{quotient_simp}]",
            "",
            f"theorem {name}CompactData_eq_quotient_coeff_nat",
            f"    (idx : Nat) (hidx : idx < {qvars}) :",
            f"    sparseLinExprCoeff {data_name}.terms idx =",
            f"      {quotient_name}.coeff (⟨idx, hidx⟩ : {name}QVar) := by",
        ])
        lines.extend(chunk_dispatch_lines(
            f"{name}CompactDataQuotientCoeffEqChunk",
            qvars,
            compact_component_eq_chunk_size,
        ))
        lines.extend([
            "",
            f"theorem {name}CompactDualExpressionData_eq_quotient :",
            f"    linExprOfSparseData {data_name} = {quotient_name} := by",
            "  apply linExprOfSparseData_eq_of_nat_data_coeffs",
            f"  · exact {name}CompactData_eq_quotient_const",
            "  · intro idx hidx",
            f"    exact {name}CompactData_eq_quotient_coeff_nat idx hidx",
            "",
            f"theorem {name}CompactObjectiveExpression_eq :",
            f"    LinExpr.subConst {name}Objective {name}ScaledBound =",
            f"      {quotient_name} := by",
            "  calc",
            f"    LinExpr.subConst {name}Objective {name}ScaledBound =",
            f"        {name}CompactDualExpression := by",
            f"      rw [{name}ScaledBound]",
            f"      exact {name}ObjectiveSubConst_eq_compactDualExpression_core",
            f"    _ = linExprOfSparseData {data_name} := by",
            f"      exact {name}CompactDualExpressionData_eq_core.symm",
            f"    _ = {quotient_name} := by",
            f"      exact {name}CompactDualExpressionData_eq_quotient",
            "",
        ])
    else:
        lines.extend([
            f"theorem {name}CompactObjectiveExpression_eq :",
            f"    LinExpr.subConst {name}Objective {bound} =",
            f"      linExprOfSparseData {data_name} := by",
            "  calc",
            f"    LinExpr.subConst {name}Objective {bound} =",
            f"        linExprOfSparseData {objective_data_name} := by",
            f"      exact {name}ObjectiveSubConstData_semantic",
            f"    _ = linExprOfSparseData {data_name} := by",
            f"      exact {name}ObjectiveSubConstData_eq_compactData",
            "",
        ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactObjective.lean", lines)
    return f"{module_prefix}.CompactObjective"


def generate_compact_quotient_full_objective_modules(
    output_dir: Path,
    module_prefix: str,
    name: str,
    qvars: int,
    scaled_bound: Fraction,
    compact_objective_eq_chunk_size: int,
    compact_bridge_module: str,
    support_config: BinaryCompactSupportConfig,
) -> str:
    if compact_objective_eq_chunk_size <= 0:
        raise ValueError("compact objective equality chunk size must be positive")
    if qvars <= 0:
        raise ValueError("compact objective equality requires positive variable_count")

    bound = lean_rat(scaled_bound)
    quotient_expr = f"{support_config.quotient_linexpr} {name}FullDualExpression"
    qvar_type = f"{name}QVar"
    remove_stale_generated_modules(
        output_dir,
        [
            "CompactObjectiveData.lean",
            "CompactObjectiveSemanticCoeff*.lean",
            "CompactObjectiveDataEqCoeff*.lean",
            "CompactDataQuotientCoeff*.lean",
            "CompactObjectiveQuotientFullCoeff*.lean",
        ],
    )

    coeff_modules: list[str] = []
    for chunk, start in enumerate(range(0, qvars, compact_objective_eq_chunk_size)):
        end = min(start + compact_objective_eq_chunk_size, qvars)
        file_stem = f"CompactObjectiveQuotientFullCoeff{chunk}"
        theorem_name = f"{name}CompactObjectiveQuotientFullCoeffEqChunk{chunk}"
        coeff_modules.append(f"{module_prefix}.{file_stem}")
        lines = module_prelude(
            [compact_bridge_module],
            f"Generated compact objective quotient-full coefficient chunk {chunk}",
        )
        lines.extend([
            "set_option linter.unnecessarySeqFocus false",
            "",
            f"theorem {theorem_name}",
            f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
            f"    (LinExpr.subConst {name}Objective {bound}).coeff",
            f"        (⟨idx, by omega⟩ : {qvar_type}) =",
            f"      ({quotient_expr}).coeff (⟨idx, by omega⟩ : {qvar_type}) := by",
            "  interval_cases idx",
            "  all_goals native_decide +revert",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"{file_stem}.lean", lines)

    lines = module_prelude(
        [compact_bridge_module, *coeff_modules],
        "Generated compact objective quotient-full equality assembly",
    )
    lines.extend([
        f"theorem {name}CompactObjectiveQuotientFullConstEq :",
        f"    (LinExpr.subConst {name}Objective {bound}).const =",
        f"      ({quotient_expr}).const := by",
        "  native_decide +revert",
        "",
        f"theorem {name}CompactObjectiveQuotientFullCoeffEq_nat",
        f"    (idx : Nat) (hidx : idx < {qvars}) :",
        f"    (LinExpr.subConst {name}Objective {bound}).coeff",
        f"        (⟨idx, hidx⟩ : {qvar_type}) =",
        f"      ({quotient_expr}).coeff (⟨idx, hidx⟩ : {qvar_type}) := by",
    ])
    lines.extend(chunk_dispatch_lines(
        f"{name}CompactObjectiveQuotientFullCoeffEqChunk",
        qvars,
        compact_objective_eq_chunk_size,
    ))
    lines.extend([
        "",
        f"theorem {name}CompactObjectiveExpression_eq :",
        f"    LinExpr.subConst {name}Objective {bound} =",
        f"      {quotient_expr} := by",
        "  apply LinExpr.ext_coeff_const",
        "  · intro q",
        f"    exact {name}CompactObjectiveQuotientFullCoeffEq_nat q.val q.isLt",
        f"  · exact {name}CompactObjectiveQuotientFullConstEq",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactObjective.lean", lines)
    return f"{module_prefix}.CompactObjective"


def sum_component_records(
    records: list[dict[str, Any]],
) -> tuple[Fraction, dict[int, Fraction]]:
    return (
        sum((record["const"] for record in records), Fraction(0)),
        add_coeff_maps([record["coeffs"] for record in records]),
    )


def generate_sparse_data_eq_coeff_modules(
    output_dir: Path,
    module_prefix: str,
    import_module: str | list[str],
    title: str,
    theorem_prefix: str,
    left_data: str,
    right_data: str,
    qvars: int,
    chunk_size: int,
    simp_names: list[str],
    file_prefix: str,
    tactic: str = "native_decide +revert",
) -> list[str]:
    if chunk_size <= 0:
        raise ValueError(f"{file_prefix} chunk size must be positive")
    modules: list[str] = []
    simp = ", ".join(simp_names + [
        "SparseLinExprData.listSum",
        "SparseLinExprData.add",
        "SparseLinExprData.zero",
        "sparseLinExprCoeff",
    ])
    for chunk, start in enumerate(range(0, qvars, chunk_size)):
        end = min(start + chunk_size, qvars)
        file_stem = f"{file_prefix}Coeff{chunk}"
        modules.append(f"{module_prefix}.{file_stem}")
        imports = [import_module] if isinstance(import_module, str) else import_module
        lines = module_prelude(
            imports,
            f"{title} coefficient chunk {chunk}",
        )
        if tactic == "native_decide +revert":
            lines.extend([
                "set_option linter.unnecessarySeqFocus false",
                "",
            ])
        lines.extend([
            f"theorem {theorem_prefix}CoeffEqChunk{chunk}",
            f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
            f"    sparseLinExprCoeff {left_data}.terms idx =",
            f"      sparseLinExprCoeff {right_data}.terms idx := by",
            "  interval_cases idx <;>",
            f"    {tactic}",
            "",
        ])
        if tactic == "native_decide +revert":
            lines[-3] = "  interval_cases idx"
            lines[-2] = "  all_goals native_decide +revert"
        if tactic.startswith("norm_num"):
            lines[-3] = f"    norm_num [{simp}]"
            del lines[-2]
        lines.extend(module_postlude())
        write_module(output_dir / f"{file_stem}.lean", lines)
    return modules


def generate_sparse_data_eq_summary_module(
    output_dir: Path,
    module_prefix: str,
    summary_file: str,
    imports: list[str],
    title: str,
    name: str,
    theorem_prefix: str,
    left_data: str,
    right_data: str,
    qvars: int,
    chunk_size: int,
    simp_names: list[str],
    tactic: str = "native_decide +revert",
    const_tactic: str | None = None,
) -> str:
    simp = ", ".join(simp_names + [
        "SparseLinExprData.listSum",
        "SparseLinExprData.add",
        "SparseLinExprData.zero",
    ])
    lines = module_prelude(imports, title)
    lines.extend([
        f"theorem {theorem_prefix}ConstEq :",
        f"    {left_data}.const = {right_data}.const := by",
    ])
    actual_const_tactic = const_tactic or tactic
    if actual_const_tactic.startswith("norm_num"):
        lines.append(f"  norm_num [{simp}]")
    else:
        lines.append(f"  {actual_const_tactic}")
    lines.extend([
        "",
        f"theorem {theorem_prefix}CoeffEq_nat",
        f"    (idx : Nat) (hidx : idx < {qvars}) :",
        f"    sparseLinExprCoeff {left_data}.terms idx =",
        f"      sparseLinExprCoeff {right_data}.terms idx := by",
    ])
    lines.extend(chunk_dispatch_lines(
        f"{theorem_prefix}CoeffEqChunk",
        qvars,
        chunk_size,
    ))
    lines.extend([
        "",
        f"theorem {theorem_prefix} :",
        f"    linExprOfSparseData {left_data} =",
        f"      linExprOfSparseData {right_data} := by",
        "  apply linExprOfSparseData_eq_of_nat_sparse_coeffs",
        f"  · exact {theorem_prefix}ConstEq",
        "  · intro idx hidx",
        f"    exact {theorem_prefix}CoeffEq_nat idx hidx",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / f"{summary_file}.lean", lines)
    return f"{module_prefix}.{summary_file}"


def generate_sparse_data_semantic_coeff_modules(
    output_dir: Path,
    module_prefix: str,
    import_module: str,
    title: str,
    theorem_prefix: str,
    data_name: str,
    semantic_expr: str,
    qvar_type: str,
    quotient_linexpr: str,
    qvars: int,
    chunk_size: int,
    file_prefix: str,
) -> list[str]:
    if chunk_size <= 0:
        raise ValueError(f"{file_prefix} chunk size must be positive")
    modules: list[str] = []
    for chunk, start in enumerate(range(0, qvars, chunk_size)):
        end = min(start + chunk_size, qvars)
        file_stem = f"{file_prefix}Coeff{chunk}"
        modules.append(f"{module_prefix}.{file_stem}")
        lines = module_prelude(
            [import_module],
            f"{title} semantic coefficient chunk {chunk}",
        )
        lines.extend([
            "set_option linter.unnecessarySeqFocus false",
            "",
            f"theorem {theorem_prefix}CoeffEqChunk{chunk}",
            f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
            f"    sparseLinExprCoeff {data_name}.terms idx =",
            f"      ({quotient_linexpr} {semantic_expr}).coeff",
            f"        (⟨idx, by omega⟩ : {qvar_type}) := by",
            "  interval_cases idx",
            "  all_goals native_decide +revert",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"{file_stem}.lean", lines)
    return modules


def generate_sparse_data_semantic_summary_module(
    output_dir: Path,
    module_prefix: str,
    summary_file: str,
    imports: list[str],
    title: str,
    theorem_prefix: str,
    data_name: str,
    semantic_expr: str,
    qvar_type: str,
    quotient_linexpr: str,
    qvars: int,
    chunk_size: int,
) -> str:
    lines = module_prelude(
        [
            "CoveringCodes.SDP.GijswijtPolak2025.Certificates.Dual",
            *imports,
        ],
        title,
    )
    lines.extend([
        f"theorem {theorem_prefix}ConstEq :",
        f"    {data_name}.const = ({quotient_linexpr} {semantic_expr}).const := by",
        "  native_decide +revert",
        "",
        f"theorem {theorem_prefix}CoeffEq_nat",
        f"    (idx : Nat) (hidx : idx < {qvars}) :",
        f"    sparseLinExprCoeff {data_name}.terms idx =",
        f"      ({quotient_linexpr} {semantic_expr}).coeff",
        f"        (⟨idx, hidx⟩ : {qvar_type}) := by",
    ])
    for chunk, start in enumerate(range(0, qvars, chunk_size)):
        end = min(start + chunk_size, qvars)
        theorem_name = f"{theorem_prefix}CoeffEqChunk{chunk}"
        if end < qvars:
            lines.extend([
                f"  by_cases h{chunk} : idx < {end}",
                f"  · simpa using {theorem_name} idx (by omega) h{chunk}",
            ])
        else:
            lines.extend([
                f"  simpa using {theorem_name} idx (by omega) hidx",
            ])
    lines.extend([
        "",
        f"theorem {theorem_prefix} :",
        f"    linExprOfSparseData {data_name} =",
        f"      {quotient_linexpr} {semantic_expr} := by",
        "  apply LinExpr.ext_coeff_const",
        "  · intro q",
        f"    simpa using ({theorem_prefix}CoeffEq_nat q.val q.isLt)",
        f"  · exact {theorem_prefix}ConstEq",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / f"{summary_file}.lean", lines)
    return f"{module_prefix}.{summary_file}"


def generate_compact_full_sparse_route_modules(
    exact: dict[str, Any],
    output_dir: Path,
    module_prefix: str,
    name: str,
    aggregate_dual_expression: dict[str, Any],
    full_aggregate_semantic_coeff_chunk_size: int,
    compact_component_eq_chunk_size: int,
    semantic_bridge_module: str | None,
    component_plan: dict[str, Any] | None,
    support_config: BinaryCompactSupportConfig,
) -> str:
    n = int(exact["n"])
    r = int(exact["r"])
    qvars = int(exact["variable_count"])
    if n != support_config.n:
        raise ValueError(
            "compact full-sparse semantic route currently uses "
            f"{support_config.support_prefix} quotient fibers"
        )
    if qvars != support_config.qvars:
        raise ValueError(
            "compact full-sparse semantic route quotient variable mismatch"
        )
    full_vars = binary_full_orbit_count(n)
    if full_vars != support_config.full_vars:
        raise ValueError("compact full-sparse semantic route full orbit mismatch")
    if full_aggregate_semantic_coeff_chunk_size != 0:
        raise ValueError(
            "compact full-sparse semantic route requires structural "
            "full aggregate semantics"
        )
    if compact_component_eq_chunk_size <= 0:
        raise ValueError("compact full-sparse boundary chunk size must be positive")
    if component_plan is None:
        raise ValueError("compact full-sparse route requires component plan")

    scale = Fraction(2) ** n
    data_name = f"{name}CompactDualExpressionData"
    component_quotient_name = f"{name}FullAggregateComponentQuotientData"
    component_sample_name = f"{name}FullAggregateComponentQuotientSampleData"
    scalar_quotient_name = f"{name}FullAggregateScalarComponentQuotientData"
    scalar_sample_name = f"{name}FullAggregateScalarComponentQuotientSampleData"
    psd_sample_name = f"{name}FullAggregatePsdComponentQuotientSampleData"
    target_name = f"{name}FullAggregateComponentTargetData"
    quotient_name = f"{name}CompactDualExpressionQuotient"
    compact_bridge_module = semantic_bridge_module or f"{module_prefix}.CompactBridge"
    semantic_type = compact_semantic_expression_lines(name, "      ")
    scalar_records = component_plan["scalar_records"]
    psd_records = component_plan["psd_records"]
    scalar_const, scalar_coeffs = sum_component_records(scalar_records)
    psd_quotient_names = [
        f"{name}FullAggregatePsdComponentQuotientData{record['idx']}"
        for record in psd_records
    ]
    quotient_sparse_eq = (
        f"{support_config.support_prefix}_quotientSparse_ofLinExprByFin_eq_sparseQuotient"
    )

    remove_stale_generated_modules(
        output_dir,
        [
            "CompactComponent*.lean",
            "CompactQuotient.lean",
            "CompactDataQuotientCoeff*.lean",
            "CompactDataQuotient*.lean",
            "CompactObjectiveCarrier*.lean",
            "CompactObjectiveCarrierBridge*.lean",
            "CompactObjectiveDataEqCoeff*.lean",
            "CompactPsdComponent*.lean",
            "CompactScalar*.lean",
            "FullAggregateComponentQuotient*.lean",
            "FullAggregatePsd*Quotient*.lean",
            "FullAggregateQuotientBridge.lean",
            "FullAggregateScalarChunk*Quotient*.lean",
            "FullAggregateScalarQuotient*.lean",
            "FullAggregateScalarQuotientBridge.lean",
            "FullAggregateSemanticCoeff*.lean",
        ],
    )

    lines = module_prelude(
        ["CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr"],
        f"Generated compact/full aggregate SDP sparse data for ({2},{n},{r})",
    )
    lines.extend(sparse_data_lines(data_name, qvars, aggregate_dual_expression, scale))
    lines.extend(module_postlude())
    write_module(output_dir / "CompactData.lean", lines)

    lines = module_prelude(
        [
            f"{module_prefix}.Core",
            f"{module_prefix}.CompactData",
        ],
        "Generated compact sparse data to core-expression bridge",
    )
    lines.extend([
        "theorem linExprOfSparseData_eq_sparseLinExpr",
        "    {m : Nat} (data : SparseLinExprData m) :",
        "    linExprOfSparseData data =",
        "      sparseLinExpr data.const data.terms := by",
        "  apply LinExpr.ext_coeff_const",
        "  · intro i",
        "    exact sparseLinExprCoeff_eq_foldl data.terms i.val",
        "  · rfl",
        "",
        f"theorem {name}CompactDualExpressionData_eq_core :",
        f"    linExprOfSparseData {data_name} =",
        f"      {name}CompactDualExpression := by",
        "  exact linExprOfSparseData_eq_sparseLinExpr",
        f"    {data_name}",
        "",
        f"theorem {name}ObjectiveSubConst_eq_compactDualExpression_core :",
        f"    LinExpr.subConst {name}Objective",
        f"      (-{name}CompactDualExpression.const) =",
        f"      {name}CompactDualExpression := by",
        "  apply LinExpr.ext_coeff_const",
        "  · intro q",
        "    rfl",
        f"  · norm_num [LinExpr.subConst, {name}Objective,",
        f"      {name}CompactDualExpression, sparseLinExpr]",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactDataCore.lean", lines)

    sampled_name = f"{name}FullAggregateComponentTargetSampledData"
    lines = module_prelude(
        [f"{module_prefix}.FullAggregateSemantic"],
        f"Generated sampled full aggregate target for ({2},{n},{r})",
    )
    lines.extend([
        f"def {sampled_name} : SparseLinExprData {full_vars} :=",
        f"  SparseLinExprData.ofLinExprByFin {support_config.orbit_of_fin}",
        f"    (linExprOfSparseDataByFin {support_config.orbit_to_fin}",
        f"      {target_name})",
        "",
        f"theorem {sampled_name}_byFin_semantic :",
        f"    linExprOfSparseDataByFin {support_config.orbit_to_fin}",
        f"      {sampled_name} =",
        f"      {name}FullDualExpression := by",
        f"  unfold {sampled_name}",
        "  rw [linExprOfSparseDataByFin_ofLinExprByFin",
        f"    {support_config.orbit_to_fin}",
        f"    {support_config.orbit_of_fin}",
        f"    (linExprOfSparseDataByFin {support_config.orbit_to_fin}",
        f"      {target_name})",
        f"    {support_config.orbit_of_fin_to_fin}]",
        f"  exact {name}FullAggregateComponentTargetData_byFin_semantic",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "FullAggregateTargetSampled.lean", lines)

    quotient_imports = [
        "CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr",
        compact_bridge_module,
        f"{module_prefix}.FullAggregateSemantic",
        f"{module_prefix}.FullAggregateTarget",
        f"{module_prefix}.QuotientFiber",
    ]
    lines = module_prelude(
        quotient_imports,
        f"Generated compact quotient expression carrier for ({2},{n},{r})",
    )
    lines.extend([
        f"def {name}FullAggregateComponentTargetFiberSum (q : {name}QVar) : Rat :=",
        f"  {target_name}.coeffSum",
        f"    ({support_config.quotient_fiber} q)",
        "",
        f"theorem {name}FullAggregateComponentTargetFiberSum_eq_sum_coeff",
        f"    (q : {name}QVar) :",
        f"    {name}FullAggregateComponentTargetFiberSum q =",
        f"      ({support_config.quotient_fiber} q).sum",
        f"        (fun idx => (linExprOfSparseData {target_name}).coeff idx) := by",
        "  exact SparseLinExprData.coeffSum_eq_sum_coeff",
        f"    {target_name}",
        f"    ({support_config.quotient_fiber} q)",
        "",
        f"def {quotient_name} : LinExpr {name}QVar :=",
        f"  quotientLinExprOfSparseData {support_config.quotient_fiber}",
        f"    {target_name}",
        "",
        f"theorem {quotient_name}_const_eq_fullAggregateData :",
        f"    {quotient_name}.const =",
        f"      (linExprOfSparseData {target_name}).const := by",
        "  rfl",
        "",
        f"theorem {quotient_name}_coeff_eq_fullAggregateData",
        f"    (q : {name}QVar) :",
        f"    {quotient_name}.coeff q =",
        f"      {target_name}.coeffSum",
        f"        ({support_config.quotient_fiber} q) := by",
        "  rfl",
        "",
        f"theorem {quotient_name}_coeff_eq_sum_coeff",
        f"    (q : {name}QVar) :",
        f"    {quotient_name}.coeff q =",
        f"      ({support_config.quotient_fiber} q).sum",
        f"        (fun idx => (linExprOfSparseData {target_name}).coeff idx) := by",
        "  exact quotientLinExprOfSparseData_coeff_eq_sum_coeff",
        f"    {support_config.quotient_fiber}",
        f"    {target_name}",
        "    q",
        "",
        f"theorem {name}FullAggregateComponentTargetData_coeffSum_semantic",
        f"    (q : {name}QVar) :",
        f"    {target_name}.coeffSum",
        f"        ({support_config.quotient_fiber} q) =",
        f"      ({support_config.support_prefix}QuotientLinExpr",
        f"        {name}FullDualExpression).coeff q := by",
        "  calc",
        f"    {target_name}.coeffSum",
        f"        ({support_config.quotient_fiber} q) =",
        f"        ({support_config.quotient_fiber} q).sum",
        f"          (fun idx =>",
        f"            (linExprOfSparseData",
        f"              {target_name}).coeff idx) := by",
        "      exact SparseLinExprData.coeffSum_eq_sum_coeff",
        f"        {target_name}",
        f"        ({support_config.quotient_fiber} q)",
        f"    _ = ({support_config.quotient_fiber} q).sum",
        f"          (fun idx =>",
        f"            {name}FullDualExpression.coeff",
        f"              ({support_config.support_prefix}OrbitOfFin idx)) := by",
        "      apply Finset.sum_congr rfl",
        "      intro idx _",
        f"      exact {name}FullAggregateComponentTarget_coeff_semantic idx",
        f"    _ = ({support_config.support_prefix}QuotientLinExpr",
        f"          {name}FullDualExpression).coeff q := rfl",
        "",
        f"theorem {quotient_name}_eq_quotientFull :",
        f"    {quotient_name} =",
        f"      {support_config.support_prefix}QuotientLinExpr {name}FullDualExpression := by",
        "  apply LinExpr.ext_coeff_const",
        "  · intro q",
        f"    exact {name}FullAggregateComponentTargetData_coeffSum_semantic q",
        f"  · exact {name}FullAggregateComponentTarget_const_semantic",
        "",
        f"theorem {quotient_name}_const_eq_compact_semantic :",
    ])
    lines.extend([
        f"    {quotient_name}.const =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(f"{semantic_type[-1]}.const := by")
    lines.extend([
        "  calc",
        f"    {quotient_name}.const =",
        f"        (linExprOfSparseData {target_name}).const := by",
        "      rfl",
        f"    _ = {name}FullDualExpression.const := by",
        f"      exact {name}FullAggregateComponentTarget_const_semantic",
        f"    _ =",
    ])
    lines.extend([f"        {line}" for line in semantic_type[:-1]])
    lines.append(f"        {semantic_type[-1]}.const := by")
    lines.extend([
        f"      exact {name}CompactDualExpression_const_eq_full.symm",
        "",
        f"theorem {quotient_name}_coeff_eq_compact_semantic",
        f"    (q : {name}QVar) :",
        f"    {quotient_name}.coeff q =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(f"{semantic_type[-1]}.coeff q := by")
    lines.extend([
        "  calc",
        f"    {quotient_name}.coeff q =",
        f"        {target_name}.coeffSum",
        f"          ({support_config.quotient_fiber} q) := by",
        "      rfl",
        f"    _ = ({support_config.support_prefix}QuotientLinExpr",
        f"          {name}FullDualExpression).coeff q := by",
        f"      exact {name}FullAggregateComponentTargetData_coeffSum_semantic q",
        f"    _ =",
    ])
    lines.extend([f"        {line}" for line in semantic_type[:-1]])
    lines.append(f"        {semantic_type[-1]}.coeff q := by")
    lines.extend([
        "      exact (congrArg (fun e => e.coeff q)",
        f"        {name}CompactDualExpression_eq_quotientFull).symm",
        "",
        f"theorem {quotient_name}_eq_compact_semantic :",
        f"    {quotient_name} =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(f"{semantic_type[-1]} := by")
    lines.extend([
        "  rw [LinExpr.mk.injEq]",
        "  constructor",
        "  · funext q",
        f"    exact {quotient_name}_coeff_eq_compact_semantic q",
        f"  · exact {quotient_name}_const_eq_compact_semantic",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactQuotientExpression.lean", lines)

    semantic_imports = [
        f"{module_prefix}.CompactQuotientExpression",
        compact_bridge_module,
        f"{module_prefix}.FullAggregateSemantic",
    ]
    lines = module_prelude(
        semantic_imports,
        f"Generated compact full-sparse semantic bridge for ({2},{n},{r})",
    )
    lines.extend([
        f"theorem {name}CompactDualExpression_semantic :",
        f"    {quotient_name} =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(f"{semantic_type[-1]} := by")
    lines.extend([
        f"  exact {quotient_name}_eq_compact_semantic",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactSemantic.lean", lines)
    return f"{module_prefix}.CompactSemantic"


def generate_full_objective_data_module(
    exact: dict[str, Any],
    output_dir: Path,
    module_prefix: str,
    name: str,
    scaled_bound: Fraction,
    support_config: BinaryCompactSupportConfig,
    compact_bridge_module: str,
) -> str | None:
    n = int(exact["n"])
    full_vars = support_config.full_vars
    if not validate_full_objective_subconst_expression(exact, full_vars):
        remove_stale_generated_modules(output_dir, ["FullObjectiveData.lean"])
        return None

    scale = Fraction(2) ** n
    objective_data_name = f"{name}FullObjectiveSubConstData"
    aggregate_data_name = f"{name}FullAggregateDualExpressionLiteralData"
    objective_expr_name = f"{name}FullObjectiveSubConstExpression"
    aggregate_expr_name = f"{name}FullAggregateDualExpressionLiteral"
    lines = module_prelude(
        [
            compact_bridge_module,
            "CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr",
        ],
        f"Generated exact full objective stationarity data for ({2},{n},{support_config.r})",
    )
    lines.extend(sparse_data_lines(
        aggregate_data_name,
        full_vars,
        exact["full_aggregate_dual_expression"],
        scale,
    ))
    lines.extend([
        f"abbrev {objective_data_name} : SparseLinExprData {full_vars} :=",
        f"  {aggregate_data_name}",
        "",
        f"theorem {objective_data_name}_eq_fullAggregateLiteral :",
        f"    {objective_data_name} = {aggregate_data_name} := by",
        "  rfl",
        "",
        f"def {objective_expr_name} : LinExpr (BinaryOrbitIndex {n}) :=",
        f"  linExprOfSparseDataByFin {support_config.orbit_to_fin}",
        f"    {objective_data_name}",
        "",
        f"def {aggregate_expr_name} : LinExpr (BinaryOrbitIndex {n}) :=",
        f"  linExprOfSparseDataByFin {support_config.orbit_to_fin}",
        f"    {aggregate_data_name}",
        "",
        f"theorem {objective_expr_name}_eq_fullAggregateLiteral :",
        f"    {objective_expr_name} = {aggregate_expr_name} := by",
        f"  rw [{objective_expr_name}, {aggregate_expr_name},",
        f"    {objective_data_name}_eq_fullAggregateLiteral]",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "FullObjectiveData.lean", lines)
    return f"{module_prefix}.FullObjectiveData"


def generate_full_objective_subconst_modules(
    exact: dict[str, Any],
    output_dir: Path,
    module_prefix: str,
    name: str,
    scaled_bound: Fraction,
    support_config: BinaryCompactSupportConfig,
    full_objective_eq_chunk_size: int,
) -> str | None:
    if full_objective_eq_chunk_size <= 0:
        raise ValueError("full objective equality chunk size must be positive")
    full_vars = support_config.full_vars
    if not validate_full_objective_subconst_expression(exact, full_vars):
        remove_stale_generated_modules(
            output_dir,
            [
                "FullObjective.lean",
                "FullObjectiveCoeff*.lean",
                "FullAggregateDualLiteralTargetCoeff*.lean",
                "FullAggregateDualLiteralSemanticCoeff*.lean",
            ],
        )
        return None

    n = int(exact["n"])
    bound = f"{name}ScaledBound"
    data_name = f"{name}FullObjectiveSubConstData"
    expr_name = f"{name}FullObjectiveSubConstExpression"
    aggregate_data_name = f"{name}FullAggregateDualExpressionLiteralData"
    aggregate_expr_name = f"{name}FullAggregateDualExpressionLiteral"
    target_name = f"{name}FullAggregateComponentTargetData"
    reduced_objective = f"{support_config.support_prefix}ReducedObjectiveExprFin"
    reduced_coeff = f"{support_config.support_prefix}ReducedObjectiveExprFin_coeff_ofFin"
    orbit_names = binary_compact_orbit_of_fin_names(support_config)
    emit_target_bridge = (
        exact.get("full_aggregate_dual_expression_components") is not None
        and exact.get("full_aggregate_dual_expression") is not None
    )

    coeff_modules: list[str] = []
    for chunk, start in enumerate(range(0, full_vars, full_objective_eq_chunk_size)):
        end = min(start + full_objective_eq_chunk_size, full_vars)
        file_stem = f"FullObjectiveCoeff{chunk}"
        theorem_name = f"{name}FullObjectiveSubConstDataSemanticCoeffEqChunk{chunk}"
        coeff_modules.append(f"{module_prefix}.{file_stem}")
        orbit_simp = ", ".join(orbit_names[start:end])
        lines = module_prelude(
            [f"{module_prefix}.FullObjectiveData"],
            f"Generated full objective coefficient equality chunk {chunk}",
        )
        lines.extend([
            "set_option linter.unnecessarySeqFocus false",
            "",
            f"theorem {theorem_name}",
            f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
            f"    sparseLinExprCoeff {data_name}.terms idx =",
            f"      (LinExpr.subConst {reduced_objective} {bound}).coeff",
            f"        ({support_config.orbit_of_fin} (⟨idx, by omega⟩ : Fin {full_vars})) := by",
            "  interval_cases idx <;>",
            f"    rw [LinExpr.subConst, {reduced_coeff}] <;>",
            f"    norm_num [{data_name},",
            f"      {name}FullAggregateDualExpressionLiteralData,",
            "      sparseLinExprCoeff, binaryOrbitMultiplicity,",
            f"      {support_config.orbit_of_fin}, Nat.choose,",
            f"      {orbit_simp}]",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"{file_stem}.lean", lines)

    literal_semantic_modules: list[str] = []
    if emit_target_bridge:
        for chunk, start in enumerate(range(0, full_vars, full_objective_eq_chunk_size)):
            end = min(start + full_objective_eq_chunk_size, full_vars)
            file_stem = f"FullAggregateDualLiteralSemanticCoeff{chunk}"
            theorem_name = (
                f"{name}FullAggregateDualExpressionLiteralSemanticCoeffEqChunk{chunk}"
            )
            literal_semantic_modules.append(f"{module_prefix}.{file_stem}")
            orbit_simp = ", ".join(orbit_names[start:end])
            lines = module_prelude(
                [
                    f"{module_prefix}.FullObjectiveData",
                ],
                f"Generated full aggregate literal semantic coefficient chunk {chunk}",
            )
            lines.extend([
                "set_option linter.unnecessarySeqFocus false",
                "",
                f"theorem {theorem_name}",
                f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
                f"    sparseLinExprCoeff {aggregate_data_name}.terms idx =",
                f"      {name}FullDualExpression.coeff",
                f"        ({support_config.orbit_of_fin} (⟨idx, by omega⟩ : Fin {full_vars})) := by",
                "  interval_cases idx <;>",
                f"    norm_num [{aggregate_data_name}, {name}FullDualExpression,",
                "      sdpDualExpression, sparseLinExprCoeff, LinExpr.add,",
                "      LinExpr.constExpr, LinExpr.sum, binaryOrbitMultiplicity,",
                f"      {support_config.orbit_of_fin}, Nat.choose,",
                f"      {orbit_simp}]",
                "",
            ])
            lines.extend(module_postlude())
            write_module(output_dir / f"{file_stem}.lean", lines)
    else:
        remove_stale_generated_modules(
            output_dir,
            [
                "FullAggregateDualLiteralTargetCoeff*.lean",
                "FullAggregateDualLiteralSemanticCoeff*.lean",
            ],
        )

    full_objective_imports = [
        f"{module_prefix}.FullObjectiveData",
        *coeff_modules,
    ]
    if emit_target_bridge:
        full_objective_imports.extend([
            *literal_semantic_modules,
            f"{module_prefix}.FullAggregateSemantic",
        ])
    lines = module_prelude(
        full_objective_imports,
        f"Generated full objective sparse-data equality for ({2},{n},{exact['r']})",
    )
    lines.extend([
        f"theorem {name}FullObjectiveSubConstData_const_semantic :",
        f"    {data_name}.const =",
        f"      (LinExpr.subConst {reduced_objective} {bound}).const := by",
        f"  norm_num [{data_name}, {name}FullAggregateDualExpressionLiteralData,",
        f"    LinExpr.subConst, {reduced_objective}, {bound}]",
        "",
        f"theorem {name}FullObjectiveSubConstData_coeff_semantic_nat",
        f"    (idx : Nat) (hidx : idx < {full_vars}) :",
        f"    sparseLinExprCoeff {data_name}.terms idx =",
        f"      (LinExpr.subConst {reduced_objective} {bound}).coeff",
        f"        ({support_config.orbit_of_fin} (⟨idx, hidx⟩ : Fin {full_vars})) := by",
    ])
    lines.extend(chunk_dispatch_lines(
        f"{name}FullObjectiveSubConstDataSemanticCoeffEqChunk",
        full_vars,
        full_objective_eq_chunk_size,
    ))
    lines.extend([
        "",
        f"theorem {name}FullObjectiveExpression_eq_fullObjectiveData :",
        f"    LinExpr.subConst {reduced_objective} {bound} =",
        f"      {expr_name} := by",
        "  symm",
        f"  unfold {expr_name}",
        "  apply linExprOfSparseDataByFin_eq_of_nat_coeffs",
        f"      (toFin := {support_config.orbit_to_fin})",
        f"      (ofFin := {support_config.orbit_of_fin})",
        f"  · exact {name}FullObjectiveSubConstData_const_semantic",
        "  · intro idx hidx",
        f"    exact {name}FullObjectiveSubConstData_coeff_semantic_nat idx hidx",
        f"  · exact {support_config.orbit_of_fin_to_fin}",
        "",
    ])
    if emit_target_bridge:
        lines.extend([
            f"theorem {name}FullAggregateDualExpressionLiteral_const_semantic :",
            f"    {aggregate_data_name}.const =",
            f"      {name}FullDualExpression.const := by",
            f"  norm_num [{aggregate_data_name}, {name}FullDualExpression,",
            "    sdpDualExpression, LinExpr.add, LinExpr.constExpr, LinExpr.sum]",
            "",
            f"theorem {name}FullAggregateDualExpressionLiteral_coeff_semantic_nat",
            f"    (idx : Nat) (hidx : idx < {full_vars}) :",
            f"    sparseLinExprCoeff {aggregate_data_name}.terms idx =",
            f"      {name}FullDualExpression.coeff",
            f"        ({support_config.orbit_of_fin} (⟨idx, hidx⟩ : Fin {full_vars})) := by",
        ])
        lines.extend(chunk_dispatch_lines(
            f"{name}FullAggregateDualExpressionLiteralSemanticCoeffEqChunk",
            full_vars,
            full_objective_eq_chunk_size,
        ))
        lines.extend([
            "",
            f"theorem {name}FullAggregateDualExpressionLiteral_coeff_semantic",
            f"    (idx : Fin {full_vars}) :",
            f"    sparseLinExprCoeff {aggregate_data_name}.terms idx.val =",
            f"      {name}FullDualExpression.coeff",
            f"        ({support_config.orbit_of_fin} idx) := by",
            "  cases idx with",
            "  | mk idx hidx =>",
            f"      simpa using {name}FullAggregateDualExpressionLiteral_coeff_semantic_nat idx hidx",
            "",
            f"theorem {name}FullAggregateDualExpressionLiteralTargetConstEq :",
            f"    {aggregate_data_name}.const =",
            f"      {target_name}.const := by",
            f"  have htarget : {target_name}.const =",
            f"      {name}FullDualExpression.const := by",
            f"    simpa [linExprOfSparseData] using",
            f"      {name}FullAggregateDualExpression_const_semantic",
            f"  exact {name}FullAggregateDualExpressionLiteral_const_semantic.trans",
            "    htarget.symm",
            "",
            f"theorem {name}FullAggregateDualExpressionLiteralTargetCoeffEq",
            f"    (idx : Nat) (hidx : idx < {full_vars}) :",
            f"    sparseLinExprCoeff {aggregate_data_name}.terms idx =",
            f"      sparseLinExprCoeff {target_name}.terms idx := by",
            f"  let i : Fin {full_vars} := ⟨idx, hidx⟩",
            f"  have hlit := {name}FullAggregateDualExpressionLiteral_coeff_semantic i",
            f"  have htarget : sparseLinExprCoeff {target_name}.terms idx =",
            f"      {name}FullDualExpression.coeff",
            f"        ({support_config.orbit_of_fin} i) := by",
            f"    simpa [linExprOfSparseData, i] using",
            f"      {name}FullAggregateDualExpression_coeff_semantic i",
            "  exact hlit.trans htarget.symm",
            "",
            f"theorem {name}FullAggregateDualExpressionLiteralData_eq_targetData_byFin :",
            f"    {aggregate_expr_name} =",
            f"      linExprOfSparseDataByFin {support_config.orbit_to_fin}",
            f"        {target_name} := by",
            f"  unfold {aggregate_expr_name}",
            "  apply linExprOfSparseDataByFin_eq_of_nat_sparse_coeffs",
            f"    {support_config.orbit_to_fin}",
            f"  · exact {name}FullAggregateDualExpressionLiteralTargetConstEq",
            "  · intro idx hidx",
            f"    exact {name}FullAggregateDualExpressionLiteralTargetCoeffEq idx hidx",
            "",
            f"theorem {name}FullObjectiveExpression_eq_fullDual :",
            f"    LinExpr.subConst {reduced_objective} {bound} =",
            f"      {name}FullDualExpression := by",
            "  calc",
            f"    LinExpr.subConst {reduced_objective} {bound} =",
            f"        {expr_name} := by",
            f"      exact {name}FullObjectiveExpression_eq_fullObjectiveData",
            f"    _ = {aggregate_expr_name} := by",
            f"      exact {expr_name}_eq_fullAggregateLiteral",
            "    _ = linExprOfSparseDataByFin",
            f"        {support_config.orbit_to_fin} {target_name} := by",
            f"      exact {name}FullAggregateDualExpressionLiteralData_eq_targetData_byFin",
            f"    _ = {name}FullDualExpression := by",
            f"      exact {name}FullAggregateComponentTargetData_byFin_semantic",
            "",
        ])
    lines.extend(module_postlude())
    write_module(output_dir / "FullObjective.lean", lines)
    return f"{module_prefix}.FullObjective"


def generate_compact_component_semantic_modules(
    exact: dict[str, Any],
    expr_data: dict[str, Any],
    output_dir: Path,
    module_prefix: str,
    name: str,
    aggregate_dual_expression: dict[str, Any],
    component_plan: dict[str, Any],
    compact_component_semantic_coeff_chunk_size: int,
    compact_scalar_component_semantic_coeff_chunk_size: int,
    compact_component_eq_chunk_size: int,
    compact_scalar_source_data: bool,
    compact_scalar_source_semantic: bool,
    compact_scalar_source_derived_data: bool,
    compact_scalar_source_chunk_size: int,
    semantic_bridge_module: str | None,
    support_config: BinaryCompactSupportConfig,
) -> str:
    n = int(exact["n"])
    r = int(exact["r"])
    qvars = int(exact["variable_count"])
    if n != support_config.n or qvars != support_config.qvars:
        raise ValueError("compact component semantic currently targets K2(13,1)")
    if compact_component_semantic_coeff_chunk_size <= 0:
        raise ValueError("compact component semantic chunk size must be positive")
    scalar_semantic_coeff_chunk_size = (
        compact_scalar_component_semantic_coeff_chunk_size
        or compact_component_semantic_coeff_chunk_size
    )
    if scalar_semantic_coeff_chunk_size <= 0:
        raise ValueError(
            "compact scalar component semantic chunk size must be positive"
        )
    if compact_component_eq_chunk_size <= 0:
        raise ValueError("compact component equality chunk size must be positive")
    scale = Fraction(2) ** n
    scalar_count = int(exact["constraint_counts"]["scalar"])
    compact_bridge_module = semantic_bridge_module or f"{module_prefix}.CompactBridge"
    data_name = f"{name}CompactDualExpressionData"
    scalar_records = component_plan["scalar_records"]
    psd_records = component_plan["psd_records"]
    scalar_groups = component_plan["scalar_groups"]
    full_orbit_type = support_config.full_orbit_type
    quotient_linexpr = support_config.quotient_linexpr
    remove_stale_generated_modules(
        output_dir,
        [
            "CompactDataCore.lean",
            "CompactDataQuotientCoeff*.lean",
            "CompactObjectiveCarrier*.lean",
            "CompactObjectiveCarrierBridge*.lean",
            "CompactQuotientExpression.lean",
            "FullAggregateTargetSampled.lean",
        ],
    )
    use_source_scalar_route = (
        compact_scalar_source_data and compact_scalar_source_semantic
    )
    if compact_scalar_source_semantic:
        remove_stale_generated_modules(
            output_dir,
            [
                "CompactScalarChunkData*.lean",
                "CompactScalarEq*.lean",
                "CompactScalarGroup*.lean",
                "CompactScalarChunk*DirectSemanticExpr.lean",
                "CompactScalarGroup*DirectSemanticExpr.lean",
                "CompactScalarGroup*SemanticCoeff*.lean",
                "CompactScalarGroup*Semantic.lean",
            ],
        )

    lines = module_prelude(
        ["CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr"],
        f"Generated compact aggregate SDP sparse data for ({2},{n},{r})",
    )
    lines.extend(sparse_data_lines(data_name, qvars, aggregate_dual_expression, scale))
    lines.extend(module_postlude())
    write_module(output_dir / "CompactData.lean", lines)

    # A small local helper module keeps generated semantic assembly independent
    # from the rejected full-target bridge.
    lines = module_prelude(
        [
            compact_bridge_module,
            "CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr",
        ],
        "Generated compact component transport helpers",
    )
    lines.extend([
        f"theorem {name}QuotientLinExpr_foldr_add",
        f"    (items : List (LinExpr ({full_orbit_type}))) :",
        f"    {quotient_linexpr}",
        "        (items.foldr LinExpr.add",
        f"          (LinExpr.constExpr ({full_orbit_type}) 0)) =",
        f"      (items.map {quotient_linexpr}).foldr",
        f"        LinExpr.add (LinExpr.constExpr {name}QVar 0) := by",
        "  induction items with",
        "  | nil =>",
        f"      simp [{quotient_linexpr}_constExpr]",
        "  | cons item rest ih =>",
        f"      simp [{quotient_linexpr}_add, ih]",
        "",
        f"theorem {name}FoldrAdd_coeff_eq_list_sum_add",
        f"    (items : List (LinExpr {name}QVar))",
        f"    (base : LinExpr {name}QVar) (idx : {name}QVar) :",
        "    (items.foldr LinExpr.add base).coeff idx =",
        "      (items.map (fun item => item.coeff idx)).sum + base.coeff idx := by",
        "  induction items with",
        "  | nil => simp",
        "  | cons item rest ih =>",
        "      simp [LinExpr.add, ih]",
        "      ring",
        "",
        f"theorem {name}FoldrAdd_const_eq_list_sum_add",
        f"    (items : List (LinExpr {name}QVar))",
        f"    (base : LinExpr {name}QVar) :",
        "    (items.foldr LinExpr.add base).const =",
        "      (items.map (fun item => item.const)).sum + base.const := by",
        "  induction items with",
        "  | nil => simp",
        "  | cons item rest ih =>",
        "      simp [LinExpr.add, ih]",
        "      ring",
        "",
        f"theorem {name}FoldrAdd_grouped_eq_flatten",
        f"    (groups : List (List (LinExpr {name}QVar))) :",
        "    groups.foldr",
        "        (fun group acc => LinExpr.add",
        "          (group.foldr LinExpr.add",
        f"            (LinExpr.constExpr {name}QVar 0)) acc)",
        f"        (LinExpr.constExpr {name}QVar 0) =",
        "      (groups.foldr List.append []).foldr LinExpr.add",
        f"        (LinExpr.constExpr {name}QVar 0) := by",
        "  induction groups with",
        "  | nil => rfl",
        "  | cons group rest ih =>",
        "      rw [List.foldr_cons, List.foldr_cons, ih]",
        "      apply LinExpr.ext_coeff_const",
        "      · intro i",
        f"        simp [LinExpr.add, {name}FoldrAdd_coeff_eq_list_sum_add,",
        "          LinExpr.foldr_add_coeff_eq_list_sum]",
        f"      · simp [LinExpr.add, {name}FoldrAdd_const_eq_list_sum_add,",
        "          LinExpr.foldr_add_const_eq_list_sum]",
        "",
        f"theorem {name}CompactScalarChunkDirectSemantic_eq_quotient",
        f"    (items : List {name}LinAtom) :",
        "    items.foldr",
        "        (fun atom acc => LinExpr.add",
        f"          (LinExpr.smul ({name}LinearMultiplier atom)",
        f"            ({name}CompactLinearAtomExpr atom)) acc)",
        f"        (LinExpr.constExpr {name}QVar 0) =",
        f"      {quotient_linexpr}",
        "        (items.foldr",
        "          (fun atom acc => LinExpr.add",
        f"            (LinExpr.smul ({name}LinearMultiplier atom)",
        f"              ({name}FullLinearAtomExpr atom)) acc)",
        f"          (LinExpr.constExpr ({full_orbit_type}) 0)) := by",
        "  induction items with",
        "  | nil =>",
        f"      simp [{quotient_linexpr}_constExpr]",
        "  | cons atom rest ih =>",
    ])
    if scalar_count == 0:
        lines.extend([
            "      cases atom with",
            "      | mk atomVal atomLt =>",
            "          omega",
        ])
    else:
        lines.extend([
        "      rw [List.foldr_cons, List.foldr_cons]",
        f"      rw [{quotient_linexpr}_add]",
        f"      rw [{quotient_linexpr}_smul]",
        "      rw [← ih]",
        f"      simp [{name}CompactLinearAtomExpr,",
        f"        {name}FullLinearAtomExpr]",
        ])
    lines.append("")
    lines.extend(module_postlude())
    write_module(output_dir / "CompactComponentTransport.lean", lines)

    scalar_data_modules: list[str] = []
    for record in ([] if use_source_scalar_route else scalar_records):
        idx = record["idx"]
        file_stem = record["module"]
        scalar_data_modules.append(f"{module_prefix}.{file_stem}")
        lines = module_prelude(
            ["CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr"],
            f"Generated compact scalar chunk data {idx}",
        )
        lines.extend(sparse_data_lines_from_coeffs(
            record["def"],
            qvars,
            record["const"],
            record["coeffs"],
        ))
        lines.extend(module_postlude())
        write_module(output_dir / f"{file_stem}.lean", lines)

        if not compact_scalar_source_semantic:
            direct_expr = f"{name}CompactScalarChunk{idx}DirectSemanticExpr"
            direct_expr_eq = (
                f"{name}CompactScalarChunk{idx}DirectSemanticExpr_eq_quotient"
            )
            direct_expr_file = f"CompactScalarChunk{idx}DirectSemanticExpr"
            lines = module_prelude(
                [
                    f"{module_prefix}.FullAggregateScalarChunk{idx}SemanticData",
                    f"{module_prefix}.CompactComponentTransport",
                ],
                f"Generated compact scalar chunk direct semantic expression {idx}",
            )
            lines.extend([
                f"def {direct_expr} : LinExpr {name}QVar :=",
                f"  {name}FullAggregateScalarChunkAtoms{idx}.foldr",
                "    (fun atom acc =>",
                "      LinExpr.add",
                f"        (LinExpr.smul ({name}LinearMultiplier atom)",
                f"          ({name}CompactLinearAtomExpr atom))",
                "        acc)",
                f"    (LinExpr.constExpr {name}QVar 0)",
                "",
                f"theorem {direct_expr_eq} :",
                f"    {direct_expr} =",
                f"      {quotient_linexpr} {record['semantic_expr']} := by",
                f"  unfold {direct_expr}",
                f"  unfold {record['semantic_expr']}",
                f"  exact {name}CompactScalarChunkDirectSemantic_eq_quotient _",
                "",
            ])
            lines.extend(module_postlude())
            write_module(output_dir / f"{direct_expr_file}.lean", lines)

    group_semantic_modules: list[str] = []
    group_data_modules: list[str] = []
    group_defs: list[str] = []
    for group in ([] if use_source_scalar_route else scalar_groups):
        group_idx = group["idx"]
        records = group["records"]
        group_data_modules.append(f"{module_prefix}.{group['module']}")
        group_defs.append(group["def"])
        group_const, group_coeffs = sum_component_records(records)
        group_imports = [f"{module_prefix}.{record['module']}" for record in records]
        lines = module_prelude(
            group_imports,
            f"Generated compact scalar group {group_idx}",
        )
        lines.extend(sparse_data_lines_from_coeffs(
            group["def"],
            qvars,
            group_const,
            group_coeffs,
        ))
        chunk_defs = ", ".join(record["def"] for record in records)
        lines.extend([
            f"def {group['sum_def']} : SparseLinExprData {qvars} :=",
            "  SparseLinExprData.listSum",
            f"    [{chunk_defs}]",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"{group['module']}.lean", lines)

        if compact_scalar_source_semantic:
            continue

        direct_file = f"CompactScalarGroup{group_idx}DirectSemanticExpr"
        direct_exprs = [
            f"{name}CompactScalarChunk{record['idx']}DirectSemanticExpr"
            for record in records
        ]
        quotient_exprs = [
            f"({quotient_linexpr} {record['semantic_expr']})"
            for record in records
        ]
        lines = module_prelude(
            [
                f"{module_prefix}.CompactScalarChunk{record['idx']}DirectSemanticExpr"
                for record in records
            ],
            f"Generated compact scalar group {group_idx} direct semantic expression",
        )
        lines.extend([
            f"def {name}CompactScalarGroup{group_idx}DirectSemanticExprs :",
            f"    List (LinExpr {name}QVar) :=",
            f"  [{', '.join(direct_exprs)}]",
            "",
            f"def {name}CompactScalarGroup{group_idx}DirectSemanticExpr :",
            f"    LinExpr {name}QVar :=",
            f"  {name}CompactScalarGroup{group_idx}DirectSemanticExprs.foldr",
            f"        LinExpr.add (LinExpr.constExpr {name}QVar 0)",
            "",
            f"def {name}CompactScalarGroup{group_idx}SemanticExprs :",
            f"    List (LinExpr {name}QVar) :=",
            f"  [{', '.join(quotient_exprs)}]",
            "",
            f"theorem {name}CompactScalarGroup{group_idx}DirectSemanticExpr_eq_quotient :",
            f"    {name}CompactScalarGroup{group_idx}DirectSemanticExpr =",
            f"      {name}CompactScalarGroup{group_idx}SemanticExprs.foldr",
            f"        LinExpr.add (LinExpr.constExpr {name}QVar 0) := by",
            "  simp [",
            f"    {name}CompactScalarGroup{group_idx}DirectSemanticExpr,",
            f"    {name}CompactScalarGroup{group_idx}DirectSemanticExprs,",
            f"    {name}CompactScalarGroup{group_idx}SemanticExprs,",
        ])
        for record in records[:-1]:
            lines.append(
                f"    {name}CompactScalarChunk{record['idx']}DirectSemanticExpr_eq_quotient,"
            )
        if records:
            lines.append(
                f"    {name}CompactScalarChunk{records[-1]['idx']}DirectSemanticExpr_eq_quotient]"
            )
        else:
            lines.append("    ]")
        lines.extend(module_postlude())
        write_module(output_dir / f"{direct_file}.lean", lines)

        coeff_modules = []
        for chunk, start in enumerate(
            range(0, qvars, scalar_semantic_coeff_chunk_size)
        ):
            end = min(start + scalar_semantic_coeff_chunk_size, qvars)
            coeff_file = f"CompactScalarGroup{group_idx}SemanticCoeff{chunk}"
            coeff_modules.append(f"{module_prefix}.{coeff_file}")
            lines = module_prelude(
                [
                    f"{module_prefix}.{group['module']}",
                    f"{module_prefix}.{direct_file}",
                ],
                f"Generated compact scalar group {group_idx} semantic coefficient {chunk}",
            )
            lines.extend([
                f"theorem {name}CompactScalarGroup{group_idx}SemanticCoeffEqChunk{chunk}",
                f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
                f"    sparseLinExprCoeff {group['def']}.terms idx =",
                f"      {name}CompactScalarGroup{group_idx}DirectSemanticExpr.coeff",
                f"        (⟨idx, by omega⟩ : {name}QVar) := by",
                "  interval_cases idx",
                "  all_goals native_decide +revert",
                "",
            ])
            lines.extend(module_postlude())
            write_module(output_dir / f"{coeff_file}.lean", lines)

        summary_file = f"CompactScalarGroup{group_idx}Semantic"
        group_semantic_modules.append(f"{module_prefix}.{summary_file}")
        lines = module_prelude(
            [f"{module_prefix}.{direct_file}", *coeff_modules],
            f"Generated compact scalar group {group_idx} semantic",
        )
        lines.extend([
            f"theorem {name}CompactScalarGroup{group_idx}SemanticConstEq :",
            f"    {group['def']}.const =",
            f"      {name}CompactScalarGroup{group_idx}DirectSemanticExpr.const := by",
            "  native_decide",
            "",
            f"theorem {name}CompactScalarGroup{group_idx}SemanticCoeffEq_nat",
            f"    (idx : Nat) (hidx : idx < {qvars}) :",
            f"    sparseLinExprCoeff {group['def']}.terms idx =",
            f"      {name}CompactScalarGroup{group_idx}DirectSemanticExpr.coeff",
            f"        (⟨idx, hidx⟩ : {name}QVar) := by",
        ])
        lines.extend(chunk_dispatch_lines(
            f"{name}CompactScalarGroup{group_idx}SemanticCoeffEqChunk",
            qvars,
            scalar_semantic_coeff_chunk_size,
        ))
        lines.extend([
            "",
            f"theorem {name}CompactScalarGroup{group_idx}DirectSemantic :",
            f"    linExprOfSparseData {group['def']} =",
            f"      {name}CompactScalarGroup{group_idx}DirectSemanticExpr := by",
            "  apply linExprOfSparseData_eq_of_nat_data_coeffs",
            f"  · exact {name}CompactScalarGroup{group_idx}SemanticConstEq",
            "  · intro idx hidx",
            f"    exact {name}CompactScalarGroup{group_idx}SemanticCoeffEq_nat idx hidx",
            "",
            f"theorem {name}CompactScalarGroup{group_idx}Data_semantic :",
            f"    linExprOfSparseData {group['def']} =",
            f"      {name}CompactScalarGroup{group_idx}SemanticExprs.foldr",
            f"        LinExpr.add (LinExpr.constExpr {name}QVar 0) := by",
            "  calc",
            f"    linExprOfSparseData {group['def']} =",
            f"        {name}CompactScalarGroup{group_idx}DirectSemanticExpr := by",
            f"      exact {name}CompactScalarGroup{group_idx}DirectSemantic",
            "    _ = _ := by",
            f"      exact {name}CompactScalarGroup{group_idx}DirectSemanticExpr_eq_quotient",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"{summary_file}.lean", lines)

    scalar_component_const, scalar_component_coeffs = sum_component_records(
        scalar_records
    )
    lines = module_prelude(
        [
            "CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr",
            *group_data_modules,
        ],
        "Generated compact scalar component data",
    )
    scalar_component_name = f"{name}CompactScalarComponentData"
    scalar_group_sum_name = f"{name}CompactScalarGroupSumData"
    lines.extend(sparse_data_lines_from_coeffs(
        scalar_component_name,
        qvars,
        scalar_component_const,
        scalar_component_coeffs,
    ))
    if not use_source_scalar_route:
        lines.extend([
            f"def {scalar_group_sum_name} : SparseLinExprData {qvars} :=",
            "  SparseLinExprData.listSum",
            f"    [{', '.join(group_defs)}]",
            "",
        ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactScalar.lean", lines)

    if use_source_scalar_route:
        scalar_eq_module = f"{module_prefix}.CompactScalar"
    else:
        scalar_simp = [
            scalar_component_name,
            scalar_group_sum_name,
            *group_defs,
        ]
        scalar_coeff_modules = generate_sparse_data_eq_coeff_modules(
            output_dir,
            module_prefix,
            f"{module_prefix}.CompactScalar",
            "Generated compact scalar component equality",
            f"{name}CompactScalarComponentData_eq_groupSum",
            scalar_component_name,
            scalar_group_sum_name,
            qvars,
            compact_component_eq_chunk_size,
            scalar_simp,
            "CompactScalarEq",
        )
        scalar_eq_module = generate_sparse_data_eq_summary_module(
            output_dir,
            module_prefix,
            "CompactScalarEq",
            scalar_coeff_modules,
            "Generated compact scalar component equality summary",
            name,
            f"{name}CompactScalarComponentData_eq_groupSum",
            scalar_component_name,
            scalar_group_sum_name,
            qvars,
            compact_component_eq_chunk_size,
            scalar_simp,
        )
    source_route: CompactScalarSourceRoute | None = None
    if compact_scalar_source_data:
        source_route = generate_compact_scalar_source_data_modules(
            exact,
            expr_data,
            output_dir,
            module_prefix,
            name,
            scalar_component_name,
            scalar_component_const,
            scalar_component_coeffs,
            qvars,
            scale,
            compact_scalar_source_chunk_size,
            compact_component_eq_chunk_size,
            compact_scalar_source_derived_data,
            support_config,
        )
    if compact_scalar_source_semantic:
        if source_route is None:
            raise ValueError(
                "compact scalar source semantic route requires source data"
            )
        source_semantic_module = generate_compact_scalar_source_semantic_modules(
            exact,
            output_dir,
            module_prefix,
            name,
            qvars,
            source_route,
            scale,
            scalar_semantic_coeff_chunk_size,
            support_config,
        )
    else:
        source_semantic_module = None

    psd_semantic_modules: list[str] = []
    psd_data_modules: list[str] = []
    for record in psd_records:
        idx = record["idx"]
        file_stem = record["module"]
        psd_data_modules.append(f"{module_prefix}.{file_stem}")
        lines = module_prelude(
            ["CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr"],
            f"Generated compact PSD component data {idx}",
        )
        lines.extend(sparse_data_lines_from_coeffs(
            record["def"],
            qvars,
            record["const"],
            record["coeffs"],
        ))
        lines.extend(module_postlude())
        write_module(output_dir / f"{file_stem}.lean", lines)

        block = f"(⟨{idx}, by omega⟩ : {name}Block)"
        full_psd_expr = f"({name}FullAggregatePsdRangeTerm {block})"
        compact_psd_expr = f"{name}CompactPsdComponentExpr{idx}"
        compact_psd_expr_eq = f"{compact_psd_expr}_eq_quotientFull"
        compact_psd_expr_file = f"CompactPsdComponent{idx}Expr"
        lines = module_prelude(
            [
                compact_bridge_module,
                f"{module_prefix}.FullAggregateRangeTerms",
            ],
            f"Generated compact PSD component expression {idx}",
        )
        lines.extend([
            f"def {compact_psd_expr} : LinExpr {name}QVar :=",
            "  MatrixLinExpr.innerExpr",
            f"    ({name}DualMatrix {block})",
            f"    ({name}CompactMatrixAtomExpr {block})",
            "",
            f"theorem {compact_psd_expr_eq} :",
            f"    {compact_psd_expr} =",
            f"      {quotient_linexpr} {full_psd_expr} := by",
            f"  unfold {compact_psd_expr}",
            f"  unfold {name}FullAggregatePsdRangeTerm",
            f"  unfold {name}CompactMatrixAtomExpr",
            f"  unfold {name}FullMatrixAtomExpr",
            f"  rw [{quotient_linexpr}_innerExpr]",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"{compact_psd_expr_file}.lean", lines)

        coeff_modules = []
        for chunk, start in enumerate(
            range(0, qvars, compact_component_semantic_coeff_chunk_size)
        ):
            end = min(start + compact_component_semantic_coeff_chunk_size, qvars)
            coeff_file = f"CompactPsdComponent{idx}SemanticCoeff{chunk}"
            coeff_modules.append(f"{module_prefix}.{coeff_file}")
            lines = module_prelude(
                [
                    f"{module_prefix}.{file_stem}",
                    f"{module_prefix}.{compact_psd_expr_file}",
                ],
                f"Generated compact PSD semantic coefficient {idx}, {chunk}",
            )
            lines.extend([
                f"theorem {name}CompactPsdComponent{idx}SemanticCoeffEqChunk{chunk}",
                f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
                f"    sparseLinExprCoeff {record['def']}.terms idx =",
                f"      {compact_psd_expr}.coeff",
                f"        (⟨idx, by omega⟩ : {name}QVar) := by",
                "  interval_cases idx",
                "  all_goals native_decide +revert",
                "",
            ])
            lines.extend(module_postlude())
            write_module(output_dir / f"{coeff_file}.lean", lines)

        summary_file = f"CompactPsdComponent{idx}Semantic"
        psd_semantic_modules.append(f"{module_prefix}.{summary_file}")
        lines = module_prelude(
            [f"{module_prefix}.{compact_psd_expr_file}", *coeff_modules],
            f"Generated compact PSD semantic summary {idx}",
        )
        lines.extend([
            f"theorem {name}CompactPsdComponent{idx}SemanticConstEq :",
            f"    {record['def']}.const =",
            f"      {compact_psd_expr}.const := by",
            "  native_decide",
            "",
            f"theorem {name}CompactPsdComponent{idx}SemanticCoeffEq_nat",
            f"    (idx : Nat) (hidx : idx < {qvars}) :",
            f"    sparseLinExprCoeff {record['def']}.terms idx =",
            f"      {compact_psd_expr}.coeff",
            f"        (⟨idx, hidx⟩ : {name}QVar) := by",
        ])
        lines.extend(chunk_dispatch_lines(
            f"{name}CompactPsdComponent{idx}SemanticCoeffEqChunk",
            qvars,
            compact_component_semantic_coeff_chunk_size,
        ))
        lines.extend([
            "",
            f"theorem {name}CompactPsdComponent{idx}Data_semantic :",
            f"    linExprOfSparseData {record['def']} =",
            f"      {compact_psd_expr} := by",
            "  apply linExprOfSparseData_eq_of_nat_data_coeffs",
            f"  · exact {name}CompactPsdComponent{idx}SemanticConstEq",
            "  · intro idx hidx",
            f"    exact {name}CompactPsdComponent{idx}SemanticCoeffEq_nat idx hidx",
            "",
            f"theorem {name}CompactPsdComponent{idx}Data_eq_quotientFull :",
            f"    linExprOfSparseData {record['def']} =",
            f"      {quotient_linexpr} {full_psd_expr} := by",
            "  calc",
            f"    linExprOfSparseData {record['def']} =",
            f"        {compact_psd_expr} := by",
            f"      exact {name}CompactPsdComponent{idx}Data_semantic",
            f"    _ = {quotient_linexpr} {full_psd_expr} := by",
            f"      exact {compact_psd_expr_eq}",
            "",
            f"theorem {name}CompactPsdComponent{idx}Semantic :",
            f"    linExprOfSparseData {record['def']} =",
            f"      {quotient_linexpr} {full_psd_expr} := by",
            f"  exact {name}CompactPsdComponent{idx}Data_eq_quotientFull",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"{summary_file}.lean", lines)

    component_name = f"{name}CompactComponentDualExpressionData"
    component_records = [*psd_records]
    lines = module_prelude(
        [f"{module_prefix}.CompactData", scalar_eq_module] + psd_data_modules,
        "Generated compact component aggregate data",
    )
    component_defs = [scalar_component_name] + [
        record["def"] for record in component_records
    ]
    lines.extend([
        f"def {component_name} : SparseLinExprData {qvars} :=",
        "  SparseLinExprData.listSum",
        f"    [{', '.join(component_defs)}]",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactComponentData.lean", lines)

    component_simp = [
        data_name,
        component_name,
        scalar_component_name,
        *[record["def"] for record in component_records],
    ]
    component_coeff_modules = generate_sparse_data_eq_coeff_modules(
        output_dir,
        module_prefix,
        f"{module_prefix}.CompactComponentData",
        "Generated compact aggregate/component equality",
        f"{name}CompactDualExpressionData_eq_componentData",
        data_name,
        component_name,
        qvars,
        compact_component_eq_chunk_size,
        component_simp,
        "CompactComponentEq",
    )
    component_eq_module = generate_sparse_data_eq_summary_module(
        output_dir,
        module_prefix,
        "CompactComponentEq",
        [f"{module_prefix}.CompactData", *component_coeff_modules],
        "Generated compact aggregate/component equality summary",
        name,
        f"{name}CompactDualExpressionData_eq_componentData",
        data_name,
        component_name,
        qvars,
        compact_component_eq_chunk_size,
        component_simp,
    )

    lines = module_prelude(
        [
            component_eq_module,
            f"{module_prefix}.CompactComponentTransport",
            f"{module_prefix}.FullAggregateSemantic",
            compact_bridge_module,
            *(
                [source_route.source_eq_module]
                if source_route is not None
                and source_semantic_module is not None
                else []
            ),
            *(
                [source_semantic_module]
                if source_semantic_module is not None
                else group_semantic_modules
            ),
            *psd_semantic_modules,
        ],
        "Generated compact component semantic assembly",
    )
    full_scalar_exprs = [
        record["semantic_expr"] for record in scalar_records
    ]
    grouped_compact_expr_lists = []
    for group in scalar_groups:
        grouped_compact_expr_lists.append(
            "["
            + ", ".join(
                f"({quotient_linexpr} {record['semantic_expr']})"
                for record in group["records"]
            )
            + "]"
        )
    psd_quotient_exprs = [
        f"({quotient_linexpr} "
        f"({name}FullAggregatePsdRangeTerm (⟨{record['idx']}, by omega⟩ : {name}Block)))"
        for record in psd_records
    ]
    full_psd_exprs = [
        f"({name}FullAggregatePsdRangeTerm (⟨{record['idx']}, by omega⟩ : {name}Block))"
        for record in psd_records
    ]
    if source_route is not None and source_semantic_module is not None:
        lines.extend([
            f"theorem {name}CompactScalarComponentData_semantic :",
            f"    linExprOfSparseData {scalar_component_name} =",
            f"      {quotient_linexpr} {name}FullAggregateScalarSemanticFold := by",
            "  calc",
            f"    linExprOfSparseData {scalar_component_name} =",
            f"        linExprOfSparseData {source_route.source_sum_name} := by",
            f"      exact {name}CompactScalarComponentData_eq_sourceSum",
            f"    _ = {quotient_linexpr} {name}FullAggregateScalarSemanticFold := by",
            f"      exact {name}CompactScalarSourceSumData_semantic",
            "",
        ])
    else:
        lines.extend([
            f"def {name}CompactScalarGroupedSemanticExprs :",
            f"    List (List (LinExpr {name}QVar)) :=",
            f"  [{', '.join(grouped_compact_expr_lists)}]",
            "",
            f"def {name}FullScalarChunkSemanticExprs :",
            f"    List (LinExpr ({full_orbit_type})) :=",
            f"  [{', '.join(full_scalar_exprs)}]",
            "",
            f"theorem {name}FullAggregateScalarSemanticFold_eq_list :",
            f"    {name}FullAggregateScalarSemanticFold =",
            f"      {name}FullScalarChunkSemanticExprs.foldr",
            f"        LinExpr.add (LinExpr.constExpr ({full_orbit_type}) 0) := by",
            f"  unfold {name}FullAggregateScalarSemanticFold",
            f"  unfold {name}FullScalarChunkSemanticExprs",
            "  rfl",
            "",
            f"theorem {name}CompactScalarGroupSumData_semantic :",
            f"    linExprOfSparseData {scalar_group_sum_name} =",
            f"      {name}CompactScalarGroupedSemanticExprs.foldr",
            "        (fun group acc => LinExpr.add",
            f"          (group.foldr LinExpr.add (LinExpr.constExpr {name}QVar 0)) acc)",
            f"        (LinExpr.constExpr {name}QVar 0) := by",
            "  simp [",
            "    linExprOfSparseData_listSum,",
            f"    {scalar_group_sum_name},",
            f"    {name}CompactScalarGroupedSemanticExprs,",
        ])
        for group in scalar_groups:
            lines.append(f"    {name}CompactScalarGroup{group['idx']}SemanticExprs,")
        for group in scalar_groups[:-1]:
            lines.append(f"    {name}CompactScalarGroup{group['idx']}Data_semantic,")
        if scalar_groups:
            lines.append(f"    {name}CompactScalarGroup{scalar_groups[-1]['idx']}Data_semantic]")
        else:
            lines.append("    ]")
        lines.extend([
            "",
            f"theorem {name}CompactScalarComponentData_semantic :",
            f"    linExprOfSparseData {scalar_component_name} =",
            f"      {quotient_linexpr} {name}FullAggregateScalarSemanticFold := by",
            "  calc",
            f"    linExprOfSparseData {scalar_component_name} =",
            f"        linExprOfSparseData {scalar_group_sum_name} := by",
            f"      exact {name}CompactScalarComponentData_eq_groupSum",
            "    _ =",
            f"        {name}CompactScalarGroupedSemanticExprs.foldr",
            "          (fun group acc => LinExpr.add",
            f"            (group.foldr LinExpr.add (LinExpr.constExpr {name}QVar 0)) acc)",
            f"          (LinExpr.constExpr {name}QVar 0) := by",
            f"      exact {name}CompactScalarGroupSumData_semantic",
            f"    _ = ({name}CompactScalarGroupedSemanticExprs.foldr List.append []).foldr",
            f"          LinExpr.add (LinExpr.constExpr {name}QVar 0) := by",
            f"      exact {name}FoldrAdd_grouped_eq_flatten",
            f"        {name}CompactScalarGroupedSemanticExprs",
            f"    _ = {quotient_linexpr}",
            f"          ({name}FullScalarChunkSemanticExprs.foldr",
            f"            LinExpr.add (LinExpr.constExpr ({full_orbit_type}) 0)) := by",
            f"      unfold {name}CompactScalarGroupedSemanticExprs",
            f"      unfold {name}FullScalarChunkSemanticExprs",
            f"      exact ({name}QuotientLinExpr_foldr_add",
            f"        {name}FullScalarChunkSemanticExprs).symm",
            f"    _ = {quotient_linexpr} {name}FullAggregateScalarSemanticFold := by",
            f"      rw [{name}FullAggregateScalarSemanticFold_eq_list]",
            "",
        ])
    lines.extend([
        f"def {name}FullPsdSemanticExprs :",
        f"    List (LinExpr ({full_orbit_type})) :=",
        f"  [{', '.join(full_psd_exprs)}]",
        "",
        f"def {name}CompactPsdSemanticExprs :",
        f"    List (LinExpr {name}QVar) :=",
        f"  [{', '.join(psd_quotient_exprs)}]",
        "",
        f"theorem {name}FullAggregatePsdSemanticFold_eq_list :",
        f"    {name}FullAggregatePsdSemanticFold =",
        f"      {name}FullPsdSemanticExprs.foldr",
        f"        LinExpr.add (LinExpr.constExpr ({full_orbit_type}) 0) := by",
        f"  unfold {name}FullAggregatePsdSemanticFold",
        f"  unfold {name}FullPsdSemanticExprs",
        "  rfl",
        "",
        f"theorem {name}CompactPsdComponentList_semantic :",
        f"    [{', '.join(record['def'] for record in psd_records)}].foldr",
        "        (fun data acc => LinExpr.add (linExprOfSparseData data) acc)",
        f"        (LinExpr.constExpr {name}QVar 0) =",
        f"      {name}CompactPsdSemanticExprs.foldr",
        f"        LinExpr.add (LinExpr.constExpr {name}QVar 0) := by",
        "  simp [",
        f"    {name}CompactPsdSemanticExprs,",
    ])
    for record in psd_records[:-1]:
        lines.append(f"    {name}CompactPsdComponent{record['idx']}Semantic,")
    if psd_records:
        lines.append(f"    {name}CompactPsdComponent{psd_records[-1]['idx']}Semantic]")
    else:
        lines.append("    ]")
    lines.extend([
        "",
        f"theorem {name}CompactPsdComponentList_semantic_full :",
        f"    [{', '.join(record['def'] for record in psd_records)}].foldr",
        "        (fun data acc => LinExpr.add (linExprOfSparseData data) acc)",
        f"        (LinExpr.constExpr {name}QVar 0) =",
        f"      {quotient_linexpr} {name}FullAggregatePsdSemanticFold := by",
        "  calc",
        f"    [{', '.join(record['def'] for record in psd_records)}].foldr",
        "        (fun data acc => LinExpr.add (linExprOfSparseData data) acc)",
        f"        (LinExpr.constExpr {name}QVar 0) =",
        f"        {name}CompactPsdSemanticExprs.foldr",
        f"          LinExpr.add (LinExpr.constExpr {name}QVar 0) := by",
        f"      exact {name}CompactPsdComponentList_semantic",
        f"    _ = {quotient_linexpr}",
        f"          ({name}FullPsdSemanticExprs.foldr",
        f"            LinExpr.add (LinExpr.constExpr ({full_orbit_type}) 0)) := by",
        f"      unfold {name}CompactPsdSemanticExprs",
        f"      unfold {name}FullPsdSemanticExprs",
        f"      exact ({name}QuotientLinExpr_foldr_add",
        f"        {name}FullPsdSemanticExprs).symm",
        f"    _ = {quotient_linexpr} {name}FullAggregatePsdSemanticFold := by",
        f"      rw [{name}FullAggregatePsdSemanticFold_eq_list]",
        "",
        f"theorem {name}CompactComponentDualExpressionData_semantic :",
        f"    linExprOfSparseData {component_name} =",
        f"      {quotient_linexpr} {name}FullAggregateComponentSemanticFold := by",
        "  calc",
        f"    linExprOfSparseData {component_name} =",
        f"        LinExpr.add (linExprOfSparseData {scalar_component_name})",
        f"          ([{', '.join(record['def'] for record in psd_records)}].foldr",
        "            (fun data acc => LinExpr.add (linExprOfSparseData data) acc)",
        f"            (LinExpr.constExpr {name}QVar 0)) := by",
        f"      unfold {component_name}",
        "      rw [linExprOfSparseData_listSum]",
        "      rfl",
        "    _ = LinExpr.add",
        f"        ({quotient_linexpr} {name}FullAggregateScalarSemanticFold)",
        f"        ({quotient_linexpr} {name}FullAggregatePsdSemanticFold) := by",
        f"      rw [{name}CompactScalarComponentData_semantic,",
        f"        {name}CompactPsdComponentList_semantic_full]",
        f"    _ = {quotient_linexpr}",
        f"        (LinExpr.add {name}FullAggregateScalarSemanticFold",
        f"          {name}FullAggregatePsdSemanticFold) := by",
        f"      rw [{quotient_linexpr}_add]",
        f"    _ = {quotient_linexpr} {name}FullAggregateComponentSemanticFold := by",
        f"      unfold {name}FullAggregateComponentSemanticFold",
        "      rfl",
        "",
        f"theorem {name}CompactDualExpression_semantic :",
        f"    linExprOfSparseData {data_name} =",
    ])
    lines.extend(compact_semantic_expression_lines(name, "      ")[:-1])
    semantic_last = compact_semantic_expression_lines(name, "      ")[-1]
    lines.append(f"{semantic_last} := by")
    lines.extend([
        "  calc",
        f"    linExprOfSparseData {data_name} =",
        f"        linExprOfSparseData {component_name} := by",
        f"      exact {name}CompactDualExpressionData_eq_componentData",
        f"    _ = {quotient_linexpr}",
        f"        {name}FullAggregateComponentSemanticFold := by",
        f"      exact {name}CompactComponentDualExpressionData_semantic",
        f"    _ = {quotient_linexpr}",
        f"        {name}FullDualExpression := by",
        f"      rw [{name}FullAggregateComponentSemanticFold_eq_fullDualExpression]",
        f"    _ =",
    ])
    lines.extend(compact_semantic_expression_lines(name, "        "))
    lines.extend([
        "      := by",
        f"        rw [← {name}CompactDualExpression_eq_quotientFull]",
        "",
        f"theorem {name}CompactDualExpression_const_semantic :",
        f"    (linExprOfSparseData {data_name}).const =",
    ])
    lines.extend(compact_semantic_expression_lines(name, "      ")[:-1])
    lines.append(f"{semantic_last}.const := by")
    lines.extend([
        f"  rw [{name}CompactDualExpression_semantic]",
        "",
        f"theorem {name}CompactDualExpression_coeff_semantic",
        f"    (q : {name}QVar) :",
        f"    (linExprOfSparseData {data_name}).coeff q =",
    ])
    lines.extend(compact_semantic_expression_lines(name, "      ")[:-1])
    lines.append(f"{semantic_last}.coeff q := by")
    lines.extend([
        f"  rw [{name}CompactDualExpression_semantic]",
        "",
        f"theorem {name}CompactDualExpression_coeff_0_semantic :",
        f"    (linExprOfSparseData {data_name}).coeff (⟨0, by omega⟩ : {name}QVar) =",
    ])
    lines.extend(compact_semantic_expression_lines(name, "      ")[:-1])
    lines.append(f"{semantic_last}.coeff (⟨0, by omega⟩ : {name}QVar) := by")
    lines.append(
        f"  exact {name}CompactDualExpression_coeff_semantic (⟨0, by omega⟩ : {name}QVar)"
    )
    lines.append("")
    lines.extend(module_postlude())
    write_module(output_dir / "CompactSemantic.lean", lines)
    return f"{module_prefix}.CompactSemantic"


def generate_compact_certificate_module(
    exact: dict[str, Any],
    expr_data: dict[str, Any],
    output_dir: Path,
    module_prefix: str,
    name: str,
    aggregate_dual_expression: dict[str, Any],
    full_aggregate_dual_expression: dict[str, Any] | None,
    objective_coeffs: dict[int, Fraction],
    scaled_bound: Fraction,
    l_value: int,
    compact_semantic_coeff_chunk_size: int,
    compact_full_sparse_semantic: bool,
    full_aggregate_semantic_coeff_chunk_size: int,
    compact_objective_eq_chunk_size: int,
    semantic_bridge_module: str | None,
    compact_direct_quotient_certificate: bool,
    compact_component_semantic: bool,
    compact_component_semantic_coeff_chunk_size: int,
    compact_scalar_component_semantic_coeff_chunk_size: int,
    compact_component_eq_chunk_size: int,
    compact_scalar_source_data: bool,
    compact_scalar_source_semantic: bool,
    compact_scalar_source_derived_data: bool,
    compact_scalar_source_chunk_size: int,
    component_plan: dict[str, Any] | None,
    support_config: BinaryCompactSupportConfig,
) -> None:
    n = int(exact["n"])
    r = int(exact["r"])
    qvars = int(exact["variable_count"])
    full_vars = support_config.full_vars
    if compact_semantic_coeff_chunk_size < 0:
        raise ValueError("compact semantic coefficient chunk size must be nonnegative")
    if compact_objective_eq_chunk_size <= 0:
        raise ValueError("compact objective equality chunk size must be positive")
    scale = Fraction(2) ** n
    validate_compact_objective_data(
        objective_coeffs,
        scaled_bound,
        aggregate_dual_expression,
        qvars,
        scale,
    )
    if compact_full_sparse_semantic and full_aggregate_dual_expression is not None:
        validate_compact_full_quotient_data(
            aggregate_dual_expression,
            full_aggregate_dual_expression,
            qvars,
            binary_full_orbit_count(n),
            scale,
            support_config,
        )
    data_terms = exact_coeff_terms(aggregate_dual_expression, scale)
    data_const = scale * frac_from_json(aggregate_dual_expression["const"])
    full_data_terms: list[str] = []
    full_data_const = Fraction(0)
    if full_aggregate_dual_expression is not None:
        full_data_terms = exact_coeff_terms(full_aggregate_dual_expression, scale)
        full_data_const = scale * frac_from_json(full_aggregate_dual_expression["const"])
    bound = lean_rat(scaled_bound)
    semantic_type = compact_semantic_expression_lines(name, "      ")
    compact_bridge_module = semantic_bridge_module or f"{module_prefix}.CompactBridge"

    if compact_direct_quotient_certificate:
        compact_objective_module = generate_compact_quotient_full_objective_modules(
            output_dir,
            module_prefix,
            name,
            qvars,
            scaled_bound,
            compact_objective_eq_chunk_size,
            compact_bridge_module,
            support_config,
        )
        quotient_expr = f"{support_config.quotient_linexpr} {name}FullDualExpression"
        lines = module_prelude(
            [
                compact_bridge_module,
                compact_objective_module,
                f"{module_prefix}.Weighted",
            ],
            f"Generated compact quotient-full SDP certificate for ({2},{n},{r})",
        )
        lines.extend([
            f"def {name}CompactObjectiveExpressionCertificate :",
            f"    SDPObjectiveLowerWeightedExpressionCertificate {name}QVar {name}LinAtom",
            f"      {name}Block {name}BlockCoord {name}WeightCoord",
            f"      {name}CompactLinearAtomExpr {name}CompactMatrixAtomExpr {name}Objective",
            f"      {bound} :=",
            "  SDPObjectiveLowerWeightedExpressionCertificate.ofExpressionEqualities",
            f"    ({quotient_expr})",
            f"    {name}LinearMultiplier",
            f"    {name}LinearMultiplier_nonneg",
            "    0",
            "    (by norm_num)",
            f"    {name}DualMatrix",
            f"    {name}Weighted",
            f"    {name}CompactDualExpression_eq_quotientFull.symm",
            f"    {name}CompactObjectiveExpression_eq",
            "",
            f"def {name}CompactExpressionDualCertificate :",
            f"    BinaryQuotientTableExpressionDualCertificate (WeightIdx := {name}WeightCoord)",
            f"      {n} {r} {l_value} {name}CompactModel where",
            f"  bound := {bound}",
            "  cubeThreshold := by norm_num",
            f"  objectiveCertificate := {name}CompactObjectiveExpressionCertificate",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / "CompactCertificate.lean", lines)
        return

    if compact_component_semantic:
        if component_plan is None:
            raise ValueError(
                "compact component semantic route requires a component plan"
            )
        compact_semantic_module = generate_compact_component_semantic_modules(
            exact,
            expr_data,
            output_dir,
            module_prefix,
            name,
            aggregate_dual_expression,
            component_plan,
            compact_component_semantic_coeff_chunk_size,
            compact_scalar_component_semantic_coeff_chunk_size,
            compact_component_eq_chunk_size,
            compact_scalar_source_data,
            compact_scalar_source_semantic,
            compact_scalar_source_derived_data,
            compact_scalar_source_chunk_size,
            semantic_bridge_module,
            support_config,
        )
        compact_objective_module = generate_compact_objective_equality_modules(
            output_dir,
            module_prefix,
            name,
            qvars,
            objective_coeffs,
            full_aggregate_dual_expression,
            scaled_bound,
            compact_objective_eq_chunk_size,
            compact_component_eq_chunk_size,
            False,
            full_aggregate_semantic_coeff_chunk_size,
            compact_semantic_module,
            support_config,
            int(exact["constraint_counts"]["psd"]),
        )
        data_name = f"{name}CompactDualExpressionData"
        lines = module_prelude(
            [
                compact_semantic_module,
                compact_objective_module,
                f"{module_prefix}.Weighted",
            ],
            f"Generated compact component SDP certificate for ({2},{n},{r})",
        )
        lines.extend([
            f"def {name}CompactObjectiveExpressionCertificate :",
            f"    SDPObjectiveLowerWeightedExpressionCertificate {name}QVar {name}LinAtom",
            f"      {name}Block {name}BlockCoord {name}WeightCoord",
            f"      {name}CompactLinearAtomExpr {name}CompactMatrixAtomExpr {name}Objective",
            f"      {bound} :=",
            "  SDPObjectiveLowerWeightedExpressionCertificate.ofExpressionEqualities",
            f"    (linExprOfSparseData {data_name})",
            f"    {name}LinearMultiplier",
            f"    {name}LinearMultiplier_nonneg",
            "    0",
            "    (by norm_num)",
            f"    {name}DualMatrix",
            f"    {name}Weighted",
            f"    {name}CompactDualExpression_semantic",
            f"    {name}CompactObjectiveExpression_eq",
            "",
            f"def {name}CompactExpressionDualCertificate :",
            f"    BinaryQuotientTableExpressionDualCertificate (WeightIdx := {name}WeightCoord)",
            f"      {n} {r} {l_value} {name}CompactModel where",
            f"  bound := {bound}",
            "  cubeThreshold := by norm_num",
            f"  objectiveCertificate := {name}CompactObjectiveExpressionCertificate",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / "CompactCertificate.lean", lines)
        return

    if compact_full_sparse_semantic:
        if full_aggregate_dual_expression is None:
            raise ValueError(
                "compact full-sparse semantic route requires "
                "full_aggregate_dual_expression"
            )
        compact_semantic_module = generate_compact_full_sparse_route_modules(
            exact,
            output_dir,
            module_prefix,
            name,
            aggregate_dual_expression,
            full_aggregate_semantic_coeff_chunk_size,
            compact_component_eq_chunk_size,
            semantic_bridge_module,
            component_plan,
            support_config,
        )
        full_objective_module = None
        if (
            validate_full_objective_subconst_expression(exact, support_config.full_vars)
            and exact.get("full_aggregate_dual_expression_components") is not None
        ):
            full_objective_module = f"{module_prefix}.FullObjective"
        compact_objective_module = generate_compact_objective_equality_modules(
            output_dir,
            module_prefix,
            name,
            qvars,
            objective_coeffs,
            full_aggregate_dual_expression,
            scaled_bound,
            compact_objective_eq_chunk_size,
            compact_component_eq_chunk_size,
            compact_full_sparse_semantic,
            full_aggregate_semantic_coeff_chunk_size,
            compact_semantic_module,
            support_config,
            int(exact["constraint_counts"]["psd"]),
            full_objective_module,
        )
        quotient_name = f"{name}CompactDualExpressionQuotient"
        lines = module_prelude(
            [
                compact_semantic_module,
                compact_objective_module,
                f"{module_prefix}.Weighted",
            ],
            f"Generated compact full-sparse SDP certificate for ({2},{n},{r})",
        )
        lines.extend([
            f"def {name}CompactObjectiveExpressionCertificate :",
            f"    SDPObjectiveLowerWeightedExpressionCertificate {name}QVar {name}LinAtom",
            f"      {name}Block {name}BlockCoord {name}WeightCoord",
            f"      {name}CompactLinearAtomExpr {name}CompactMatrixAtomExpr {name}Objective",
            f"      {bound} :=",
            "  SDPObjectiveLowerWeightedExpressionCertificate.ofExpressionEqualities",
            f"    {quotient_name}",
            f"    {name}LinearMultiplier",
            f"    {name}LinearMultiplier_nonneg",
            "    0",
            "    (by norm_num)",
            f"    {name}DualMatrix",
            f"    {name}Weighted",
            f"    {name}CompactDualExpression_semantic",
            f"    {name}CompactObjectiveExpression_eq",
            "",
            f"def {name}CompactExpressionDualCertificate :",
            f"    BinaryQuotientTableExpressionDualCertificate (WeightIdx := {name}WeightCoord)",
            f"      {n} {r} {l_value} {name}CompactModel where",
            f"  bound := {bound}",
            "  cubeThreshold := by norm_num",
            f"  objectiveCertificate := {name}CompactObjectiveExpressionCertificate",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / "CompactCertificate.lean", lines)
        return

    if compact_semantic_coeff_chunk_size > 0:
        compact_semantic_module = generate_compact_semantic_coeff_modules(
            exact,
            output_dir,
            module_prefix,
            name,
            aggregate_dual_expression,
            compact_semantic_coeff_chunk_size,
            semantic_bridge_module,
        )
        compact_objective_module = generate_compact_objective_equality_modules(
            output_dir,
            module_prefix,
            name,
            qvars,
            objective_coeffs,
            full_aggregate_dual_expression,
            scaled_bound,
            compact_objective_eq_chunk_size,
            compact_component_eq_chunk_size,
            compact_full_sparse_semantic,
            full_aggregate_semantic_coeff_chunk_size,
            compact_semantic_module,
            support_config,
            int(exact["constraint_counts"]["psd"]),
        )
        data_name = f"{name}CompactDualExpressionData"
        lines = module_prelude(
            [
                compact_semantic_module,
                compact_objective_module,
                f"{module_prefix}.Weighted",
            ],
            f"Generated compact aggregate SDP certificate for ({2},{n},{r})",
        )
        lines.extend([
            f"def {name}CompactObjectiveExpressionCertificate :",
            f"    SDPObjectiveLowerWeightedExpressionCertificate {name}QVar {name}LinAtom",
            f"      {name}Block {name}BlockCoord {name}WeightCoord",
            f"      {name}CompactLinearAtomExpr {name}CompactMatrixAtomExpr {name}Objective",
            f"      {bound} :=",
            "  SDPObjectiveLowerWeightedExpressionCertificate.ofExpressionEqualities",
            f"    (linExprOfSparseData {data_name})",
            f"    {name}LinearMultiplier",
            f"    {name}LinearMultiplier_nonneg",
            "    0",
            "    (by norm_num)",
            f"    {name}DualMatrix",
            f"    {name}Weighted",
            f"    {name}CompactDualExpression_semantic",
            f"    {name}CompactObjectiveExpression_eq",
            "",
            f"def {name}CompactExpressionDualCertificate :",
            f"    BinaryQuotientTableExpressionDualCertificate (WeightIdx := {name}WeightCoord)",
            f"      {n} {r} {l_value} {name}CompactModel where",
            f"  bound := {bound}",
            "  cubeThreshold := by norm_num",
            f"  objectiveCertificate := {name}CompactObjectiveExpressionCertificate",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / "CompactCertificate.lean", lines)
        return

    generate_aggregate_compact_certificate_modules(
        output_dir,
        module_prefix,
        name,
        n,
        r,
        l_value,
        qvars,
        full_vars,
        data_const,
        data_terms,
        full_data_const,
        full_data_terms,
        bound,
        compact_bridge_module,
        support_config,
        compact_objective_eq_chunk_size,
    )
    return

    lines = module_prelude(
        [
            compact_bridge_module,
            f"{module_prefix}.Weighted",
            "CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr",
        ],
        f"Generated compact aggregate SDP certificate for ({2},{n},{r})",
    )
    lines.extend([
        f"def {name}CompactDualExpressionData : SparseLinExprData {qvars} where",
        f"  const := {lean_rat(data_const)}",
        f"  terms := [{', '.join(data_terms)}]",
        "",
    ])
    if full_aggregate_dual_expression is not None:
        lines.extend([
            f"def {name}FullAggregateDualExpressionData : SparseLinExprData {full_vars} where",
            f"  const := {lean_rat(full_data_const)}",
            f"  terms := [{', '.join(full_data_terms)}]",
            "",
            f"def {name}FullAggregateDualExpressionFiberSum (q : {name}QVar) : Rat :=",
            f"  {name}FullAggregateDualExpressionData.coeffSum",
            f"    ({support_config.quotient_fiber} q)",
            "",
            f"theorem {name}FullAggregateDualExpressionFiberSum_eq_sum_coeff",
            f"    (q : {name}QVar) :",
            f"    {name}FullAggregateDualExpressionFiberSum q =",
            f"      ({support_config.quotient_fiber} q).sum",
            f"        (fun idx => (linExprOfSparseData {name}FullAggregateDualExpressionData).coeff idx) := by",
            "  exact SparseLinExprData.coeffSum_eq_sum_coeff",
            f"    {name}FullAggregateDualExpressionData",
            f"    ({support_config.quotient_fiber} q)",
            "",
            f"theorem {name}CompactDualExpression_const_eq_fullAggregateData :",
            f"    {name}CompactDualExpression.const =",
            f"      (linExprOfSparseData {name}FullAggregateDualExpressionData).const := by",
            "  native_decide",
            "",
            f"theorem {name}CompactDualExpression_coeff_eq_fullAggregateFiberSum",
            f"    (q : {name}QVar) :",
            f"    {name}CompactDualExpression.coeff q =",
            f"      {name}FullAggregateDualExpressionFiberSum q := by",
            "  native_decide +revert",
            "",
        ])
    lines.extend([
        f"theorem {name}CompactDualExpression_fullFiber_const_placeholder :",
        f"    {name}CompactDualExpression.const =",
        f"      {name}FullDualExpression.const := by",
        "  calc",
        f"    {name}CompactDualExpression.const =",
    ])
    if full_aggregate_dual_expression is not None:
        lines.extend([
            f"        (linExprOfSparseData {name}FullAggregateDualExpressionData).const := by",
            f"      exact {name}CompactDualExpression_const_eq_fullAggregateData",
        ])
    else:
        lines.extend([
            f"        (linExprOfSparseData {name}CompactDualExpressionData).const := by",
            "      native_decide",
        ])
    lines.extend([
        f"    _ = {name}FullDualExpression.const := by",
        "      native_decide",
        "",
        f"theorem {name}CompactDualExpression_fullFiber_coeff_placeholder :",
        f"    forall q : {name}QVar,",
        f"      {name}CompactDualExpression.coeff q =",
        f"        ({support_config.quotient_fiber} q).sum",
        "          (fun idx =>",
        f"            {name}FullDualExpression.coeff",
        f"              ({support_config.orbit_of_fin} idx)) := by",
        "  intro q",
        "  calc",
        f"    {name}CompactDualExpression.coeff q =",
    ])
    if full_aggregate_dual_expression is not None:
        lines.extend([
            f"        {name}FullAggregateDualExpressionFiberSum q := by",
            f"      exact {name}CompactDualExpression_coeff_eq_fullAggregateFiberSum q",
            f"    _ = ({support_config.quotient_fiber} q).sum",
            "          (fun idx =>",
            f"            {name}FullDualExpression.coeff",
            f"              ({support_config.orbit_of_fin} idx)) := by",
            "      native_decide +revert",
        ])
    else:
        lines.extend([
            f"        (linExprOfSparseData {name}CompactDualExpressionData).coeff q := by",
            "      native_decide +revert",
            f"    _ = ({support_config.quotient_fiber} q).sum",
            "          (fun idx =>",
            f"            {name}FullDualExpression.coeff",
            f"              ({support_config.orbit_of_fin} idx)) := by",
            "      native_decide +revert",
        ])
    lines.extend([
        "",
        f"theorem {name}CompactDualExpression_semantic :",
        f"    {name}CompactDualExpression =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(f"{semantic_type[-1]} := by")
    lines.extend([
        f"  exact {name}CompactDualExpression_semantic_of_fullFiber",
        f"    {name}CompactDualExpression",
        f"    {name}CompactDualExpression_fullFiber_const_placeholder",
        f"    {name}CompactDualExpression_fullFiber_coeff_placeholder",
        "",
        f"theorem {name}CompactDualExpression_const_semantic :",
        f"    {name}CompactDualExpression.const =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(f"{semantic_type[-1]}.const := by")
    lines.extend([
        f"  rw [{name}CompactDualExpression_semantic]",
        "",
        f"theorem {name}CompactDualExpression_coeff_semantic :",
        f"    forall i : {name}QVar,",
        f"      {name}CompactDualExpression.coeff i =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(f"{semantic_type[-1]}.coeff i := by")
    lines.extend([
        "  intro i",
        f"  rw [{name}CompactDualExpression_semantic]",
    ])
    lines.extend([
        "",
        f"theorem {name}CompactDualExpression_coeff_0_semantic :",
        f"    {name}CompactDualExpression.coeff (⟨0, by omega⟩ : {name}QVar) =",
    ])
    lines.extend(semantic_type[:-1])
    lines.append(
        f"{semantic_type[-1]}.coeff (⟨0, by omega⟩ : {name}QVar) := by"
    )
    lines.append(
        f"  exact {name}CompactDualExpression_coeff_semantic (⟨0, by omega⟩ : {name}QVar)"
    )
    lines.extend([
        "",
        f"theorem {name}CompactObjectiveExpression_eq :",
        f"    LinExpr.subConst {name}Objective {bound} =",
        f"      {name}CompactDualExpression := by",
        "  rw [LinExpr.mk.injEq]",
        "  constructor",
        "  · funext i",
        "    native_decide +revert",
        "  · native_decide",
        "",
        f"def {name}CompactObjectiveExpressionCertificate :",
        f"    SDPObjectiveLowerWeightedExpressionCertificate {name}QVar {name}LinAtom",
        f"      {name}Block {name}BlockCoord {name}WeightCoord",
        f"      {name}CompactLinearAtomExpr {name}CompactMatrixAtomExpr {name}Objective",
        f"      {bound} :=",
        "  SDPObjectiveLowerWeightedExpressionCertificate.ofExpressionEqualities",
        f"    {name}CompactDualExpression",
        f"    {name}LinearMultiplier",
        f"    {name}LinearMultiplier_nonneg",
        "    0",
        "    (by norm_num)",
        f"    {name}DualMatrix",
        f"    {name}Weighted",
        f"    {name}CompactDualExpression_semantic",
        f"    {name}CompactObjectiveExpression_eq",
        "",
        f"def {name}CompactExpressionDualCertificate :",
        f"    BinaryQuotientTableExpressionDualCertificate (WeightIdx := {name}WeightCoord)",
        f"      {n} {r} {l_value} {name}CompactModel where",
        f"  bound := {bound}",
        "  cubeThreshold := by norm_num",
        f"  objectiveCertificate := {name}CompactObjectiveExpressionCertificate",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "CompactCertificate.lean", lines)


def generate_compact_data_smoke_module(
    exact: dict[str, Any],
    output_path: Path,
    module_prefix: str,
    name: str,
    support_config: BinaryCompactSupportConfig,
) -> None:
    n = int(exact["n"])
    r = int(exact["r"])
    if n != support_config.n or r != support_config.r or name != support_config.name:
        raise ValueError(
            "compact data smoke output support config does not match exact data"
        )
    qvars = int(exact["variable_count"])
    if qvars != support_config.qvars:
        raise ValueError("compact data smoke output quotient variable mismatch")
    full_vars = support_config.full_vars
    aggregate_dual_expression = exact.get("aggregate_dual_expression")
    full_aggregate_dual_expression = exact.get("full_aggregate_dual_expression")
    if aggregate_dual_expression is None:
        raise ValueError("exact data lacks aggregate_dual_expression")
    if full_aggregate_dual_expression is None:
        raise ValueError("exact data lacks full_aggregate_dual_expression")

    scale = Fraction(2) ** n
    data_terms = exact_coeff_terms(aggregate_dual_expression, scale)
    data_const = scale * frac_from_json(aggregate_dual_expression["const"])
    full_data_terms = exact_coeff_terms(full_aggregate_dual_expression, scale)
    full_data_const = scale * frac_from_json(full_aggregate_dual_expression["const"])

    lines = module_prelude(
        [
            f"{module_prefix}.QuotientFiber",
            "CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr",
        ],
        "Generated compact aggregate data smoke check for (2,13,1)",
    )
    lines.extend([
        f"def {name}CompactDualExpressionData : SparseLinExprData {qvars} where",
        f"  const := {lean_rat(data_const)}",
        f"  terms := [{', '.join(data_terms)}]",
        "",
        f"def {name}FullAggregateDualExpressionData : SparseLinExprData {full_vars} where",
        f"  const := {lean_rat(full_data_const)}",
        f"  terms := [{', '.join(full_data_terms)}]",
        "",
        f"def {name}FullAggregateDualExpressionFiberSum (q : {name}QVar) : Rat :=",
        f"  {name}FullAggregateDualExpressionData.coeffSum",
        f"    ({support_config.quotient_fiber} q)",
        "",
        f"theorem {name}FullAggregateDualExpressionFiberSum_eq_sum_coeff",
        f"    (q : {name}QVar) :",
        f"    {name}FullAggregateDualExpressionFiberSum q =",
        f"      ({support_config.quotient_fiber} q).sum",
        f"        (fun idx => (linExprOfSparseData {name}FullAggregateDualExpressionData).coeff idx) := by",
        "  exact SparseLinExprData.coeffSum_eq_sum_coeff",
        f"    {name}FullAggregateDualExpressionData",
        f"    ({support_config.quotient_fiber} q)",
        "",
        f"theorem {name}CompactDualExpression_const_eq_fullAggregateData :",
        f"    (linExprOfSparseData {name}CompactDualExpressionData).const =",
        f"      (linExprOfSparseData {name}FullAggregateDualExpressionData).const := by",
        "  native_decide",
        "",
        f"theorem {name}CompactDualExpression_coeff_eq_fullAggregateFiberSum :",
        f"    forall q : {name}QVar,",
        f"      (linExprOfSparseData {name}CompactDualExpressionData).coeff q =",
        f"        {name}FullAggregateDualExpressionFiberSum q := by",
        "  native_decide",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_path, lines)


def generate_full_aggregate_component_module(
    exact: dict[str, Any],
    expr_data: dict[str, Any],
    output_dir: Path,
    module_prefix: str,
    name: str,
    component_eq_chunk_size: int,
    scalar_component_eq_chunk_size: int,
    scalar_semantic_coeff_chunk_size: int,
    scalar_semantic_atom_chunk_size: int,
    scalar_semantic_matrix_cut_atom_chunk_size: int,
    scalar_semantic_nonmatrix_only: bool,
    scalar_semantic_matrix_cut_only: bool,
    scalar_semantic_matrix_cut_source_groups: bool,
    scalar_semantic_chunk_start: int | None,
    scalar_semantic_chunk_end: int | None,
    psd_semantic_chunk_size: int,
    semantic_bridge_module: str | None,
    full_aggregate_semantic_structural: bool,
    support_config: BinaryCompactSupportConfig,
) -> None:
    components = exact.get("full_aggregate_dual_expression_components")
    target = exact.get("full_aggregate_dual_expression")
    if components is None or target is None:
        return

    n = int(exact["n"])
    scale = Fraction(2) ** n
    full_vars = support_config.full_vars
    scalar_count = int(exact["constraint_counts"]["scalar"])
    target_name = f"{name}FullAggregateComponentTargetData"
    scalar_name = f"{name}FullAggregateScalarComponentData"
    compact_bridge_module = semantic_bridge_module or f"{module_prefix}.CompactBridge"

    def write_component(file_stem: str, def_name: str, expr: dict[str, Any]) -> str:
        lines = module_prelude(
            ["CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr"],
            f"Generated full aggregate component data for ({2},{n},{exact['r']})",
        )
        lines.extend(sparse_data_lines(def_name, full_vars, expr, scale))
        lines.extend(module_postlude())
        write_module(output_dir / f"{file_stem}.lean", lines)
        return f"{module_prefix}.{file_stem}"

    def write_structural_scalar_chunk_component(idx: int, def_name: str) -> str:
        orbit_of_fin = support_config.orbit_of_fin
        semantic_expr_name = f"{name}FullAggregateScalarChunkSemanticExpr{idx}"
        file_stem = f"FullAggregateScalarChunk{idx}"
        lines = module_prelude(
            [
                "CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr",
                support_config.support_module,
                f"{module_prefix}.FullAggregateScalarChunk{idx}SemanticData",
            ],
            (
                "Generated full aggregate scalar chunk data from semantic "
                f"expression for ({2},{n},{exact['r']})"
            ),
        )
        lines.extend([
            f"def {def_name} : SparseLinExprData {full_vars} :=",
            f"  SparseLinExprData.ofLinExprByFin {orbit_of_fin}",
            f"    {semantic_expr_name}",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"{file_stem}.lean", lines)
        return f"{module_prefix}.{file_stem}"

    def write_structural_psd_component(idx: int, def_name: str) -> str:
        orbit_of_fin = support_config.orbit_of_fin
        block = f"(⟨{idx}, by omega⟩ : {name}Block)"
        file_stem = f"FullAggregatePsd{idx}"
        lines = module_prelude(
            [
                "CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr",
                support_config.support_module,
                f"{module_prefix}.FullAggregateRangeTerms",
            ],
            (
                "Generated full aggregate PSD component data from semantic "
                f"expression for ({2},{n},{exact['r']})"
            ),
        )
        lines.extend([
            f"def {def_name} : SparseLinExprData {full_vars} :=",
            f"  SparseLinExprData.ofLinExprByFin {orbit_of_fin}",
            f"    ({name}FullAggregatePsdRangeTerm {block})",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"{file_stem}.lean", lines)
        return f"{module_prefix}.{file_stem}"

    def write_structural_scalar_component(scalar_chunk_modules: list[str]) -> str:
        lines = module_prelude(
            [
                "CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr",
            ] + scalar_chunk_modules,
            (
                "Generated full aggregate scalar component data as a "
                f"validated chunk sum for ({2},{n},{exact['r']})"
            ),
        )
        lines.extend([
            f"def {scalar_name} : SparseLinExprData {full_vars} :=",
            "  SparseLinExprData.listSum",
            f"    [{scalar_chunk_list}]",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / "FullAggregateScalar.lean", lines)
        return f"{module_prefix}.FullAggregateScalar"

    def write_structural_target(component_modules: list[str]) -> str:
        lines = module_prelude(
            [
                "CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr",
            ] + component_modules,
            (
                "Generated full aggregate target data as a validated "
                f"component sum for ({2},{n},{exact['r']})"
            ),
        )
        lines.extend([
            f"def {target_name} : SparseLinExprData {full_vars} :=",
            "  SparseLinExprData.listSum",
            f"    [{component_list}]",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / "FullAggregateTarget.lean", lines)
        return f"{module_prefix}.FullAggregateTarget"

    scalar_chunks = components.get("scalar_chunks", [])
    scalar_chunk_modules: list[str] = []
    scalar_chunk_defs: list[str] = []
    scalar_chunk_exprs: list[dict[str, Any]] = []
    for idx, item in enumerate(scalar_chunks):
        start = int(item["start"])
        end = int(item["end"])
        if not 0 <= start < end <= scalar_count:
            raise ValueError(f"invalid scalar chunk range [{start}, {end})")
        file_stem = f"FullAggregateScalarChunk{idx}"
        def_name = f"{name}FullAggregateScalarChunkData{idx}"
        scalar_chunk_defs.append(def_name)
        scalar_chunk_exprs.append(item["expr"])
        if full_aggregate_semantic_structural:
            scalar_chunk_modules.append(
                write_structural_scalar_chunk_component(idx, def_name)
            )
        else:
            scalar_chunk_modules.append(
                write_component(file_stem, def_name, item["expr"])
            )
    scalar_chunk_list = ", ".join(scalar_chunk_defs)

    if scalar_chunks:
        validate_sparse_expr_sum(
            components["scalar"],
            scalar_chunk_exprs,
            full_vars,
            scale,
            "full aggregate scalar chunk sum",
        )
        scalar_module = write_structural_scalar_component(scalar_chunk_modules)
    else:
        scalar_module = write_component(
            "FullAggregateScalar",
            scalar_name,
            components["scalar"],
        )

    component_modules = [scalar_module]
    component_defs = [scalar_name]
    component_exprs = [components["scalar"]]

    for idx, item in enumerate(components["psd"]):
        file_stem = f"FullAggregatePsd{idx}"
        def_name = f"{name}FullAggregatePsdComponentData{idx}"
        component_defs.append(def_name)
        component_exprs.append(item["expr"])
        if full_aggregate_semantic_structural:
            component_modules.append(write_structural_psd_component(idx, def_name))
        else:
            component_modules.append(write_component(file_stem, def_name, item["expr"]))

    component_list = ", ".join(component_defs)
    validate_sparse_expr_sum(
        target,
        component_exprs,
        full_vars,
        scale,
        "full aggregate target component sum",
    )
    target_module = write_structural_target(component_modules)
    lines = module_prelude(
        [target_module],
        f"Generated full aggregate component summary for ({2},{n},{exact['r']})",
    )
    lines.extend([
        f"def {name}FullAggregateComponentSumData : SparseLinExprData {full_vars} :=",
        f"  {target_name}",
        "",
        f"theorem {name}FullAggregateComponentSum_interpretation :",
        f"    linExprOfSparseData {name}FullAggregateComponentSumData =",
        f"      [{component_list}].foldr",
        "        (fun data acc => LinExpr.add (linExprOfSparseData data) acc)",
        f"        (LinExpr.constExpr (Fin {full_vars}) 0) := by",
        f"  unfold {name}FullAggregateComponentSumData",
        f"  unfold {target_name}",
        f"  exact linExprOfSparseData_listSum [{component_list}]",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "FullAggregateComponents.lean", lines)

    if (
        full_aggregate_semantic_structural
        or scalar_semantic_matrix_cut_source_groups
        or scalar_semantic_coeff_chunk_size > 0
    ):
        generate_full_aggregate_range_terms_module(
            output_dir,
            module_prefix,
            name,
            n,
            compact_bridge_module,
        )
    if scalar_semantic_coeff_chunk_size < 0:
        raise ValueError("scalar semantic coefficient chunk size must be nonnegative")
    if scalar_semantic_atom_chunk_size < 0:
        raise ValueError("scalar semantic atom chunk size must be nonnegative")
    if scalar_semantic_matrix_cut_atom_chunk_size < 0:
        raise ValueError(
            "matrix-cut scalar semantic atom chunk size must be nonnegative"
        )
    emit_scalar_semantic_bridges = (
        full_aggregate_semantic_structural or scalar_semantic_coeff_chunk_size > 0
    )
    emit_scalar_semantic_coeffs = (
        scalar_semantic_coeff_chunk_size > 0
        and not full_aggregate_semantic_structural
    )
    if emit_scalar_semantic_bridges and not scalar_chunks and scalar_count > 0:
        raise ValueError(
            "scalar semantic proof generation requires "
            "full_aggregate_dual_expression_components.scalar_chunks"
        )
    if scalar_chunks:
        lines = module_prelude(
            scalar_chunk_modules,
            f"Generated full aggregate scalar chunk summary for ({2},{n},{exact['r']})",
        )
        lines.extend([
            f"def {name}FullAggregateScalarChunkSumData : SparseLinExprData {full_vars} :=",
            "  SparseLinExprData.listSum",
            f"    [{scalar_chunk_list}]",
            "",
            f"theorem {name}FullAggregateScalarChunkSum_interpretation :",
            f"    linExprOfSparseData {name}FullAggregateScalarChunkSumData =",
            f"      [{scalar_chunk_list}].foldr",
            "        (fun data acc => LinExpr.add (linExprOfSparseData data) acc)",
            f"        (LinExpr.constExpr (Fin {full_vars}) 0) := by",
            f"  exact linExprOfSparseData_listSum [{scalar_chunk_list}]",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / "FullAggregateScalarChunks.lean", lines)

        if scalar_component_eq_chunk_size < 0:
            raise ValueError("scalar component equality chunk size must be nonnegative")
        if scalar_component_eq_chunk_size > 0:
            lines = module_prelude(
                [
                    f"{module_prefix}.FullAggregateScalar",
                    f"{module_prefix}.FullAggregateScalarChunks",
                ],
                (
                    "Generated full aggregate scalar chunk sum equality for "
                    f"({2},{n},{exact['r']})"
                ),
            )
            lines.extend([
                f"theorem {name}FullAggregateScalarChunkSumConstEq :",
                f"    {name}FullAggregateScalarChunkSumData.const =",
                f"      {scalar_name}.const := by",
                "  rfl",
                "",
                f"theorem {name}FullAggregateScalarChunkSumCoeffEq",
                f"    (idx : Nat) (hidx : idx < {full_vars}) :",
                f"    sparseLinExprCoeff {name}FullAggregateScalarChunkSumData.terms idx =",
                f"      sparseLinExprCoeff {scalar_name}.terms idx := by",
                "  have _ := hidx",
                "  rfl",
                "",
                f"theorem {name}FullAggregateScalarChunkSum_eq_scalarData :",
                f"    linExprOfSparseData {name}FullAggregateScalarChunkSumData =",
                f"      linExprOfSparseData {scalar_name} := by",
                "  rfl",
                "",
            ])
            lines.extend(module_postlude())
            write_module(output_dir / "FullAggregateScalarChunksEq.lean", lines)

        if emit_scalar_semantic_bridges:
            orbit_of_fin = support_config.orbit_of_fin
            orbit_to_fin = support_config.orbit_to_fin
            orbit_of_fin_to_fin = support_config.orbit_of_fin_to_fin
            scalar_semantic_summary_modules: list[str] = []

            for idx, item in enumerate(scalar_chunks):
                if (
                    not full_aggregate_semantic_structural
                    and scalar_semantic_chunk_start is not None
                    and idx < scalar_semantic_chunk_start
                ):
                    continue
                if (
                    not full_aggregate_semantic_structural
                    and scalar_semantic_chunk_end is not None
                    and idx >= scalar_semantic_chunk_end
                ):
                    continue
                start = int(item["start"])
                end = int(item["end"])
                atom_count = end - start
                has_matrix_cut, all_matrix_cut = scalar_range_matrix_status(
                    expr_data, start, end
                )
                if (
                    not full_aggregate_semantic_structural
                    and scalar_semantic_nonmatrix_only
                    and has_matrix_cut
                ):
                    continue
                if (
                    not full_aggregate_semantic_structural
                    and scalar_semantic_matrix_cut_only
                    and not has_matrix_cut
                ):
                    continue
                use_source_groups = (
                    scalar_semantic_matrix_cut_source_groups and has_matrix_cut
                )
                if use_source_groups:
                    if n != 13 or int(exact["r"]) != 1:
                        raise ValueError(
                            "matrix-cut source-group scalar semantic emission "
                            "currently targets the binary length-13, r=1 table"
                        )
                    if not all_matrix_cut:
                        raise ValueError(
                            "matrix-cut source-group scalar semantic emission "
                            f"requires selected chunk {idx} [{start}, {end}) to "
                            "contain only matrix-cut atoms; regenerate exact JSON "
                            "with family-aware scalar chunks or select only "
                            "matrix-cut chunks"
                        )
                atom_limit = (
                    scalar_semantic_matrix_cut_atom_chunk_size
                    if has_matrix_cut
                    and scalar_semantic_matrix_cut_atom_chunk_size > 0
                    else scalar_semantic_atom_chunk_size
                )
                if atom_limit > 0 and atom_count > atom_limit:
                    family = "matrix-cut" if has_matrix_cut else "non-matrix"
                    flag = (
                        "--scalar-semantic-matrix-cut-atom-chunk-size"
                        if has_matrix_cut
                        and scalar_semantic_matrix_cut_atom_chunk_size > 0
                        else "--scalar-semantic-atom-chunk-size"
                    )
                    raise ValueError(
                        f"scalar semantic {family} chunk {idx} has "
                        f"{atom_count} atoms, which exceeds {flag}={atom_limit}; "
                        "regenerate exact JSON with smaller scalar_chunks"
                    )

                component_def = f"{name}FullAggregateScalarChunkData{idx}"
                atoms_name = f"{name}FullAggregateScalarChunkAtoms{idx}"
                semantic_expr_name = f"{name}FullAggregateScalarChunkSemanticExpr{idx}"
                data_file_stem = f"FullAggregateScalarChunk{idx}SemanticData"
                if use_source_groups:
                    groups = matrix_cut_source_groups(
                        n, expr_data, exact, start, end, scale
                    )
                    if not groups:
                        raise ValueError(
                            "matrix-cut source-group scalar semantic emission "
                            f"found no source groups for chunk {idx}"
                        )
                    validate_source_group_range_cover(
                        groups,
                        start,
                        end,
                        f"full aggregate scalar chunk {idx}",
                    )
                    semantic_imports = [
                        "CoveringCodes.SDP.GijswijtPolak2025.BinaryK2_13_1MatrixCutSourceContribution",
                    ]
                    if not full_aggregate_semantic_structural:
                        semantic_imports.insert(
                            0,
                            f"{module_prefix}.FullAggregateScalarChunk{idx}",
                        )
                    lines = module_prelude(
                        semantic_imports,
                        (
                            "Generated full aggregate scalar chunk source-group "
                            f"semantic data chunk {idx}"
                        ),
                    )
                    contribution_terms: list[str] = []
                    for group_idx, group in enumerate(groups):
                        weight_name = (
                            f"{name}FullAggregateScalarChunk{idx}"
                            f"SourceGroup{group_idx}Weight"
                        )
                        lines.extend([
                            f"def {weight_name} (cut : Fin 4) : Rat :=",
                            "  match cut.val with",
                        ])
                        weights = group["weights"]
                        for cut in range(3):
                            lines.append(f"  | {cut} => {lean_rat(weights[cut])}")
                        lines.extend([
                            f"  | _ => {lean_rat(weights[3])}",
                            "",
                        ])
                        contribution_terms.append(
                            "binaryLengthThirteenMatrixCutSourceContribution "
                            f"{group['ineq']} {group['source']} {weight_name}"
                        )
                    lines.extend([
                        f"def {semantic_expr_name} : LinExpr (BinaryOrbitIndex {n}) :=",
                    ])
                    lines.extend(nested_linexpr_add_lines(
                        contribution_terms,
                        f"LinExpr.constExpr (BinaryOrbitIndex {n}) 0",
                    ))
                    lines.append("")
                else:
                    semantic_imports = [
                        "CoveringCodes.SDP.GijswijtPolak2025.Certificates.Dual",
                        compact_bridge_module,
                    ]
                    if not full_aggregate_semantic_structural:
                        semantic_imports.insert(
                            0,
                            f"{module_prefix}.FullAggregateScalarChunk{idx}",
                        )
                    lines = module_prelude(
                        semantic_imports,
                        (
                            "Generated full aggregate scalar chunk semantic data "
                            f"chunk {idx}"
                        ),
                    )
                    lines.extend([
                        f"theorem {atoms_name}_stop :",
                        f"    {start} + {atom_count} <= {scalar_count} := by",
                        "  omega",
                        "",
                        f"def {atoms_name} : List {name}LinAtom :=",
                        f"  List.ofFn (fun offset : Fin {atom_count} =>",
                        f"    LinExpr.finShiftEmbedding {scalar_count} {start} {atom_count}",
                        f"      {atoms_name}_stop offset)",
                        "",
                        f"def {semantic_expr_name} : LinExpr (BinaryOrbitIndex {n}) :=",
                        f"  {atoms_name}.foldr",
                        "    (fun atom acc =>",
                        "      LinExpr.add",
                        f"        (LinExpr.smul ({name}LinearMultiplier atom)",
                        f"          ({name}FullLinearAtomExpr atom))",
                        "        acc)",
                        f"    (LinExpr.constExpr (BinaryOrbitIndex {n}) 0)",
                        "",
                    ])
                lines.extend(module_postlude())
                write_module(output_dir / f"{data_file_stem}.lean", lines)
                if use_source_groups:
                    generate_matrix_cut_source_bridge_module(
                        output_dir,
                        module_prefix,
                        name,
                        n,
                        scalar_count,
                        idx,
                        start,
                        end,
                        groups,
                        data_file_stem,
                    )
                else:
                    generate_scalar_chunk_range_bridge_module(
                        output_dir,
                        module_prefix,
                        name,
                        n,
                        scalar_count,
                        idx,
                        start,
                        end,
                        data_file_stem,
                        atoms_name,
                    )

                if not emit_scalar_semantic_coeffs:
                    continue

                coeff_modules: list[str] = []
                for chunk, coeff_start in enumerate(
                    range(0, full_vars, scalar_semantic_coeff_chunk_size)
                ):
                    coeff_end = min(
                        coeff_start + scalar_semantic_coeff_chunk_size, full_vars
                    )
                    file_stem = f"FullAggregateScalarChunk{idx}SemanticCoeff{chunk}"
                    theorem_name = (
                        f"{name}FullAggregateScalarChunkSemanticCoeffEq"
                        f"{idx}Chunk{chunk}"
                    )
                    coeff_modules.append(f"{module_prefix}.{file_stem}")
                    lines = module_prelude(
                        [f"{module_prefix}.{data_file_stem}"],
                        (
                            "Generated full aggregate scalar chunk semantic "
                            f"coefficient equality chunk {idx}, {chunk}"
                        ),
                    )
                    lines.extend([
                        f"theorem {theorem_name}",
                        f"    (idx : Nat) (hlo : {coeff_start} <= idx)"
                        f" (hhi : idx < {coeff_end}) :",
                        f"    sparseLinExprCoeff {component_def}.terms idx =",
                        f"      {semantic_expr_name}.coeff",
                        f"        ({orbit_of_fin} (⟨idx, by omega⟩ : Fin {full_vars})) := by",
                    ])
                    if use_source_groups:
                        simp_terms = [
                            semantic_expr_name,
                            "LinExpr.add",
                            "LinExpr.constExpr",
                            "binaryLengthThirteenMatrixCutSourceContribution_coeff_direct",
                        ]
                        lines.extend([
                            "  interval_cases idx <;>",
                            "    simp [",
                        ])
                        for term in simp_terms[:-1]:
                            lines.append(f"      {term},")
                        lines.extend([
                            f"      {simp_terms[-1]}] <;>",
                            "    native_decide +revert",
                        ])
                    else:
                        lines.extend([
                            "  interval_cases idx",
                            "  all_goals native_decide +revert",
                        ])
                    lines.append("")
                    lines.extend(module_postlude())
                    write_module(output_dir / f"{file_stem}.lean", lines)

                file_stem = f"FullAggregateScalarChunk{idx}Semantic"
                scalar_semantic_summary_modules.append(f"{module_prefix}.{file_stem}")
                lines = module_prelude(
                    coeff_modules,
                    (
                        "Generated full aggregate scalar chunk semantic equality "
                        f"chunk {idx}"
                    ),
                )
                lines.extend([
                    f"theorem {name}FullAggregateScalarChunkSemanticConstEq{idx} :",
                    f"    {component_def}.const =",
                    f"      {semantic_expr_name}.const := by",
                    "  native_decide",
                    "",
                    f"theorem {name}FullAggregateScalarChunkSemanticCoeffEq{idx}",
                    f"    (idx : Nat) (hidx : idx < {full_vars}) :",
                    f"    sparseLinExprCoeff {component_def}.terms idx =",
                    f"      {semantic_expr_name}.coeff",
                    f"        ({orbit_of_fin} (⟨idx, by omega⟩ : Fin {full_vars})) := by",
                ])
                scalar_semantic_coeff_chunk_count = (
                    full_vars + scalar_semantic_coeff_chunk_size - 1
                ) // scalar_semantic_coeff_chunk_size
                for chunk in range(scalar_semantic_coeff_chunk_count - 1):
                    coeff_end = min(
                        (chunk + 1) * scalar_semantic_coeff_chunk_size, full_vars
                    )
                    lines.extend([
                        f"  by_cases h{chunk} : idx < {coeff_end}",
                        f"  · exact {name}FullAggregateScalarChunkSemanticCoeffEq{idx}Chunk{chunk}",
                        f"      idx (by omega) h{chunk}",
                    ])
                last = scalar_semantic_coeff_chunk_count - 1
                lines.extend([
                    f"  exact {name}FullAggregateScalarChunkSemanticCoeffEq{idx}Chunk{last}",
                    "    idx (by omega) hidx",
                    "",
                    f"theorem {name}FullAggregateScalarChunkSemantic{idx} :",
                    f"    linExprOfSparseDataByFin {orbit_to_fin} {component_def} =",
                    f"      {semantic_expr_name} := by",
                    "  apply linExprOfSparseDataByFin_eq_of_nat_coeffs",
                    f"      (toFin := {orbit_to_fin}) (ofFin := {orbit_of_fin})",
                    f"  · exact {name}FullAggregateScalarChunkSemanticConstEq{idx}",
                    "  · intro idx hidx",
                    f"    exact {name}FullAggregateScalarChunkSemanticCoeffEq{idx} idx hidx",
                    f"  · exact {orbit_of_fin_to_fin}",
                    "",
                ])
                lines.extend(module_postlude())
                write_module(output_dir / f"{file_stem}.lean", lines)

            if emit_scalar_semantic_coeffs:
                lines = module_prelude(
                    scalar_semantic_summary_modules,
                    (
                        "Generated full aggregate scalar component semantic summary "
                        f"for ({2},{n},{exact['r']})"
                    ),
                )
                lines.extend(module_postlude())
                write_module(output_dir / "FullAggregateScalarSemantic.lean", lines)

    if component_eq_chunk_size > 0:
        lines = module_prelude(
            [f"{module_prefix}.FullAggregateComponents"],
            f"Generated full aggregate component target equality for ({2},{n},{exact['r']})",
        )
        lines.extend([
            f"theorem {name}FullAggregateComponentTargetConstEq :",
            f"    {name}FullAggregateComponentSumData.const = {target_name}.const := by",
            "  rfl",
            "",
            f"theorem {name}FullAggregateComponentTargetCoeffEq",
            f"    (idx : Nat) (hidx : idx < {full_vars}) :",
            f"    sparseLinExprCoeff {name}FullAggregateComponentSumData.terms idx =",
            f"      sparseLinExprCoeff {target_name}.terms idx := by",
            "  have _ := hidx",
            "  rfl",
            "",
            f"theorem {name}FullAggregateComponentSum_eq_targetData :",
            f"    linExprOfSparseData {name}FullAggregateComponentSumData =",
            f"      linExprOfSparseData {target_name} := by",
            "  rfl",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / "FullAggregateComponentTargetEq.lean", lines)

    if psd_semantic_chunk_size < 0:
        raise ValueError("PSD semantic chunk size must be nonnegative")

    if full_aggregate_semantic_structural:
        generate_structural_full_aggregate_semantic_module(
            exact,
            expr_data,
            output_dir,
            module_prefix,
            name,
            component_eq_chunk_size,
            semantic_bridge_module,
            scalar_semantic_matrix_cut_source_groups,
            support_config,
        )
        return

    if psd_semantic_chunk_size == 0:
        return

    orbit_of_fin = support_config.orbit_of_fin
    orbit_to_fin = support_config.orbit_to_fin
    orbit_of_fin_to_fin = support_config.orbit_of_fin_to_fin
    compact_bridge_module = semantic_bridge_module or f"{module_prefix}.CompactBridge"
    psd_summary_modules: list[str] = []

    for block_idx, _item in enumerate(components["psd"]):
        component_def = f"{name}FullAggregatePsdComponentData{block_idx}"
        block = f"(⟨{block_idx}, by omega⟩ : {name}Block)"
        semantic_expr = [
            "      (MatrixLinExpr.innerExpr",
            f"        ({name}DualMatrix {block})",
            f"        ({name}FullMatrixAtomExpr {block}))",
        ]
        chunk_modules: list[str] = []
        for chunk, start in enumerate(range(0, full_vars, psd_semantic_chunk_size)):
            end = min(start + psd_semantic_chunk_size, full_vars)
            file_stem = f"FullAggregatePsd{block_idx}Semantic{chunk}"
            theorem_name = (
                f"{name}FullAggregatePsdComponentCoeffEq"
                f"{block_idx}Chunk{chunk}"
            )
            chunk_modules.append(f"{module_prefix}.{file_stem}")
            lines = module_prelude(
                [
                    f"{module_prefix}.FullAggregatePsd{block_idx}",
                    compact_bridge_module,
                ],
                (
                    "Generated full aggregate PSD component semantic equality "
                    f"block {block_idx}, chunk {chunk}"
                ),
            )
            lines.extend([
                f"theorem {theorem_name}",
                f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
                f"    sparseLinExprCoeff {component_def}.terms idx =",
            ])
            lines.extend(semantic_expr)
            lines[-1] += ".coeff"
            lines.extend([
                f"        ({orbit_of_fin} (⟨idx, by omega⟩ : Fin {full_vars})) := by",
                "  interval_cases idx",
                "  all_goals native_decide +revert",
                "",
            ])
            lines.extend(module_postlude())
            write_module(output_dir / f"{file_stem}.lean", lines)

        file_stem = f"FullAggregatePsd{block_idx}Semantic"
        psd_summary_modules.append(f"{module_prefix}.{file_stem}")
        lines = module_prelude(
            chunk_modules,
            f"Generated full aggregate PSD component semantic equality block {block_idx}",
        )
        lines.extend([
            f"theorem {name}FullAggregatePsdComponentConstEq{block_idx} :",
            f"    {component_def}.const =",
        ])
        lines.extend(semantic_expr)
        lines[-1] += ".const := by"
        lines.extend([
            "  native_decide",
            "",
            f"theorem {name}FullAggregatePsdComponentCoeffEq{block_idx}",
            f"    (idx : Nat) (hidx : idx < {full_vars}) :",
            f"    sparseLinExprCoeff {component_def}.terms idx =",
        ])
        lines.extend(semantic_expr)
        lines[-1] += ".coeff"
        lines.extend([
            f"      ({orbit_of_fin} (⟨idx, by omega⟩ : Fin {full_vars})) := by",
        ])
        psd_chunk_count = (
            full_vars + psd_semantic_chunk_size - 1
        ) // psd_semantic_chunk_size
        for chunk in range(psd_chunk_count - 1):
            end = min((chunk + 1) * psd_semantic_chunk_size, full_vars)
            lines.extend([
                f"  by_cases h{chunk} : idx < {end}",
                f"  · exact {name}FullAggregatePsdComponentCoeffEq{block_idx}Chunk{chunk}",
                f"      idx (by omega) h{chunk}",
            ])
        last = psd_chunk_count - 1
        lines.extend([
            f"  exact {name}FullAggregatePsdComponentCoeffEq{block_idx}Chunk{last}",
            "    idx (by omega) hidx",
            "",
            f"theorem {name}FullAggregatePsdComponentSemantic{block_idx} :",
            f"    linExprOfSparseDataByFin {orbit_to_fin} {component_def} =",
        ])
        lines.extend(semantic_expr)
        lines[-1] += " := by"
        lines.extend([
            "  apply linExprOfSparseDataByFin_eq_of_nat_coeffs",
            f"      (toFin := {orbit_to_fin}) (ofFin := {orbit_of_fin})",
            f"  · exact {name}FullAggregatePsdComponentConstEq{block_idx}",
            "  · intro idx hidx",
            f"    exact {name}FullAggregatePsdComponentCoeffEq{block_idx} idx hidx",
            f"  · exact {orbit_of_fin_to_fin}",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"{file_stem}.lean", lines)

    lines = module_prelude(
        psd_summary_modules,
        f"Generated full aggregate PSD component semantic summary for ({2},{n},{exact['r']})",
    )
    lines.extend(module_postlude())
    write_module(output_dir / "FullAggregatePsdSemantic.lean", lines)

    if full_aggregate_semantic_structural:
        generate_structural_full_aggregate_semantic_module(
            exact,
            expr_data,
            output_dir,
            module_prefix,
            name,
            component_eq_chunk_size,
            semantic_bridge_module,
            scalar_semantic_matrix_cut_source_groups,
            support_config,
        )


def generate_structural_full_aggregate_semantic_module(
    exact: dict[str, Any],
    expr_data: dict[str, Any],
    output_dir: Path,
    module_prefix: str,
    name: str,
    component_eq_chunk_size: int,
    semantic_bridge_module: str | None,
    scalar_semantic_matrix_cut_source_groups: bool,
    support_config: BinaryCompactSupportConfig,
) -> None:
    components = exact.get("full_aggregate_dual_expression_components")
    if components is None:
        raise ValueError("structural full aggregate semantic requires components")
    scalar_chunks = components.get("scalar_chunks", [])
    psd_components = components.get("psd", [])
    n = int(exact["n"])
    if n != support_config.n:
        raise ValueError(
            "structural full aggregate semantic support config mismatch"
        )
    full_vars = support_config.full_vars

    scalar_count = int(exact["constraint_counts"]["scalar"])
    block_count = int(exact["constraint_counts"]["psd"])
    scale = Fraction(2) ** n
    target_name = f"{name}FullAggregateComponentTargetData"
    compact_bridge_module = semantic_bridge_module or f"{module_prefix}.CompactBridge"
    orbit_of_fin = support_config.orbit_of_fin
    orbit_to_fin = support_config.orbit_to_fin
    orbit_of_fin_to_fin = support_config.orbit_of_fin_to_fin
    orbit_to_fin_of_fin = support_config.orbit_to_fin_of_fin
    scalar_ranges: list[tuple[int, int]] = []
    scalar_bridge_modules: list[str] = []
    scalar_bridge_theorems: list[str] = []
    scalar_exprs: list[str] = []
    for idx, item in enumerate(scalar_chunks):
        start = int(item["start"])
        end = int(item["end"])
        scalar_ranges.append((start, end))
        has_matrix_cut, all_matrix_cut = scalar_range_matrix_status(
            expr_data, start, end
        )
        if has_matrix_cut:
            if scalar_semantic_matrix_cut_source_groups:
                if not all_matrix_cut:
                    raise ValueError(
                        "structural source-group metadata requires matrix-cut "
                        f"chunk {idx} [{start}, {end}) to contain only "
                        "matrix-cut atoms"
                    )
                groups = matrix_cut_source_groups(
                    n, expr_data, exact, start, end, scale
                )
                validate_source_group_range_cover(
                    groups,
                    start,
                    end,
                    f"full aggregate scalar chunk {idx}",
                )
                scalar_bridge_modules.append(
                    f"{module_prefix}.FullAggregateScalarChunk{idx}SourceBridge"
                )
            else:
                scalar_bridge_modules.append(
                    f"{module_prefix}.FullAggregateScalarChunk{idx}RangeBridge"
                )
        else:
            scalar_bridge_modules.append(
                f"{module_prefix}.FullAggregateScalarChunk{idx}RangeBridge"
            )
        scalar_bridge_theorems.append(
            f"{name}FullAggregateScalarChunk{idx}SemanticExpr_eq_range"
        )
        scalar_exprs.append(f"{name}FullAggregateScalarChunkSemanticExpr{idx}")

    psd_exprs: list[str] = []
    for block_idx, _item in enumerate(psd_components):
        block = f"(⟨{block_idx}, by omega⟩ : {name}Block)"
        psd_exprs.append(
            f"(MatrixLinExpr.innerExpr ({name}DualMatrix {block}) "
            f"({name}FullMatrixAtomExpr {block}))"
        )
    psd_ranges = [(idx, idx + 1) for idx in range(len(psd_components))]
    validate_contiguous_ranges(
        scalar_ranges,
        scalar_count,
        "full aggregate scalar chunk",
    )
    validate_contiguous_ranges(
        psd_ranges,
        block_count,
        "full aggregate PSD block",
    )
    lines = module_prelude(
        [
            "CoveringCodes.SDP.GijswijtPolak2025.Certificates.Dual",
            f"{module_prefix}.FullAggregateTarget",
            f"{module_prefix}.FullAggregateRangeTerms",
            compact_bridge_module,
        ] + scalar_bridge_modules,
        "Generated structural full aggregate semantic skeleton",
    )
    lines.extend([
        f"def {name}FullAggregateScalarChunkRanges : List (Nat × Nat) :=",
        f"  [{', '.join(f'({start}, {end})' for start, end in scalar_ranges)}]",
        "",
        f"def {name}FullAggregatePsdBlockRanges : List (Nat × Nat) :=",
        f"  [{', '.join(f'({start}, {end})' for start, end in psd_ranges)}]",
        "",
        f"theorem {name}FullAggregateScalarChunkRanges_chain :",
        f"    LinExpr.FinRangeChain 0",
        f"      {name}FullAggregateScalarChunkRanges",
        f"      {scalar_count} := by",
    ])
    lines.extend(fin_range_chain_proof_lines(scalar_ranges, scalar_count))
    lines.extend([
        "",
        f"theorem {name}FullAggregatePsdBlockRanges_chain :",
        f"    LinExpr.FinRangeChain 0",
        f"      {name}FullAggregatePsdBlockRanges",
        f"      {block_count} := by",
    ])
    lines.extend(fin_range_chain_proof_lines(psd_ranges, block_count))
    lines.extend([
        "",
        f"def {name}FullAggregateScalarRangeFold : LinExpr (BinaryOrbitIndex {n}) :=",
        f"  LinExpr.foldFinRanges {name}FullAggregateScalarRangeTerm",
        f"    {name}FullAggregateScalarChunkRanges",
        "",
        f"def {name}FullAggregatePsdRangeFold : LinExpr (BinaryOrbitIndex {n}) :=",
        f"  LinExpr.foldFinRanges {name}FullAggregatePsdRangeTerm",
        f"    {name}FullAggregatePsdBlockRanges",
        "",
        f"def {name}FullAggregateScalarSemanticFold : LinExpr (BinaryOrbitIndex {n}) :=",
    ])
    lines.extend(nested_linexpr_add_lines(
        scalar_exprs,
        f"LinExpr.constExpr (BinaryOrbitIndex {n}) 0",
    ))
    lines.extend([
        "",
        f"def {name}FullAggregatePsdSemanticFold : LinExpr (BinaryOrbitIndex {n}) :=",
    ])
    lines.extend(nested_linexpr_add_lines(
        psd_exprs,
        f"LinExpr.constExpr (BinaryOrbitIndex {n}) 0",
    ))
    lines.extend([
        "",
        f"def {name}FullAggregateComponentSemanticFold : LinExpr (BinaryOrbitIndex {n}) :=",
        "  LinExpr.add",
        f"    {name}FullAggregateScalarSemanticFold",
        f"    {name}FullAggregatePsdSemanticFold",
        "",
    ])
    scalar_chunk_semantic_theorems: list[str] = []
    for idx, _item in enumerate(scalar_chunks):
        theorem_name = f"{name}FullAggregateScalarChunkData{idx}_semantic"
        scalar_chunk_semantic_theorems.append(theorem_name)
        lines.extend([
            f"theorem {theorem_name} :",
            f"    linExprOfSparseDataByFin {orbit_to_fin}",
            f"      {name}FullAggregateScalarChunkData{idx} =",
            f"      {name}FullAggregateScalarChunkSemanticExpr{idx} := by",
            f"  unfold {name}FullAggregateScalarChunkData{idx}",
            f"  exact linExprOfSparseDataByFin_ofLinExprByFin",
            f"    {orbit_to_fin}",
            f"    {orbit_of_fin}",
            f"    {name}FullAggregateScalarChunkSemanticExpr{idx}",
            f"    {orbit_of_fin_to_fin}",
            "",
        ])
    lines.extend([
        f"theorem {name}FullAggregateScalarComponentData_semantic :",
        f"    linExprOfSparseDataByFin {orbit_to_fin}",
        f"      {name}FullAggregateScalarComponentData =",
        f"      {name}FullAggregateScalarSemanticFold := by",
    ])
    if scalar_chunk_semantic_theorems:
        lines.extend([
            "  simp [",
            "    linExprOfSparseDataByFin_listSum,",
            f"    {name}FullAggregateScalarComponentData,",
            f"    {name}FullAggregateScalarSemanticFold,",
        ])
        for theorem in scalar_chunk_semantic_theorems[:-1]:
            lines.append(f"    {theorem},")
        lines.append(f"    {scalar_chunk_semantic_theorems[-1]}]")
    else:
        lines.extend([
            "  simpa [",
            f"    {name}FullAggregateScalarComponentData,",
            f"    {name}FullAggregateScalarSemanticFold,",
            "    SparseLinExprData.zero,",
            "    ] using",
            f"    (linExprOfSparseDataByFin_zero (n := {full_vars}) {orbit_to_fin})",
        ])
    lines.append("")
    psd_component_semantic_theorems: list[str] = []
    for block_idx, _item in enumerate(psd_components):
        theorem_name = f"{name}FullAggregatePsdComponentData{block_idx}_semantic"
        psd_component_semantic_theorems.append(theorem_name)
        block = f"(⟨{block_idx}, by omega⟩ : {name}Block)"
        lines.extend([
            f"theorem {theorem_name} :",
            f"    linExprOfSparseDataByFin {orbit_to_fin}",
            f"      {name}FullAggregatePsdComponentData{block_idx} =",
            f"      MatrixLinExpr.innerExpr ({name}DualMatrix {block})",
            f"        ({name}FullMatrixAtomExpr {block}) := by",
            f"  unfold {name}FullAggregatePsdComponentData{block_idx}",
            f"  simpa [{name}FullAggregatePsdRangeTerm] using",
            f"    (linExprOfSparseDataByFin_ofLinExprByFin",
            f"      {orbit_to_fin}",
            f"      {orbit_of_fin}",
            f"      ({name}FullAggregatePsdRangeTerm {block})",
            f"      {orbit_of_fin_to_fin})",
            "",
        ])
    component_semantic_theorems = [
        f"{name}FullAggregateScalarComponentData_semantic",
        *psd_component_semantic_theorems,
    ]
    lines.extend([
        f"theorem {name}FullAggregateComponentTargetData_eq_componentSemanticFold :",
        f"    linExprOfSparseDataByFin {orbit_to_fin}",
        f"      {target_name} =",
        f"      {name}FullAggregateComponentSemanticFold := by",
        "  simp [",
        "    linExprOfSparseDataByFin_listSum,",
        f"    {target_name},",
        f"    {name}FullAggregateComponentSemanticFold,",
        f"    {name}FullAggregatePsdSemanticFold,",
    ])
    for theorem in component_semantic_theorems[:-1]:
        lines.append(f"    {theorem},")
    lines.extend([
        f"    {component_semantic_theorems[-1]}]",
        "",
        f"theorem {name}FullAggregateScalarRangePartition :",
        f"    LinExpr.sum Finset.univ {name}FullAggregateScalarRangeTerm =",
        f"      {name}FullAggregateScalarRangeFold := by",
        f"  exact LinExpr.sum_fin_univ_eq_foldFinRanges",
        f"    {name}FullAggregateScalarRangeTerm",
        f"    {name}FullAggregateScalarChunkRanges",
        f"    {name}FullAggregateScalarChunkRanges_chain",
        "",
        f"theorem {name}FullAggregatePsdRangePartition :",
        f"    LinExpr.sum Finset.univ {name}FullAggregatePsdRangeTerm =",
        f"      {name}FullAggregatePsdRangeFold := by",
        f"  exact LinExpr.sum_fin_univ_eq_foldFinRanges",
        f"    {name}FullAggregatePsdRangeTerm",
        f"    {name}FullAggregatePsdBlockRanges",
        f"    {name}FullAggregatePsdBlockRanges_chain",
        "",
        f"theorem {name}FullAggregateScalarSemanticFold_eq_rangeFold :",
        f"    {name}FullAggregateScalarSemanticFold =",
        f"      {name}FullAggregateScalarRangeFold := by",
        f"  unfold {name}FullAggregateScalarSemanticFold",
        f"  unfold {name}FullAggregateScalarRangeFold",
        f"  unfold {name}FullAggregateScalarChunkRanges LinExpr.foldFinRanges",
        "  rw [",
    ])
    for theorem in scalar_bridge_theorems[:-1]:
        lines.append(f"    {theorem},")
    if scalar_bridge_theorems:
        lines.append(f"    {scalar_bridge_theorems[-1]}]")
    else:
        lines.append("    ]")
    lines.extend([
        "  rfl",
        "",
    ])
    for start, end in psd_ranges:
        lines.extend([
            f"theorem {name}FullAggregatePsdRangeTerm_single{start} :",
            f"    LinExpr.sumFinRange {name}FullAggregatePsdRangeTerm",
            f"      {start} {end} =",
            f"      {name}FullAggregatePsdRangeTerm",
            f"        (⟨{start}, by omega⟩ : {name}Block) := by",
            f"  rw [LinExpr.sumFinRange_eq_fin_sum_shift",
            f"    (n := {block_count}) (start := {start}) (len := 1)",
            f"    {name}FullAggregatePsdRangeTerm (by decide)]",
            "  apply LinExpr.ext_coeff_const",
            "  · intro idx",
            "    simp [LinExpr.sum, LinExpr.finShiftEmbedding]",
            "  · simp [LinExpr.sum, LinExpr.finShiftEmbedding]",
            "",
        ])
    lines.extend([
        "/--",
        "Generated scalar bridge from semantic chunk folds to range folds.",
        "Ordinary chunks use range bridges; matrix-cut chunks use source-group",
        "bridges when that generator mode is enabled.",
        "-/",
        f"theorem {name}FullAggregateScalarRange_bridge :",
        f"    {name}FullAggregateScalarSemanticFold =",
        f"      {name}FullAggregateScalarRangeFold := by",
        f"  exact {name}FullAggregateScalarSemanticFold_eq_rangeFold",
        "",
        f"theorem {name}FullAggregatePsdRange_bridge :",
        f"    {name}FullAggregatePsdSemanticFold =",
        f"      {name}FullAggregatePsdRangeFold := by",
        f"  simp [{name}FullAggregatePsdSemanticFold,",
        f"    {name}FullAggregatePsdRangeFold,",
        f"    {name}FullAggregatePsdBlockRanges,",
        f"    {name}FullAggregatePsdRangeTerm,",
        "    LinExpr.foldFinRanges,",
    ])
    for start, _end in psd_ranges[:-1]:
        lines.append(f"    {name}FullAggregatePsdRangeTerm_single{start},")
    if psd_ranges:
        lines.append(
            f"    {name}FullAggregatePsdRangeTerm_single{psd_ranges[-1][0]}]"
        )
    else:
        lines.append("    ]")
    lines.extend([
        "",
        f"theorem {name}FullAggregateComponentSemanticFold_eq_fullDualExpression_of_rangeBridges",
        f"    (hmatrixCutBridge :",
        f"      {name}FullAggregateScalarSemanticFold =",
        f"        {name}FullAggregateScalarRangeFold) :",
        f"    {name}FullAggregateComponentSemanticFold =",
        f"      {name}FullDualExpression := by",
        f"  unfold {name}FullAggregateComponentSemanticFold",
        f"  rw [hmatrixCutBridge, {name}FullAggregatePsdRange_bridge]",
        f"  rw [← {name}FullAggregateScalarRangePartition,",
        f"    ← {name}FullAggregatePsdRangePartition]",
        f"  rw [{name}FullDualExpression]",
        "  unfold sdpDualExpression",
        "  apply LinExpr.ext_coeff_const",
        "  · intro idx",
        f"    simp [LinExpr.add, LinExpr.constExpr, LinExpr.sum,",
        f"      {name}FullAggregateScalarRangeTerm,",
        f"      {name}FullAggregatePsdRangeTerm]",
        f"  · simp [LinExpr.add, LinExpr.constExpr, LinExpr.sum,",
        f"      {name}FullAggregateScalarRangeTerm,",
        f"      {name}FullAggregatePsdRangeTerm]",
        "",
        f"theorem {name}FullAggregateComponentSemanticFold_eq_fullDualExpression :",
        f"    {name}FullAggregateComponentSemanticFold =",
        f"      {name}FullDualExpression := by",
        f"  exact {name}FullAggregateComponentSemanticFold_eq_fullDualExpression_of_rangeBridges",
        f"    {name}FullAggregateScalarRange_bridge",
        "",
        "/--",
        "Structural extraction skeleton for the final full aggregate semantic",
        "boundary.  The generated component-fold proof provides `hcomponent`,",
        "and the range/source bridges provide `hpartition`.",
        "-/",
        f"theorem {name}FullAggregateDualExpression_semantic_of_partition",
        f"    (hcomponent :",
        f"      linExprOfSparseDataByFin {orbit_to_fin}",
        f"        {target_name} =",
        f"        {name}FullAggregateComponentSemanticFold)",
        f"    (hindex : forall idx : Fin {full_vars},",
        f"      {orbit_to_fin}",
        f"        ({orbit_of_fin} idx) = idx)",
        f"    (hpartition :",
        f"      {name}FullAggregateComponentSemanticFold =",
        f"        {name}FullDualExpression) :",
        f"    (linExprOfSparseData {target_name}).const =",
        f"        {name}FullDualExpression.const ∧",
        f"      (forall idx : Fin {full_vars},",
        f"        (linExprOfSparseData {target_name}).coeff idx =",
        f"          {name}FullDualExpression.coeff",
        f"            ({orbit_of_fin} idx)) := by",
        "  constructor",
        "  · have h := congrArg (fun e => e.const) (hcomponent.trans hpartition)",
        "    simpa [linExprOfSparseDataByFin] using h",
        "  · intro idx",
        "    have h := congrArg",
        f"      (fun e => e.coeff ({orbit_of_fin} idx))",
        "      (hcomponent.trans hpartition)",
        "    simpa [linExprOfSparseDataByFin, hindex idx] using h",
        "",
        f"theorem {name}FullAggregateDualExpression_semantic_of_rangeBridges",
        f"    (hcomponent :",
        f"      linExprOfSparseDataByFin {orbit_to_fin}",
        f"        {target_name} =",
        f"        {name}FullAggregateComponentSemanticFold)",
        f"    (hindex : forall idx : Fin {full_vars},",
        f"      {orbit_to_fin}",
        f"        ({orbit_of_fin} idx) = idx)",
        f"    (hmatrixCutBridge :",
        f"      {name}FullAggregateScalarSemanticFold =",
        f"        {name}FullAggregateScalarRangeFold) :",
        f"    (linExprOfSparseData {target_name}).const =",
        f"        {name}FullDualExpression.const ∧",
        f"      (forall idx : Fin {full_vars},",
        f"        (linExprOfSparseData {target_name}).coeff idx =",
        f"          {name}FullDualExpression.coeff",
        f"            ({orbit_of_fin} idx)) := by",
        f"  exact {name}FullAggregateDualExpression_semantic_of_partition",
        "    hcomponent",
        "    hindex",
        f"    ({name}FullAggregateComponentSemanticFold_eq_fullDualExpression_of_rangeBridges",
        "      hmatrixCutBridge)",
        "",
        f"theorem {name}FullAggregateDualExpression_semantic",
        f"    (hcomponent :",
        f"      linExprOfSparseDataByFin {orbit_to_fin}",
        f"        {target_name} =",
        f"        {name}FullAggregateComponentSemanticFold)",
        f"    (hindex : forall idx : Fin {full_vars},",
        f"      {orbit_to_fin}",
        f"        ({orbit_of_fin} idx) = idx) :",
        f"    (linExprOfSparseData {target_name}).const =",
        f"        {name}FullDualExpression.const ∧",
        f"      (forall idx : Fin {full_vars},",
        f"        (linExprOfSparseData {target_name}).coeff idx =",
        f"          {name}FullDualExpression.coeff",
        f"            ({orbit_of_fin} idx)) := by",
        f"  exact {name}FullAggregateDualExpression_semantic_of_partition",
        "    hcomponent",
        "    hindex",
        f"    {name}FullAggregateComponentSemanticFold_eq_fullDualExpression",
        "",
        f"theorem {name}FullAggregateDualExpression_semantic_of_component",
        f"    (hcomponent :",
        f"      linExprOfSparseDataByFin {orbit_to_fin}",
        f"        {target_name} =",
        f"        {name}FullAggregateComponentSemanticFold) :",
        f"    (linExprOfSparseData {target_name}).const =",
        f"        {name}FullDualExpression.const ∧",
        f"      (forall idx : Fin {full_vars},",
        f"        (linExprOfSparseData {target_name}).coeff idx =",
        f"          {name}FullDualExpression.coeff",
        f"            ({orbit_of_fin} idx)) := by",
        f"  exact {name}FullAggregateDualExpression_semantic",
        "    hcomponent",
        f"    {orbit_to_fin_of_fin}",
        "",
        f"theorem {name}FullAggregateDualExpression_const_semantic_of_component",
        f"    (hcomponent :",
        f"      linExprOfSparseDataByFin {orbit_to_fin}",
        f"        {target_name} =",
        f"        {name}FullAggregateComponentSemanticFold) :",
        f"    (linExprOfSparseData {target_name}).const =",
        f"      {name}FullDualExpression.const := by",
        f"  exact ({name}FullAggregateDualExpression_semantic_of_component",
        "    hcomponent).1",
        "",
        f"theorem {name}FullAggregateDualExpression_coeff_semantic_of_component",
        f"    (hcomponent :",
        f"      linExprOfSparseDataByFin {orbit_to_fin}",
        f"        {target_name} =",
        f"        {name}FullAggregateComponentSemanticFold)",
        f"    (idx : Fin {full_vars}) :",
        f"    (linExprOfSparseData {target_name}).coeff idx =",
        f"      {name}FullDualExpression.coeff",
        f"        ({orbit_of_fin} idx) := by",
        f"  exact ({name}FullAggregateDualExpression_semantic_of_component",
        "    hcomponent).2 idx",
        "",
        f"theorem {name}FullAggregateComponentTarget_const_semantic :",
        f"    (linExprOfSparseData {target_name}).const =",
        f"      {name}FullDualExpression.const := by",
        f"  exact {name}FullAggregateDualExpression_const_semantic_of_component",
        f"    {name}FullAggregateComponentTargetData_eq_componentSemanticFold",
        "",
        f"theorem {name}FullAggregateComponentTarget_coeff_semantic",
        f"    (idx : Fin {full_vars}) :",
        f"    (linExprOfSparseData {target_name}).coeff idx =",
        f"      {name}FullDualExpression.coeff",
        f"        ({orbit_of_fin} idx) := by",
        f"  exact {name}FullAggregateDualExpression_coeff_semantic_of_component",
        f"    {name}FullAggregateComponentTargetData_eq_componentSemanticFold",
        "    idx",
        "",
        f"theorem {name}FullAggregateComponentTargetData_coeffSum_fullDual",
        f"    (indices : Finset (Fin {full_vars})) :",
        f"    {target_name}.coeffSum indices =",
        f"      indices.sum (fun idx =>",
        f"        {name}FullDualExpression.coeff ({orbit_of_fin} idx)) := by",
        "  rw [SparseLinExprData.coeffSum_eq_sum_coeff]",
        "  apply Finset.sum_congr rfl",
        "  intro idx _hidx",
        f"  exact {name}FullAggregateComponentTarget_coeff_semantic idx",
        "",
        f"theorem {name}FullAggregateComponentTargetData_byFin_semantic :",
        f"    linExprOfSparseDataByFin {orbit_to_fin}",
        f"      {target_name} =",
        f"      {name}FullDualExpression := by",
        "  apply LinExpr.ext_coeff_const",
        "  · intro idx",
        f"    have h := {name}FullAggregateComponentTarget_coeff_semantic",
        f"      ({orbit_to_fin} idx)",
        f"    simpa [linExprOfSparseDataByFin, linExprOfSparseData,",
        f"      {orbit_of_fin}_toFin] using h",
        "  · simpa [linExprOfSparseDataByFin, linExprOfSparseData] using",
        f"      {name}FullAggregateComponentTarget_const_semantic",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "FullAggregateSemantic.lean", lines)


def generate_split_modules(
    exact: dict[str, Any],
    expr_data: dict[str, Any],
    output_dir: Path,
    module_prefix: str,
    name: str,
    scalar_chunk_size: int,
    component_eq_chunk_size: int,
    scalar_component_eq_chunk_size: int,
    scalar_semantic_coeff_chunk_size: int,
    scalar_semantic_atom_chunk_size: int,
    scalar_semantic_matrix_cut_atom_chunk_size: int,
    scalar_semantic_nonmatrix_only: bool,
    scalar_semantic_matrix_cut_only: bool,
    scalar_semantic_matrix_cut_source_groups: bool,
    scalar_semantic_chunk_start: int | None,
    scalar_semantic_chunk_end: int | None,
    psd_semantic_chunk_size: int,
    semantic_bridge_module: str | None,
    compact_semantic_coeff_chunk_size: int,
    compact_full_sparse_semantic: bool,
    full_aggregate_semantic_coeff_chunk_size: int,
    compact_objective_eq_chunk_size: int,
    full_aggregate_semantic_structural: bool,
    compact_direct_quotient_certificate: bool,
    compact_component_semantic: bool,
    compact_component_semantic_coeff_chunk_size: int,
    compact_scalar_component_semantic_coeff_chunk_size: int,
    compact_component_eq_chunk_size: int,
    compact_scalar_group_size: int,
    compact_scalar_source_data: bool,
    compact_scalar_source_semantic: bool,
    compact_scalar_source_derived_data: bool,
    compact_scalar_source_chunk_size: int,
    full_objective_eq_chunk_size: int,
    trivial_compact_bridge: bool,
) -> None:
    n = int(exact["n"])
    r = int(exact["r"])
    qvars = int(exact["variable_count"])
    support_config = binary_compact_support_config(n, r, qvars, name)
    scalar_count = int(exact["constraint_counts"]["scalar"])
    block_count = int(exact["constraint_counts"]["psd"])
    scale = Fraction(2) ** n
    block_sizes = [int(record["size"]) for record in exact["weighted_ldl"]]
    block_ranks = [int(record["rank"]) for record in exact["weighted_ldl"]]
    raw_bound = frac_from_json(exact["raw_bound"])
    scaled_bound = scale * raw_bound
    l_value = int(exact["target_L"])
    aggregate_dual_expression = exact.get("aggregate_dual_expression")
    full_aggregate_dual_expression = exact.get("full_aggregate_dual_expression")
    if (
        (
            compact_semantic_coeff_chunk_size > 0
            or compact_full_sparse_semantic
            or compact_direct_quotient_certificate
            or compact_component_semantic
        )
        and aggregate_dual_expression is None
    ):
        raise ValueError(
            "compact semantic routes require aggregate_dual_expression"
        )
    if compact_full_sparse_semantic and full_aggregate_dual_expression is None:
        raise ValueError(
            "compact full-sparse semantic route requires "
            "full_aggregate_dual_expression"
        )
    component_plan: dict[str, Any] | None = None
    if compact_component_semantic or compact_full_sparse_semantic:
        component_plan = build_compact_component_quotient_plan(
            exact,
            name,
            qvars,
            support_config.full_vars,
            scale,
            binary_compact_quotient_fibers(support_config),
            compact_scalar_group_size,
        )
    validate_weighted_ldl_blocks(exact, scale)

    objective_coeffs_map = objective_coeff_map(expr_data, qvars, scale)
    objective_coeffs = [
        objective_coeffs_map.get(idx, Fraction(0))
        for idx in range(qvars)
    ]
    objective_terms = [
        f"({idx}, {lean_rat(value)})"
        for idx, value in enumerate(objective_coeffs)
        if value
    ]

    core_imports = [
        "CoveringCodes.SDP.GijswijtPolak2025.BinaryQuotientTableSDP",
        support_config.support_module,
    ]
    core = module_prelude(core_imports, f"Generated quotient SDP core for ({2},{n},{r})")
    core.extend([
        f"abbrev {name}QVar := Fin {qvars}",
        f"abbrev {name}LinAtom := Fin {scalar_count}",
        f"abbrev {name}Block := Fin {block_count}",
        "",
        f"def {name}BlockSize : {name}Block -> Nat",
    ])
    for idx, size in enumerate(block_sizes):
        core.append(f"  | ⟨{idx}, _⟩ => {size}")
    core.extend([
        f"  | ⟨m + {block_count}, h⟩ => by omega",
        "",
        f"abbrev {name}BlockCoord (b : {name}Block) := Fin ({name}BlockSize b)",
        "",
        f"def {name}WeightSize : {name}Block -> Nat",
    ])
    for idx, rank in enumerate(block_ranks):
        core.append(f"  | ⟨{idx}, _⟩ => {rank}")
    core.extend([
        f"  | ⟨m + {block_count}, h⟩ => by omega",
        "",
        f"abbrev {name}WeightCoord (b : {name}Block) := Fin ({name}WeightSize b)",
        "",
        f"def sparseLinExpr {{m : Nat}} (const : Rat) (terms : List (Nat × Rat)) :",
        "    LinExpr (Fin m) where",
        "  coeff i := terms.foldl",
        "    (fun acc term => if term.1 = i.val then acc + term.2 else acc) 0",
        "  const := const",
        "",
        f"def {name}Objective : LinExpr {name}QVar :=",
        f"  sparseLinExpr 0 [{', '.join(objective_terms)}]",
        "",
    ])
    if aggregate_dual_expression is not None:
        core.extend([
            f"def {name}CompactDualExpression : LinExpr {name}QVar :=",
            f"  {expr_from_exact_coeffs(aggregate_dual_expression, scale)}",
            "",
        ])
    core.extend([
        f"def {name}ScaledBound : Rat := {lean_rat(scaled_bound)}",
        "",
    ])
    core.extend(module_postlude())
    write_module(output_dir / "Core.lean", core)
    generate_quotient_fiber_module(output_dir, module_prefix, support_config)

    scalar_modules: list[str] = []
    for chunk, start in enumerate(range(0, scalar_count, scalar_chunk_size)):
        end = min(start + scalar_chunk_size, scalar_count)
        module_name = f"{module_prefix}.Linear{chunk}"
        scalar_modules.append(module_name)
        lines = module_prelude([f"{module_prefix}.Core"], f"Generated scalar chunk {chunk}")
        lines.append(f"def {name}LinearAtomExprChunk{chunk} (idx : Nat) : LinExpr {name}QVar :=")
        lines.append("  match idx with")
        for idx in range(start, end):
            record = expr_data["scalar_constraints"][idx]
            lines.append(f"  | {idx} => {expr_from_export(record['expr'])}")
        lines.append("  | _ => sparseLinExpr 0 []")
        lines.append("")
        lines.extend(module_postlude())
        write_module(output_dir / f"Linear{chunk}.lean", lines)

    block_modules: list[str] = []
    for idx, record in enumerate(expr_data["psd_constraints"]):
        module_name = f"{module_prefix}.Block{idx}"
        block_modules.append(module_name)
        lines = module_prelude([f"{module_prefix}.Core"], f"Generated PSD block {idx}")
        size = block_sizes[idx]
        lines.append(
            f"def {name}MatrixAtomExprBlock{idx} : Matrix (Fin {size}) (Fin {size})"
            f" (LinExpr {name}QVar) :="
        )
        lines.extend([line[6:] if line.startswith("      ") else line
            for line in matrix_expr_cases(record["matrix_expr"], Fraction(1))])
        lines.append("")
        diag = [frac_from_json(value) for value in exact["weighted_ldl"][idx]["diag"]]
        rows = [
            [frac_from_json(entry) for entry in row]
            for row in exact["weighted_ldl"][idx]["rows"]
        ]
        lines.extend(weight_l_def_lines(
            f"{name}DualMatrixBlock{idx}L",
            block_ranks[idx],
            size,
            rows,
        ))
        lines.extend(weight_diag_def_lines(
            f"{name}DualMatrixBlock{idx}Diag",
            block_ranks[idx],
            diag,
            scale,
        ))
        lines.append(
            f"def {name}DualMatrixBlock{idx} : Matrix (Fin {size}) (Fin {size}) Rat :="
        )
        lines.append(
            f"  weightedGramMatrix {name}DualMatrixBlock{idx}L "
            f"{name}DualMatrixBlock{idx}Diag"
        )
        lines.append("")
        lines.extend(module_postlude())
        write_module(output_dir / f"Block{idx}.lean", lines)

    all_imports = [f"{module_prefix}.Core", *scalar_modules, *block_modules]
    lines = module_prelude(all_imports, f"Generated quotient SDP data for ({2},{n},{r})")
    lines.append(f"def {name}LinearAtomExprNat (idx : Nat) : LinExpr {name}QVar :=")
    if scalar_count == 0:
        lines.append("  sparseLinExpr 0 []")
    else:
        for chunk, start in enumerate(range(0, scalar_count, scalar_chunk_size)):
            end = min(start + scalar_chunk_size, scalar_count)
            prefix = "  " if chunk == 0 else "  else "
            lines.append(
                f"{prefix}if idx < {end} then {name}LinearAtomExprChunk{chunk} idx"
            )
        lines.append("  else sparseLinExpr 0 []")
    lines.extend([
        "",
        f"def {name}LinearAtomExpr : {name}LinAtom -> LinExpr {name}QVar",
        f"  | idx => {name}LinearAtomExprNat idx.val",
        "",
        f"def {name}MatrixAtomExpr : forall b : {name}Block,",
        f"    Matrix ({name}BlockCoord b) ({name}BlockCoord b) (LinExpr {name}QVar)",
    ])
    for idx in range(block_count):
        lines.append(f"  | ⟨{idx}, _⟩ => {name}MatrixAtomExprBlock{idx}")
    lines.extend([
        f"  | ⟨m + {block_count}, h⟩ => by omega",
        "",
        f"def {name}DualMatrix : forall b : {name}Block,",
        f"    Matrix ({name}BlockCoord b) ({name}BlockCoord b) Rat",
    ])
    for idx in range(block_count):
        lines.append(f"  | ⟨{idx}, _⟩ => {name}DualMatrixBlock{idx}")
    lines.extend([
        f"  | ⟨m + {block_count}, h⟩ => by omega",
        "",
        f"def {name}Model :",
        f"    BinaryQuotientTableModel {n} {r} {name}QVar {name}LinAtom",
        f"      {name}Block {name}BlockCoord where",
        f"  objective := {name}Objective",
        f"  linearAtoms := {name}LinearAtomExpr",
        f"  matrixAtoms := {name}MatrixAtomExpr",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "Data.lean", lines)

    multiplier_modules: list[str] = []
    for chunk, start in enumerate(range(0, scalar_count, scalar_chunk_size)):
        end = min(start + scalar_chunk_size, scalar_count)
        module_name = f"{module_prefix}.Multiplier{chunk}"
        multiplier_modules.append(module_name)
        lines = module_prelude([f"{module_prefix}.Core"], f"Generated multiplier chunk {chunk}")
        lines.append(f"def {name}LinearMultiplierNNChunk{chunk} (idx : Nat) : NNRat :=")
        lines.append("  match idx with")
        for idx in range(start, end):
            record = exact["scalar_multipliers"][idx]
            lines.append(f"  | {idx} => {lean_nnrat(scale * frac_from_json(record['value']))}")
        lines.append("  | _ => 0")
        lines.extend([
            "",
            f"def {name}LinearMultiplierChunk{chunk} (idx : Nat) : Rat :=",
            f"  ({name}LinearMultiplierNNChunk{chunk} idx : Rat)",
            "",
            f"theorem {name}LinearMultiplierChunk{chunk}_nonneg (idx : Nat) :",
            f"    0 <= {name}LinearMultiplierChunk{chunk} idx := by",
            f"  exact NNRat.cast_nonneg ({name}LinearMultiplierNNChunk{chunk} idx)",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / f"Multiplier{chunk}.lean", lines)

    lines = module_prelude(
        [f"{module_prefix}.Core", *multiplier_modules],
        f"Generated scalar multipliers for ({2},{n},{r})",
    )
    lines.append(f"def {name}LinearMultiplierNNNat (idx : Nat) : NNRat :=")
    if scalar_count == 0:
        lines.append("  0")
    else:
        for chunk, start in enumerate(range(0, scalar_count, scalar_chunk_size)):
            end = min(start + scalar_chunk_size, scalar_count)
            prefix = "  " if chunk == 0 else "  else "
            lines.append(
                f"{prefix}if idx < {end} then {name}LinearMultiplierNNChunk{chunk} idx"
            )
        lines.append("  else 0")
    lines.append("")
    lines.append(f"def {name}LinearMultiplierNat (idx : Nat) : Rat :=")
    lines.append(f"  ({name}LinearMultiplierNNNat idx : Rat)")
    lines.extend([
        "",
        f"def {name}LinearMultiplier : {name}LinAtom -> Rat",
        f"  | idx => {name}LinearMultiplierNat idx.val",
        "",
        f"theorem {name}LinearMultiplier_nonneg :",
        f"    forall a : {name}LinAtom, 0 <= {name}LinearMultiplier a := by",
        "  intro a",
        f"  exact NNRat.cast_nonneg ({name}LinearMultiplierNNNat a.val)",
        "",
    ])
    lines.extend(module_postlude())
    write_module(output_dir / "Multiplier.lean", lines)

    weight_modules: list[str] = []
    for idx, record in enumerate(exact["weighted_ldl"]):
        module_name = f"{module_prefix}.WeightBlock{idx}"
        weight_modules.append(module_name)
        size = block_sizes[idx]
        rank = block_ranks[idx]
        lines = module_prelude(
            [f"{module_prefix}.Block{idx}"],
            f"Generated weighted LDL witness for PSD block {idx}",
        )
        lines.extend(weighted_gram_certificate_lines(
            f"{name}WeightedBlock{idx}",
            size,
            rank,
            f"{name}DualMatrixBlock{idx}",
            f"{name}DualMatrixBlock{idx}L",
            f"{name}DualMatrixBlock{idx}Diag",
        ))
        lines.extend(module_postlude())
        write_module(output_dir / f"WeightBlock{idx}.lean", lines)

    lines = module_prelude(
        [f"{module_prefix}.Data", *weight_modules],
        f"Generated weighted LDL witnesses for ({2},{n},{r})",
    )
    lines.append(
        f"def {name}Weighted : forall b : {name}Block,"
    )
    lines.append(
        f"    WeightedGramEntryCertificate ({name}BlockCoord b) ({name}WeightCoord b)"
    )
    lines.append(f"      ({name}DualMatrix b)")
    for idx in range(block_count):
        lines.append(f"  | ⟨{idx}, _⟩ => {name}WeightedBlock{idx}")
    lines.append(f"  | ⟨m + {block_count}, h⟩ => by omega")
    lines.append("")
    lines.extend(module_postlude())
    write_module(output_dir / "Weighted.lean", lines)

    if trivial_compact_bridge:
        if semantic_bridge_module is not None:
            raise ValueError(
                "--trivial-compact-bridge cannot be combined with "
                "--semantic-bridge-module"
            )
        if scalar_count != 0 or block_count != 0:
            raise ValueError(
                "trivial compact bridge is only valid for zero scalar/PSD smokes"
            )
        generate_trivial_compact_bridge_module(
            output_dir,
            module_prefix,
            name,
            support_config,
        )

    if (
        compact_full_sparse_semantic
        or compact_direct_quotient_certificate
        or compact_component_semantic
    ):
        remove_stale_generated_modules(output_dir, ["Certificate.lean"])
    else:
        lines = module_prelude(
            [
                f"{module_prefix}.Data",
                f"{module_prefix}.Multiplier",
                f"{module_prefix}.Weighted",
            ],
            f"Generated quotient SDP certificate for ({2},{n},{r})",
        )
        lines.extend([
            f"def {name}ObjectiveCertificate :",
            f"    SDPObjectiveLowerWeightedCertificate {name}QVar {name}LinAtom",
            f"      {name}Block {name}BlockCoord {name}WeightCoord",
            f"      {name}LinearAtomExpr {name}MatrixAtomExpr {name}Objective",
            f"      {lean_rat(scaled_bound)} where",
            f"  linearMultiplier := {name}LinearMultiplier",
            f"  linearMultiplier_nonneg := {name}LinearMultiplier_nonneg",
            "  slack := 0",
            "  slack_nonneg := by norm_num",
            f"  dualMatrix := {name}DualMatrix",
            f"  dualMatrixWeighted := {name}Weighted",
            "  const_identity := by native_decide",
            "  coeff_identity := by native_decide",
            "",
            f"def {name}QuotientDualCertificate :",
            (
                "    BinaryQuotientTableDualCertificate "
                f"(WeightIdx := {name}WeightCoord)"
            ),
            f"      {n} {r} {l_value} {name}Model where",
            f"  bound := {lean_rat(scaled_bound)}",
            "  cubeThreshold := by norm_num",
            f"  objectiveCertificate := {name}ObjectiveCertificate",
            "",
        ])
        lines.extend(module_postlude())
        write_module(output_dir / "Certificate.lean", lines)

    if aggregate_dual_expression is not None:
        generate_compact_certificate_module(
            exact,
            expr_data,
            output_dir,
            module_prefix,
            name,
            aggregate_dual_expression,
            full_aggregate_dual_expression,
            objective_coeffs_map,
            scaled_bound,
            l_value,
            compact_semantic_coeff_chunk_size,
            compact_full_sparse_semantic,
            full_aggregate_semantic_coeff_chunk_size,
            compact_objective_eq_chunk_size,
            semantic_bridge_module,
            compact_direct_quotient_certificate,
            compact_component_semantic,
            compact_component_semantic_coeff_chunk_size,
            compact_scalar_component_semantic_coeff_chunk_size,
            compact_component_eq_chunk_size,
            compact_scalar_source_data,
            compact_scalar_source_semantic,
            compact_scalar_source_derived_data,
            compact_scalar_source_chunk_size,
            component_plan,
            support_config,
        )
        generate_compact_instance_module(
            output_dir,
            module_prefix,
            name,
            n,
            r,
            l_value,
        )
    if compact_direct_quotient_certificate:
        remove_stale_generated_modules(
            output_dir,
            [
                "FullAggregate*.lean",
                "FullObjective*.lean",
            ],
        )
    else:
        generate_full_aggregate_component_module(
            exact,
            expr_data,
            output_dir,
            module_prefix,
            name,
            component_eq_chunk_size,
            scalar_component_eq_chunk_size,
            scalar_semantic_coeff_chunk_size,
            scalar_semantic_atom_chunk_size,
            scalar_semantic_matrix_cut_atom_chunk_size,
            scalar_semantic_nonmatrix_only,
            scalar_semantic_matrix_cut_only,
            scalar_semantic_matrix_cut_source_groups,
            scalar_semantic_chunk_start,
            scalar_semantic_chunk_end,
            psd_semantic_chunk_size,
            semantic_bridge_module,
            full_aggregate_semantic_structural,
            support_config,
        )
        generate_full_objective_data_module(
            exact,
            output_dir,
            module_prefix,
            name,
            scaled_bound,
            support_config,
            semantic_bridge_module or f"{module_prefix}.CompactBridge",
        )
        generate_full_objective_subconst_modules(
            exact,
            output_dir,
            module_prefix,
            name,
            scaled_bound,
            support_config,
            full_objective_eq_chunk_size,
        )

    remove_stale_generated_modules(
        output_dir,
        [
            "BridgeData.lean",
            "BridgeScalar*.lean",
            "BridgeScalarProof*.lean",
            "BridgeScalarDispatch*.lean",
            "BridgeMatrix*.lean",
        ],
    )
    fallback_scalar_atom = (
        f"BinaryTableScalarAtom.nonneg {binary_orbit_const_name(n, 0, 0, 0)}"
    )
    lines = module_prelude(
        [f"{module_prefix}.Data"],
        f"Generated quotient-to-full Table 1 atom maps for ({2},{n},{r})",
    )
    for chunk, start in enumerate(range(0, scalar_count, scalar_chunk_size)):
        end = min(start + scalar_chunk_size, scalar_count)
        lines.append(
            f"def {name}FullScalarAtomChunk{chunk} (idx : Nat) : "
            f"BinaryTableScalarAtom {n} {r} :="
        )
        lines.append("  match idx with")
        for idx in range(start, end):
            record = expr_data["scalar_constraints"][idx]
            lines.append(f"  | {idx} => {full_scalar_atom_case(n, record)}")
        lines.append(f"  | _ => {fallback_scalar_atom}")
        lines.append("")

    matrix_cases = [
        f"  | ⟨{idx}, _⟩ => {full_matrix_atom_case(n, record)}"
        for idx, record in enumerate(expr_data["psd_constraints"])
    ]
    lines.append(
        f"def {name}FullScalarAtomNat (idx : Nat) : BinaryTableScalarAtom {n} {r} :="
    )
    for chunk, start in enumerate(range(0, scalar_count, scalar_chunk_size)):
        end = min(start + scalar_chunk_size, scalar_count)
        prefix = "  " if chunk == 0 else "  else "
        lines.append(f"{prefix}if idx < {end} then {name}FullScalarAtomChunk{chunk} idx")
    lines.append(f"  else {fallback_scalar_atom}")
    lines.extend([
        "",
        f"def {name}FullScalarAtom : {name}LinAtom -> BinaryTableScalarAtom {n} {r}",
        f"  | idx => {name}FullScalarAtomNat idx.val",
        "",
    ])
    lines.extend(fin_function(
        f"{name}FullMatrixAtom",
        block_count,
        f"BinaryTableMatrixAtom {n} {r}",
        matrix_cases,
    ))
    lines.extend(module_postlude())
    write_module(output_dir / "BridgeAtoms.lean", lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("exact_json", type=Path)
    parser.add_argument("--expressions-json", type=Path)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--name", default="binaryK2_13_1")
    parser.add_argument(
        "--split-dir",
        type=Path,
        default=None,
        help="emit split generated modules into this directory",
    )
    parser.add_argument(
        "--module-prefix",
        default="CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1",
        help="Lean module prefix used by --split-dir outputs",
    )
    parser.add_argument("--scalar-chunk-size", type=int, default=400)
    parser.add_argument(
        "--component-eq-chunk-size",
        type=int,
        default=0,
        help=(
            "emit full aggregate component target equality chunks of this size; "
            "0 disables these proof modules"
        ),
    )
    parser.add_argument(
        "--scalar-component-eq-chunk-size",
        type=int,
        default=0,
        help=(
            "emit full aggregate scalar chunk sum equality chunks of this size; "
            "0 disables these proof modules"
        ),
    )
    parser.add_argument(
        "--scalar-semantic-coeff-chunk-size",
        type=int,
        default=0,
        help=(
            "emit full aggregate scalar chunk semantic equality chunks of this "
            "many full-orbit coefficients; 0 disables these proof modules"
        ),
    )
    parser.add_argument(
        "--scalar-semantic-atom-chunk-size",
        type=int,
        default=0,
        help=(
            "default maximum scalar atoms allowed in each generated scalar "
            "semantic chunk, and default atom count for semantic plan ranges; "
            "0 accepts existing scalar_chunks ranges as-is"
        ),
    )
    parser.add_argument(
        "--scalar-semantic-matrix-cut-atom-chunk-size",
        type=int,
        default=0,
        help=(
            "matrix-cut override for scalar semantic atom ranges; 0 uses "
            "--scalar-semantic-atom-chunk-size"
        ),
    )
    parser.add_argument(
        "--scalar-semantic-nonmatrix-only",
        action="store_true",
        help="emit scalar semantic proofs only for chunks without matrix-cut atoms",
    )
    parser.add_argument(
        "--scalar-semantic-matrix-cut-only",
        action="store_true",
        help="emit scalar semantic proofs only for chunks containing matrix-cut atoms",
    )
    parser.add_argument(
        "--scalar-semantic-matrix-cut-source-groups",
        action="store_true",
        help=(
            "prototype: emit selected matrix-cut scalar semantic chunks as "
            "source-group contributions instead of individual scalar atoms"
        ),
    )
    parser.add_argument(
        "--scalar-semantic-chunk-start",
        type=int,
        default=None,
        help=(
            "only emit scalar semantic proofs for existing scalar_chunks with "
            "index at least this value"
        ),
    )
    parser.add_argument(
        "--scalar-semantic-chunk-end",
        type=int,
        default=None,
        help=(
            "only emit scalar semantic proofs for existing scalar_chunks with "
            "index less than this value"
        ),
    )
    parser.add_argument(
        "--scalar-semantic-plan-output",
        type=Path,
        default=None,
        help=(
            "write a JSON scalar semantic chunk plan and existing scalar_chunks "
            "classification report"
        ),
    )
    parser.add_argument(
        "--scalar-semantic-plan-only",
        action="store_true",
        help="write --scalar-semantic-plan-output and skip Lean module generation",
    )
    parser.add_argument(
        "--psd-semantic-chunk-size",
        type=int,
        default=0,
        help=(
            "emit full aggregate PSD component semantic equality chunks of this "
            "many full-orbit coefficients; 0 disables these proof modules"
        ),
    )
    parser.add_argument(
        "--compact-semantic-coeff-chunk-size",
        type=int,
        default=0,
        help=(
            "emit compact aggregate semantic equality chunks of this many "
            "quotient coefficients; 0 disables these proof modules. "
            "This direct compact unfolding route is intended for tiny/synthetic "
            "probes, not the real K2 certificate"
        ),
    )
    parser.add_argument(
        "--compact-full-sparse-semantic",
        action="store_true",
        help=(
            "emit the compact certificate through compact sparse data, full "
            "aggregate sparse data, and the compact full-sparse bridge helper; "
            "uses the optional full-objective stationarity route when exact "
            "full_objective_subconst_expression is present, otherwise uses "
            "the compact/full quotient-boundary equality chunks"
        ),
    )
    parser.add_argument(
        "--compact-direct-quotient-certificate",
        action="store_true",
        help=(
            "emit the compact expression certificate directly against the "
            "quotient of the full dual expression. This route uses the "
            "CompactBridge semantic theorem and only checks quotient-variable "
            "objective coefficients"
        ),
    )
    parser.add_argument(
        "--compact-component-semantic",
        action="store_true",
        help=(
            "emit the compact certificate through quotient-domain scalar/PSD "
            "component sparse data. This avoids the full target listSum bridge "
            "and compares only explicit qvar sparse data/listSums"
        ),
    )
    parser.add_argument(
        "--compact-component-semantic-coeff-chunk-size",
        type=int,
        default=20,
        help=(
            "quotient-variable chunk size for compact component semantic "
            "coefficient proofs"
        ),
    )
    parser.add_argument(
        "--compact-scalar-component-semantic-coeff-chunk-size",
        type=int,
        default=0,
        help=(
            "optional quotient-variable chunk size override for compact scalar "
            "component semantic coefficient proofs; 0 reuses "
            "--compact-component-semantic-coeff-chunk-size"
        ),
    )
    parser.add_argument(
        "--compact-component-eq-chunk-size",
        type=int,
        default=20,
        help=(
            "quotient-variable chunk size for compact component sparse-data "
            "equality proofs"
        ),
    )
    parser.add_argument(
        "--compact-scalar-group-size",
        type=int,
        default=16,
        help=(
            "number of scalar chunks per generated compact scalar group; "
            "keeps scalar listSum equality proofs hierarchical"
        ),
    )
    parser.add_argument(
        "--compact-scalar-source-chunk-size",
        type=int,
        default=32,
        help=(
            "number of scalar source groups per planned compact source chunk; "
            "used by --compact-scalar-source-plan-output"
        ),
    )
    parser.add_argument(
        "--compact-scalar-source-data",
        action="store_true",
        help=(
            "with --compact-component-semantic, emit experimental compact "
            "scalar source chunk data and a checked source-sum equality module"
        ),
    )
    parser.add_argument(
        "--compact-scalar-source-derived-data",
        action="store_true",
        help=(
            "with --compact-scalar-source-data, emit a separate source "
            "semantic data layer by SparseLinExprData.ofLinExprByFin from "
            "source contribution expressions; literal source chunk data is "
            "kept for the checked source-sum equality"
        ),
    )
    parser.add_argument(
        "--compact-scalar-source-semantic",
        action="store_true",
        help=(
            "with --compact-component-semantic and "
            "--compact-scalar-source-data, emit an experimental compact scalar "
            "source semantic route and make CompactSemantic use the "
            "source-sum equality instead of CompactScalarGroup*Semantic files"
        ),
    )
    parser.add_argument(
        "--compact-scalar-source-plan-output",
        type=Path,
        default=None,
        help=(
            "write a JSON compact scalar source-group route plan and exact "
            "qvar-component validation report"
        ),
    )
    parser.add_argument(
        "--compact-scalar-source-plan-only",
        action="store_true",
        help=(
            "write --compact-scalar-source-plan-output and skip Lean module "
            "generation"
        ),
    )
    parser.add_argument(
        "--compact-objective-eq-chunk-size",
        type=int,
        default=40,
        help=(
            "emit compact objective equality chunks of this many quotient "
            "coefficients; used by compact certificate routes"
        ),
    )
    parser.add_argument(
        "--full-objective-eq-chunk-size",
        type=int,
        default=20,
        help=(
            "emit full-objective stationarity chunks of this many full-orbit "
            "coefficients when full_objective_subconst_expression is present"
        ),
    )
    parser.add_argument(
        "--require-full-objective-subconst",
        action="store_true",
        help=(
            "require valid full_objective_subconst_expression before generation; "
            "when omitted, compact full-sparse generation may use the "
            "quotient-boundary objective equality route"
        ),
    )
    parser.add_argument(
        "--full-aggregate-semantic-coeff-chunk-size",
        type=int,
        default=0,
        help=(
            "when --compact-full-sparse-semantic is enabled, emit direct full "
            "aggregate sparse semantic equality chunks of this many full-orbit "
            "coefficients for tiny/synthetic probes; 0 skips direct emission "
            "and expects an existing structural FullAggregateSemantic module. "
            "The direct route is not viable for real K2"
        ),
    )
    parser.add_argument(
        "--full-aggregate-semantic-structural",
        action="store_true",
        help=(
            "emit an opt-in structural FullAggregateSemantic module from "
            "validated component data, scalar range/source bridges, and "
            "generated range metadata; intended for the real K2 compact "
            "full-sparse route and bypasses the old scalar/PSD semantic "
            "coefficient summary files"
        ),
    )
    parser.add_argument(
        "--semantic-bridge-module",
        default=None,
        help=(
            "Lean module providing FullLinearAtomExpr/LinearMultiplier and "
            "FullMatrixAtomExpr/DualMatrix for semantic component proofs, or "
            "compact atom expressions for compact semantic proofs; "
            "defaults to MODULE_PREFIX.CompactBridge"
        ),
    )
    parser.add_argument(
        "--trivial-compact-bridge",
        action="store_true",
        help=(
            "emit a local zero scalar/PSD CompactBridge for tiny structural "
            "smokes; requires a generated QuotientFiber module in MODULE_PREFIX"
        ),
    )
    parser.add_argument(
        "--data-only",
        action="store_true",
        help="emit model and dual data definitions but omit generated proof objects",
    )
    parser.add_argument(
        "--compact-data-smoke-output",
        type=Path,
        default=None,
        help="emit only compact aggregate/full-aggregate data checks to this Lean file",
    )
    args = parser.parse_args()
    if (
        args.split_dir is None
        and args.output is None
        and args.compact_data_smoke_output is None
        and args.scalar_semantic_plan_output is None
        and args.compact_scalar_source_plan_output is None
    ):
        parser.error(
            "--output is required unless --split-dir, "
            "--compact-data-smoke-output, --scalar-semantic-plan-output, "
            "or --compact-scalar-source-plan-output is used"
        )
    if (
        args.scalar_semantic_plan_only
        and args.scalar_semantic_plan_output is None
    ):
        parser.error(
            "--scalar-semantic-plan-only requires --scalar-semantic-plan-output"
        )
    if (
        args.compact_scalar_source_plan_only
        and args.compact_scalar_source_plan_output is None
    ):
        parser.error(
            "--compact-scalar-source-plan-only requires "
            "--compact-scalar-source-plan-output"
        )
    if args.scalar_semantic_nonmatrix_only and args.scalar_semantic_matrix_cut_only:
        parser.error(
            "--scalar-semantic-nonmatrix-only and "
            "--scalar-semantic-matrix-cut-only are mutually exclusive"
        )
    if (
        args.scalar_semantic_nonmatrix_only
        and args.scalar_semantic_matrix_cut_source_groups
    ):
        parser.error(
            "--scalar-semantic-matrix-cut-source-groups cannot be combined "
            "with --scalar-semantic-nonmatrix-only"
        )
    if (
        args.scalar_semantic_chunk_start is not None
        and args.scalar_semantic_chunk_start < 0
    ):
        parser.error("--scalar-semantic-chunk-start must be nonnegative")
    if (
        args.scalar_semantic_chunk_end is not None
        and args.scalar_semantic_chunk_end < 0
    ):
        parser.error("--scalar-semantic-chunk-end must be nonnegative")
    if (
        args.scalar_semantic_chunk_start is not None
        and args.scalar_semantic_chunk_end is not None
        and args.scalar_semantic_chunk_end < args.scalar_semantic_chunk_start
    ):
        parser.error(
            "--scalar-semantic-chunk-end must be greater than or equal to "
            "--scalar-semantic-chunk-start"
        )
    if args.compact_semantic_coeff_chunk_size < 0:
        parser.error("--compact-semantic-coeff-chunk-size must be nonnegative")
    if args.compact_objective_eq_chunk_size <= 0:
        parser.error("--compact-objective-eq-chunk-size must be positive")
    if args.full_objective_eq_chunk_size <= 0:
        parser.error("--full-objective-eq-chunk-size must be positive")
    if args.full_aggregate_semantic_coeff_chunk_size < 0:
        parser.error(
            "--full-aggregate-semantic-coeff-chunk-size must be nonnegative"
        )
    if args.full_aggregate_semantic_structural and args.split_dir is None:
        parser.error("--full-aggregate-semantic-structural requires --split-dir")
    if (
        args.full_aggregate_semantic_structural
        and args.full_aggregate_semantic_coeff_chunk_size > 0
    ):
        parser.error(
            "--full-aggregate-semantic-structural cannot be combined with "
            "--full-aggregate-semantic-coeff-chunk-size because both routes "
            "emit FullAggregateSemantic.lean"
        )
    if args.full_aggregate_semantic_structural and args.component_eq_chunk_size <= 0:
        parser.error(
            "--full-aggregate-semantic-structural requires "
            "--component-eq-chunk-size > 0"
        )
    if (
        args.full_aggregate_semantic_structural
        and args.scalar_component_eq_chunk_size <= 0
    ):
        parser.error(
            "--full-aggregate-semantic-structural requires "
            "--scalar-component-eq-chunk-size > 0"
        )
    if (
        args.full_aggregate_semantic_structural
        and (
            args.scalar_semantic_nonmatrix_only
            or args.scalar_semantic_matrix_cut_only
            or args.scalar_semantic_chunk_start is not None
            or args.scalar_semantic_chunk_end is not None
        )
    ):
        parser.error(
            "--full-aggregate-semantic-structural requires complete scalar "
            "semantic emission; do not combine it with scalar semantic filters"
        )
    if (
        args.compact_full_sparse_semantic
        and args.compact_semantic_coeff_chunk_size > 0
    ):
        parser.error(
            "--compact-full-sparse-semantic cannot be combined with "
            "--compact-semantic-coeff-chunk-size because both routes emit "
            "CompactData/CompactSemantic/CompactCertificate modules"
        )
    compact_routes = [
        args.compact_full_sparse_semantic,
        args.compact_direct_quotient_certificate,
        args.compact_component_semantic,
        args.compact_semantic_coeff_chunk_size > 0,
    ]
    if sum(1 for route in compact_routes if route) > 1:
        parser.error(
            "--compact-direct-quotient-certificate, "
            "--compact-full-sparse-semantic, --compact-component-semantic, "
            "and --compact-semantic-coeff-chunk-size are mutually exclusive "
            "compact certificate routes"
        )
    if args.compact_component_semantic and args.compact_full_sparse_semantic:
        parser.error(
            "--compact-component-semantic cannot be combined with "
            "--compact-full-sparse-semantic"
        )
    if (
        args.compact_component_semantic
        and args.compact_semantic_coeff_chunk_size > 0
    ):
        parser.error(
            "--compact-component-semantic cannot be combined with "
            "--compact-semantic-coeff-chunk-size because both routes emit "
            "CompactData/CompactSemantic/CompactCertificate modules"
        )
    if args.compact_component_semantic_coeff_chunk_size <= 0:
        parser.error(
            "--compact-component-semantic-coeff-chunk-size must be positive"
        )
    if args.compact_scalar_component_semantic_coeff_chunk_size < 0:
        parser.error(
            "--compact-scalar-component-semantic-coeff-chunk-size must be "
            "nonnegative"
        )
    if args.compact_component_eq_chunk_size <= 0:
        parser.error("--compact-component-eq-chunk-size must be positive")
    if args.compact_scalar_group_size <= 0:
        parser.error("--compact-scalar-group-size must be positive")
    if args.compact_scalar_source_chunk_size <= 0:
        parser.error("--compact-scalar-source-chunk-size must be positive")
    if args.compact_scalar_source_data and not args.compact_component_semantic:
        parser.error(
            "--compact-scalar-source-data requires "
            "--compact-component-semantic"
        )
    if (
        args.compact_scalar_source_derived_data
        and not args.compact_scalar_source_data
    ):
        parser.error(
            "--compact-scalar-source-derived-data requires "
            "--compact-scalar-source-data"
        )
    if args.compact_scalar_source_semantic and not args.compact_scalar_source_data:
        parser.error(
            "--compact-scalar-source-semantic requires "
            "--compact-scalar-source-data"
        )
    if (
        args.compact_scalar_source_semantic
        and not args.compact_scalar_source_derived_data
    ):
        parser.error(
            "--compact-scalar-source-semantic requires "
            "--compact-scalar-source-derived-data so source semantic chunk "
            "proofs are structural"
        )

    exact = json.loads(args.exact_json.read_text())
    smoke_qvars = int(exact["variable_count"])
    smoke_support_config = binary_compact_support_config(
        int(exact["n"]),
        int(exact["r"]),
        smoke_qvars,
        args.name,
    )
    try:
        has_full_objective = validate_full_objective_subconst_expression(
            exact,
            smoke_support_config.full_vars,
        )
    except ValueError as exc:
        if args.require_full_objective_subconst:
            parser.error(f"full_objective_subconst_expression: {exc}")
        has_full_objective = False
    if (
        args.require_full_objective_subconst
        and not has_full_objective
    ):
        parser.error(
            "--require-full-objective-subconst requires exact "
            "full_objective_subconst_expression"
        )
    if (
        args.require_full_objective_subconst
        and args.compact_full_sparse_semantic
        and exact.get("full_aggregate_dual_expression_components") is None
    ):
        parser.error(
            "--compact-full-sparse-semantic requires "
            "full_aggregate_dual_expression_components for the "
            "full-objective semantic bridge"
        )
    if args.compact_data_smoke_output is not None:
        generate_compact_data_smoke_module(
            exact,
            args.compact_data_smoke_output,
            args.module_prefix,
            args.name,
            smoke_support_config,
        )
        if args.split_dir is None and args.output is None:
            return

    if args.expressions_json is None:
        parser.error(
            "--expressions-json is required unless only "
            "--compact-data-smoke-output is used"
        )
    expr_data = json.loads(args.expressions_json.read_text())
    if args.scalar_semantic_plan_output is not None:
        write_scalar_semantic_plan(
            exact,
            expr_data,
            args.scalar_semantic_plan_output,
            args.scalar_semantic_atom_chunk_size,
            args.scalar_semantic_matrix_cut_atom_chunk_size,
        )
        if args.scalar_semantic_plan_only or (
            args.split_dir is None and args.output is None
        ):
            return
    if args.compact_scalar_source_plan_output is not None:
        scalar_source_semantic_chunk_size = (
            args.compact_scalar_component_semantic_coeff_chunk_size
            or args.compact_component_semantic_coeff_chunk_size
        )
        write_compact_scalar_source_plan(
            exact,
            expr_data,
            args.compact_scalar_source_plan_output,
            args.name,
            smoke_support_config,
            args.compact_scalar_group_size,
            scalar_source_semantic_chunk_size,
            args.compact_scalar_source_chunk_size,
        )
        if args.compact_scalar_source_plan_only or (
            args.split_dir is None and args.output is None
        ):
            return
    if args.split_dir is not None:
        generate_split_modules(
            exact,
            expr_data,
            args.split_dir,
            args.module_prefix,
            args.name,
            args.scalar_chunk_size,
            args.component_eq_chunk_size,
            args.scalar_component_eq_chunk_size,
            args.scalar_semantic_coeff_chunk_size,
            args.scalar_semantic_atom_chunk_size,
            args.scalar_semantic_matrix_cut_atom_chunk_size,
            args.scalar_semantic_nonmatrix_only,
            args.scalar_semantic_matrix_cut_only,
            args.scalar_semantic_matrix_cut_source_groups,
            args.scalar_semantic_chunk_start,
            args.scalar_semantic_chunk_end,
            args.psd_semantic_chunk_size,
            args.semantic_bridge_module,
            args.compact_semantic_coeff_chunk_size,
            args.compact_full_sparse_semantic,
            args.full_aggregate_semantic_coeff_chunk_size,
            args.compact_objective_eq_chunk_size,
            args.full_aggregate_semantic_structural,
            args.compact_direct_quotient_certificate,
            args.compact_component_semantic,
            args.compact_component_semantic_coeff_chunk_size,
            args.compact_scalar_component_semantic_coeff_chunk_size,
            args.compact_component_eq_chunk_size,
            args.compact_scalar_group_size,
            args.compact_scalar_source_data,
            args.compact_scalar_source_semantic,
            args.compact_scalar_source_derived_data,
            args.compact_scalar_source_chunk_size,
            args.full_objective_eq_chunk_size,
            args.trivial_compact_bridge,
        )
        return

    n = int(exact["n"])
    r = int(exact["r"])
    l_value = int(exact["target_L"])
    qvars = int(exact["variable_count"])
    scalar_count = int(exact["constraint_counts"]["scalar"])
    block_count = int(exact["constraint_counts"]["psd"])
    scale = Fraction(2) ** n
    name = args.name
    support_config = binary_compact_support_config(n, r, qvars, name)

    objective_coeffs = [Fraction(0) for _ in range(qvars)]
    for term in expr_data["objective_terms"]:
        objective_coeffs[int(term["orbit_id"]) - 1] += scale * Fraction(int(term["coeff"]))
    objective_terms = [
        f"({idx}, {lean_rat(value)})"
        for idx, value in enumerate(objective_coeffs)
        if value
    ]

    block_sizes = [int(record["size"]) for record in exact["weighted_ldl"]]
    block_ranks = [int(record["rank"]) for record in exact["weighted_ldl"]]
    raw_bound = frac_from_json(exact["raw_bound"])
    scaled_bound = scale * raw_bound
    aggregate_dual_expression = exact.get("aggregate_dual_expression")
    validate_weighted_ldl_blocks(exact, scale)

    lines: list[str] = [
        "import CoveringCodes.SDP.GijswijtPolak2025.BinaryQuotientTableSDP",
        f"import {support_config.support_module}",
        "",
        "/-!",
        f"# Generated quotient SDP certificate data for `(q,n,r)=({2},{n},{r})`",
        "",
        "This file is generated from exact rationalized Julia dual data.",
        "-/",
        "",
        "namespace CoveringCodes",
        "namespace SDP",
        "namespace GijswijtPolak2025",
        "",
        "noncomputable section",
        "",
        "set_option maxRecDepth 20000",
        "set_option maxHeartbeats 4000000",
        "",
        f"abbrev {name}QVar := Fin {qvars}",
        f"abbrev {name}LinAtom := Fin {scalar_count}",
        f"abbrev {name}Block := Fin {block_count}",
        "",
        f"def {name}BlockSize : {name}Block -> Nat",
    ]
    for idx, size in enumerate(block_sizes):
        lines.append(f"  | ⟨{idx}, _⟩ => {size}")
    lines.extend([
        f"  | ⟨m + {block_count}, h⟩ => by omega",
        "",
        f"abbrev {name}BlockCoord (b : {name}Block) := Fin ({name}BlockSize b)",
        "",
        f"def {name}WeightSize : {name}Block -> Nat",
    ])
    for idx, rank in enumerate(block_ranks):
        lines.append(f"  | ⟨{idx}, _⟩ => {rank}")
    lines.extend([
        f"  | ⟨m + {block_count}, h⟩ => by omega",
        "",
        f"abbrev {name}WeightCoord (b : {name}Block) := Fin ({name}WeightSize b)",
        "",
        f"def sparseLinExpr {{m : Nat}} (const : Rat) (terms : List (Nat × Rat)) :",
        "    LinExpr (Fin m) where",
        "  coeff i := terms.foldl",
        "    (fun acc term => if term.1 = i.val then acc + term.2 else acc) 0",
        "  const := const",
        "",
        f"def {name}Objective : LinExpr {name}QVar :=",
        f"  sparseLinExpr 0 [{', '.join(objective_terms)}]",
        "",
    ])
    if aggregate_dual_expression is not None:
        lines.extend([
            f"def {name}CompactDualExpression : LinExpr {name}QVar :=",
            f"  {expr_from_exact_coeffs(aggregate_dual_expression, scale)}",
            "",
        ])

    scalar_cases = [
        f"  | ⟨{idx}, _⟩ => {expr_from_export(record['expr'])}"
        for idx, record in enumerate(expr_data["scalar_constraints"])
    ]
    lines.extend(fin_function(
        f"{name}LinearAtomExpr",
        scalar_count,
        f"LinExpr {name}QVar",
        scalar_cases,
    ))

    lines.append(
        f"def {name}MatrixAtomExpr : forall b : {name}Block,"
    )
    lines.append(
        f"    Matrix ({name}BlockCoord b) ({name}BlockCoord b) (LinExpr {name}QVar)"
    )
    for idx, record in enumerate(expr_data["psd_constraints"]):
        lines.append(f"  | ⟨{idx}, _⟩ =>")
        lines.extend(matrix_expr_cases(record["matrix_expr"], Fraction(1)))
    lines.append(f"  | ⟨m + {block_count}, h⟩ => by omega")
    lines.append("")

    lines.extend([
        f"def {name}Model :",
        f"    BinaryQuotientTableModel {n} {r} {name}QVar {name}LinAtom",
        f"      {name}Block {name}BlockCoord where",
        f"  objective := {name}Objective",
        f"  linearAtoms := {name}LinearAtomExpr",
        f"  matrixAtoms := {name}MatrixAtomExpr",
        "",
    ])

    multiplier_nn_cases = [
        f"  | ⟨{idx}, _⟩ => {lean_nnrat(scale * frac_from_json(record['value']))}"
        for idx, record in enumerate(exact["scalar_multipliers"])
    ]
    lines.extend(fin_function(
        f"{name}LinearMultiplierNN",
        scalar_count,
        "NNRat",
        multiplier_nn_cases,
    ))
    lines.extend([
        f"def {name}LinearMultiplier (atom : {name}LinAtom) : Rat :=",
        f"  ({name}LinearMultiplierNN atom : Rat)",
        "",
    ])

    for idx, record in enumerate(exact["weighted_ldl"]):
        diag = [frac_from_json(value) for value in record["diag"]]
        rows = [[frac_from_json(entry) for entry in row] for row in record["rows"]]
        lines.extend(weight_l_def_lines(
            f"{name}DualMatrixBlock{idx}L",
            block_ranks[idx],
            block_sizes[idx],
            rows,
        ))
        lines.extend(weight_diag_def_lines(
            f"{name}DualMatrixBlock{idx}Diag",
            block_ranks[idx],
            diag,
            scale,
        ))
        lines.append(
            f"def {name}DualMatrixBlock{idx} : "
            f"Matrix (Fin {block_sizes[idx]}) (Fin {block_sizes[idx]}) Rat :="
        )
        lines.append(
            f"  weightedGramMatrix {name}DualMatrixBlock{idx}L "
            f"{name}DualMatrixBlock{idx}Diag"
        )
        lines.append("")

    lines.append(
        f"def {name}DualMatrix : forall b : {name}Block,"
    )
    lines.append(f"    Matrix ({name}BlockCoord b) ({name}BlockCoord b) Rat")
    for idx in range(block_count):
        lines.append(f"  | ⟨{idx}, _⟩ => {name}DualMatrixBlock{idx}")
    lines.append(f"  | ⟨m + {block_count}, h⟩ => by omega")
    lines.append("")

    if args.data_only:
        lines.extend([
            "end",
            "",
            "end GijswijtPolak2025",
            "end SDP",
            "end CoveringCodes",
            "",
        ])
        args.output.write_text("\n".join(lines))
        return

    for idx, record in enumerate(exact["weighted_ldl"]):
        lines.extend(weighted_gram_certificate_lines(
            f"{name}WeightedBlock{idx}",
            block_sizes[idx],
            block_ranks[idx],
            f"{name}DualMatrixBlock{idx}",
            f"{name}DualMatrixBlock{idx}L",
            f"{name}DualMatrixBlock{idx}Diag",
        ))
    lines.append(
        f"def {name}Weighted : forall b : {name}Block,"
    )
    lines.append(
        f"    WeightedGramEntryCertificate ({name}BlockCoord b) ({name}WeightCoord b)"
    )
    lines.append(f"      ({name}DualMatrix b)")
    for idx in range(block_count):
        lines.append(f"  | ⟨{idx}, _⟩ => {name}WeightedBlock{idx}")
    lines.append(f"  | ⟨m + {block_count}, h⟩ => by omega")
    lines.append("")

    lines.extend([
        f"def {name}ObjectiveCertificate :",
        f"    SDPObjectiveLowerWeightedCertificate {name}QVar {name}LinAtom",
        f"      {name}Block {name}BlockCoord {name}WeightCoord",
        f"      {name}LinearAtomExpr {name}MatrixAtomExpr {name}Objective",
        f"      {lean_rat(scaled_bound)} where",
        f"  linearMultiplier := {name}LinearMultiplier",
        "  linearMultiplier_nonneg := by",
        "    intro a",
        f"    exact NNRat.cast_nonneg ({name}LinearMultiplierNN a)",
        "  slack := 0",
        "  slack_nonneg := by norm_num",
        f"  dualMatrix := {name}DualMatrix",
        f"  dualMatrixWeighted := {name}Weighted",
        "  const_identity := by native_decide",
        "  coeff_identity := by native_decide",
        "",
        f"def {name}QuotientDualCertificate :",
        f"    BinaryQuotientTableDualCertificate (WeightIdx := {name}WeightCoord)",
        f"      {n} {r} {l_value} {name}Model where",
        f"  bound := {lean_rat(scaled_bound)}",
        "  cubeThreshold := by norm_num",
        f"  objectiveCertificate := {name}ObjectiveCertificate",
        "",
        "end",
        "",
        "end GijswijtPolak2025",
        "end SDP",
        "end CoveringCodes",
        "",
    ])

    args.output.write_text("\n".join(lines))


if __name__ == "__main__":
    main()
