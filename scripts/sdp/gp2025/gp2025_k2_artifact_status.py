#!/usr/bin/env python3
"""Check and describe the GP2025 K2 artifact bundle needed for Lean generation.

This helper is intentionally read-only.  It does not run Julia, Lean, Lake, or
certificate generation.  It reports whether the expected production K2 JSON
artifacts are present, checks a few cheap shape invariants, and prints the
validation/generation commands that should be run once the files exist.
"""

from __future__ import annotations

import argparse
import json
import os
import shlex
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Any

if hasattr(sys, "set_int_max_str_digits"):
    sys.set_int_max_str_digits(0)


DEFAULT_ARTIFACT_DIR = Path(
    os.environ.get("GP2025_K2_ARTIFACT_DIR", "/tmp/gp2025-k2-artifacts")
)
DEFAULT_DENOMINATOR = 100000000000000000000


@dataclass(frozen=True)
class Artifact:
    key: str
    filename: str
    required: bool
    description: str


ARTIFACTS = (
    Artifact(
        "solved",
        "gp_binary_13_1_dual.json",
        True,
        "solved quotient dual export",
    ),
    Artifact(
        "quotient_expr",
        "gp_binary_13_1_expr.json",
        True,
        "quotient expression export",
    ),
    Artifact(
        "full_expr",
        "gp_binary_13_1_full_expr.json",
        True,
        "full-variable expression export",
    ),
    Artifact(
        "rationalization_summary",
        "gp_binary_13_1_rationalization_summary.json",
        False,
        "rationalization preflight summary",
    ),
    Artifact(
        "exact",
        "gp_binary_13_1_exact_certificate_data_fullagg_components_family_200_20.json",
        True,
        "prepared exact certificate JSON",
    ),
    Artifact(
        "provenance",
        "CertificateProvenance.json",
        False,
        "strict provenance JSON",
    ),
    Artifact(
        "manifest",
        "MANIFEST.sha256",
        False,
        "strict provenance manifest",
    ),
)


def quote(value: Path | str) -> str:
    return shlex.quote(str(value))


def read_json(path: Path) -> dict[str, Any] | None:
    try:
        data = json.loads(path.read_text(encoding="utf-8"))
    except OSError:
        return None
    except json.JSONDecodeError as exc:
        return {"__error__": f"invalid JSON: {exc}"}
    if not isinstance(data, dict):
        return {"__error__": "top-level JSON is not an object"}
    return data


def path_map(artifact_dir: Path) -> dict[str, Path]:
    return {artifact.key: artifact_dir / artifact.filename for artifact in ARTIFACTS}


def scalar_count(data: dict[str, Any]) -> Any:
    counts = data.get("constraint_counts")
    if isinstance(counts, dict):
        return counts.get("scalar")
    return None


def psd_count(data: dict[str, Any]) -> Any:
    counts = data.get("constraint_counts")
    if isinstance(counts, dict):
        return counts.get("psd")
    return None


def require_list_length(
    data: dict[str, Any],
    key: str,
    expected: int,
    label: str,
) -> list[str]:
    value = data.get(key)
    if not isinstance(value, list):
        return [f"{label}.{key}: expected list of length {expected}, got {type(value).__name__}"]
    if len(value) != expected:
        return [f"{label}.{key}: expected length {expected}, got {len(value)}"]
    return []


def check_expression_payloads(
    records: Any,
    *,
    key: str,
    label: str,
) -> list[str]:
    if not isinstance(records, list):
        return []
    missing = [
        idx
        for idx, item in enumerate(records)
        if not isinstance(item, dict) or key not in item
    ]
    if not missing:
        return []
    preview = ", ".join(str(idx) for idx in missing[:5])
    suffix = "" if len(missing) <= 5 else f", ... ({len(missing)} total)"
    return [f"{label}: missing {key!r} on records {preview}{suffix}"]


