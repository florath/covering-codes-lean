#!/usr/bin/env python3
"""Emit GP2025 certificate provenance and a sha256 manifest.

This script is deliberately read-mostly: it records hashes, route metadata, and
the current generated-tree metrics, but it does not run Lean or regenerate
certificate files.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import platform
import socket
import subprocess
import sys
from pathlib import Path
from typing import Any

if hasattr(sys, "set_int_max_str_digits"):
    sys.set_int_max_str_digits(0)


DEFAULT_NAME = "binaryK2_13_1"
DEFAULT_EXPECT_N = 13
DEFAULT_EXPECT_R = 1
DEFAULT_EXPECT_L = 607
DEFAULT_EXPECT_QVARS = 123
DEFAULT_EXPECT_FULL_VARS = 560
DEFAULT_EXPECT_SCALARS = 6283
DEFAULT_EXPECT_PSD = 28
DEFAULT_NONMATRIX_CHUNK = 200
DEFAULT_MATRIX_CUT_CHUNK = 20


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def canonical_json_bytes(value: Any) -> bytes:
    return json.dumps(
        value,
        sort_keys=True,
        separators=(",", ":"),
        ensure_ascii=True,
    ).encode("utf-8")


def canonical_sha256(value: Any) -> str:
    return hashlib.sha256(canonical_json_bytes(value)).hexdigest()


def load_json(path: Path, label: str) -> dict[str, Any]:
    try:
        value = json.loads(path.read_text(encoding="utf-8"))
    except json.JSONDecodeError as exc:
        raise SystemExit(f"{label}: invalid JSON at {path}: {exc}") from exc
    if not isinstance(value, dict):
        raise SystemExit(f"{label}: expected top-level JSON object at {path}")
    return value


def file_record(path: Path, repo_root: Path) -> dict[str, Any]:
    resolved = path.resolve()
    try:
        display = resolved.relative_to(repo_root)
    except ValueError:
        display = resolved
    record: dict[str, Any] = {
        "path": display.as_posix(),
        "bytes": resolved.stat().st_size,
        "sha256": sha256_file(resolved),
    }
    if resolved.suffix == ".json":
        try:
            record["canonical_json_sha256"] = canonical_sha256(
                json.loads(resolved.read_text(encoding="utf-8"))
            )
        except json.JSONDecodeError:
            pass
    return record


def optional_file_record(path: Path | None, repo_root: Path) -> dict[str, Any] | None:
    if path is None:
        return None
    return file_record(path, repo_root)


def git_output(repo_root: Path, args: list[str]) -> str | None:
    try:
        result = subprocess.run(
            ["git", *args],
            cwd=repo_root,
            check=True,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.DEVNULL,
        )
    except (OSError, subprocess.CalledProcessError):
        return None
    return result.stdout.strip()


def tracked_generated_files(repo_root: Path, generated_dir: Path) -> list[Path]:
    rel = generated_dir.resolve().relative_to(repo_root.resolve())
    output = git_output(repo_root, ["ls-files", "--", rel.as_posix()])
    if not output:
        return []
    return [repo_root / line for line in output.splitlines() if line.endswith(".lean")]


def generated_lean_files(generated_dir: Path) -> list[Path]:
    root = generated_dir.resolve()
    if not root.exists():
        return []
    return sorted(path for path in root.rglob("*.lean") if path.is_file())


def count_native_decide(paths: list[Path]) -> int:
    total = 0
    for path in paths:
        try:
            total += path.read_text(encoding="utf-8").count("native_decide")
        except UnicodeDecodeError:
            total += path.read_text().count("native_decide")
    return total


def require_equal(label: str, actual: Any, expected: Any) -> None:
    if actual != expected:
        raise SystemExit(f"{label}: expected {expected!r}, got {actual!r}")


def validate_identity(exact: dict[str, Any], args: argparse.Namespace) -> None:
    if not args.strict_production_k2:
        return
    require_equal("n", int(exact.get("n", -1)), args.expect_n)
    require_equal("r", int(exact.get("r", -1)), args.expect_r)
    require_equal("target_L", int(exact.get("target_L", -1)), args.expect_l)
    require_equal("variable_count", int(exact.get("variable_count", -1)), args.expect_qvars)
    counts = exact.get("constraint_counts", {})
    require_equal("scalar_count", int(counts.get("scalar", -1)), args.expect_scalars)
    require_equal("psd_count", int(counts.get("psd", -1)), args.expect_psd)
    if int(exact.get("rational_denominator", 0)) <= 0:
        raise SystemExit("strict production provenance requires rational_denominator")
    if args.require_full_objective_subconst and "full_objective_subconst_expression" not in exact:
        raise SystemExit("strict production provenance requires full_objective_subconst_expression")


def command_version(command: list[str]) -> str | None:
    try:
        result = subprocess.run(
            command,
            check=False,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )
    except OSError:
        return None
    return result.stdout.strip().splitlines()[0] if result.stdout.strip() else None


def manifest_path_text(path: Path, manifest_dir: Path, repo_root: Path) -> str:
    resolved = path.resolve()
    try:
        return resolved.relative_to(manifest_dir.resolve()).as_posix()
    except ValueError:
        return resolved.as_posix()


def write_manifest(paths: list[Path], manifest_path: Path, repo_root: Path) -> None:
    manifest_dir = manifest_path.parent
    unique: dict[str, Path] = {}
    for path in paths:
        resolved = path.resolve()
        if resolved == manifest_path.resolve():
            continue
        unique[resolved.as_posix()] = resolved
    lines = []
    for key in sorted(unique):
        path = unique[key]
        lines.append(
            f"{sha256_file(path)}  {manifest_path_text(path, manifest_dir, repo_root)}"
        )
    manifest_path.parent.mkdir(parents=True, exist_ok=True)
    manifest_path.write_text("\n".join(lines) + ("\n" if lines else ""), encoding="utf-8")


def parse_argv_json(path: Path | None) -> list[str] | None:
    if path is None:
        return None
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, list) or not all(isinstance(item, str) for item in value):
        raise SystemExit(f"{path}: expected JSON array of strings")
    return value


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Emit GP2025 CertificateProvenance.json and MANIFEST.sha256."
    )
    parser.add_argument("exact_json", type=Path)
    parser.add_argument("--repo-root", type=Path, default=Path("."))
    parser.add_argument("--name", default=DEFAULT_NAME)
    parser.add_argument("--solved-export", type=Path)
    parser.add_argument("--expressions-json", type=Path)
    parser.add_argument("--full-expressions-json", type=Path)
    parser.add_argument("--generated-dir", type=Path)
    parser.add_argument("--prepare-script", type=Path, default=Path("scripts/sdp/gp2025/gp2025_prepare_exact_certificate.py"))
    parser.add_argument("--generator-script", type=Path, default=Path("scripts/sdp/gp2025/gp2025_gen_lean_quotient_certificate.py"))
    parser.add_argument("--metrics-script", type=Path, default=Path("scripts/sdp/gp2025/gp2025_metrics.py"))
    parser.add_argument("--validator-script", type=Path, default=Path("scripts/sdp/gp2025/gp2025_validate_certificate_bundle.py"))
    parser.add_argument("--prepare-argv-json", type=Path)
    parser.add_argument("--generator-argv-json", type=Path)
    parser.add_argument("--candidate-status", choices=["candidate", "non_candidate", "blocked_wip"], default="non_candidate")
    parser.add_argument("--candidate-blocker", action="append", default=[])
    parser.add_argument("--provenance", "--provenance-out", dest="provenance_out", type=Path)
    parser.add_argument("--manifest", "--manifest-out", dest="manifest_out", type=Path)
    parser.add_argument("--include-generated-lean", action="store_true")
    parser.add_argument("--production-k2", "--strict-production-k2", dest="strict_production_k2", action="store_true")
    parser.add_argument("--strict-provenance", action="store_true")
    parser.add_argument("--require-full-objective-subconst", action="store_true")
    parser.add_argument("--expect-n", type=int, default=DEFAULT_EXPECT_N)
    parser.add_argument("--expect-r", type=int, default=DEFAULT_EXPECT_R)
    parser.add_argument("--expect-l", type=int, default=DEFAULT_EXPECT_L)
    parser.add_argument("--expect-qvars", type=int, default=DEFAULT_EXPECT_QVARS)
    parser.add_argument("--expect-full-vars", type=int, default=DEFAULT_EXPECT_FULL_VARS)
    parser.add_argument("--expect-scalars", type=int, default=DEFAULT_EXPECT_SCALARS)
    parser.add_argument("--expect-psd", type=int, default=DEFAULT_EXPECT_PSD)
    parser.add_argument("--expected-k2-lean-files", type=int)
    parser.add_argument("--expected-native-decide", type=int)
    parser.add_argument("--full-scalar-component-nonmatrix-chunk-size", type=int, default=DEFAULT_NONMATRIX_CHUNK)
    parser.add_argument("--full-scalar-component-matrix-cut-chunk-size", type=int, default=DEFAULT_MATRIX_CUT_CHUNK)
    parser.add_argument("--force", action="store_true")
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    repo_root = args.repo_root.resolve()
    exact_path = args.exact_json.resolve()
    exact = load_json(exact_path, "exact")
    validate_identity(exact, args)

    if args.strict_provenance:
        for label, path in [
            ("--solved-export", args.solved_export),
            ("--expressions-json", args.expressions_json),
            ("--full-expressions-json", args.full_expressions_json),
        ]:
            if path is None:
                raise SystemExit(f"{label} is required by --strict-provenance")
    if args.provenance_out is None:
        if args.generated_dir is None:
            raise SystemExit("--provenance is required unless --generated-dir is supplied")
        args.provenance_out = args.generated_dir / "CertificateProvenance.json"
    if args.manifest_out is None:
        if args.generated_dir is None:
            raise SystemExit("--manifest is required unless --generated-dir is supplied")
        args.manifest_out = args.generated_dir / "MANIFEST.sha256"

    provenance_path = args.provenance_out.resolve()
    manifest_path = args.manifest_out.resolve()
    if provenance_path.exists() and not args.force:
        raise SystemExit(f"{provenance_path} exists; pass --force to overwrite")
    if manifest_path.exists() and not args.force:
        raise SystemExit(f"{manifest_path} exists; pass --force to overwrite")

    generated_files: list[Path] = []
    tracked_generated: list[Path] = []
    if args.generated_dir is not None:
        generated_files = generated_lean_files(args.generated_dir)
        tracked_generated = tracked_generated_files(repo_root, args.generated_dir)

    native_decide_count = count_native_decide(generated_files)
    if args.expected_k2_lean_files is not None:
        require_equal("generated Lean files", len(generated_files), args.expected_k2_lean_files)
    if args.expected_native_decide is not None:
        require_equal("generated native_decide occurrences", native_decide_count, args.expected_native_decide)

    inputs: dict[str, Any] = {"exact_json": file_record(exact_path, repo_root)}
    optional_inputs = [
        ("solved_export", args.solved_export),
        ("quotient_expressions_export", args.expressions_json),
        ("full_expressions_export", args.full_expressions_json),
    ]
    for key, path in optional_inputs:
        record = optional_file_record(path, repo_root)
        if record is not None:
            inputs[key] = record

    component_validation: dict[str, Any] = {}
    for key, exact_key in [
        ("components_subobject_sha256", "full_aggregate_dual_expression_components"),
        ("aggregate_dual_expression_sha256", "aggregate_dual_expression"),
        ("full_aggregate_dual_expression_sha256", "full_aggregate_dual_expression"),
        ("full_objective_subconst_expression_sha256", "full_objective_subconst_expression"),
        ("weighted_ldl_sha256", "weighted_ldl"),
        ("stationarity_validation_sha256", "stationarity_validation"),
    ]:
        if exact_key in exact:
            component_validation[key] = canonical_sha256(exact[exact_key])

    prepare_script = (repo_root / args.prepare_script).resolve()
    generator_script = (repo_root / args.generator_script).resolve()
    metrics_script = (repo_root / args.metrics_script).resolve()
    validator_script = (repo_root / args.validator_script).resolve()

    status_short = git_output(repo_root, ["status", "--short"]) or ""
    provenance: dict[str, Any] = {
        "format": "gp2025-certificate-provenance-v1",
        "identity": {
            "name": args.name,
            "n": int(exact.get("n", args.expect_n)),
            "r": int(exact.get("r", args.expect_r)),
            "L": int(exact.get("target_L", args.expect_l)),
            "qvars": int(exact.get("variable_count", args.expect_qvars)),
            "full_vars": args.expect_full_vars,
            "scalar_count": int(exact.get("constraint_counts", {}).get("scalar", args.expect_scalars)),
            "psd_count": int(exact.get("constraint_counts", {}).get("psd", args.expect_psd)),
        },
        "candidate": {
            "status": args.candidate_status,
            "blockers": args.candidate_blocker,
        },
        "source_control": {
            "branch": git_output(repo_root, ["branch", "--show-current"]),
            "head": git_output(repo_root, ["rev-parse", "HEAD"]),
            "dirty": bool(status_short),
            "status_short": status_short.splitlines(),
        },
        "environment": {
            "hostname": socket.gethostname(),
            "platform": platform.platform(),
            "python": sys.version.split()[0],
            "lean": command_version(["lean", "--version"]),
            "lake": command_version(["lake", "--version"]),
        },
        "inputs": inputs,
        "component_validation": component_validation,
        "exact_certificate": {
            "rational_denominator": exact.get("rational_denominator"),
            "raw_bound": exact.get("raw_bound"),
            "scaled_bound": exact.get("scaled_bound"),
            **component_validation,
        },
        "stationarity_validation": exact.get("stationarity_validation"),
        "prepare": {
            "script": file_record(prepare_script, repo_root),
            "argv": parse_argv_json(args.prepare_argv_json),
            "rational_denominator": exact.get("rational_denominator"),
            "full_scalar_component_nonmatrix_chunk_size": args.full_scalar_component_nonmatrix_chunk_size,
            "full_scalar_component_matrix_cut_chunk_size": args.full_scalar_component_matrix_cut_chunk_size,
        },
        "generator": {
            "script": file_record(generator_script, repo_root),
            "argv": parse_argv_json(args.generator_argv_json),
        },
        "metrics": {
            "script": file_record(metrics_script, repo_root) if metrics_script.exists() else None,
        },
        "validation": {
            "validator": {
                "script": file_record(validator_script, repo_root) if validator_script.exists() else None,
            },
            "strict_production_k2": bool(args.strict_production_k2),
        },
        "generated": {
            "dir": str(args.generated_dir) if args.generated_dir is not None else None,
            "lean_files": len(generated_files),
            "tracked_lean_files": len(tracked_generated),
            "native_decide_occurrences": native_decide_count,
            "included_in_manifest": bool(args.include_generated_lean),
        },
    }

    provenance_path.parent.mkdir(parents=True, exist_ok=True)
    provenance_path.write_bytes(canonical_json_bytes(provenance) + b"\n")

    manifest_files = [
        exact_path,
        provenance_path,
        prepare_script,
        generator_script,
    ]
    for path in [args.solved_export, args.expressions_json, args.full_expressions_json]:
        if path is not None:
            manifest_files.append(path.resolve())
    if metrics_script.exists():
        manifest_files.append(metrics_script)
    if validator_script.exists():
        manifest_files.append(validator_script)
    if args.prepare_argv_json is not None:
        manifest_files.append(args.prepare_argv_json.resolve())
    if args.generator_argv_json is not None:
        manifest_files.append(args.generator_argv_json.resolve())
    if args.include_generated_lean:
        manifest_files.extend(generated_files)
    write_manifest(manifest_files, manifest_path, repo_root)

    print(f"provenance: {provenance_path}")
    print(f"manifest: {manifest_path}")
    print(f"generated_lean_files: {len(generated_files)}")
    print(f"native_decide_occurrences: {native_decide_count}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
