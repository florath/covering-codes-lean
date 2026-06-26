#!/usr/bin/env python3
"""Generate Lean scalar quotient bridge proof chunks for a GP 2025 instance."""

from __future__ import annotations

import argparse
import sys
from pathlib import Path


def module_prelude(imports: list[str], title: str) -> list[str]:
    lines: list[str] = [f"import {module}" for module in imports]
    lines.extend(
        [
            "",
            "/-!",
            f"# {title}",
            "",
            "This file is generated.  It contains exact finite scalar bridge",
            "checks for the quotient SDP model.",
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
    )
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


def chunk_theorem(name: str, chunk: int, start: int, end: int) -> str:
    return f"{name}LinearAtomExpr_eq_quotientScalarChunk{chunk}"


def dispatch_theorem(name: str, group: int) -> str:
    return f"{name}LinearAtomExpr_eq_quotientScalarDispatch{group}"


def atom_expr(name: str, idx_expr: str) -> str:
    return (
        f"({name}LinearAtomExpr ({idx_expr} : {name}LinAtom)) =\n"
        "      binaryLengthThirteenQuotientLinExpr\n"
        "        (binaryLengthThirteenTableScalarAtomExprFin\n"
        f"          ({name}FullScalarAtom ({idx_expr} : {name}LinAtom)))"
    )


def closed_atom_expr(name: str, idx: int) -> list[str]:
    idx_expr = f"⟨{idx}, by decide⟩"
    return [
        f"      ({name}LinearAtomExpr ({idx_expr} : {name}LinAtom)) =",
        "        binaryLengthThirteenQuotientLinExpr",
        "          (binaryLengthThirteenTableScalarAtomExprFin",
        f"            ({name}FullScalarAtom ({idx_expr} : {name}LinAtom)))",
    ]


def emit_chunk(
    output_dir: Path,
    module_prefix: str,
    name: str,
    chunk: int,
    start: int,
    end: int,
    scalar_count: int,
) -> str:
    theorem = chunk_theorem(name, chunk, start, end)
    lines = module_prelude(
        [f"{module_prefix}.Bridge"],
        f"Generated scalar bridge proof chunk {chunk}",
    )
    lines.extend(
        [
            f"theorem {theorem}",
            f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
            "    " + atom_expr(name, f"⟨idx, by omega⟩"),
            "    := by",
        ]
    )
    if end == start + 1:
        lines.extend(
            [
                f"  have hidx : idx = {start} := by omega",
                "  subst idx",
                "  change",
                *closed_atom_expr(name, start),
                "  apply linExpr_eq_of_finData_eq",
                "  native_decide",
            ]
        )
    else:
        lines.append("  interval_cases idx")
    for idx in ([] if end == start + 1 else range(start, end)):
        lines.extend(
            [
                "  · change",
                *closed_atom_expr(name, idx),
                "    apply linExpr_eq_of_finData_eq",
                "    native_decide",
            ]
        )
    lines.extend(module_postlude())
    (output_dir / f"BridgeScalarProof{chunk}.lean").write_text("\n".join(lines))
    return f"{module_prefix}.BridgeScalarProof{chunk}"


def emit_aggregator(
    output_dir: Path,
    module_prefix: str,
    name: str,
    imports: list[str],
    groups: list[tuple[int, int, str]],
) -> None:
    sys.setrecursionlimit(max(sys.getrecursionlimit(), len(groups) + 100))
    lines = module_prelude(imports, "Generated scalar bridge theorem")
    lines.extend(
        [
            f"theorem {name}LinearAtomExpr_eq_quotientScalar",
            f"    (atom : {name}LinAtom) :",
            "    " + atom_expr(name, "atom"),
            "    := by",
            "  rcases atom with ⟨idx, hidx⟩",
        ]
    )
    def emit_dispatch(group: int, indent: str) -> None:
        start, end, theorem = groups[group]
        if group + 1 < len(groups):
            lines.extend(
                [
                    f"{indent}by_cases h{group} : idx < {end}",
                    f"{indent}· exact {theorem} idx (by omega) h{group}",
                    f"{indent}·",
                ]
            )
            emit_dispatch(group + 1, indent + "  ")
        else:
            lines.extend(
                [
                    f"{indent}exact {theorem} idx (by omega) (by omega)",
                ]
            )
    emit_dispatch(0, "  ")
    lines.extend(
        [
            "",
            f"theorem {name}LinearAtoms_of_table",
            f"    (x : BinaryX 13) (hx : BinaryTableConstraints 13 1 x) :",
            f"    LinearConstraints {name}LinearAtomExpr ({name}Project x) := by",
            "  intro atom",
            f"  rw [{name}LinearAtomExpr_eq_quotientScalar atom]",
            f"  rw [{name}QuotientLinExpr_eval_project_eq _ x hx]",
            "  rw [binaryLengthThirteenTableScalarAtomExprFin_eval_eq]",
            f"  exact hx.1 ({name}FullScalarAtom atom)",
            "",
        ]
    )
    lines.extend(module_postlude())
    (output_dir / "BridgeScalar.lean").write_text("\n".join(lines))


def emit_dispatch_module(
    output_dir: Path,
    module_prefix: str,
    name: str,
    group: int,
    chunk_modules: list[str],
    chunk_entries: list[tuple[int, int, int]],
) -> str:
    theorem_name = dispatch_theorem(name, group)
    start = chunk_entries[0][1]
    end = chunk_entries[-1][2]
    lines = module_prelude(
        chunk_modules,
        f"Generated scalar bridge dispatch group {group}",
    )
    lines.extend(
        [
            f"theorem {theorem_name}",
            f"    (idx : Nat) (hlo : {start} <= idx) (hhi : idx < {end}) :",
            "    " + atom_expr(name, f"⟨idx, by omega⟩"),
            "    := by",
        ]
    )

    def emit_dispatch(local : int, indent: str) -> None:
        chunk, _start, _end = chunk_entries[local]
        theorem = chunk_theorem(name, chunk, _start, _end)
        if local + 1 < len(chunk_entries):
            lines.extend(
                [
                    f"{indent}by_cases h{chunk} : idx < {_end}",
                    f"{indent}· exact {theorem} idx (by omega) h{chunk}",
                    f"{indent}·",
                ]
            )
            emit_dispatch(local + 1, indent + "  ")
        else:
            lines.append(f"{indent}exact {theorem} idx (by omega) (by omega)")

    emit_dispatch(0, "  ")
    lines.extend(module_postlude())
    path = output_dir / f"BridgeScalarDispatch{group}.lean"
    path.write_text("\n".join(lines))
    return f"{module_prefix}.BridgeScalarDispatch{group}"


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument(
        "--module-prefix",
        default="CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1",
    )
    parser.add_argument("--name", default="binaryK2_13_1")
    parser.add_argument("--scalar-count", type=int, default=6283)
    parser.add_argument("--chunk-size", type=int, default=100)
    parser.add_argument(
        "--split-at",
        type=int,
        default=None,
        help="Use --chunk-size below this atom index and --tail-chunk-size from it onward.",
    )
    parser.add_argument("--tail-chunk-size", type=int, default=None)
    parser.add_argument("--dispatch-size", type=int, default=100)
    args = parser.parse_args()

    args.output_dir.mkdir(parents=True, exist_ok=True)
    imports: list[str] = []
    chunks: list[tuple[int, int]] = []
    if args.split_at is None:
        for start in range(0, args.scalar_count, args.chunk_size):
            chunks.append((start, min(start + args.chunk_size, args.scalar_count)))
    else:
        tail_chunk_size = args.tail_chunk_size or args.chunk_size
        split_at = min(max(args.split_at, 0), args.scalar_count)
        for start in range(0, split_at, args.chunk_size):
            chunks.append((start, min(start + args.chunk_size, split_at)))
        for start in range(split_at, args.scalar_count, tail_chunk_size):
            chunks.append((start, min(start + tail_chunk_size, args.scalar_count)))

    for chunk, (start, end) in enumerate(chunks):
        imports.append(
            emit_chunk(
                args.output_dir,
                args.module_prefix,
                args.name,
                chunk,
                start,
                end,
                args.scalar_count,
            )
        )

    dispatch_imports: list[str] = []
    groups: list[tuple[int, int, str]] = []
    for group, group_start in enumerate(range(0, len(chunks), args.dispatch_size)):
        group_chunk_entries: list[tuple[int, int, int]] = []
        group_imports: list[str] = []
        for chunk in range(group_start, min(group_start + args.dispatch_size, len(chunks))):
            start, end = chunks[chunk]
            group_chunk_entries.append((chunk, start, end))
            group_imports.append(imports[chunk])
        group_module = emit_dispatch_module(
            args.output_dir,
            args.module_prefix,
            args.name,
            group,
            group_imports,
            group_chunk_entries,
        )
        dispatch_imports.append(group_module)
        groups.append((group_chunk_entries[0][1], group_chunk_entries[-1][2], dispatch_theorem(args.name, group)))

    emit_aggregator(
        args.output_dir,
        args.module_prefix,
        args.name,
        dispatch_imports,
        groups,
    )


if __name__ == "__main__":
    main()