def component_topology_checks(exact: dict[str, Any]) -> list[str]:
    failures: list[str] = []
    components = exact.get("full_aggregate_dual_expression_components")
    if not isinstance(components, dict):
        if components is not None:
            failures.append("exact.full_aggregate_dual_expression_components: expected object")
        return failures

    scalar_chunks = components.get("scalar_chunks")
    psd_components = components.get("psd")
    if not isinstance(scalar_chunks, list):
        failures.append("components.scalar_chunks: expected list")
        scalar_chunks = []
    if not isinstance(psd_components, list):
        failures.append("components.psd: expected list")
        psd_components = []
    elif len(psd_components) != 28:
        failures.append(f"components.psd: expected length 28, got {len(psd_components)}")

    if len(scalar_chunks) != 234:
        failures.append(f"components.scalar_chunks: expected length 234, got {len(scalar_chunks)}")

    final_end = 0
    ranges: list[tuple[int, int]] = []
    lengths: dict[int, int] = {}
    for pos, item in enumerate(scalar_chunks):
        if not isinstance(item, dict):
            failures.append(f"components.scalar_chunks[{pos}]: expected object")
            continue
        start = item.get("start")
        end = item.get("end")
        if not isinstance(start, int) or not isinstance(end, int):
            failures.append(f"components.scalar_chunks[{pos}]: start/end must be integers")
            continue
        if start != final_end:
            failures.append(
                f"components.scalar_chunks[{pos}].start: expected {final_end}, got {start}"
            )
        if end <= start:
            failures.append(
                f"components.scalar_chunks[{pos}]: nonpositive range {start}..{end}"
            )
            continue
        ranges.append((start, end))
        lengths[end - start] = lengths.get(end - start, 0) + 1
        final_end = end
    if scalar_chunks and final_end != 6283:
        failures.append(f"components.scalar_chunks final end: expected 6283, got {final_end}")
    expected_lengths = {200: 9, 20: 224, 3: 1}
    for length, expected in expected_lengths.items():
        actual = lengths.get(length, 0)
        if actual != expected:
            failures.append(
                f"components.scalar_chunks length {length}: expected {expected}, got {actual}"
            )
    if len(ranges) > 10:
        if ranges[9] != (1800, 1803):
            failures.append(
                f"components.scalar_chunks[9]: expected (1800, 1803), got {ranges[9]!r}"
            )
        if ranges[10] != (1803, 1823):
            failures.append(
                f"components.scalar_chunks[10]: expected (1803, 1823), got {ranges[10]!r}"
            )
    return failures


def rationalization_summary_checks(data: dict[str, Any], denominator: int) -> list[str]:
    failures: list[str] = []
    expected = {
        "n": 13,
        "r": 1,
        "solved": True,
        "quotient_variable_count": 123,
        "target_L": 607,
        "passes_decimal_threshold": True,
    }
    for key, value in expected.items():
        if data.get(key) != value:
            failures.append(f"rationalization_summary.{key}: expected {value!r}, got {data.get(key)!r}")
    counts = data.get("constraint_counts")
    if not isinstance(counts, dict):
        failures.append("rationalization_summary.constraint_counts: expected object")
    else:
        if counts.get("scalar") != 6283:
            failures.append(
                "rationalization_summary.constraint_counts.scalar: "
                f"expected 6283, got {counts.get('scalar')!r}"
            )
        if counts.get("psd") != 28:
            failures.append(
                "rationalization_summary.constraint_counts.psd: "
                f"expected 28, got {counts.get('psd')!r}"
            )
    if data.get("scalar_dual_errors") != 0:
        failures.append(
            "rationalization_summary.scalar_dual_errors: "
            f"expected 0, got {data.get('scalar_dual_errors')!r}"
        )
    if data.get("psd_dual_errors") != 0:
        failures.append(
            "rationalization_summary.psd_dual_errors: "
            f"expected 0, got {data.get('psd_dual_errors')!r}"
        )
    affine = data.get("affine_identity")
    if not isinstance(affine, dict):
        failures.append("rationalization_summary.affine_identity: expected object")
    else:
        if affine.get("rational_denominator") != denominator:
            failures.append(
                "rationalization_summary.affine_identity.rational_denominator: "
                f"expected {denominator}, got {affine.get('rational_denominator')!r}"
            )
        if affine.get("correct_nonnegative") is not True:
            failures.append(
                "rationalization_summary.affine_identity.correct_nonnegative: expected true"
            )
        if affine.get("nonzero_coeff_residuals") != 0:
            failures.append(
                "rationalization_summary.affine_identity.nonzero_coeff_residuals: "
                f"expected 0, got {affine.get('nonzero_coeff_residuals')!r}"
            )
        if affine.get("correction_failure_count") != 0:
            failures.append(
                "rationalization_summary.affine_identity.correction_failure_count: "
                f"expected 0, got {affine.get('correction_failure_count')!r}"
            )
    return failures


