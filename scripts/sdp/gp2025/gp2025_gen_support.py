#!/usr/bin/env python3
"""Generate finite support modules for Gijswijt--Polak SDP instances.

The generated Lean files contain only exact finite orbit-index enumerations and
basic support data.  They do not register numerical lower bounds.
"""

from __future__ import annotations

import argparse
from dataclasses import dataclass
from pathlib import Path


WORD_NUM = {
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
class BinaryOrbit:
    i: int
    j: int
    t: int

    @property
    def suffix(self) -> str:
        return f"{self.i}{self.j}{self.t}"


@dataclass(frozen=True)
class QaryOrbit:
    i: int
    j: int
    t: int
    p: int

    @property
    def suffix(self) -> str:
        return f"{self.i}{self.j}{self.t}{self.p}"


@dataclass(frozen=True)
class BinaryLightSupportContext:
    n: int
    name_prefix: str
    orbits: list[BinaryOrbit]
    names: list[str]
    quotient_count: int
    quotient_ids: list[int]
    representative_positions: list[int]


def lean_nat_name(n: int) -> str:
    if n not in WORD_NUM:
        raise ValueError(f"no Lean name fragment configured for {n}")
    return WORD_NUM[n]


def binary_orbits(n: int) -> list[BinaryOrbit]:
    out: list[BinaryOrbit] = []
    for i in range(n + 1):
        for j in range(n + 1):
            for t in range(n + 1):
                if t <= i and t <= j and i + j <= n + t:
                    out.append(BinaryOrbit(i, j, t))
    return out


def binary_quad(n: int, orbit: BinaryOrbit) -> tuple[int, int, int, int]:
    return (n - orbit.i - orbit.j + orbit.t, orbit.j - orbit.t, orbit.i - orbit.t, orbit.t)


def determine_binary_quotient_numbers(n: int) -> dict[tuple[int, int, int, int], int]:
    orbit_numbers: dict[tuple[int, int, int, int], int] = {}
    orbit_number = 0

    def number_orbit(i: int, j: int, t: int) -> None:
        for tprime in range(n + 1):
            for iprime in range(n + 1):
                for jprime in range(n + 1):
                    quad = (
                        n - iprime - jprime + tprime,
                        jprime - tprime,
                        iprime - tprime,
                        tprime,
                    )
                    if (
                        n >= quad[0] >= 0
                        and n >= quad[1] >= 0
                        and n >= quad[2] >= 0
                        and sorted([i, j, i + j - 2 * t])
                        == sorted([iprime, jprime, iprime + jprime - 2 * tprime])
                    ):
                        orbit_numbers[quad] = orbit_number

    for i in range(n + 1):
        key = (n - i, 0, i, 0)
        if key not in orbit_numbers:
            orbit_number += 1
            number_orbit(i, 0, 0)

    for t in range(n + 1):
        for i in range(n + 1):
            for j in range(n + 1):
                key = (n - i - j + t, j - t, i - t, t)
                if (
                    n >= key[0] >= 0
                    and n >= key[1] >= 0
                    and n >= key[2] >= 0
                    and key not in orbit_numbers
                ):
                    orbit_number += 1
                    number_orbit(i, j, t)

    return orbit_numbers


def binary_orbit_name(name_prefix: str, orbit: BinaryOrbit, n: int) -> str:
    if n < 10:
        return f"{name_prefix}Idx{orbit.suffix}"
    return f"{name_prefix}Idx_{orbit.i}_{orbit.j}_{orbit.t}"


def qary_orbits(n: int) -> list[QaryOrbit]:
    out: list[QaryOrbit] = []
    for i in range(n + 1):
        for j in range(n + 1):
            for t in range(n + 1):
                for p in range(n + 1):
                    if p <= t and t <= i and t <= j and i + j <= n + t:
                        out.append(QaryOrbit(i, j, t, p))
    return out


def qary_name_prefix(q: int, n: int) -> str:
    length_name = lean_nat_name(n)
    if q == 3:
        return f"ternaryLength{length_name}"
    return f"qary{q}Length{length_name}"


def qary_theorem_middle(q: int, n: int) -> str:
    length_name = lean_nat_name(n).lower()
    if q == 3:
        return f"ternary_length_{length_name}"
    return f"qary{q}_length_{length_name}"


def nested_or(or_terms: list[str]) -> str:
    if not or_terms:
        raise ValueError("expected at least one term")
    expr = or_terms[-1]
    for term in reversed(or_terms[:-1]):
        expr = f"{term} ∨\n      {expr}"
    return expr


def valid_branch(names: list[str], orbits: list[BinaryOrbit], idx: int) -> list[str]:
    orbit = orbits[idx]
    prefix = "right; " * idx
    if idx + 1 < len(orbits):
        prefix += "left"
    else:
        prefix = prefix.rstrip("; ")
    return [
        f"  · {prefix}",
        "    apply BinaryOrbitIndex.toFinTriple_injective",
        f"    simp [BinaryOrbitIndex.toFinTriple, {names[idx]}]",
    ]


def valid_qary_branch(orbits: list[QaryOrbit], idx: int, name_prefix: str) -> list[str]:
    orbit = orbits[idx]
    prefix = "right; " * idx
    if idx + 1 < len(orbits):
        prefix += "left"
    else:
        prefix = prefix.rstrip("; ")
    return [
        f"  · {prefix}",
        "    apply QaryOrbitIndex.toFinTuple_injective",
        f"    simp [QaryOrbitIndex.toFinTuple, {name_prefix}Idx{orbit.suffix}]",
    ]


def invalid_branch() -> list[str]:
    return ["  · exfalso", "    omega"]


def orbit_to_fin_valid_branch(
    name_prefix: str,
    names: list[str],
    idx: int,
    *,
    imported_orbit_of_fin: bool = False,
) -> list[str]:
    if imported_orbit_of_fin:
        return [
            f"  · change {names[idx]} = _",
            "    rw [BinaryOrbitIndex.mk.injEq]",
            f"    simp [{names[idx]}]",
        ]
    return [
        "  · rw [BinaryOrbitIndex.mk.injEq]",
        f"    simp [{names[idx]},",
        f"      {name_prefix}OrbitToFin, {name_prefix}OrbitOfFin]",
    ]


def set_literal(names: list[str], indent: str = "      ") -> str:
    lines: list[str] = []
    current = indent + "{"
    for pos, name in enumerate(names):
        piece = name if pos == 0 else ", " + name
        if len(current) + len(piece) > 92 and pos != 0:
            lines.append(current + ",")
            current = indent + " " + name
        else:
            current += piece
    current += "}"
    lines.append(current)
    return "\n".join(lines)


def rcases_pattern(count: int) -> str:
    return " | ".join(["rfl"] * count)


def binary_light_support_context(n: int) -> BinaryLightSupportContext:
    if n < 0:
        raise ValueError("n must be nonnegative")
    length_name = lean_nat_name(n)
    name_prefix = f"binaryLength{length_name}"
    orbits = binary_orbits(n)
    names = [binary_orbit_name(name_prefix, o, n) for o in orbits]
    quotient_numbers = determine_binary_quotient_numbers(n)
    quotient_count = max(quotient_numbers.values(), default=0)
    quotient_ids = [quotient_numbers[binary_quad(n, orbit)] - 1 for orbit in orbits]
    representative_positions: list[int] = []
    for quotient_id in range(quotient_count):
        representative_positions.append(quotient_ids.index(quotient_id))
    return BinaryLightSupportContext(
        n=n,
        name_prefix=name_prefix,
        orbits=orbits,
        names=names,
        quotient_count=quotient_count,
        quotient_ids=quotient_ids,
        representative_positions=representative_positions,
    )


def binary_support_header(
    imports: list[str],
    title: str,
    max_rec_depth: int = 20000,
) -> list[str]:
    lines: list[str] = []
    for module in imports:
        lines.append(f"import {module}")
    lines.extend(
        [
            "",
            "/-!",
            title,
            "",
            "This file records exact finite orbit-index enumeration data.  It is",
            "generated support for future rational SDP certificates and does not",
            "register a numerical lower bound.",
            "-/",
            "",
            "namespace CoveringCodes",
            "namespace SDP",
            "namespace GijswijtPolak2025",
            "",
            "noncomputable section",
            "",
            f"set_option maxRecDepth {max_rec_depth}",
            "set_option maxHeartbeats 2000000",
            "",
        ]
    )
    return lines


def binary_support_footer() -> list[str]:
    return [
        "end",
        "",
        "end GijswijtPolak2025",
        "end SDP",
        "end CoveringCodes",
        "",
    ]


def default_binary_support_data_import(n: int) -> str:
    length_name = lean_nat_name(n)
    return (
        "CoveringCodes.SDP.GijswijtPolak2025.Generated."
        f"BinaryLength{length_name}SupportData"
    )


def generate_binary_light_data(n: int) -> str:
    ctx = binary_light_support_context(n)
    lines = binary_support_header(
        ["CoveringCodes.SDP.GijswijtPolak2025.BinaryReducedSDP"],
        f"# Generated finite support data for the binary length-{n} SDP",
    )

    for name, orbit in zip(ctx.names, ctx.orbits, strict=True):
        lines.extend(
            [
                f"def {name} : BinaryOrbitIndex {n} where",
                f"  i := {orbit.i}",
                f"  j := {orbit.j}",
                f"  t := {orbit.t}",
                "  ht_i := by omega",
                "  ht_j := by omega",
                "  hij := by omega",
                "",
            ]
        )

    lines.extend(
        [
            f"def {ctx.name_prefix}OrbitOfFin : Fin {len(ctx.orbits)} -> BinaryOrbitIndex {n}",
        ]
    )
    for pos, name in enumerate(ctx.names):
        lines.append(f"  | ⟨{pos}, _⟩ => {name}")
    lines.extend(
        [
            f"  | ⟨m + {len(ctx.orbits)}, h⟩ => by omega",
            "",
            f"abbrev {ctx.name_prefix}QuotientIndex := Fin {ctx.quotient_count}",
            "",
            f"def {ctx.name_prefix}QuotientOfOrbitFin : Fin {len(ctx.orbits)} ->",
            f"    {ctx.name_prefix}QuotientIndex",
        ]
    )
    for pos, quotient_id in enumerate(ctx.quotient_ids):
        lines.append(f"  | ⟨{pos}, _⟩ => ⟨{quotient_id}, by omega⟩")
    lines.extend(
        [
            f"  | ⟨m + {len(ctx.orbits)}, h⟩ => by omega",
            "",
        ]
    )
    lines.extend(binary_support_footer())
    return "\n".join(lines)


def generate_binary_light_wrapper(n: int, data_import: str) -> str:
    if not data_import:
        raise ValueError("data_import must not be empty")
    ctx = binary_light_support_context(n)
    lines = binary_support_header(
        [data_import],
        f"# Generated finite support wrapper for the binary length-{n} SDP",
        max_rec_depth=100000,
    )
    lines.extend(
        [
            f"def {ctx.name_prefix}OrbitToFin (idx : BinaryOrbitIndex {n}) : Fin {len(ctx.orbits)} :=",
            "  match idx.i, idx.j, idx.t with",
        ]
    )
    for pos, orbit in enumerate(ctx.orbits):
        lines.append(f"  | {orbit.i}, {orbit.j}, {orbit.t} => ⟨{pos}, by omega⟩")
    lines.extend(
        [
            "  | _, _, _ => ⟨0, by omega⟩",
            "",
            f"def {ctx.name_prefix}QuotientOfOrbit (idx : BinaryOrbitIndex {n}) :",
            f"    {ctx.name_prefix}QuotientIndex :=",
            f"  {ctx.name_prefix}QuotientOfOrbitFin ({ctx.name_prefix}OrbitToFin idx)",
            "",
            f"theorem {ctx.name_prefix}OrbitOfFin_toFin (idx : BinaryOrbitIndex {n}) :",
            f"    {ctx.name_prefix}OrbitOfFin ({ctx.name_prefix}OrbitToFin idx) = idx := by",
            "  rcases idx with ⟨i, j, t, ht_i, ht_j, hij⟩",
            f"  have hi : i <= {n} := by omega",
            f"  have hj : j <= {n} := by omega",
            f"  have ht : t <= {n} := by omega",
            "  interval_cases i <;> interval_cases j <;> interval_cases t",
        ]
    )
    by_orbit = {(o.i, o.j, o.t): pos for pos, o in enumerate(ctx.orbits)}
    for i in range(n + 1):
        for j in range(n + 1):
            for t in range(min(i, j) + 1):
                pos = by_orbit.get((i, j, t))
                if pos is None:
                    lines.extend(invalid_branch())
                else:
                    lines.extend(
                        orbit_to_fin_valid_branch(
                            ctx.name_prefix,
                            ctx.names,
                            pos,
                            imported_orbit_of_fin=True,
                        )
                    )
    lines.extend(
        [
            "",
            f"theorem {ctx.name_prefix}OrbitToFin_ofFin (idx : Fin {len(ctx.orbits)}) :",
            f"    {ctx.name_prefix}OrbitToFin ({ctx.name_prefix}OrbitOfFin idx) = idx := by",
            "  fin_cases idx <;> native_decide",
            "",
            f"def {ctx.name_prefix}RepresentativeFin : {ctx.name_prefix}QuotientIndex -> Fin {len(ctx.orbits)}",
        ]
    )
    for quotient_id, pos in enumerate(ctx.representative_positions):
        lines.append(f"  | ⟨{quotient_id}, _⟩ => ⟨{pos}, by omega⟩")
    lines.extend(
        [
            f"  | ⟨m + {ctx.quotient_count}, h⟩ => by omega",
            "",
            f"def {ctx.name_prefix}RepresentativeOrbit (idx : {ctx.name_prefix}QuotientIndex) :",
            f"    BinaryOrbitIndex {n} :=",
            f"  {ctx.name_prefix}OrbitOfFin ({ctx.name_prefix}RepresentativeFin idx)",
            "",
            f"theorem {ctx.name_prefix}QuotientOfRepresentativeFin",
            f"    (idx : {ctx.name_prefix}QuotientIndex) :",
            f"    {ctx.name_prefix}QuotientOfOrbitFin ({ctx.name_prefix}RepresentativeFin idx) = idx := by",
            "  fin_cases idx <;> native_decide",
            "",
            f"theorem {ctx.name_prefix}Representative_perm_of_fin (idx : Fin {len(ctx.orbits)}) :",
            "    List.Perm",
            f"      [({ctx.name_prefix}OrbitOfFin idx).i, ({ctx.name_prefix}OrbitOfFin idx).j,",
            f"        binaryOrbitDistanceIndex ({ctx.name_prefix}OrbitOfFin idx)]",
            f"      [({ctx.name_prefix}RepresentativeOrbit ({ctx.name_prefix}QuotientOfOrbitFin idx)).i,",
            f"        ({ctx.name_prefix}RepresentativeOrbit ({ctx.name_prefix}QuotientOfOrbitFin idx)).j,",
            f"        binaryOrbitDistanceIndex ({ctx.name_prefix}RepresentativeOrbit",
            f"          ({ctx.name_prefix}QuotientOfOrbitFin idx))] := by",
            "  fin_cases idx <;> native_decide",
            "",
            f"def {ctx.name_prefix}OrbitList : List (BinaryOrbitIndex {n}) := [",
        ]
    )
    for pos, name in enumerate(ctx.names):
        comma = "," if pos + 1 < len(ctx.names) else ""
        lines.append(f"  {name}{comma}")
    lines.extend(
        [
            "]",
            "",
            f"theorem {ctx.name_prefix}OrbitList_length :",
            f"    {ctx.name_prefix}OrbitList.length = {len(ctx.orbits)} := by",
            "  native_decide",
            "",
        ]
    )
    lines.extend(binary_support_footer())
    return "\n".join(lines)


def generate_binary_light_split(n: int, data_import: str) -> tuple[str, str]:
    return generate_binary_light_data(n), generate_binary_light_wrapper(n, data_import)


def generate_binary(n: int, light: bool = False) -> str:
    if n < 0:
        raise ValueError("n must be nonnegative")
    length_name = lean_nat_name(n)
    name_prefix = f"binaryLength{length_name}"
    case_theorem = f"binaryOrbitIndex_length_{length_name.lower()}_cases"
    univ_theorem = f"binaryOrbitIndex_univ_length_{length_name.lower()}"
    orbits = binary_orbits(n)
    names = [binary_orbit_name(name_prefix, o, n) for o in orbits]
    terms = [f"idx = {name}" for name in names]

    lines: list[str] = [
        "import CoveringCodes.SDP.GijswijtPolak2025.BinaryReducedSDP",
        "",
        "/-!",
        f"# Generated finite support facts for the binary length-{n} SDP",
        "",
        "This file records exact finite orbit-index enumeration data.  It is",
        "generated support for future rational SDP certificates and does not",
        "register a numerical lower bound.",
        "-/",
        "",
        "namespace CoveringCodes",
        "namespace SDP",
        "namespace GijswijtPolak2025",
        "",
        "noncomputable section",
        "",
        "set_option maxRecDepth 20000",
        "set_option maxHeartbeats 2000000",
        "",
    ]

    for name, orbit in zip(names, orbits, strict=True):
        lines.extend(
            [
                f"def {name} : BinaryOrbitIndex {n} where",
                f"  i := {orbit.i}",
                f"  j := {orbit.j}",
                f"  t := {orbit.t}",
                "  ht_i := by omega",
                "  ht_j := by omega",
                "  hij := by omega",
                "",
            ]
        )

    if light:
        quotient_numbers = determine_binary_quotient_numbers(n)
        quotient_count = max(quotient_numbers.values(), default=0)
        quotient_ids = [
            quotient_numbers[binary_quad(n, orbit)] - 1
            for orbit in orbits
        ]
        representative_positions: list[int] = []
        for quotient_id in range(quotient_count):
            representative_positions.append(quotient_ids.index(quotient_id))
        list_items: list[str] = []
        for name in names:
            prefix = "  " if not list_items else ", "
            list_items.append(prefix + name)
        lines.extend(
            [
                f"def {name_prefix}OrbitOfFin : Fin {len(orbits)} -> BinaryOrbitIndex {n}",
            ]
        )
        for pos, name in enumerate(names):
            lines.append(f"  | ⟨{pos}, _⟩ => {name}")
        lines.extend(
            [
                f"  | ⟨m + {len(orbits)}, h⟩ => by omega",
                "",
                f"abbrev {name_prefix}QuotientIndex := Fin {quotient_count}",
                "",
                f"def {name_prefix}QuotientOfOrbitFin : Fin {len(orbits)} ->",
                f"    {name_prefix}QuotientIndex",
            ]
        )
        for pos, quotient_id in enumerate(quotient_ids):
            lines.append(f"  | ⟨{pos}, _⟩ => ⟨{quotient_id}, by omega⟩")
        lines.extend(
            [
                f"  | ⟨m + {len(orbits)}, h⟩ => by omega",
                "",
                f"def {name_prefix}OrbitToFin (idx : BinaryOrbitIndex {n}) : Fin {len(orbits)} :=",
                "  match idx.i, idx.j, idx.t with",
            ]
        )
        for pos, orbit in enumerate(orbits):
            lines.append(f"  | {orbit.i}, {orbit.j}, {orbit.t} => ⟨{pos}, by omega⟩")
        lines.extend(
            [
                "  | _, _, _ => ⟨0, by omega⟩",
                "",
                f"def {name_prefix}QuotientOfOrbit (idx : BinaryOrbitIndex {n}) :",
                f"    {name_prefix}QuotientIndex :=",
                f"  {name_prefix}QuotientOfOrbitFin ({name_prefix}OrbitToFin idx)",
                "",
                f"theorem {name_prefix}OrbitOfFin_toFin (idx : BinaryOrbitIndex {n}) :",
                f"    {name_prefix}OrbitOfFin ({name_prefix}OrbitToFin idx) = idx := by",
                "  rcases idx with ⟨i, j, t, ht_i, ht_j, hij⟩",
                f"  have hi : i <= {n} := by omega",
                f"  have hj : j <= {n} := by omega",
                f"  have ht : t <= {n} := by omega",
                "  interval_cases i <;> interval_cases j <;> interval_cases t",
            ]
        )
        by_orbit = {(o.i, o.j, o.t): pos for pos, o in enumerate(orbits)}
        for i in range(n + 1):
            for j in range(n + 1):
                for t in range(min(i, j) + 1):
                    pos = by_orbit.get((i, j, t))
                    if pos is None:
                        lines.extend(invalid_branch())
                    else:
                        lines.extend(orbit_to_fin_valid_branch(name_prefix, names, pos))
        lines.extend(
            [
                "",
                f"theorem {name_prefix}OrbitToFin_ofFin (idx : Fin {len(orbits)}) :",
                f"    {name_prefix}OrbitToFin ({name_prefix}OrbitOfFin idx) = idx := by",
                "  fin_cases idx <;> native_decide",
                "",
                f"def {name_prefix}RepresentativeFin : {name_prefix}QuotientIndex -> Fin {len(orbits)}",
            ]
        )
        for quotient_id, pos in enumerate(representative_positions):
            lines.append(f"  | ⟨{quotient_id}, _⟩ => ⟨{pos}, by omega⟩")
        lines.extend(
            [
                f"  | ⟨m + {quotient_count}, h⟩ => by omega",
                "",
                f"def {name_prefix}RepresentativeOrbit (idx : {name_prefix}QuotientIndex) :",
                f"    BinaryOrbitIndex {n} :=",
                f"  {name_prefix}OrbitOfFin ({name_prefix}RepresentativeFin idx)",
                "",
                f"theorem {name_prefix}QuotientOfRepresentativeFin",
                f"    (idx : {name_prefix}QuotientIndex) :",
                f"    {name_prefix}QuotientOfOrbitFin ({name_prefix}RepresentativeFin idx) = idx := by",
                "  fin_cases idx <;> native_decide",
                "",
                f"theorem {name_prefix}Representative_perm_of_fin (idx : Fin {len(orbits)}) :",
                "    List.Perm",
                f"      [({name_prefix}OrbitOfFin idx).i, ({name_prefix}OrbitOfFin idx).j,",
                f"        binaryOrbitDistanceIndex ({name_prefix}OrbitOfFin idx)]",
                f"      [({name_prefix}RepresentativeOrbit ({name_prefix}QuotientOfOrbitFin idx)).i,",
                f"        ({name_prefix}RepresentativeOrbit ({name_prefix}QuotientOfOrbitFin idx)).j,",
                f"        binaryOrbitDistanceIndex ({name_prefix}RepresentativeOrbit",
                f"          ({name_prefix}QuotientOfOrbitFin idx))] := by",
                "  fin_cases idx <;> native_decide",
                "",
                f"def {name_prefix}OrbitList : List (BinaryOrbitIndex {n}) := [",
            ]
        )
        for pos, name in enumerate(names):
            comma = "," if pos + 1 < len(names) else ""
            lines.append(f"  {name}{comma}")
        lines.extend(
            [
                "]",
                "",
                f"theorem {name_prefix}OrbitList_length :",
                f"    {name_prefix}OrbitList.length = {len(orbits)} := by",
                "  native_decide",
                "",
                "end",
                "",
                "end GijswijtPolak2025",
                "end SDP",
                "end CoveringCodes",
                "",
            ]
        )
        return "\n".join(lines)

    lines.extend(
        [
            f"def {name_prefix}AllOnes : BinaryX {n} := fun _ => 1",
            "",
            f"theorem {case_theorem} (idx : BinaryOrbitIndex {n}) :",
            f"    {nested_or(terms)} := by",
            "  rcases idx with ⟨i, j, t, ht_i, ht_j, hij⟩",
            f"  have hi : i <= {n} := by omega",
            f"  have hj : j <= {n} := by omega",
            f"  have ht : t <= {n} := by omega",
            "  interval_cases i <;> interval_cases j <;> interval_cases t",
        ]
    )

    by_orbit = {(o.i, o.j, o.t): pos for pos, o in enumerate(orbits)}
    for i in range(n + 1):
        for j in range(n + 1):
            for t in range(min(i, j) + 1):
                pos = by_orbit.get((i, j, t))
                if pos is None:
                    lines.extend(invalid_branch())
                else:
                    lines.extend(valid_branch(names, orbits, pos))

    set_lines = set_literal(names).splitlines()
    set_lines[-1] += " := by"
    lines.extend(["", f"theorem {univ_theorem} :", f"    (Finset.univ : Finset (BinaryOrbitIndex {n})) ="])
    lines.extend(set_lines)
    lines.extend(
        [
            "  ext idx",
            "  constructor",
            "  · intro _",
            f"    rcases {case_theorem} idx with",
            f"      {rcases_pattern(len(orbits))} <;>",
            "      simp",
            "  · intro _",
            "    simp",
            "",
            f"theorem {name_prefix}AllOnes_basic :",
            f"    BinaryBasicConstraints {name_prefix}AllOnes := by",
            "  refine ⟨?_, ?_, ?_⟩",
            "  · intro idx",
            f"    rcases {case_theorem} idx with",
            f"      {rcases_pattern(len(orbits))} <;>",
            "      native_decide",
            "  · intro idx",
            f"    rcases {case_theorem} idx with",
            f"      {rcases_pattern(len(orbits))} <;>",
            "      native_decide",
            "  · intro _ _ _",
            "    rfl",
            "",
            "end",
            "",
            "end GijswijtPolak2025",
            "end SDP",
            "end CoveringCodes",
            "",
        ]
    )
    return "\n".join(lines)


def generate_qary(q: int, n: int) -> str:
    if q < 3:
        raise ValueError("q-ary support generation expects q >= 3")
    if n < 0:
        raise ValueError("n must be nonnegative")
    length_name = lean_nat_name(n)
    name_prefix = qary_name_prefix(q, n)
    theorem_middle = qary_theorem_middle(q, n)
    case_theorem = f"qaryOrbitIndex_{theorem_middle}_cases"
    univ_theorem = f"qaryOrbitIndex_univ_{theorem_middle}"
    orbits = qary_orbits(n)
    names = [f"{name_prefix}Idx{o.suffix}" for o in orbits]
    terms = [f"idx = {name}" for name in names]

    lines: list[str] = [
        "import CoveringCodes.SDP.GijswijtPolak2025.QaryReducedSDP",
        "",
        "/-!",
        f"# Generated finite support facts for the q={q} length-{n} SDP",
        "",
        "This file records exact finite orbit-index enumeration data.  It is",
        "generated support for future rational SDP certificates and does not",
        "register a numerical lower bound.",
        "-/",
        "",
        "namespace CoveringCodes",
        "namespace SDP",
        "namespace GijswijtPolak2025",
        "",
        "noncomputable section",
        "",
    ]

    for orbit in orbits:
        lines.extend(
            [
                f"def {name_prefix}Idx{orbit.suffix} : QaryOrbitIndex {q} {n} where",
                f"  i := {orbit.i}",
                f"  j := {orbit.j}",
                f"  t := {orbit.t}",
                f"  p := {orbit.p}",
                "  hp_t := by omega",
                "  ht_i := by omega",
                "  ht_j := by omega",
                "  hij := by omega",
                "",
            ]
        )

    lines.extend(
        [
            f"def {name_prefix}AllOnes : QaryX {q} {n} := fun _ => 1",
            "",
            f"theorem {case_theorem} (idx : QaryOrbitIndex {q} {n}) :",
            f"    {nested_or(terms)} := by",
            "  rcases idx with ⟨i, j, t, p, hp_t, ht_i, ht_j, hij⟩",
            f"  have hi : i <= {n} := by omega",
            f"  have hj : j <= {n} := by omega",
            f"  have ht : t <= {n} := by omega",
            f"  have hp : p <= {n} := by omega",
            "  interval_cases i <;> interval_cases j <;> interval_cases t <;>",
            "    interval_cases p",
        ]
    )

    by_orbit = {(o.i, o.j, o.t, o.p): pos for pos, o in enumerate(orbits)}
    for i in range(n + 1):
        for j in range(n + 1):
            for t in range(min(i, j) + 1):
                for p in range(t + 1):
                    pos = by_orbit.get((i, j, t, p))
                    if pos is None:
                        lines.extend(invalid_branch())
                    else:
                        lines.extend(valid_qary_branch(orbits, pos, name_prefix))

    set_lines = set_literal(names).splitlines()
    set_lines[-1] += " := by"
    lines.extend(["", f"theorem {univ_theorem} :", f"    (Finset.univ : Finset (QaryOrbitIndex {q} {n})) ="])
    lines.extend(set_lines)
    lines.extend(
        [
            "  ext idx",
            "  constructor",
            "  · intro _",
            f"    rcases {case_theorem} idx with",
            f"      {rcases_pattern(len(orbits))} <;>",
            "      simp",
            "  · intro _",
            "    simp",
            "",
            f"theorem {name_prefix}AllOnes_basic :",
            f"    QaryBasicConstraints {name_prefix}AllOnes := by",
            "  refine ⟨?_, ?_, ?_⟩",
            "  · intro idx",
            f"    rcases {case_theorem} idx with",
            f"      {rcases_pattern(len(orbits))} <;>",
            "      native_decide",
            "  · intro idx",
            f"    rcases {case_theorem} idx with",
            f"      {rcases_pattern(len(orbits))} <;>",
            "      native_decide",
            "  · intro _ _ _ _",
            "    rfl",
            "",
            "end",
            "",
            "end GijswijtPolak2025",
            "end SDP",
            "end CoveringCodes",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    subparsers = parser.add_subparsers(dest="kind", required=True)

    binary = subparsers.add_parser("binary")
    binary.add_argument("n", type=int)
    binary.add_argument("--output", type=Path)
    binary.add_argument(
        "--light",
        action="store_true",
        help="emit only orbit constants/list data, without large case-split proofs",
    )
    binary.add_argument(
        "--split-support",
        action="store_true",
        help="with --light, emit a data module plus a compatibility wrapper",
    )
    binary.add_argument(
        "--wrapper-output",
        type=Path,
        help="write the compatibility wrapper here when --split-support is set",
    )
    binary.add_argument(
        "--data-import",
        help=(
            "Lean module imported by the compatibility wrapper when "
            "--split-support is set"
        ),
    )

    qary = subparsers.add_parser("qary")
    qary.add_argument("q", type=int)
    qary.add_argument("n", type=int)
    qary.add_argument("--output", type=Path)

    args = parser.parse_args()
    if args.kind == "binary":
        if args.split_support:
            if not args.light:
                parser.error("binary --split-support requires --light")
            if args.output is None:
                parser.error("binary --split-support requires --output for the data module")
            if args.wrapper_output is not None:
                data_path = args.output.expanduser().resolve()
                wrapper_path = args.wrapper_output.expanduser().resolve()
                if data_path == wrapper_path:
                    parser.error(
                        "binary --split-support requires --output and "
                        "--wrapper-output to be different paths"
                    )
            data_import = args.data_import or default_binary_support_data_import(args.n)
            data_rendered, wrapper_rendered = generate_binary_light_split(
                args.n,
                data_import,
            )
            args.output.write_text(data_rendered)
            if args.wrapper_output is None:
                print(wrapper_rendered, end="")
            else:
                args.wrapper_output.write_text(wrapper_rendered)
            return
        if args.wrapper_output is not None:
            parser.error("binary --wrapper-output requires --split-support")
        if args.data_import is not None:
            parser.error("binary --data-import requires --split-support")
        rendered = generate_binary(args.n, light=args.light)
    elif args.kind == "qary":
        rendered = generate_qary(args.q, args.n)
    else:
        raise AssertionError(args.kind)

    if args.output is None:
        print(rendered, end="")
    else:
        args.output.write_text(rendered)


if __name__ == "__main__":
    main()
