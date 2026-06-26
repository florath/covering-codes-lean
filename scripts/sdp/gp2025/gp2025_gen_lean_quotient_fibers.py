#!/usr/bin/env python3
"""Generate Lean quotient-fiber data for GP 2025 binary compact support."""

from __future__ import annotations

import argparse
from dataclasses import dataclass
import re
from pathlib import Path

from gp2025_gen_support import (
    binary_orbit_name,
    binary_orbits,
    binary_quad,
    determine_binary_quotient_numbers,
)


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
class BinaryQuotientFiberConfig:
    n: int
    r: int
    name: str
    qvars: int
    full_vars: int
    module_prefix: str
    support: Path
    support_prefix: str

    @property
    def qvar_type(self) -> str:
        return f"{self.name}QVar"

    @property
    def quotient_of_orbit_fin(self) -> str:
        return f"{self.support_prefix}QuotientOfOrbitFin"

    @property
    def quotient_fiber(self) -> str:
        return f"{self.support_prefix}QuotientFiber"

    @property
    def quotient_linexpr(self) -> str:
        return f"{self.support_prefix}QuotientLinExpr"

    @property
    def orbit_of_fin(self) -> str:
        return f"{self.support_prefix}OrbitOfFin"


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


def default_support_path(n: int) -> Path:
    if n not in NAT_WORD:
        raise ValueError(f"no binary support file configured for n={n}")
    return Path(
        "CoveringCodes/SDP/GijswijtPolak2025/Generated/"
        f"BinaryLength{NAT_WORD[n]}Support.lean"
    )


def parse_mapping(config: BinaryQuotientFiberConfig) -> list[int]:
    support = config.support
    text = support.read_text()
    pattern = re.compile(r"\|\s*⟨(\d+), _⟩\s*=>\s*⟨(\d+), by omega⟩")
    mapping: dict[int, int] = {}
    in_def = False
    fin_def = f"def {config.quotient_of_orbit_fin}"
    orbit_def = f"def {config.support_prefix}QuotientOfOrbit"
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
    if sorted(mapping) != list(range(config.full_vars)):
        missing = sorted(set(range(config.full_vars)) - set(mapping))
        raise SystemExit(
            f"did not parse all {config.full_vars} orbit mappings; "
            f"missing {missing[:10]}"
        )
    return [mapping[i] for i in range(config.full_vars)]


def enumerated_mapping(config: BinaryQuotientFiberConfig) -> list[int]:
    orbits = binary_orbits(config.n)
    if len(orbits) != config.full_vars:
        raise SystemExit(
            f"enumerated full orbit count {len(orbits)} != {config.full_vars}"
        )
    quotient_numbers = determine_binary_quotient_numbers(config.n)
    quotient_ids = [
        quotient_numbers[binary_quad(config.n, orbit)] - 1
        for orbit in orbits
    ]
    quotient_count = max(quotient_ids, default=-1) + 1
    if quotient_count != config.qvars:
        raise SystemExit(
            f"enumerated quotient count {quotient_count} != {config.qvars}"
        )
    return quotient_ids


def fin(idx: int) -> str:
    return f"⟨{idx}, by decide⟩"


def emit_support_layer(
    lines: list[str],
    mapping: list[int],
    config: BinaryQuotientFiberConfig,
) -> None:
    orbits = binary_orbits(config.n)
    names = [
        binary_orbit_name(config.support_prefix, orbit, config.n)
        for orbit in orbits
    ]
    lines.extend([
        f"def {config.orbit_of_fin} : Fin {config.full_vars} -> BinaryOrbitIndex {config.n}",
    ])
    for pos, name in enumerate(names):
        lines.append(f"  | ⟨{pos}, _⟩ => {name}")
    lines.extend([
        f"  | ⟨m + {config.full_vars}, h⟩ => by omega",
        "",
        f"abbrev {config.support_prefix}QuotientIndex := Fin {config.qvars}",
        "",
        f"def {config.quotient_of_orbit_fin} : Fin {config.full_vars} ->",
        f"    {config.support_prefix}QuotientIndex",
    ])
    for pos, quotient_id in enumerate(mapping):
        lines.append(f"  | ⟨{pos}, _⟩ => ⟨{quotient_id}, by omega⟩")
    lines.extend([
        f"  | ⟨m + {config.full_vars}, h⟩ => by omega",
        "",
    ])