def exact_shape_checks(exact: dict[str, Any], denominator: int) -> list[str]:
    failures: list[str] = []
    expected = {
        "format": "gp2025-binary-exact-certificate-data-v1",
        "n": 13,
        "r": 1,
        "target_L": 607,
        "variable_count": 123,
        "rational_denominator": denominator,
    }
    for key, value in expected.items():
        if exact.get(key) != value:
            failures.append(f"exact.{key}: expected {value}, got {exact.get(key)!r}")
    if scalar_count(exact) != 6283:
        failures.append(
            f"exact.constraint_counts.scalar: expected 6283, got {scalar_count(exact)!r}"
        )
    if psd_count(exact) != 28:
        failures.append(
            f"exact.constraint_counts.psd: expected 28, got {psd_count(exact)!r}"
        )
    failures.extend(require_list_length(exact, "scalar_multipliers", 6283, "exact"))
    failures.extend(require_list_length(exact, "weighted_ldl", 28, "exact"))
    if exact.get("passes_threshold") is False:
        failures.append("exact.passes_threshold: expected not false")
    for key in (
        "aggregate_dual_expression",
        "full_aggregate_dual_expression",
        "full_aggregate_dual_expression_components",
        "stationarity_validation",
    ):
        if key not in exact:
            failures.append(f"exact.{key}: missing")
    stationarity = exact.get("stationarity_validation")
    if isinstance(stationarity, dict):
        stationarity_ok = (
            stationarity.get("objective_subconst_equals_full_aggregate_dual_expression")
            is True
            or (
                stationarity.get("objective_subconst_equals_full_aggregate_dual_expression")
                is False
                and stationarity.get("full_objective_subconst_expression_omitted")
                is True
            )
        )
        if not stationarity_ok:
            failures.append(
                "exact.stationarity_validation."
                "objective_subconst_equals_full_aggregate_dual_expression: "
                "expected true or omitted optional full-objective stationarity"
            )
    elif "stationarity_validation" in exact:
        failures.append("exact.stationarity_validation: expected object")
    failures.extend(component_topology_checks(exact))
    return failures


