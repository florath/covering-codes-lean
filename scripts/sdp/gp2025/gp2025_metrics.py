#!/usr/bin/env python3
"""Report lightweight metrics for the GP2025 generated Lean baseline.

The default mode only reads files and prints recommended build commands.  Use
``--run-target`` to run one of those commands explicitly.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import math
import re
import subprocess
import sys
import time
from collections import Counter, defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable


ROOT = Path(__file__).resolve().parents[3]
GP2025_GENERATED_REL = "CoveringCodes/SDP/GijswijtPolak2025/Generated"
GP2025_GENERATED = ROOT / GP2025_GENERATED_REL
K2_GENERATED = GP2025_GENERATED / "BinaryK2_13_1"
K2_PROVENANCE = K2_GENERATED / "CertificateProvenance.json"
DATABASE_TABLE_IMPORT = ROOT / "CoveringCodes" / "Database" / "GeneratedTable.lean"
DATABASE_TABLE_CHUNKS = ROOT / "CoveringCodes" / "Database" / "GeneratedTable"
LOCAL_EXTRA_WARNING_BYTES = 50 * 1024 * 1024

RECOMMENDED_TARGETS: dict[str, tuple[str, ...]] = {
    "full-objective-guard-smoke": (
        "python3",
        "scripts/sdp/gp2025/gp2025_safe_validate.py",
        "--target",
        "full-objective-guard-smoke",
        "--threads",
        "1",
        "--timeout",
        "300",
    ),
    "quotient-fiber": (
        "python3",
        "scripts/sdp/gp2025/gp2025_safe_validate.py",
        "--target",
        "quotient-fiber-build",
        "--threads",
        "2",
        "--timeout",
        "600",
    ),
    "bridge": (
        "python3",
        "scripts/sdp/gp2025/gp2025_safe_validate.py",
        "--target",
        "bridge-build",
        "--threads",
        "2",
        "--timeout",
        "1200",
    ),
    "compact-bridge": (
        "python3",
        "scripts/sdp/gp2025/gp2025_safe_validate.py",
        "--target",
        "compact-bridge-build",
        "--threads",
        "2",
        "--timeout",
        "1200",
    ),
    "compact-semantic": (
        "python3",
        "scripts/sdp/gp2025/gp2025_safe_validate.py",
        "--target",
        "compact-semantic-build",
        "--threads",
        "4",
        "--timeout",
        "1800",
    ),
    "full-objective-data": (
        "python3",
        "scripts/sdp/gp2025/gp2025_safe_validate.py",
        "--target",
        "full-objective-data-build",
        "--threads",
        "4",
    ),
    "full-objective-coeff0": (
        "python3",
        "scripts/sdp/gp2025/gp2025_safe_validate.py",
        "--target",
        "full-objective-coeff0-build",
        "--threads",
        "4",
    ),
    "full-aggregate-dual-literal-coeff0": (
        "python3",
        "scripts/sdp/gp2025/gp2025_safe_validate.py",
        "--target",
        "full-aggregate-dual-literal-coeff0-build",
        "--threads",
        "4",
    ),
    "full-objective": (
        "python3",
        "scripts/sdp/gp2025/gp2025_safe_validate.py",
        "--target",
        "full-objective-build",
        "--threads",
        "8",
        "--timeout",
        "3600",
    ),
    "compact-objective": (
        "python3",
        "scripts/sdp/gp2025/gp2025_safe_validate.py",
        "--target",
        "compact-objective-build",
        "--threads",
        "8",
        "--timeout",
        "2400",
    ),
    "compact-certificate": (
        "python3",
        "scripts/sdp/gp2025/gp2025_safe_validate.py",
        "--target",
        "compact-certificate-build",
        "--threads",
        "8",
        "--timeout",
        "3600",
    ),
    "instance": (
        "python3",
        "scripts/sdp/gp2025/gp2025_safe_validate.py",
        "--target",
        "instance-build",
        "--threads",
        "16",
        "--timeout",
        "3600",
    ),
    "gp2025": (
        "python3",
        "scripts/sdp/gp2025/gp2025_safe_validate.py",
        "--target",
        "root-gp2025-build",
        "--threads",
        "8",
        "--timeout",
        "7200",
    ),
    "covering-codes-exe": (
        "python3",
        "scripts/sdp/gp2025/gp2025_safe_validate.py",
        "--target",
        "covering-codes-exe-build",
        "--threads",
        "8",
        "--timeout",
        "7200",
    ),
    "covering-codes-full": (
        "python3",
        "scripts/sdp/gp2025/gp2025_safe_validate.py",
        "--target",
        "covering-codes-build",
        "--threads",
        "16",
        "--timeout",
        "21600",
    ),
}

FAMILY_PATTERNS: tuple[tuple[re.Pattern[str], str], ...] = tuple(
    (re.compile(pattern), family)
    for pattern, family in [
        (r"^CompactScalarGroup\d+SemanticCoeff\d+$", "CompactScalarGroupSemanticCoeff"),
        (r"^CompactScalarGroup\d+DirectSemanticExpr$", "CompactScalarGroupDirectSemanticExpr"),
        (r"^CompactScalarGroup\d+Semantic$", "CompactScalarGroupSemantic"),
        (r"^CompactScalarGroup\d+EqCoeff\d+$", "CompactScalarGroupEqCoeff"),
        (r"^CompactScalarGroup\d+Eq$", "CompactScalarGroupEq"),
        (r"^CompactScalarGroup\d+$", "CompactScalarGroup"),
        (r"^CompactScalarSourceChunk\d+SemanticCoeff\d+$", "CompactScalarSourceChunkSemanticCoeff"),
        (r"^CompactScalarSourceChunk\d+Semantic$", "CompactScalarSourceChunkSemantic"),
        (r"^CompactScalarSourceSemanticCoeff\d+$", "CompactScalarSourceSemanticCoeff"),
        (r"^CompactScalarSourceSemantic$", "CompactScalarSourceSemantic"),
        (r"^CompactScalarSourceEqCoeff\d+$", "CompactScalarSourceEqCoeff"),
        (r"^CompactScalarSourceEq$", "CompactScalarSourceEq"),
        (r"^CompactScalarSourceChunk\d+$", "CompactScalarSourceChunk"),
        (r"^CompactScalarSource$", "CompactScalarSource"),
        (r"^CompactScalarChunk\d+DirectSemanticExpr$", "CompactScalarChunkDirectSemanticExpr"),
        (r"^CompactScalarChunkData\d+$", "CompactScalarChunkData"),
        (r"^FullAggregateScalarChunk\d+SemanticData$", "FullAggregateScalarChunkSemanticData"),
        (r"^FullAggregateScalarChunk\d+RangeBridge$", "FullAggregateScalarChunkRangeBridge"),
        (r"^FullAggregateScalarChunk\d+$", "FullAggregateScalarChunk"),
        (r"^FullAggregateSemanticCoeff\d+$", "FullAggregateSemanticCoeff"),
        (r"^FullAggregateSemantic$", "FullAggregateSemantic"),
        (r"^FullObjectiveData$", "FullObjectiveData"),
        (r"^FullObjectiveCoeff\d+$", "FullObjectiveCoeff"),
        (r"^FullAggregateDualLiteralSemanticCoeff\d+$", "FullAggregateDualLiteralSemanticCoeff"),
        (r"^FullObjective$", "FullObjective"),
        (r"^CompactDataQuotientCoeff\d+$", "CompactDataQuotientCoeff"),
        (r"^CompactDataQuotientCoeff$", "CompactDataQuotientCoeff"),
        (r"^CompactDataQuotientCoeffEqChunk$", "CompactDataQuotientCoeff"),
        (r"^CompactPsdComponent\d+SemanticCoeff\d+$", "CompactPsdComponentSemanticCoeff"),
        (r"^CompactPsdComponent\d+Semantic$", "CompactPsdComponentSemantic"),
        (r"^CompactPsdComponentData\d+$", "CompactPsdComponentData"),
        (r"^FullAggregatePsd\d+$", "FullAggregatePsd"),
        (r"^CompactObjectiveSemanticCoeff\d+$", "CompactObjectiveSemanticCoeff"),
        (r"^CompactObjectiveDataEqCoeff\d+$", "CompactObjectiveDataEqCoeff"),
        (r"^Block\d+$", "Block"),
        (r"^WeightBlock\d+$", "WeightBlock"),
        (r"^Multiplier\d+$", "Multiplier"),
        (r"^Linear\d+$", "Linear"),
        (r"^QuotientFiber$", "QuotientFiber"),
        (r"^Bridge$", "Bridge"),
        (r"^BridgeScalar\d+$", "BridgeScalar"),
        (r"^Certificate$", "Certificate"),
    ]
)

SOURCE_ROUTE_FAMILIES: tuple[str, ...] = (
    "CompactScalarGroupSemanticCoeff",
    "CompactScalarGroupSemantic",
    "CompactScalarGroupDirectSemanticExpr",
    "CompactScalarSourceChunk",
    "CompactScalarSourceChunkSemantic",
    "CompactScalarSourceChunkSemanticCoeff",
    "CompactScalarSource",
    "CompactScalarSourceSemantic",
    "CompactScalarSourceSemanticCoeff",
    "CompactScalarSourceEq",
    "CompactScalarSourceEqCoeff",
)

FULL_SPARSE_FAMILIES: tuple[str, ...] = (
    "QuotientFiber",
    "Bridge",
    "Certificate",
    "CompactDataQuotientCoeff",
    "FullAggregateSemanticCoeff",
    "FullAggregateSemantic",
    "FullObjectiveData",
    "FullObjectiveCoeff",
    "FullAggregateDualLiteralSemanticCoeff",
    "FullObjective",
    "CompactObjective",
    "CompactCertificate",
)

FULL_SPARSE_MARKERS: tuple[tuple[str, str], ...] = (
    ("list-backed quotient fibers", "binaryLengthThirteenQuotientFiberList"),
    ("explicit full aggregate data", "FullAggregateDualExpressionData"),
    ("full aggregate const semantic", "FullAggregateDualExpression_const_semantic"),
    ("full aggregate coeff semantic", "FullAggregateDualExpression_coeff_semantic"),
    ("full objective stationarity route", "FullObjectiveExpression_eq_fullDual"),
    ("full objective coeff chunks", "FullObjectiveCoeff"),
    ("full aggregate dual literal chunks", "FullAggregateDualLiteralSemanticCoeff"),
    ("compact quotient coeff route", "CompactDataQuotientCoeff"),
    ("full aggregate semantic coeff chunks", "FullAggregateSemanticCoeff"),
)


@dataclass(frozen=True)
class FileMetrics:
    files: int
    bytes: int


@dataclass(frozen=True)
class TableMetrics:
    files: int
    chunks: int
    imports: int
    entries: int
    bytes: int


@dataclass(frozen=True)
class SourceRouteEstimate:
    qvars: int
    coeff_chunks: int
    source_chunks: int
    current_scalar_groups: int
    current_scalar_semantic_coeff_files: int
    current_group_semantic_files: int
    current_group_semantic_native_decides: int
    fallback_source_files: int
    fallback_source_native_decides: int
    structural_source_native_decides: int


def lean_files(root: Path) -> list[Path]:
    if not root.exists():
        return []
    return sorted(root.rglob("*.lean"))


def git_tracked_lean_files(root: Path) -> list[Path]:
    if not root.exists():
        return []
    output = run_capture(("git", "ls-files", "--", relative(root)))
    return sorted(
        ROOT / line
        for line in output.splitlines()
        if line.endswith(".lean")
    )


def tracked_lean_files(root: Path) -> list[Path]:
    return [path for path in git_tracked_lean_files(root) if path.exists()]


def missing_tracked_lean_files(root: Path) -> list[Path]:
    return [path for path in git_tracked_lean_files(root) if not path.exists()]


def file_metrics(paths: Iterable[Path]) -> FileMetrics:
    files = list(paths)
    return FileMetrics(files=len(files), bytes=sum(path.stat().st_size for path in files))


def relative(path: Path) -> str:
    try:
        return str(path.relative_to(ROOT))
    except ValueError:
        return str(path)


def format_bytes(size: int) -> str:
    units = ["B", "KiB", "MiB", "GiB"]
    value = float(size)
    for unit in units:
        if abs(value) < 1024.0 or unit == units[-1]:
            if unit == "B":
                return f"{size} {unit}"
            return f"{value:.1f} {unit}"
        value /= 1024.0
    raise AssertionError("unreachable")


def largest_files(paths: Iterable[Path], limit: int) -> list[tuple[Path, int]]:
    files = [(path, path.stat().st_size) for path in paths]
    return sorted(files, key=lambda item: (-item[1], relative(item[0])))[:limit]


def family_for(path: Path) -> str:
    stem = path.stem
    for pattern, family in FAMILY_PATTERNS:
        if pattern.match(stem):
            return family

    compact_stem = re.sub(r"\d+$", "", stem)
    compact_stem = re.sub(r"Coeff$", "Coeff", compact_stem)
    return compact_stem or stem


def native_decide_counts(paths: Iterable[Path]) -> tuple[int, int, Counter[str], Counter[str]]:
    occurrence_counts: Counter[str] = Counter()
    file_counts: Counter[str] = Counter()
    total_occurrences = 0
    files_with_native_decide = 0

    for path in paths:
        text = path.read_text(encoding="utf-8")
        count = text.count("native_decide")
        if count == 0:
            continue
        family = family_for(path)
        total_occurrences += count
        files_with_native_decide += 1
        occurrence_counts[family] += count
        file_counts[family] += 1

    return total_occurrences, files_with_native_decide, occurrence_counts, file_counts


def family_file_counts(paths: Iterable[Path]) -> tuple[Counter[str], Counter[str]]:
    file_counts: Counter[str] = Counter()
    byte_counts: Counter[str] = Counter()
    for path in paths:
        family = family_for(path)
        file_counts[family] += 1
        byte_counts[family] += path.stat().st_size
    return file_counts, byte_counts


def generated_table_metrics() -> TableMetrics:
    chunk_files = lean_files(DATABASE_TABLE_CHUNKS)
    table_files = []
    if DATABASE_TABLE_IMPORT.exists():
        table_files.append(DATABASE_TABLE_IMPORT)
    table_files.extend(chunk_files)

    imports = 0
    if DATABASE_TABLE_IMPORT.exists():
        imports = sum(
            1
            for line in DATABASE_TABLE_IMPORT.read_text(encoding="utf-8").splitlines()
            if line.startswith("import CoveringCodes.Database.GeneratedTable.Chunk")
        )

    entries = 0
    for path in chunk_files:
        entries += path.read_text(encoding="utf-8").count("{ key :=")

    metrics = file_metrics(table_files)
    return TableMetrics(
        files=metrics.files,
        chunks=len(chunk_files),
        imports=imports,
        entries=entries,
        bytes=metrics.bytes,
    )


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def run_capture(args: tuple[str, ...]) -> str:
    completed = subprocess.run(
        args,
        cwd=ROOT,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        check=False,
    )
    return completed.stdout.strip()


def git_summary() -> list[str]:
    head = run_capture(("git", "rev-parse", "--short", "HEAD")) or "unknown"
    branch = run_capture(("git", "branch", "--show-current")) or "unknown"
    status = run_capture(("git", "status", "--short", "--branch"))
    status_lines = status.splitlines()
    dirty_lines = [line for line in status_lines[1:] if line.strip()]

    lines = [f"branch: {branch}", f"HEAD: {head}"]
    if status_lines:
        lines.append(f"status: {status_lines[0]}")
    lines.append(f"tracked/untracked changes: {len(dirty_lines)}")
    if dirty_lines:
        lines.extend(f"  {line}" for line in dirty_lines[:12])
        if len(dirty_lines) > 12:
            lines.append(f"  ... {len(dirty_lines) - 12} more")
    return lines


def print_section(title: str) -> None:
    print()
    print(title)
    print("-" * len(title))


def print_file_metric(label: str, metrics: FileMetrics) -> None:
    print(f"{label}: {metrics.files:,} Lean files, {metrics.bytes:,} bytes ({format_bytes(metrics.bytes)})")


def print_local_generated_extra_warning(metrics: FileMetrics) -> None:
    print("WARNING: local Generated extras are present.")
    print("local extras are excluded from tracked/source release metrics")
    if metrics.bytes >= LOCAL_EXTRA_WARNING_BYTES:
        print(
            "WARNING: local Generated extras exceed "
            f"{format_bytes(LOCAL_EXTRA_WARNING_BYTES)}"
        )
    print("cleanup preview:")
    print(f"  git clean -ndX -- {GP2025_GENERATED_REL}")
    print("cleanup apply for ignored extras:")
    print(f"  git clean -fdX -- {GP2025_GENERATED_REL}")
    print("if preview is empty, review unignored extras before broader cleanup")


def print_missing_tracked_files(label: str, paths: list[Path]) -> None:
    if not paths:
        return
    print(f"{label}: {len(paths):,} tracked Lean files missing from worktree")
    for path in paths[:8]:
        print(f"  {relative(path)}")
    if len(paths) > 8:
        print(f"  ... {len(paths) - 8} more")


def print_native_decide_report(k2_files: list[Path]) -> None:
    total, files, occurrence_counts, file_counts = native_decide_counts(k2_files)
    print(f"total occurrences: {total:,}")
    print(f"files with native_decide: {files:,}")
    if not occurrence_counts:
        print("no native_decide occurrences found")
        return

    print(f"{'family':42} {'occurrences':>12} {'files':>8}")
    for family, occurrences in occurrence_counts.most_common():
        print(f"{family:42} {occurrences:12,} {file_counts[family]:8,}")


def print_source_route_family_report(k2_files: list[Path]) -> None:
    file_counts, byte_counts = family_file_counts(k2_files)
    _, _, native_occurrences, native_files = native_decide_counts(k2_files)

    print(
        f"{'family':42} {'files':>8} {'bytes':>12} "
        f"{'native_decide':>14} {'nd files':>8}"
    )
    for family in SOURCE_ROUTE_FAMILIES:
        print(
            f"{family:42} {file_counts[family]:8,} "
            f"{byte_counts[family]:12,} "
            f"{native_occurrences[family]:14,} {native_files[family]:8,}"
        )


def print_full_sparse_family_report(k2_files: list[Path]) -> None:
    file_counts, byte_counts = family_file_counts(k2_files)
    _, _, native_occurrences, native_files = native_decide_counts(k2_files)

    print(
        f"{'family':42} {'files':>8} {'bytes':>12} "
        f"{'native_decide':>14} {'nd files':>8}"
    )
    for family in FULL_SPARSE_FAMILIES:
        print(
            f"{family:42} {file_counts[family]:8,} "
            f"{byte_counts[family]:12,} "
            f"{native_occurrences[family]:14,} {native_files[family]:8,}"
        )


def marker_counts(paths: Iterable[Path]) -> dict[str, tuple[int, int]]:
    counts: dict[str, tuple[int, int]] = {}
    for label, marker in FULL_SPARSE_MARKERS:
        files = 0
        occurrences = 0
        for path in paths:
            count = path.read_text(encoding="utf-8").count(marker)
            if count == 0:
                continue
            files += 1
            occurrences += count
        counts[label] = (files, occurrences)
    return counts


def print_full_sparse_marker_report(k2_files: list[Path]) -> None:
    print(f"{'marker':42} {'files':>8} {'occurrences':>12}")
    for label, (files, occurrences) in marker_counts(k2_files).items():
        print(f"{label:42} {files:8,} {occurrences:12,}")


def print_certificate_provenance_report() -> None:
    tracked = bool(run_capture(("git", "ls-files", "--", relative(K2_PROVENANCE))))
    exists = K2_PROVENANCE.exists()
    print(f"path: {relative(K2_PROVENANCE)}")
    print(f"tracked: {'yes' if tracked else 'no'}")
    print(f"present: {'yes' if exists else 'no'}")
    if exists:
        print(f"sha256: {sha256_file(K2_PROVENANCE)}")
    else:
        print("status: missing; exact bundle/provenance is not yet available")
    print(
        "checker: python3 scripts/sdp/gp2025/gp2025_validate_certificate_bundle.py "
        "<exact.json> --provenance <CertificateProvenance.json>"
    )


def print_largest_files(paths: Iterable[Path], limit: int) -> None:
    for path, size in largest_files(paths, limit):
        print(f"{format_bytes(size):>10}  {relative(path)}")


def print_table_metrics(metrics: TableMetrics) -> None:
    print(f"files including umbrella: {metrics.files:,}")
    print(f"chunk files: {metrics.chunks:,}")
    print(f"umbrella chunk imports: {metrics.imports:,}")
    print(f"table entries: {metrics.entries:,}")
    print(f"source bytes: {metrics.bytes:,} ({format_bytes(metrics.bytes)})")


def source_route_estimate(
    plan_path: Path,
    source_semantic_coeff_chunk_size: int | None,
) -> SourceRouteEstimate:
    plan = json.loads(plan_path.read_text(encoding="utf-8"))
    qvars = int(plan["qvars"])
    chunk_size = source_semantic_coeff_chunk_size
    if chunk_size is None:
        chunk_size = int(plan["scalar_semantic_coeff_chunk_size"])
    if chunk_size <= 0:
        raise SystemExit("--source-semantic-coeff-chunk-size must be positive")
    coeff_chunks = math.ceil(qvars / chunk_size)
    source_chunks = int(plan["source_chunks"]["count"])
    file_estimate = plan["file_estimate"]
    current_groups = int(file_estimate["current_compact_scalar_groups"])
    current_coeff_files = int(
        file_estimate["current_compact_scalar_semantic_coeff_files"]
    )

    source_data_files = source_chunks + coeff_chunks + 2
    source_data_native = coeff_chunks + 1
    source_chunk_semantic_files = source_chunks * (coeff_chunks + 2)
    source_chunk_semantic_native = source_chunks * (coeff_chunks + 1)
    final_source_files = coeff_chunks + 1
    final_source_native = coeff_chunks + 1

    return SourceRouteEstimate(
        qvars=qvars,
        coeff_chunks=coeff_chunks,
        source_chunks=source_chunks,
        current_scalar_groups=current_groups,
        current_scalar_semantic_coeff_files=current_coeff_files,
        current_group_semantic_files=current_coeff_files + 2 * current_groups,
        current_group_semantic_native_decides=current_coeff_files + current_groups,
        fallback_source_files=(
            source_data_files + source_chunk_semantic_files + final_source_files
        ),
        fallback_source_native_decides=(
            source_data_native
            + source_chunk_semantic_native
            + final_source_native
        ),
        structural_source_native_decides=source_data_native,
    )


def print_source_route_plan_estimate(metrics: SourceRouteEstimate) -> None:
    net_files = metrics.fallback_source_files - metrics.current_group_semantic_files
    net_native = (
        metrics.fallback_source_native_decides
        - metrics.current_group_semantic_native_decides
    )
    structural_net_native = (
        metrics.structural_source_native_decides
        - metrics.current_group_semantic_native_decides
    )
    print(f"qvars: {metrics.qvars:,}")
    print(f"source chunks: {metrics.source_chunks:,}")
    print(f"coefficient chunks: {metrics.coeff_chunks:,}")
    print(
        "current group semantic layer: "
        f"{metrics.current_group_semantic_files:,} files, "
        f"{metrics.current_group_semantic_native_decides:,} native_decide"
    )
    print(
        "current source fallback route: "
        f"{metrics.fallback_source_files:,} files, "
        f"{metrics.fallback_source_native_decides:,} native_decide "
        f"(net {net_files:+,} files, {net_native:+,} native_decide)"
    )
    print(
        "structural source target: "
        f"{metrics.structural_source_native_decides:,} native_decide "
        f"(net {structural_net_native:+,} native_decide before PSD/fiber work)"
    )


def print_recommended_targets() -> None:
    for name, command in RECOMMENDED_TARGETS.items():
        print(f"{name:22} {' '.join(command)}")


def run_targets(targets: Iterable[str]) -> int:
    exit_code = 0
    for target in targets:
        command = RECOMMENDED_TARGETS[target]
        print_section(f"Running {target}")
        print("$ " + " ".join(command))
        start = time.perf_counter()
        completed = subprocess.run(command, cwd=ROOT, check=False)
        elapsed = time.perf_counter() - start
        print(f"elapsed: {elapsed:.1f}s")
        if completed.returncode != 0:
            print(f"exit code: {completed.returncode}")
            exit_code = completed.returncode if exit_code == 0 else exit_code
    return exit_code


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description=(
            "Report GP2025 generated Lean metrics without running builds by default."
        )
    )
    parser.add_argument(
        "--top",
        type=int,
        default=10,
        help="number of largest generated files to print (default: 10)",
    )
    parser.add_argument(
        "--run-target",
        choices=sorted(RECOMMENDED_TARGETS),
        action="append",
        default=[],
        help="run an explicit recommended build target after printing metrics",
    )
    parser.add_argument(
        "--source-plan",
        type=Path,
        help="compact scalar source-route plan JSON to estimate route impact",
    )
    parser.add_argument(
        "--source-semantic-coeff-chunk-size",
        type=int,
        help=(
            "override the quotient-variable chunk size used when estimating "
            "the current source semantic fallback route"
        ),
    )
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    if args.top < 0:
        raise SystemExit("--top must be nonnegative")

    gp2025_files = tracked_lean_files(GP2025_GENERATED)
    k2_files = tracked_lean_files(K2_GENERATED)
    missing_gp2025_files = missing_tracked_lean_files(GP2025_GENERATED)
    missing_k2_files = missing_tracked_lean_files(K2_GENERATED)
    workspace_gp2025_files = lean_files(GP2025_GENERATED)
    tracked_set = set(gp2025_files)
    workspace_extra_files = [
        path for path in workspace_gp2025_files if path not in tracked_set
    ]

    print("GP2025 metrics")
    print(f"repo root: {ROOT}")

    print_section("Generated Lean")
    print_file_metric("GP2025 Generated (tracked)", file_metrics(gp2025_files))
    print_file_metric("BinaryK2_13_1 (tracked)", file_metrics(k2_files))
    print_missing_tracked_files("GP2025 Generated", missing_gp2025_files)
    if missing_k2_files and missing_k2_files != missing_gp2025_files:
        print_missing_tracked_files("BinaryK2_13_1", missing_k2_files)
    if workspace_extra_files:
        extra_metrics = file_metrics(workspace_extra_files)
        print_file_metric("GP2025 local generated extras", extra_metrics)
        print_local_generated_extra_warning(extra_metrics)

    print_section(f"Largest Tracked GP2025 Generated Files (top {args.top})")
    print_largest_files(gp2025_files, args.top)

    print_section("BinaryK2_13_1 native_decide by family")
    print_native_decide_report(k2_files)

    print_section("BinaryK2_13_1 source-route transition families")
    print_source_route_family_report(k2_files)

    print_section("BinaryK2_13_1 full-sparse/fallback families")
    print_full_sparse_family_report(k2_files)

    print_section("BinaryK2_13_1 full-sparse/fallback markers")
    print_full_sparse_marker_report(k2_files)

    if args.source_plan is not None:
        print_section("Source Route Plan Estimate")
        print_source_route_plan_estimate(
            source_route_estimate(
                args.source_plan,
                args.source_semantic_coeff_chunk_size,
            )
        )

    print_section("Certificate Provenance")
    print_certificate_provenance_report()

    print_section("Database GeneratedTable")
    print_table_metrics(generated_table_metrics())

    print_section("Git")
    for line in git_summary():
        print(line)

    print_section("Recommended Build Targets")
    print("not run unless --run-target is supplied")
    print_recommended_targets()

    if args.run_target:
        return run_targets(args.run_target)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