def emit(
    output: Path,
    mapping: list[int],
    config: BinaryQuotientFiberConfig,
    emit_local_support: bool = False,
    list_backed: bool = False,
) -> None:
    fibers: list[list[int]] = [[] for _ in range(config.qvars)]
    for full, quotient in enumerate(mapping):
        if quotient < 0 or quotient >= config.qvars:
            raise SystemExit(
                f"quotient index {quotient} outside [0, {config.qvars})"
            )
        fibers[quotient].append(full)
    seen = sorted(idx for fiber in fibers for idx in fiber)
    if seen != list(range(config.full_vars)):
        raise SystemExit(
            f"quotient fibers do not partition [0, {config.full_vars})"
        )
    support_description = (
        "length-thirteen"
        if config.support_prefix == "binaryLengthThirteen"
        else config.support_prefix
    )

    lines: list[str] = [
        f"import {config.module_prefix}.Core",
        "",
        "/-!",
        f"# Generated quotient fibers for `(q,n,r) = (2,{config.n},{config.r})`",
        "",
        f"This file is generated from the {support_description} quotient map.",
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
    ]
    if emit_local_support:
        emit_support_layer(lines, mapping, config)
    if list_backed:
        lines.append(
            f"def {config.quotient_fiber}List : {config.qvar_type} -> List (Fin {config.full_vars})"
        )
        for q, members in enumerate(fibers):
            entries = ", ".join(fin(idx) for idx in members)
            lines.append(f"  | ⟨{q}, _⟩ => [{entries}]")
        lines.extend([
            f"  | ⟨m + {config.qvars}, h⟩ => by omega",
            "",
            f"def {config.quotient_fiber} (q : {config.qvar_type}) :",
            f"    Finset (Fin {config.full_vars}) :=",
            f"  ({config.quotient_fiber}List q).toFinset",
            "",
        ])
    else:
        lines.append(
            f"def {config.quotient_fiber} : {config.qvar_type} -> Finset (Fin {config.full_vars})"
        )
        for q, members in enumerate(fibers):
            entries = ", ".join(fin(idx) for idx in members)
            lines.append(
                f"  | ⟨{q}, _⟩ => "
                f"{{ val := ([{entries}] : List (Fin {config.full_vars})), "
                "nodup := by native_decide }"
            )
        lines.extend([
            f"  | ⟨m + {config.qvars}, h⟩ => by omega",
            "",
        ])
    lines.extend([
        f"def {config.quotient_linexpr}",
        f"    (expr : LinExpr (BinaryOrbitIndex {config.n})) : LinExpr {config.qvar_type} where",
        f"  coeff q := ({config.quotient_fiber} q).sum",
        f"    (fun idx => expr.coeff ({config.orbit_of_fin} idx))",
        "  const := expr.const",
        "",
        f"theorem {config.quotient_fiber}_eq_filter",
        f"    (q : {config.qvar_type}) :",
        f"    {config.quotient_fiber} q =",
        "      Finset.univ.filter",
        f"        (fun idx : Fin {config.full_vars} => {config.quotient_of_orbit_fin} idx = q) := by",
        "  fin_cases q <;> decide",
        "",
        "end",
        "",
        "end GijswijtPolak2025",
        "end SDP",
        "end CoveringCodes",
        "",
    ])
    output.write_text("\n".join(lines))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--n", type=int, default=13)
    parser.add_argument("--r", type=int, default=1)
    parser.add_argument("--qvars", type=int)
    parser.add_argument("--full-vars", type=int)
    parser.add_argument(
        "--module-prefix",
        default="CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1",
    )
    parser.add_argument("--name", default="binaryK2_13_1")
    parser.add_argument(
        "--support",
        type=Path,
        default=None,
    )
    parser.add_argument(
        "--source",
        choices=["support", "enumerate"],
        default="support",
        help="read quotient map from support file or enumerate it in Python",
    )
    parser.add_argument(
        "--emit-local-support",
        action="store_true",
        help="emit OrbitOfFin and QuotientOfOrbitFin locally for light support smokes",
    )
    parser.add_argument(
        "--list-backed",
        action="store_true",
        help="emit QuotientFiber through a list-backed definition",
    )
    parser.add_argument(
        "--output",
        type=Path,
        default=Path(
            "CoveringCodes/SDP/GijswijtPolak2025/Generated/"
            "BinaryK2_13_1/QuotientFiber.lean"
        ),
    )
    args = parser.parse_args()
    qvars = args.qvars
    if qvars is None:
        quotient_numbers = determine_binary_quotient_numbers(args.n)
        qvars = max(quotient_numbers.values(), default=0)
    config = BinaryQuotientFiberConfig(
        n=args.n,
        r=args.r,
        name=args.name,
        qvars=qvars,
        full_vars=args.full_vars or binary_full_orbit_count(args.n),
        module_prefix=args.module_prefix,
        support=args.support or default_support_path(args.n),
        support_prefix=binary_length_prefix(args.n),
    )
    if args.source == "support":
        mapping = parse_mapping(config)
    else:
        mapping = enumerated_mapping(config)
    emit(
        args.output,
        mapping,
        config,
        emit_local_support=args.emit_local_support,
        list_backed=args.list_backed
        or (
            args.n == 13
            and args.r == 1
            and args.name == "binaryK2_13_1"
            and qvars == 123
            and config.full_vars == 560
        ),
    )


if __name__ == "__main__":
    main()