def export_shape_checks(
    data: dict[str, Any],
    *,
    label: str,
    expected_mode: str,
    expected_vars: int,
    expected_scalar: int,
    expected_psd: int,
    require_solved: bool = False,
    require_expressions: bool = False,
) -> list[str]:
    failures: list[str] = []
    if data.get("format") != "gp2025-binary-dual-candidate-v1":
        failures.append(
            f"{label}.format: expected 'gp2025-binary-dual-candidate-v1', got {data.get('format')!r}"
        )
    if data.get("n") != 13:
        failures.append(f"{label}.n: expected 13, got {data.get('n')!r}")
    if data.get("r") != 1:
        failures.append(f"{label}.r: expected 1, got {data.get('r')!r}")
    if data.get("variable_mode") != expected_mode:
        failures.append(
            f"{label}.variable_mode: expected {expected_mode}, got {data.get('variable_mode')!r}"
        )
    if data.get("variable_count") != expected_vars:
        failures.append(
            f"{label}.variable_count: expected {expected_vars}, got {data.get('variable_count')!r}"
        )
    if scalar_count(data) != expected_scalar:
        failures.append(
            f"{label}.constraint_counts.scalar: expected {expected_scalar}, got {scalar_count(data)!r}"
        )
    if psd_count(data) != expected_psd:
        failures.append(
            f"{label}.constraint_counts.psd: expected {expected_psd}, got {psd_count(data)!r}"
        )
    failures.extend(require_list_length(data, "scalar_constraints", expected_scalar, label))
    failures.extend(require_list_length(data, "psd_constraints", expected_psd, label))
    if require_solved:
        for key in (
            "termination_status",
            "primal_status",
            "dual_status",
            "raw_objective",
            "lean_objective_bound",
            "scaled_objective",
        ):
            if key not in data:
                failures.append(f"{label}.{key}: missing")
        primal_values = data.get("primal_values")
        if not isinstance(primal_values, list):
            failures.append(f"{label}.primal_values: expected list of length {expected_vars}")
        elif len(primal_values) != expected_vars:
            failures.append(
                f"{label}.primal_values: expected length {expected_vars}, got {len(primal_values)}"
            )
    if require_expressions:
        failures.extend(
            check_expression_payloads(
                data.get("scalar_constraints"),
                key="expr",
                label=f"{label}.scalar_constraints",
            )
        )
        failures.extend(
            check_expression_payloads(
                data.get("psd_constraints"),
                key="matrix_expr",
                label=f"{label}.psd_constraints",
            )
        )
    return failures


def julia_command(julia_project: Path | None) -> str:
    if julia_project is None:
        return "julia"
    return f"julia --project={quote(julia_project)}"


