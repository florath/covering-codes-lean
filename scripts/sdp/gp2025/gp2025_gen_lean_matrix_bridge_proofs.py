#!/usr/bin/env python3
"""Generate Lean matrix quotient bridge proof blocks for the GP 2025 instance."""

from __future__ import annotations

import argparse
from pathlib import Path


BLOCK_SIZES = [
    14, 12, 10, 8, 6, 4, 2,
    15, 12, 10, 8, 6, 4, 2,
    15, 12, 10, 8, 6, 4, 2,
    15, 12, 10, 8, 6, 4, 2,
]

LASSERRE_BLOCKS = set(range(14, 28))
QVAR_COUNT = 123
COEFF_CHUNK_SIZE = 10


def module_prelude(imports: list[str], title: str) -> list[str]:
    lines = [f"import {module}" for module in imports]
    lines.extend(
        [
            "",
            "/-!",
            f"# {title}",
            "",
            "This file is generated.  It contains exact finite matrix bridge",
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


def block_atom(block: int) -> str:
    if 0 <= block <= 6:
        return (
            f"BinaryTableMatrixAtom.primal "
            f"({{ k := {block}, hk := by omega }} : BinaryBlockIndex 13)"
        )
    if block == 7:
        return "BinaryTableMatrixAtom.complementZero"
    if 8 <= block <= 13:
        k = block - 7
        return (
            "BinaryTableMatrixAtom.complementPositive "
            f"⟨({{ k := {k}, hk := by omega }} : BinaryBlockIndex 13), by decide⟩"
        )
    if block == 14:
        return "BinaryTableMatrixAtom.lasserreZero BinaryTableInequality.sphere"
    if 15 <= block <= 20:
        k = block - 14
        return (
            "BinaryTableMatrixAtom.lasserrePositive BinaryTableInequality.sphere "
            f"⟨({{ k := {k}, hk := by omega }} : BinaryBlockIndex 13), by decide⟩"
        )
    if block == 21:
        return "BinaryTableMatrixAtom.lasserreZero BinaryTableInequality.vanWee"
    if 22 <= block <= 27:
        k = block - 21
        return (
            "BinaryTableMatrixAtom.lasserrePositive BinaryTableInequality.vanWee "
            f"⟨({{ k := {k}, hk := by omega }} : BinaryBlockIndex 13), by decide⟩"
        )
    raise ValueError(f"unknown block {block}")


def block_theorem(name: str, block: int) -> str:
    return f"{name}MatrixAtom_of_table_block{block}"


def row_theorem(name: str, block: int, row: int) -> str:
    return f"{name}MatrixAtomExpr_block{block}_row{row}"


def row_module(module_prefix: str, block: int, row: int) -> str:
    return f"{module_prefix}.BridgeMatrixBlock{block}Row{row}"


def entry_theorem(name: str, block: int, row: int, col: int) -> str:
    return f"{name}MatrixAtomExpr_block{block}_row{row}_col{col}"


def entry_module(module_prefix: str, block: int, row: int, col: int) -> str:
    return f"{module_prefix}.BridgeMatrixBlock{block}Row{row}Col{col}"


def entry_coeff_theorem(name: str, block: int, row: int, col: int, qvar: int) -> str:
    return f"{name}MatrixAtomExpr_block{block}_row{row}_col{col}_coeff{qvar}"


def entry_coeff_chunk_module(
        module_prefix: str, block: int, row: int, col: int, chunk: int) -> str:
    return f"{module_prefix}.BridgeMatrixBlock{block}Row{row}Col{col}Coeff{chunk}"


def entry_rhs(name: str, block: int, row_term: str, col_term: str) -> list[str]:
    atom = block_atom(block)
    if block in (7, 14, 21):
        return [
            "binaryLengthThirteenQuotientLinExpr",
            f"        ((binaryLengthThirteenTableMatrixAtomExprFin ({atom}))",
            f"          (binaryK2_13_1BorderCoordEquiv.symm {row_term})",
            f"          (binaryK2_13_1BorderCoordEquiv.symm {col_term}))",
        ]
    return [
        "binaryLengthThirteenQuotientLinExpr",
        f"        ((binaryLengthThirteenTableMatrixAtomExprFin ({atom})) {row_term} {col_term})",
    ]


def emit_entry_coeff_chunk(
        output_dir: Path,
        module_prefix: str,
        name: str,
        block: int,
        row: int,
        col: int,
        chunk: int,
) -> str:
    size = BLOCK_SIZES[block]
    row_term = f"(⟨{row}, by decide⟩ : Fin {size})"
    col_term = f"(⟨{col}, by decide⟩ : Fin {size})"
    rhs_lines = entry_rhs(name, block, row_term, col_term)
    start = chunk * COEFF_CHUNK_SIZE
    end = min(start + COEFF_CHUNK_SIZE, QVAR_COUNT)
    lines = module_prelude(
        [f"{module_prefix}.Bridge"],
        (
            "Generated matrix bridge coefficient checks for "
            f"block {block}, row {row}, column {col}, chunk {chunk}"
        ),
    )
    for qvar in range(start, end):
        qterm = f"(⟨{qvar}, by decide⟩ : {name}QVar)"
        lines.extend(
            [
                f"theorem {entry_coeff_theorem(name, block, row, col, qvar)} :",
                f"    ({name}MatrixAtomExprBlock{block} {row_term} {col_term}).coeff {qterm} =",
                f"      ({rhs_lines[0]}",
            ]
        )
        lines.extend(f"        {line}" for line in rhs_lines[1:])
        lines.extend(
            [
                f"      ).coeff {qterm} := by",
                "  native_decide",
                "",
            ]
        )
    lines.extend(module_postlude())
    path = output_dir / f"BridgeMatrixBlock{block}Row{row}Col{col}Coeff{chunk}.lean"
    path.write_text("\n".join(lines))
    return entry_coeff_chunk_module(module_prefix, block, row, col, chunk)


def emit_entry(
        output_dir: Path,
        module_prefix: str,
        name: str,
        block: int,
        row: int,
        col: int,
        coeff_imports: list[str] | None = None,
) -> str:
    atom = block_atom(block)
    theorem = entry_theorem(name, block, row, col)
    size = BLOCK_SIZES[block]
    row_term = f"(⟨{row}, by decide⟩ : Fin {size})"
    col_term = f"(⟨{col}, by decide⟩ : Fin {size})"
    lines = module_prelude(
        coeff_imports if coeff_imports is not None else [f"{module_prefix}.Bridge"],
        f"Generated matrix bridge entry check for block {block}, row {row}, column {col}",
    )
    if block in (7, 14, 21):
        lines.extend(
            [
                f"theorem {theorem} :",
                f"    {name}MatrixAtomExprBlock{block} {row_term} {col_term} =",
                "      binaryLengthThirteenQuotientLinExpr",
                f"        ((binaryLengthThirteenTableMatrixAtomExprFin ({atom}))",
                f"          (binaryK2_13_1BorderCoordEquiv.symm {row_term})",
                f"          (binaryK2_13_1BorderCoordEquiv.symm {col_term})) := by",
            ]
        )
    else:
        lines.extend(
            [
                f"theorem {theorem} :",
                f"    {name}MatrixAtomExprBlock{block} {row_term} {col_term} =",
                "      binaryLengthThirteenQuotientLinExpr",
                f"        ((binaryLengthThirteenTableMatrixAtomExprFin ({atom})) {row_term} {col_term}) := by",
            ]
        )
    if block in LASSERRE_BLOCKS:
        lines.extend(
            [
                "  rw [LinExpr.mk.injEq]",
                "  constructor",
                "  · funext q",
                "    fin_cases q",
            ]
        )
        for qvar in range(QVAR_COUNT):
            lines.append(
                f"    · exact {entry_coeff_theorem(name, block, row, col, qvar)}"
            )
        lines.extend(
            [
                "  · native_decide",
                "",
            ]
        )
    else:
        lines.extend(
            [
                "  apply linExpr_eq_of_finData_eq; native_decide",
                "",
            ]
        )
    lines.extend(module_postlude())
    path = output_dir / f"BridgeMatrixBlock{block}Row{row}Col{col}.lean"
    path.write_text("\n".join(lines))
    return entry_module(module_prefix, block, row, col)


def emit_row(
        output_dir: Path,
        module_prefix: str,
        name: str,
        block: int,
        row: int,
        entry_imports: list[str],
) -> str:
    atom = block_atom(block)
    theorem = row_theorem(name, block, row)
    size = BLOCK_SIZES[block]
    row_term = f"(⟨{row}, by decide⟩ : Fin {size})"
    lines = module_prelude(
        entry_imports,
        f"Generated matrix bridge row check for block {block}, row {row}",
    )
    if block in (7, 14, 21):
        lines.extend(
            [
                f"theorem {theorem} (col : Fin {size}) :",
                f"    {name}MatrixAtomExprBlock{block} {row_term} col =",
                "      binaryLengthThirteenQuotientLinExpr",
                f"        ((binaryLengthThirteenTableMatrixAtomExprFin ({atom}))",
                f"          (binaryK2_13_1BorderCoordEquiv.symm {row_term})",
                "          (binaryK2_13_1BorderCoordEquiv.symm col)) := by",
                "  fin_cases col",
            ]
        )
    else:
        lines.extend(
            [
                f"theorem {theorem} (col : Fin {size}) :",
                f"    {name}MatrixAtomExprBlock{block} {row_term} col =",
                "      binaryLengthThirteenQuotientLinExpr",
                f"        ((binaryLengthThirteenTableMatrixAtomExprFin ({atom})) {row_term} col) := by",
                "  fin_cases col",
            ]
        )
    for col in range(size):
        lines.append(f"  · exact {entry_theorem(name, block, row, col)}")
    lines.append("")
    lines.extend(module_postlude())
    path = output_dir / f"BridgeMatrixBlock{block}Row{row}.lean"
    path.write_text("\n".join(lines))
    return row_module(module_prefix, block, row)


def emit_block(
        output_dir: Path,
        module_prefix: str,
        name: str,
        block: int,
        row_imports: list[str],
) -> str:
    atom = block_atom(block)
    theorem = block_theorem(name, block)
    block_term = f"(⟨{block}, by decide⟩ : {name}Block)"
    size = BLOCK_SIZES[block]
    lines = module_prelude(
        row_imports,
        f"Generated matrix bridge proof for block {block}",
    )
    lines.extend(
        [
            f"theorem {theorem}",
            "    (x : BinaryX 13) (hx : BinaryTableConstraints 13 1 x) :",
            f"    RatPSD (MatrixLinExpr.eval ({name}MatrixAtomExpr {block_term}) "
            f"({name}Project x)) := by",
            f"  have hfull := hx.2 ({name}FullMatrixAtom {block_term})",
        ]
    )
    if block in (7, 14, 21):
        lines.extend(
            [
                "  have hpsd : RatPSD (reindexMatrix binaryK2_13_1BorderCoordEquiv",
                f"      (MatrixLinExpr.eval (binaryTableMatrixAtomExpr (n:=13) (r:=1) ({atom})) x)) := by",
                "    exact (RatPSD.reindex_iff binaryK2_13_1BorderCoordEquiv",
                f"      (MatrixLinExpr.eval (binaryTableMatrixAtomExpr (n:=13) (r:=1) ({atom})) x)).mpr hfull",
                "  convert hpsd using 2",
                "  ext row col",
                f"  change ({name}MatrixAtomExprBlock{block} row col).eval ({name}Project x) =",
                f"    ((binaryTableMatrixAtomExpr (n:=13) (r:=1) ({atom}))",
                "      (binaryK2_13_1BorderCoordEquiv.symm row)",
                "      (binaryK2_13_1BorderCoordEquiv.symm col)).eval x",
                f"  have hentry : {name}MatrixAtomExprBlock{block} row col =",
                "      binaryLengthThirteenQuotientLinExpr",
                f"        ((binaryLengthThirteenTableMatrixAtomExprFin ({atom}))",
                "          (binaryK2_13_1BorderCoordEquiv.symm row)",
                "          (binaryK2_13_1BorderCoordEquiv.symm col)) := by",
                "    fin_cases row",
            ]
        )
    else:
        lines.extend(
            [
                "  convert hfull using 2",
                "  ext row col",
                f"  change ({name}MatrixAtomExprBlock{block} row col).eval ({name}Project x) =",
                f"    ((binaryTableMatrixAtomExpr (n:=13) (r:=1) ({atom})) row col).eval x",
                f"  have hentry : {name}MatrixAtomExprBlock{block} row col =",
                "      binaryLengthThirteenQuotientLinExpr",
                f"        ((binaryLengthThirteenTableMatrixAtomExprFin ({atom})) row col) := by",
                "    fin_cases row",
            ]
        )
    for row in range(size):
        lines.append(f"    · exact {row_theorem(name, block, row)} col")
    lines.extend(
        [
            "  rw [hentry]",
            f"  rw [{name}QuotientLinExpr_eval_project_eq _ x hx]",
            "  rw [binaryLengthThirteenTableMatrixAtomExprFin_eval_eq]",
            "",
        ]
    )
    lines.extend(module_postlude())
    path = output_dir / f"BridgeMatrixBlock{block}.lean"
    path.write_text("\n".join(lines))
    return f"{module_prefix}.BridgeMatrixBlock{block}"


def emit_aggregator(output_dir: Path, module_prefix: str, name: str, imports: list[str]) -> None:
    lines = module_prelude(imports, "Generated matrix bridge theorem")
    lines.extend(
        [
            f"theorem {name}MatrixAtoms_of_table",
            "    (x : BinaryX 13) (hx : BinaryTableConstraints 13 1 x) :",
            f"    forall b : {name}Block,",
            f"      RatPSD (MatrixLinExpr.eval ({name}MatrixAtomExpr b) ({name}Project x)) := by",
            "  intro b",
            "  fin_cases b",
        ]
    )
    for block in range(len(BLOCK_SIZES)):
        lines.append(f"  · exact {block_theorem(name, block)} x hx")
    lines.append("")
    lines.extend(module_postlude())
    (output_dir / "BridgeMatrix.lean").write_text("\n".join(lines))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument(
        "--module-prefix",
        default="CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1",
    )
    parser.add_argument("--name", default="binaryK2_13_1")
    args = parser.parse_args()

    args.output_dir.mkdir(parents=True, exist_ok=True)
    imports = []
    for block in range(len(BLOCK_SIZES)):
        row_imports = [
            emit_row(
                args.output_dir,
                args.module_prefix,
                args.name,
                block,
                row,
                [
                    emit_entry(
                        args.output_dir,
                        args.module_prefix,
                        args.name,
                        block,
                        row,
                        col,
                        [
                            emit_entry_coeff_chunk(
                                args.output_dir,
                                args.module_prefix,
                                args.name,
                                block,
                                row,
                                col,
                                chunk,
                            )
                            for chunk in range((QVAR_COUNT + COEFF_CHUNK_SIZE - 1)
                                               // COEFF_CHUNK_SIZE)
                        ] if block in LASSERRE_BLOCKS else None,
                    )
                    for col in range(BLOCK_SIZES[block])
                ],
            )
            for row in range(BLOCK_SIZES[block])
        ]
        imports.append(
            emit_block(args.output_dir, args.module_prefix, args.name, block, row_imports)
        )
    emit_aggregator(args.output_dir, args.module_prefix, args.name, imports)


if __name__ == "__main__":
    main()