def command_lines(
    paths: dict[str, Path],
    denominator: int,
    *,
    julia_project: Path | None = None,
) -> list[str]:
    artifact_dir = paths["solved"].parent
    solved = paths["solved"]
    quotient_expr = paths["quotient_expr"]
    full_expr = paths["full_expr"]
    rationalization_summary = paths["rationalization_summary"]
    exact = paths["exact"]
    provenance = paths["provenance"]
    manifest = paths["manifest"]
    generated_dir = Path("CoveringCodes/SDP/GijswijtPolak2025/Generated/BinaryK2_13_1")
    candidate_provenance = generated_dir / "CertificateProvenance.json"
    candidate_manifest = generated_dir / "MANIFEST.sha256"
    bundle = artifact_dir / "gp2025-k2-artifacts.tar.gz"
    bundle_members = " ".join(quote(artifact.filename) for artifact in ARTIFACTS)
    julia = julia_command(julia_project)
    fallback_project = julia_project or Path("/tmp/gp2025-julia-env")
    validate_bundle_command = (
        f"python3 scripts/sdp/gp2025/gp2025_validate_certificate_bundle.py {quote(exact)} "
        f"--solved-export {quote(solved)} "
        f"--expressions-json {quote(quotient_expr)} "
        f"--full-expressions-json {quote(full_expr)} "
        f"--provenance {quote(provenance)} --manifest {quote(manifest)} "
        "--production-k2 --strict-provenance "
        f"--expect-rational-denominator {denominator} --json"
    )
    return [
        "# Generate missing artifacts on a Julia/SDPA-capable machine:",
        f"mkdir -p {quote(artifact_dir)}",
        (
            "# If Julia is missing and no system install is available, use a "
            "no-root Juliaup fallback pinned to Julia 1.10."
        ),
        (
            "# SDPAFamily currently depends on BinaryProvider, so the latest "
            "Julia release may fail dependency resolution."
        ),
        "export JULIAUP_DEPOT_PATH=\"$HOME/.local/share/gp2025-juliaup-depot\"",
        "mkdir -p \"$JULIAUP_DEPOT_PATH\" \"$HOME/.local\"",
        "# Do not pre-create $HOME/.local/gp2025-juliaup; the installer expects an absent path.",
        "rmdir \"$HOME/.local/gp2025-juliaup\" 2>/dev/null || true",
        (
            "test -x \"$HOME/.local/gp2025-juliaup/bin/juliaup\" || "
            "curl -fsSL https://install.julialang.org | sh -s -- --yes "
            "--path \"$HOME/.local/gp2025-juliaup\" --add-to-path=no "
            "--default-channel 1.10"
        ),
        "export PATH=\"$HOME/.local/gp2025-juliaup/bin:$PATH\"",
        "juliaup add 1.10",
        "juliaup default 1.10",
        "juliaup status",
        "julia --version",
        f"{julia} -e 'using JuMP, SDPAFamily, Combinatorics; println(\"GP2025 Julia dependencies OK\")'",
        "# If the dependency preflight fails, create an isolated Julia project",
        "# with JuMP, SDPAFamily, and Combinatorics, then rerun Julia commands with --project.",
        "export JULIA_DEPOT_PATH=/tmp/gp_julia_depot",
        f"mkdir -p \"$JULIA_DEPOT_PATH\" {quote(fallback_project)}",
        (
            f"julia -e 'using Pkg; Pkg.activate(\"{fallback_project}\"); "
            "Pkg.add([\"JuMP\", \"SDPAFamily\", \"Combinatorics\"]); "
            "Pkg.precompile(); Pkg.status()'"
        ),
        (
            f"{julia_command(fallback_project)} -e 'using JuMP, SDPAFamily, "
            "Combinatorics; opt = SDPAFamily.Optimizer(variant = :sdpa_gmp, "
            "silent = true); println(typeof(opt))'"
        ),
        (
            "# If that isolated project is used, rerun this helper with "
            f"`--julia-project {quote(fallback_project)}` so the export commands below "
            "use that project."
        )
        if julia_project is None
        else "# The Julia export commands below already use the selected --julia-project.",
        f"{julia} scripts/sdp/gp2025/gp2025_binary_dual_export.jl 13 1 {quote(solved)} --silent --variant=sdpa_gmp --max-iteration=600",
        f"wc -c {quote(solved)}",
        f"sha256sum {quote(solved)}",
        f"{julia} scripts/sdp/gp2025/gp2025_binary_dual_export.jl 13 1 {quote(quotient_expr)} --no-solve --silent --include-expressions --variant=sdpa_gmp",
        f"{julia} scripts/sdp/gp2025/gp2025_binary_dual_export.jl 13 1 {quote(full_expr)} --full-variables --no-solve --silent --include-expressions --variant=sdpa_gmp",
        "",
        "# Prepare and validate the exact bundle:",
        (
            f"python3 scripts/sdp/gp2025/gp2025_rationalize_dual.py {quote(solved)} "
            f"--expressions-json {quote(quotient_expr)} "
            "--L 607 "
            f"--rational-denominator {denominator} "
            "--correct-nonnegative "
            "--check-affine "
            f"--out {quote(rationalization_summary)}"
        ),
        (
            f"python3 scripts/sdp/gp2025/gp2025_prepare_exact_certificate.py {quote(solved)} "
            f"--expressions-json {quote(quotient_expr)} "
            f"--full-expressions-json {quote(full_expr)} "
            f"--out {quote(exact)} --L 607 "
            f"--rational-denominator {denominator} "
            "--full-scalar-component-nonmatrix-chunk-size 200 "
            "--full-scalar-component-matrix-cut-chunk-size 20"
        ),
        (
            f"python3 scripts/sdp/gp2025/gp2025_emit_certificate_provenance.py {quote(exact)} "
            f"--repo-root . --solved-export {quote(solved)} "
            f"--expressions-json {quote(quotient_expr)} "
            f"--full-expressions-json {quote(full_expr)} "
            "--candidate-status non_candidate "
            "--candidate-blocker lean-generation-and-focused-gates-pending "
            "--production-k2 --strict-provenance "
            f"--provenance {quote(provenance)} --manifest {quote(manifest)} --force"
        ),
        validate_bundle_command,
        "",
        "# Package the validated artifacts for transfer if Lean regeneration happens elsewhere:",
        f"tar -C {quote(artifact_dir)} -czf {quote(bundle)} {bundle_members}",
        "",
        "# On the receiving host after copying gp2025-k2-artifacts.tar.gz:",
        f"mkdir -p {quote(artifact_dir)}",
        f"tar -C {quote(artifact_dir)} -xzf /path/to/gp2025-k2-artifacts.tar.gz",
        (
            "python3 scripts/sdp/gp2025/gp2025_k2_artifact_status.py "
            f"--artifact-dir {quote(artifact_dir)} --require-provenance-manifest --json"
        ),
        validate_bundle_command,
        "",
        "# Regenerate Lean after validation passes:",
        (
            "python3 scripts/sdp/gp2025/gp2025_gen_lean_quotient_fibers.py "
            "--n 13 --r 1 --qvars 123 --full-vars 560 "
            "--module-prefix CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1 "
            "--name binaryK2_13_1 "
            "--output CoveringCodes/SDP/GijswijtPolak2025/Generated/BinaryK2_13_1/QuotientFiber.lean"
        ),
        (
            f"python3 scripts/sdp/gp2025/gp2025_gen_lean_quotient_certificate.py {quote(exact)} "
            f"--expressions-json {quote(quotient_expr)} "
            "--split-dir CoveringCodes/SDP/GijswijtPolak2025/Generated/BinaryK2_13_1 "
            "--module-prefix CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1 "
            "--name binaryK2_13_1 "
            "--semantic-bridge-module CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1.CompactBridge "
            "--compact-component-semantic "
            "--full-aggregate-semantic-structural "
            "--component-eq-chunk-size 40 "
            "--scalar-component-eq-chunk-size 40 "
            "--compact-component-semantic-coeff-chunk-size 20 "
            "--compact-scalar-component-semantic-coeff-chunk-size 20 "
            "--compact-component-eq-chunk-size 20 "
            "--compact-scalar-group-size 4 "
            "--compact-scalar-source-data "
            "--compact-scalar-source-derived-data "
            "--compact-scalar-source-semantic "
            "--compact-scalar-source-chunk-size 1 "
            "--compact-objective-eq-chunk-size 40 "
            "--full-objective-eq-chunk-size 20"
        ),
        (
            "python3 scripts/sdp/gp2025/gp2025_gen_lean_k2_bridge.py "
            "--output-dir CoveringCodes/SDP/GijswijtPolak2025/Generated/BinaryK2_13_1 "
            "--module-prefix CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1 "
            "--name binaryK2_13_1"
        ),
        "",
        "# Validate regenerated Lean candidate with bounded focused gates:",
        "python3 scripts/sdp/gp2025/gp2025_safe_validate.py --target metrics-k2-static",
        "python3 scripts/sdp/gp2025/gp2025_safe_validate.py --target quotient-fiber-build --threads 2 --timeout 600",
        "python3 scripts/sdp/gp2025/gp2025_safe_validate.py --target bridge-build --threads 2 --timeout 1200",
        "python3 scripts/sdp/gp2025/gp2025_safe_validate.py --target compact-bridge-build --threads 2 --timeout 1200",
        "python3 scripts/sdp/gp2025/gp2025_safe_validate.py --target compact-semantic-build --threads 64 --timeout 3600",
        "python3 scripts/sdp/gp2025/gp2025_safe_validate.py --target compact-objective-build --threads 64 --timeout 3600",
        "python3 scripts/sdp/gp2025/gp2025_safe_validate.py --target compact-certificate-build --threads 64 --timeout 3600",
        "python3 scripts/sdp/gp2025/gp2025_safe_validate.py --target instance-build --threads 64 --timeout 3600",
        "",
        "# After all focused gates pass, emit the Lean-candidate provenance in the generated tree:",
        (
            f"python3 scripts/sdp/gp2025/gp2025_emit_certificate_provenance.py {quote(exact)} "
            f"--repo-root . --solved-export {quote(solved)} "
            f"--expressions-json {quote(quotient_expr)} "
            f"--full-expressions-json {quote(full_expr)} "
            f"--generated-dir {quote(generated_dir)} "
            "--include-generated-lean "
            "--expected-k2-lean-files 20978 "
            "--expected-native-decide 14664 "
            "--candidate-status candidate "
            "--production-k2 --strict-provenance "
            f"--provenance {quote(candidate_provenance)} --manifest {quote(candidate_manifest)} "
            "--force"
        ),
        (
            f"python3 scripts/sdp/gp2025/gp2025_validate_certificate_bundle.py {quote(exact)} "
            f"--solved-export {quote(solved)} "
            f"--expressions-json {quote(quotient_expr)} "
            f"--full-expressions-json {quote(full_expr)} "
            f"--provenance {quote(candidate_provenance)} --manifest {quote(candidate_manifest)} "
            "--production-k2 --strict-provenance "
            f"--expect-rational-denominator {denominator} --json"
        ),
    ]


def build_report(
    artifact_dir: Path,
    denominator: int,
    *,
    require_provenance_manifest: bool = False,
    julia_project: Path | None = None,
) -> tuple[dict[str, Any], int]:
    paths = path_map(artifact_dir)
    files: dict[str, dict[str, Any]] = {}
    failures: list[str] = []

    for artifact in ARTIFACTS:
        path = paths[artifact.key]
        exists = path.exists()
        required = artifact.required or (
            require_provenance_manifest
            and artifact.key in {"provenance", "manifest"}
        )
        entry: dict[str, Any] = {
            "path": str(path),
            "required": required,
            "description": artifact.description,
            "exists": exists,
        }
        if exists:
            entry["bytes"] = path.stat().st_size
        elif required:
            failures.append(f"missing required file: {path}")
        files[artifact.key] = entry

    json_payloads: dict[str, dict[str, Any]] = {}
    for key in ("solved", "quotient_expr", "full_expr", "rationalization_summary", "exact"):
        path = paths[key]
        if path.exists():
            payload = read_json(path)
            if payload is None:
                continue
            json_payloads[key] = payload
            if "__error__" in payload:
                failures.append(f"{path}: {payload['__error__']}")

    if "solved" in json_payloads and "__error__" not in json_payloads["solved"]:
        failures.extend(
            export_shape_checks(
                json_payloads["solved"],
                label="solved",
                expected_mode="quotient",
                expected_vars=123,
                expected_scalar=6283,
                expected_psd=28,
                require_solved=True,
            )
        )
    if "quotient_expr" in json_payloads and "__error__" not in json_payloads["quotient_expr"]:
        failures.extend(
            export_shape_checks(
                json_payloads["quotient_expr"],
                label="quotient_expr",
                expected_mode="quotient",
                expected_vars=123,
                expected_scalar=6283,
                expected_psd=28,
                require_expressions=True,
            )
        )
    if "full_expr" in json_payloads and "__error__" not in json_payloads["full_expr"]:
        failures.extend(
            export_shape_checks(
                json_payloads["full_expr"],
                label="full_expr",
                expected_mode="full",
                expected_vars=560,
                expected_scalar=6720,
                expected_psd=28,
                require_expressions=True,
            )
        )
        if json_payloads["full_expr"].get("symmetry_constraints") is True:
            failures.append("full_expr.symmetry_constraints: expected false/missing")
    if (
        "rationalization_summary" in json_payloads
        and "__error__" not in json_payloads["rationalization_summary"]
    ):
        failures.extend(
            rationalization_summary_checks(
                json_payloads["rationalization_summary"],
                denominator,
            )
        )
    if "exact" in json_payloads and "__error__" not in json_payloads["exact"]:
        failures.extend(exact_shape_checks(json_payloads["exact"], denominator))

    for key, payload in json_payloads.items():
        if "__error__" in payload:
            continue
        files[key]["shape"] = {
            "n": payload.get("n"),
            "r": payload.get("r"),
            "variable_mode": payload.get("variable_mode"),
            "variable_count": payload.get("variable_count"),
            "constraint_counts": payload.get("constraint_counts"),
            "rational_denominator": payload.get("rational_denominator"),
            "has_full_objective_subconst_expression": (
                "full_objective_subconst_expression" in payload
            ),
            "has_full_aggregate_dual_expression_components": (
                "full_aggregate_dual_expression_components" in payload
            ),
        }

    report = {
        "artifact_dir": str(artifact_dir),
        "denominator": denominator,
        "require_provenance_manifest": require_provenance_manifest,
        "julia_project": str(julia_project) if julia_project is not None else None,
        "files": files,
        "failures": failures,
        "commands": command_lines(paths, denominator, julia_project=julia_project),
    }
    return report, 1 if failures else 0


def print_text_report(report: dict[str, Any]) -> None:
    print("GP2025 K2 artifact status")
    print(f"artifact_dir: {report['artifact_dir']}")
    print(f"denominator: {report['denominator']}")
    print()
    for key, entry in report["files"].items():
        status = "present" if entry["exists"] else "missing"
        required = "required" if entry["required"] else "optional"
        size = f", {entry['bytes']} bytes" if entry.get("bytes") is not None else ""
        print(f"{key}: {status} ({required}){size}")
        print(f"  path: {entry['path']}")
        if "shape" in entry:
            shape = entry["shape"]
            print(
                "  shape: "
                f"n={shape.get('n')} r={shape.get('r')} "
                f"mode={shape.get('variable_mode')} vars={shape.get('variable_count')} "
                f"counts={shape.get('constraint_counts')} "
                f"den={shape.get('rational_denominator')} "
                f"full_objective={shape.get('has_full_objective_subconst_expression')} "
                f"components={shape.get('has_full_aggregate_dual_expression_components')}"
            )
    print()
    if report["failures"]:
        print("FAIL:")
        for failure in report["failures"]:
            print(f"  {failure}")
    else:
        print("OK: required artifacts are present and cheap shape checks passed")
    print()
    print("Commands")
    print("--------")
    for line in report["commands"]:
        print(line)


def positive_int(value: str) -> int:
    parsed = int(value)
    if parsed <= 0:
        raise argparse.ArgumentTypeError("must be positive")
    return parsed


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Check expected GP2025 K2 artifact files and print commands."
    )
    parser.add_argument(
        "--artifact-dir",
        type=Path,
        default=DEFAULT_ARTIFACT_DIR,
        help=(
            "directory containing gp_binary_13_1 artifacts "
            f"(default: {DEFAULT_ARTIFACT_DIR})"
        ),
    )
    parser.add_argument(
        "--denominator",
        type=positive_int,
        default=DEFAULT_DENOMINATOR,
        help=f"expected rational denominator (default: {DEFAULT_DENOMINATOR})",
    )
    parser.add_argument(
        "--require-provenance-manifest",
        action="store_true",
        help="treat CertificateProvenance.json and MANIFEST.sha256 as required",
    )
    parser.add_argument(
        "--julia-project",
        type=Path,
        help=(
            "render Julia preflight/export commands with --project=PATH; "
            "use after creating an isolated Julia environment"
        ),
    )
    parser.add_argument("--json", action="store_true", help="emit JSON report")
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    artifact_dir = args.artifact_dir.expanduser().resolve()
    julia_project = (
        args.julia_project.expanduser().resolve()
        if args.julia_project is not None
        else None
    )
    report, exit_code = build_report(
        artifact_dir,
        args.denominator,
        require_provenance_manifest=args.require_provenance_manifest,
        julia_project=julia_project,
    )
    if args.json:
        print(json.dumps(report, indent=2, sort_keys=True))
    else:
        print_text_report(report)
    return exit_code


if __name__ == "__main__":
    raise SystemExit(main())
