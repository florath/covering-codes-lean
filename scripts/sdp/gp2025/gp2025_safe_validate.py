#!/usr/bin/env python3
"""Run GP2025 validation targets with explicit Lean resource controls.

The helper is intentionally conservative: it runs one command at a time, sets
``LEAN_NUM_THREADS`` explicitly, rejects unsafe Lake threading flags, records
elapsed time, and samples cgroup/process memory while the command runs.

By default Lean/Lake targets do not set RLIMIT_AS. Low virtual-memory caps can
make Lean fail before real memory pressure because worker threads reserve
virtual address space.
"""

from __future__ import annotations

import argparse
import json
import os
import re
import resource
import signal
import subprocess
import sys
import threading
import time
from dataclasses import dataclass
from datetime import datetime, timezone
from pathlib import Path
from typing import Callable, Iterable, Sequence


ROOT = Path(__file__).resolve().parents[3]
K2_REL = Path("CoveringCodes/SDP/GijswijtPolak2025/Generated/BinaryK2_13_1")
K2 = ROOT / K2_REL
DEFAULT_LOG_DIR = Path("build/gp2025-safe-validate")
MODULE_PREFIX = "CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1"
ROOT_GP2025_MODULE = "CoveringCodes.SDP.GijswijtPolak2025"
COVERING_CODES_LIBRARY = "CoveringCodes"
COVERING_CODES_EXE = "covering_codes"
DEFAULT_SAMPLE_INTERVAL_SECONDS = 15.0
DEFAULT_CUSTOM_TIMEOUT_SECONDS = 900
DEFAULT_LEAN_ULIMIT_V_KB = 0
ULIMIT_AS_NOTE = (
    "Low RLIMIT_AS/ulimit -v caps can make Lean fail to create threads because "
    "thread stacks and other reservations consume virtual address space before "
    "RSS reaches the cap."
)

CGROUP_FILES = (
    Path("/sys/fs/cgroup/memory.current"),
    Path("/sys/fs/cgroup/memory.max"),
    Path("/sys/fs/cgroup/pids.current"),
    Path("/sys/fs/cgroup/pids.max"),
)

ALLOWED_LAKE_BUILD_TARGETS = {
    f"{MODULE_PREFIX}.FullObjectiveData",
    f"{MODULE_PREFIX}.FullObjectiveCoeff0",
    f"{MODULE_PREFIX}.FullAggregateDualLiteralSemanticCoeff0",
    f"{MODULE_PREFIX}.FullObjective",
    f"{MODULE_PREFIX}.FullAggregateSemantic",
    f"{MODULE_PREFIX}.QuotientFiber",
    f"{MODULE_PREFIX}.Bridge",
    f"{MODULE_PREFIX}.CompactBridge",
    f"{MODULE_PREFIX}.CompactSemantic",
    f"{MODULE_PREFIX}.CompactObjective",
    f"{MODULE_PREFIX}.CompactCertificate",
    f"{MODULE_PREFIX}.Instance",
    ROOT_GP2025_MODULE,
    COVERING_CODES_LIBRARY,
    COVERING_CODES_EXE,
}

ALLOWED_LAKE_BUILD_TARGET_PATTERNS = (
    re.compile(
        rf"^{re.escape(MODULE_PREFIX)}\."
        r"FullObjectiveCoeff\d+$"
    ),
    re.compile(
        rf"^{re.escape(MODULE_PREFIX)}\."
        r"FullAggregateDualLiteralSemanticCoeff\d+$"
    ),
)

UNSAFE_TOKEN_RE = re.compile(r"^-j\d+$")
WRAPPER_COMMANDS = {"bash", "dash", "env", "fish", "sh", "timeout", "zsh"}
OLD_COMPACT_PROOF_FILE_RE = re.compile(
    r"^(?:"
    r"CompactScalarChunk\d+Semantic(?:Coeff\d*)?|"
    r"CompactScalarGroup.*Eq.*|"
    r"CompactObjectiveDataEqCoeff.*"
    r")\.lean$"
)
OLD_COMPACT_PROOF_IMPORT_RE = re.compile(
    r"^import .*\.(?:"
    r"CompactScalarChunk\d+Semantic(?:Coeff\d*)?|"
    r"CompactScalarGroup.*Eq.*|"
    r"CompactObjectiveDataEqCoeff.*"
    r")$"
)
COMPACT_BRIDGE_IMPORT_RE = re.compile(r"^import .*\.CompactBridge$")
OLD_BRIDGE_FAMILY_FILE_RE = re.compile(
    r"^(?:BridgeData|BridgeScalar[0-9]*|BridgeMatrix[0-9]*)\.lean$"
)
OLD_BRIDGE_IMPORT_RE = re.compile(
    r"^import .*\.(?:BridgeData|BridgeScalar[0-9]*|BridgeMatrix[0-9]*)$"
)
DIRECT_K2_IMPORT_RE = re.compile(
    r"^import CoveringCodes\.SDP\.GijswijtPolak2025\.Generated\.BinaryK2_13_1\."
    r"(Certificate|BridgeData|Bridge)$"
)
DEFAULT_STALE_PROFILE = "compact-component"
DEFAULT_NATIVE_PROFILE = "k2-full-sparse-zero"

NATIVE_PROFILES: dict[str, dict[Path, int]] = {
    "k2-full-sparse-zero": {},
    "k2-full-sparse-legacy5": {
        K2_REL / "QuotientFiber.lean": 1,
        K2_REL / "Bridge.lean": 2,
        K2_REL / "Certificate.lean": 2,
    },
}

REQUIRED_PUBLIC_PATTERNS: dict[str, tuple[Path, re.Pattern[str]]] = {
    "CompactDualExpression_semantic": (
        K2 / "CompactSemantic.lean",
        re.compile(r"\bbinaryK2_13_1CompactDualExpression_semantic\b"),
    ),
    "CompactObjectiveExpression_eq": (
        K2 / "CompactObjective.lean",
        re.compile(r"\bbinaryK2_13_1CompactObjectiveExpression_eq\b"),
    ),
    "CompactObjectiveExpressionCertificate": (
        K2 / "CompactCertificate.lean",
        re.compile(r"\bbinaryK2_13_1CompactObjectiveExpressionCertificate\b"),
    ),
    "CompactExpressionDualCertificate": (
        K2 / "CompactCertificate.lean",
        re.compile(r"\bbinaryK2_13_1CompactExpressionDualCertificate\b"),
    ),
}


@dataclass(frozen=True)
class StaleProfile:
    file_re: re.Pattern[str]
    text_re: re.Pattern[str]
    scan_all_k2_files: bool = False


STALE_PROFILES: dict[str, StaleProfile] = {
    "compact-component": StaleProfile(
        file_re=re.compile(
            r"^(?:"
            r"CompactDataQuotient.*|"
            r"CompactQuotientExpression|"
            r"CompactObjectiveCarrier.*|"
            r"FullAggregateTargetSampled|"
            r"FullAggregateSemanticCoeff.*|"
            r"FullAggregateScalarChunk.*SemanticCoeff.*"
            r")\.lean$"
        ),
        text_re=re.compile(
            r"CompactDataQuotient|"
            r"CompactDualExpressionQuotient|"
            r"CompactQuotientExpression|"
            r"FullAggregateComponentTargetData_quotient_eq_sampledData\.symm"
        ),
        scan_all_k2_files=True,
    ),
    "bridge-clean-full-sparse": StaleProfile(
        file_re=re.compile(
            r"^(?:"
            r"FullAggregateSemanticCoeff.*|"
            r"CompactDataQuotientCoeff.*|"
            r"CompactScalarGroup.*SemanticCoeff.*|"
            r"CompactPsdComponent.*SemanticCoeff.*|"
            r"FullAggregateScalarChunk.*SemanticCoeff.*"
            r")\.lean$"
        ),
        text_re=re.compile(
            r"CompactDataQuotientCoeff|"
            r"CompactDataQuotientCoeffEqChunk|"
            r"CompactData_eq_quotient_(?:const|coeff_nat)|"
            r"FullAggregateComponentTargetData_quotient_eq_sampledData\.symm|"
            r"\bCompactScalarGroup\d+(?:Direct)?Semantic(?:Coeff\d+)?\b|"
            r"\bCompactPsdComponent\d+Semantic(?:Coeff\d+)?\b"
        ),
        scan_all_k2_files=True,
    ),
    "legacy-strict": StaleProfile(
        file_re=re.compile(
            r"^(?:"
            r"FullAggregateSemanticCoeff.*|"
            r"CompactDataQuotientCoeff.*|"
            r"CompactObjectiveDataEqCoeff.*|"
            r"CompactScalarGroup.*SemanticCoeff.*|"
            r"CompactPsdComponent.*SemanticCoeff.*|"
            r"FullAggregateScalarChunk.*SemanticCoeff.*"
            r")\.lean$"
        ),
        text_re=re.compile(
            r"CompactDataQuotientCoeff|"
            r"CompactObjectiveDataEqCoeff|"
            r"ObjectiveSubConstData_eq_compactData|"
            r"CompactData_eq_quotient|"
            r"CompactDualExpressionData_eq_quotient|"
            r"CompactDualExpressionData_semantic"
        ),
    ),
}


@dataclass(frozen=True)
class Target:
    description: str
    timeout_seconds: int
    command: tuple[str, ...] | None = None


TARGETS: dict[str, Target] = {
    "metrics-k2-static": Target(
        description="collect static BinaryK2_13_1 metrics and import gates",
        timeout_seconds=120,
        command=None,
    ),
    "full-objective-guard-smoke": Target(
        description="generator-only smoke for the compact full-objective guard",
        timeout_seconds=300,
        command=(
            sys.executable,
            str(ROOT / "scripts/sdp/gp2025/gp2025_full_objective_guard_smoke.py"),
        ),
    ),
    "compact-semantic-lean": Target(
        description="single-file Lean check for CompactSemantic.lean",
        timeout_seconds=900,
        command=(
            "lake",
            "env",
            "lean",
            "-M",
            "8192",
            str(K2_REL / "CompactSemantic.lean"),
        ),
    ),
    "compact-objective-lean": Target(
        description="single-file Lean check for CompactObjective.lean",
        timeout_seconds=900,
        command=(
            "lake",
            "env",
            "lean",
            "-M",
            "8192",
            str(K2_REL / "CompactObjective.lean"),
        ),
    ),
    "compact-certificate-lean": Target(
        description="single-file Lean check for CompactCertificate.lean",
        timeout_seconds=1200,
        command=(
            "lake",
            "env",
            "lean",
            "-M",
            "8192",
            str(K2_REL / "CompactCertificate.lean"),
        ),
    ),
    "instance-lean": Target(
        description="single-file Lean check for Instance.lean",
        timeout_seconds=1200,
        command=(
            "lake",
            "env",
            "lean",
            "-M",
            "8192",
            str(K2_REL / "Instance.lean"),
        ),
    ),
    "root-gp2025-lean": Target(
        description="single-file Lean check for root GP2025 module file",
        timeout_seconds=2400,
        command=(
            "lake",
            "env",
            "lean",
            "-M",
            "8192",
            "CoveringCodes/SDP/GijswijtPolak2025.lean",
        ),
    ),
    "full-aggregate-semantic-build": Target(
        description="focused Lake build for generated FullAggregateSemantic",
        timeout_seconds=1800,
        command=("lake", "build", f"{MODULE_PREFIX}.FullAggregateSemantic"),
    ),
    "full-objective-data-build": Target(
        description="focused Lake build for generated FullObjectiveData",
        timeout_seconds=300,
        command=("lake", "build", f"{MODULE_PREFIX}.FullObjectiveData"),
    ),
    "full-objective-coeff0-build": Target(
        description="focused Lake build for generated FullObjectiveCoeff0",
        timeout_seconds=1200,
        command=("lake", "build", f"{MODULE_PREFIX}.FullObjectiveCoeff0"),
    ),
    "full-aggregate-dual-literal-coeff0-build": Target(
        description="focused Lake build for generated FullAggregateDualLiteralSemanticCoeff0",
        timeout_seconds=1200,
        command=(
            "lake",
            "build",
            f"{MODULE_PREFIX}.FullAggregateDualLiteralSemanticCoeff0",
        ),
    ),
    "full-objective-build": Target(
        description="focused Lake build for generated FullObjective",
        timeout_seconds=3600,
        command=("lake", "build", f"{MODULE_PREFIX}.FullObjective"),
    ),
    "quotient-fiber-build": Target(
        description="focused Lake build for generated QuotientFiber",
        timeout_seconds=600,
        command=("lake", "build", f"{MODULE_PREFIX}.QuotientFiber"),
    ),
    "bridge-build": Target(
        description="focused Lake build for generated Bridge",
        timeout_seconds=1200,
        command=("lake", "build", f"{MODULE_PREFIX}.Bridge"),
    ),
    "compact-semantic-build": Target(
        description="focused Lake build for generated CompactSemantic",
        timeout_seconds=1800,
        command=("lake", "build", f"{MODULE_PREFIX}.CompactSemantic"),
    ),
    "compact-bridge-build": Target(
        description="focused Lake build for generated CompactBridge",
        timeout_seconds=1200,
        command=("lake", "build", f"{MODULE_PREFIX}.CompactBridge"),
    ),
    "compact-objective-build": Target(
        description="focused Lake build for generated CompactObjective",
        timeout_seconds=2400,
        command=("lake", "build", f"{MODULE_PREFIX}.CompactObjective"),
    ),
    "compact-certificate-build": Target(
        description="focused Lake build for generated CompactCertificate",
        timeout_seconds=3600,
        command=("lake", "build", f"{MODULE_PREFIX}.CompactCertificate"),
    ),
    "instance-build": Target(
        description="focused Lake build for generated Instance",
        timeout_seconds=3600,
        command=("lake", "build", f"{MODULE_PREFIX}.Instance"),
    ),
    "root-gp2025-build": Target(
        description="bounded Lake build for root GP2025 module",
        timeout_seconds=7200,
        command=("lake", "build", ROOT_GP2025_MODULE),
    ),
    "covering-codes-build": Target(
        description="bounded Lake build for the full CoveringCodes library",
        timeout_seconds=21600,
        command=("lake", "build", COVERING_CODES_LIBRARY),
    ),
    "covering-codes-exe-build": Target(
        description="bounded Lake build for the covering_codes executable",
        timeout_seconds=7200,
        command=("lake", "build", COVERING_CODES_EXE),
    ),
}


def positive_int(value: str) -> int:
    parsed = int(value)
    if parsed <= 0:
        raise argparse.ArgumentTypeError("must be positive")
    return parsed


def nonnegative_int(value: str) -> int:
    parsed = int(value)
    if parsed < 0:
        raise argparse.ArgumentTypeError("must be nonnegative")
    return parsed


def positive_float(value: str) -> float:
    parsed = float(value)
    if parsed <= 0:
        raise argparse.ArgumentTypeError("must be positive")
    return parsed


def relpath(path: Path) -> str:
    try:
        return str(path.relative_to(ROOT))
    except ValueError:
        return str(path)


def utc_stamp() -> str:
    return datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")


def safe_label(label: str) -> str:
    cleaned = re.sub(r"[^A-Za-z0-9_.-]+", "-", label).strip("-")
    return cleaned or "gp2025-validation"


def read_text(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def read_cgroup_file(path: Path) -> str | None:
    try:
        return path.read_text(encoding="utf-8").strip()
    except OSError:
        return None


def read_cgroup_snapshot() -> dict[str, str]:
    snapshot: dict[str, str] = {}
    for path in CGROUP_FILES:
        value = read_cgroup_file(path)
        snapshot[str(path)] = value if value is not None else "unknown"
    return snapshot


def parse_int(value: str | None) -> int | None:
    if value is None or not value.isdigit():
        return None
    return int(value)


def run_capture(args: Sequence[str], timeout: int = 5) -> str:
    try:
        completed = subprocess.run(
            args,
            cwd=ROOT,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            timeout=timeout,
            check=False,
        )
    except (OSError, subprocess.TimeoutExpired) as exc:
        return f"{type(exc).__name__}: {exc}"
    return completed.stdout.strip()


def git_summary() -> dict[str, str]:
    status = run_capture(("git", "status", "--short", "--branch"))
    status_lines = status.splitlines()
    if len(status_lines) > 80:
        status = "\n".join(status_lines[:80] + [f"... {len(status_lines) - 80} more"])
    return {
        "branch": run_capture(("git", "branch", "--show-current")) or "unknown",
        "head": run_capture(("git", "rev-parse", "--short", "HEAD")) or "unknown",
        "status": status,
    }


def process_rows() -> tuple[list[dict[str, object]], int]:
    output = run_capture(
        (
            "ps",
            "-eo",
            "pid,ppid,etime,%cpu,%mem,rss,comm,args",
            "--sort=-rss",
        )
    )
    rows: list[dict[str, object]] = []
    lean_lake_rss_kib = 0
    needles = ("lean", "lake", "elan")
    seen: set[int] = set()

    for index, line in enumerate(output.splitlines()[1:]):
        parts = line.split(None, 7)
        if len(parts) < 8:
            continue
        pid_text, ppid_text, etime, cpu, mem, rss_text, comm, command = parts
        try:
            pid = int(pid_text)
            ppid = int(ppid_text)
            rss_kib = int(rss_text)
        except ValueError:
            continue

        haystack = f"{comm} {command}".lower()
        is_lean_lake = any(needle in haystack for needle in needles)
        if is_lean_lake:
            lean_lake_rss_kib += rss_kib

        if index < 20 or is_lean_lake or "python" in haystack:
            if pid in seen:
                continue
            seen.add(pid)
            rows.append(
                {
                    "pid": pid,
                    "ppid": ppid,
                    "etime": etime,
                    "cpu_percent": cpu,
                    "mem_percent": mem,
                    "rss_kib": rss_kib,
                    "comm": comm,
                    "args": command,
                }
            )

    return rows, lean_lake_rss_kib


def collect_sample() -> tuple[dict[str, object], int | None, int]:
    cgroup = read_cgroup_snapshot()
    rows, lean_lake_rss_kib = process_rows()
    memory_current = parse_int(cgroup.get("/sys/fs/cgroup/memory.current"))
    return (
        {
            "sample_time": datetime.now(timezone.utc).isoformat(),
            "cgroup": cgroup,
            "processes": rows,
            "lean_lake_rss_kib": lean_lake_rss_kib,
        },
        memory_current,
        lean_lake_rss_kib,
    )


def validate_command(command: Sequence[str]) -> list[str]:
    errors: list[str] = []
    if command:
        command_name = Path(command[0]).name
        if command_name in WRAPPER_COMMANDS:
            errors.append(
                f"wrapper command rejected: {command[0]}; invoke lake/lean directly "
                "so the helper can enforce resource policy"
            )

    for token in command:
        if token == "-j" or UNSAFE_TOKEN_RE.match(token):
            errors.append(f"unsafe Lake parallelism token rejected: {token}")
        if token == "--threads" or token.startswith("--threads="):
            errors.append(f"unsafe Lean threading token rejected: {token}")
        if "lake build" in token:
            errors.append(
                "shell-like token containing `lake build` rejected; invoke lake directly"
            )

    lake_build_indices = [
        index for index, token in enumerate(command)
        if Path(token).name == "lake"
        and index + 1 < len(command)
        and command[index + 1] == "build"
    ]
    for lake_index in lake_build_indices:
        build_index = lake_index + 1
        targets = [
            token for token in command[build_index + 1 :]
            if not token.startswith("-")
        ]
        if not targets:
            errors.append("broad `lake build` without a module target is rejected")
        for target in targets:
            if target not in ALLOWED_LAKE_BUILD_TARGETS and not any(
                pattern.match(target) for pattern in ALLOWED_LAKE_BUILD_TARGET_PATTERNS
            ):
                errors.append(f"Lake build target is not in the focused allowlist: {target}")
    return errors


def terminate_process_group(proc: subprocess.Popen[str]) -> None:
    try:
        os.killpg(proc.pid, signal.SIGTERM)
    except ProcessLookupError:
        return
    except OSError as exc:
        print(f"warning: failed to terminate process group {proc.pid}: {exc}", file=sys.stderr)
        return
    try:
        proc.wait(timeout=5)
    except subprocess.TimeoutExpired:
        try:
            os.killpg(proc.pid, signal.SIGKILL)
        except ProcessLookupError:
            return
        except OSError as exc:
            print(f"warning: failed to kill process group {proc.pid}: {exc}", file=sys.stderr)


def child_preexec(ulimit_v_kb: int) -> Callable[[], None] | None:
    if ulimit_v_kb == 0:
        return None

    limit_bytes = ulimit_v_kb * 1024

    def apply_limits() -> None:
        resource.setrlimit(resource.RLIMIT_AS, (limit_bytes, limit_bytes))

    return apply_limits


def run_command(
    command: Sequence[str],
    *,
    label: str,
    timeout_seconds: int,
    threads: int,
    ulimit_v_kb: int,
    sample_interval_seconds: float,
    log_dir: Path,
) -> int:
    errors = validate_command(command)
    if errors:
        for error in errors:
            print(f"FAIL: {error}", file=sys.stderr)
        return 2

    log_dir.mkdir(parents=True, exist_ok=True)
    stamp = utc_stamp()
    label_part = safe_label(label)
    log_path = log_dir / f"{stamp}-{label_part}.log"
    samples_path = log_dir / f"{stamp}-{label_part}.samples.jsonl"

    env = os.environ.copy()
    env["LEAN_NUM_THREADS"] = str(threads)

    print(f"label: {label}")
    print(f"cwd: {ROOT}")
    print(f"command: {' '.join(command)}")
    print(f"LEAN_NUM_THREADS={threads}")
    print(f"ulimit_v_kb={ulimit_v_kb if ulimit_v_kb else 'disabled'}")
    if ulimit_v_kb:
        print(f"ulimit_note: {ULIMIT_AS_NOTE}")
    print(f"timeout_seconds={timeout_seconds}")
    print(f"log: {relpath(log_path)}")
    print(f"samples: {relpath(samples_path)}")

    start = time.monotonic()
    timeout_hit = False
    peak_memory_current: int | None = None
    peak_lean_lake_rss_kib = 0
    peak_lock = threading.Lock()
    stop_sampling = threading.Event()

    with log_path.open("w", encoding="utf-8") as log_file, samples_path.open(
        "w", encoding="utf-8"
    ) as samples_file:
        log_file.write(f"$ {' '.join(command)}\n")
        log_file.write(f"LEAN_NUM_THREADS={threads}\n")
        log_file.write(f"ulimit_v_kb={ulimit_v_kb if ulimit_v_kb else 'disabled'}\n")
        if ulimit_v_kb:
            log_file.write(f"ulimit_note={ULIMIT_AS_NOTE}\n")
        log_file.flush()

        proc = subprocess.Popen(
            list(command),
            cwd=ROOT,
            env=env,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            start_new_session=True,
            preexec_fn=child_preexec(ulimit_v_kb),
            bufsize=1,
        )

        def sample_loop() -> None:
            nonlocal peak_memory_current, peak_lean_lake_rss_kib
            while not stop_sampling.is_set():
                sample, memory_current, lean_lake_rss_kib = collect_sample()
                samples_file.write(json.dumps(sample, sort_keys=True) + "\n")
                samples_file.flush()
                with peak_lock:
                    if memory_current is not None:
                        if peak_memory_current is None:
                            peak_memory_current = memory_current
                        else:
                            peak_memory_current = max(peak_memory_current, memory_current)
                    peak_lean_lake_rss_kib = max(peak_lean_lake_rss_kib, lean_lake_rss_kib)
                stop_sampling.wait(sample_interval_seconds)

        def reader_loop() -> None:
            assert proc.stdout is not None
            for line in proc.stdout:
                print(line, end="")
                log_file.write(line)
                log_file.flush()

        sampler = threading.Thread(target=sample_loop, name="gp2025-sampler", daemon=True)
        reader = threading.Thread(target=reader_loop, name="gp2025-output-reader", daemon=True)
        sampler.start()
        reader.start()

        try:
            while proc.poll() is None:
                elapsed = time.monotonic() - start
                if elapsed >= timeout_seconds:
                    timeout_hit = True
                    print(f"timeout after {timeout_seconds}s; terminating process group")
                    terminate_process_group(proc)
                    break
                time.sleep(0.2)
        finally:
            stop_sampling.set()
            sampler.join(timeout=sample_interval_seconds + 2)
            reader.join(timeout=5)

        return_code = proc.poll()
        if return_code is None:
            return_code = 124 if timeout_hit else 1

    elapsed_seconds = time.monotonic() - start
    if timeout_hit and return_code == 0:
        return_code = 124

    summary = {
        "label": label,
        "command": list(command),
        "exit_code": return_code,
        "elapsed_seconds": round(elapsed_seconds, 1),
        "timeout": timeout_hit,
        "lean_num_threads": threads,
        "ulimit_v_kb": ulimit_v_kb,
        "ulimit_as_note": ULIMIT_AS_NOTE if ulimit_v_kb else None,
        "peak_memory_current_bytes": peak_memory_current,
        "peak_lean_lake_rss_kib": peak_lean_lake_rss_kib,
        "log": relpath(log_path),
        "samples": relpath(samples_path),
    }
    print(json.dumps(summary, indent=2, sort_keys=True))
    return return_code


def iter_lean_files(root: Path, deadline: float) -> list[Path]:
    if not root.exists():
        raise FileNotFoundError(root)
    files: list[Path] = []
    for path in root.rglob("*.lean"):
        if time.monotonic() > deadline:
            raise TimeoutError("static metrics exceeded timeout")
        files.append(path)
    return sorted(files)


def matching_lines(paths: Iterable[Path], pattern: re.Pattern[str] | str, deadline: float) -> list[str]:
    if isinstance(pattern, str):
        regex = re.compile(re.escape(pattern))
    else:
        regex = pattern

    matches: list[str] = []
    for path in paths:
        if time.monotonic() > deadline:
            raise TimeoutError("static metrics exceeded timeout")
        if not path.exists():
            continue
        for line_number, line in enumerate(read_text(path).splitlines(), start=1):
            if regex.search(line):
                matches.append(f"{relpath(path)}:{line_number}:{line}")
    return matches


def emit_list(
    emit: Callable[[str], None], title: str, values: Sequence[str], *, limit: int = 40
) -> None:
    emit(f"{title}: {len(values)}")
    for value in values[:limit]:
        emit(f"  {value}")
    if len(values) > limit:
        emit(f"  ... {len(values) - limit} more")


def run_static_metrics(args: argparse.Namespace, log_dir: Path, timeout_seconds: int) -> int:
    log_dir.mkdir(parents=True, exist_ok=True)
    log_path = log_dir / f"{utc_stamp()}-metrics-k2-static.log"
    deadline = time.monotonic() + timeout_seconds
    failures: list[str] = []
    lines: list[str] = []

    def emit(line: str = "") -> None:
        print(line)
        lines.append(line)

    try:
        stale_profile = STALE_PROFILES[args.stale_profile]
        lean_files = iter_lean_files(K2, deadline)
        total_bytes = sum(path.stat().st_size for path in lean_files)
        native_counts: dict[Path, int] = {}
        for path in lean_files:
            if time.monotonic() > deadline:
                raise TimeoutError("static metrics exceeded timeout")
            count = read_text(path).count("native_decide")
            if count:
                native_counts[path] = count

        native_total = sum(native_counts.values())
        native_profile: dict[Path, int] | None = None
        native_profile_mismatches: list[str] = []
        if args.allowed_native_profile is not None:
            native_profile = NATIVE_PROFILES[args.allowed_native_profile]
            actual_by_rel = {
                path.relative_to(ROOT): count
                for path, count in native_counts.items()
            }
            expected_paths = set(native_profile)
            actual_paths = set(actual_by_rel)
            for path in sorted(expected_paths | actual_paths):
                expected = native_profile.get(path, 0)
                actual = actual_by_rel.get(path, 0)
                if actual != expected:
                    native_profile_mismatches.append(
                        f"{path}: expected {expected}, got {actual}"
                    )
        stale_profile_files = sorted(
            path for path in lean_files if stale_profile.file_re.match(path.name)
        )
        old_compact_proof_files = sorted(
            path for path in lean_files if OLD_COMPACT_PROOF_FILE_RE.match(path.name)
        )
        preserved_bridge_family_files = sorted(
            path for path in lean_files if OLD_BRIDGE_FAMILY_FILE_RE.match(path.name)
        )

        active_route_files = [
            K2 / "CompactSemantic.lean",
            K2 / "CompactObjective.lean",
            K2 / "CompactCertificate.lean",
        ]
        compact_bridge_import_files = [
            K2 / "FullAggregateRangeTerms.lean",
            K2 / "FullAggregateSemantic.lean",
            *active_route_files,
        ]
        watched_import_files = [
            *active_route_files,
            K2 / "Instance.lean",
        ]
        stale_text_files = lean_files if stale_profile.scan_all_k2_files else active_route_files
        stale_active_refs = matching_lines(stale_text_files, stale_profile.text_re, deadline)
        old_compact_imports = matching_lines(
            watched_import_files, OLD_COMPACT_PROOF_IMPORT_RE, deadline
        )
        compact_bridge_imports = matching_lines(
            compact_bridge_import_files, COMPACT_BRIDGE_IMPORT_RE, deadline
        )
        old_bridge_imports = matching_lines(lean_files, OLD_BRIDGE_IMPORT_RE, deadline)
        semantic_quotient_theorem = matching_lines(
            [K2 / "CompactSemantic.lean"],
            re.compile(r"theorem .*CompactDualExpression_semantic"),
            deadline,
        )
        certificate_quotient_boundary = matching_lines(
            [K2 / "CompactCertificate.lean"],
            re.compile(r"CompactDualExpressionQuotient"),
            deadline,
        )
        objective_quotient_boundary = matching_lines(
            [K2 / "CompactObjective.lean"],
            re.compile(r"CompactObjectiveExpression_eq|CompactDualExpressionQuotient"),
            deadline,
        )
        full_objective_data_file = K2 / "FullObjectiveData.lean"
        full_objective_file = K2 / "FullObjective.lean"
        full_objective_coeff_files = sorted(K2.glob("FullObjectiveCoeff*.lean"))
        full_aggregate_dual_literal_coeff_files = sorted(
            K2.glob("FullAggregateDualLiteralSemanticCoeff*.lean")
        )
        compact_objective_full_objective_import = matching_lines(
            [K2 / "CompactObjective.lean"],
            re.compile(r"^import .*\.FullObjective$"),
            deadline,
        )
        compact_objective_quotient_chunk_imports = matching_lines(
            [K2 / "CompactObjective.lean"],
            re.compile(r"^import .*\.CompactDataQuotientCoeff\d+$"),
            deadline,
        )
        full_objective_theorem = matching_lines(
            [full_objective_file],
            re.compile(r"FullObjectiveExpression_eq_fullDual\b"),
            deadline,
        )
        compact_objective_full_chain = matching_lines(
            [K2 / "CompactObjective.lean"],
            re.compile(r"FullObjectiveExpression_eq_fullDual\b"),
            deadline,
        )
        required_public_hits = {
            name: matching_lines([path], pattern, deadline)
            for name, (path, pattern) in REQUIRED_PUBLIC_PATTERNS.items()
        }
        direct_import_files = [
            ROOT / "CoveringCodes/SDP/GijswijtPolak2025.lean",
            ROOT / "CoveringCodes/SDP/GijswijtPolak2025/BinaryK2_13_1CodeCell.lean",
            K2 / "Instance.lean",
            K2 / "CompactCertificate.lean",
            K2 / "CompactSemantic.lean",
        ]
        direct_imports = matching_lines(direct_import_files, DIRECT_K2_IMPORT_RE, deadline)

        emit("GP2025 K2 static metrics")
        emit(f"root: {relpath(K2)}")
        emit(f"log: {relpath(log_path)}")
        emit(f"lean_files: {len(lean_files)}")
        emit(f"bytes: {total_bytes}")
        emit(f"native_decide_total: {native_total}")
        emit(f"allowed_native_profile: {args.allowed_native_profile or 'none'}")
        emit(f"stale_profile: {args.stale_profile}")
        emit_list(
            emit,
            "native_decide_files",
            [f"{relpath(path)} {count}" for path, count in sorted(native_counts.items())],
        )
        emit_list(emit, "native_profile_mismatches", native_profile_mismatches)
        emit_list(emit, "stale_profile_files", [relpath(path) for path in stale_profile_files])
        emit_list(emit, "stale_active_refs", stale_active_refs)
        emit_list(emit, "old_compact_proof_family_files", [relpath(path) for path in old_compact_proof_files])
        emit_list(emit, "preserved_bridge_family_files", [relpath(path) for path in preserved_bridge_family_files])
        emit_list(emit, "old_compact_proof_family_imports", old_compact_imports)
        emit_list(emit, "compact_bridge_imports_semantic_path", compact_bridge_imports)
        emit_list(emit, "old_bridge_family_imports", old_bridge_imports)
        emit_list(emit, "direct_k2_route_imports", direct_imports)
        emit_list(emit, "semantic_quotient_theorem", semantic_quotient_theorem)
        emit_list(emit, "certificate_quotient_boundary", certificate_quotient_boundary)
        emit_list(emit, "objective_quotient_boundary", objective_quotient_boundary)
        emit(f"full_objective_data_present: {full_objective_data_file.is_file()}")
        emit(f"full_objective_present: {full_objective_file.is_file()}")
        emit_list(
            emit,
            "full_objective_coeff_files",
            [relpath(path) for path in full_objective_coeff_files],
        )
        emit_list(
            emit,
            "full_aggregate_dual_literal_coeff_files",
            [relpath(path) for path in full_aggregate_dual_literal_coeff_files],
        )
        emit_list(
            emit,
            "compact_objective_full_objective_import",
            compact_objective_full_objective_import,
        )
        emit_list(
            emit,
            "compact_objective_quotient_chunk_imports",
            compact_objective_quotient_chunk_imports,
        )
        emit_list(emit, "full_objective_theorem", full_objective_theorem)
        emit_list(emit, "compact_objective_full_chain", compact_objective_full_chain)
        for name, hits in required_public_hits.items():
            emit_list(emit, f"required_public_{name}", hits)

        if args.expect_files is not None and len(lean_files) != args.expect_files:
            failures.append(f"expected {args.expect_files} Lean files, got {len(lean_files)}")
        if args.expect_native is not None and native_total != args.expect_native:
            failures.append(f"expected {args.expect_native} native_decide occurrences, got {native_total}")
        if native_profile_mismatches:
            failures.append(
                f"native_decide locations do not match profile {args.allowed_native_profile}"
            )
        if args.require_no_stale:
            if stale_profile_files:
                failures.append("stale compact proof-family files are present")
            if stale_active_refs:
                failures.append("active semantic/objective/certificate files reference stale objective/data theorem names")
            if old_compact_proof_files:
                failures.append("old compact proof-family files are present")
            if old_compact_imports:
                failures.append("Compact proof-family imports are present in active files")
            if direct_imports:
                failures.append("direct Certificate/BridgeData/Bridge imports are present")
            if not semantic_quotient_theorem:
                failures.append("CompactSemantic does not expose CompactDualExpression_semantic")
            if args.stale_profile != "compact-component" and not certificate_quotient_boundary:
                failures.append("CompactCertificate does not use CompactDualExpressionQuotient")
            if not objective_quotient_boundary:
                failures.append("CompactObjective does not target CompactDualExpressionQuotient")
            missing_required = [
                name for name, hits in required_public_hits.items() if not hits
            ]
            if missing_required:
                failures.append(
                    "missing required public compact API names: "
                    + ", ".join(missing_required)
                )
        if args.require_full_objective_route:
            if not full_objective_data_file.is_file():
                failures.append("FullObjectiveData.lean is missing")
            if not full_objective_file.is_file():
                failures.append("FullObjective.lean is missing")
            if not full_objective_coeff_files:
                failures.append("FullObjectiveCoeff*.lean chunks are missing")
            if not full_aggregate_dual_literal_coeff_files:
                failures.append("FullAggregateDualLiteralSemanticCoeff*.lean chunks are missing")
            if stale_profile_files:
                failures.append("CompactDataQuotientCoeff*.lean files remain in full-objective route")
            if compact_objective_quotient_chunk_imports:
                failures.append("CompactObjective still imports CompactDataQuotientCoeff chunks")
            if not compact_objective_full_objective_import:
                failures.append("CompactObjective does not import FullObjective")
            if not full_objective_theorem:
                failures.append("FullObjectiveExpression_eq_fullDual theorem is missing")
            if not compact_objective_full_chain:
                failures.append("CompactObjective does not use FullObjectiveExpression_eq_fullDual")

        emit("git:")
        for key, value in git_summary().items():
            emit(f"  {key}: {value}")

        if failures:
            emit("FAIL:")
            for failure in failures:
                emit(f"  {failure}")
            exit_code = 1
        else:
            emit("OK: static metrics collected")
            if args.expect_files is None and args.expect_native is None and not args.require_no_stale:
                emit("note: no expectations were supplied, so gate mismatches are reported but not enforced")
            exit_code = 0
    except (FileNotFoundError, TimeoutError) as exc:
        emit(f"FAIL: {exc}")
        exit_code = 1

    log_path.write_text("\n".join(lines) + "\n", encoding="utf-8")
    return exit_code


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Run GP2025 validation targets with RAM-safe Lean/Lake settings."
    )
    parser.add_argument("--target", choices=sorted(TARGETS), help="built-in validation target")
    parser.add_argument("--threads", type=positive_int, default=1, help="LEAN_NUM_THREADS value")
    parser.add_argument(
        "--ulimit-v-kb",
        type=nonnegative_int,
        default=None,
        help=(
            "virtual-memory cap in KiB for Lean/Lake child processes; "
            f"default for Lean/Lake command targets is {DEFAULT_LEAN_ULIMIT_V_KB} "
            "(disabled). Low caps can break Lean thread creation before RSS "
            "reaches the cap."
        ),
    )
    parser.add_argument("--timeout", type=positive_int, help="override target timeout in seconds")
    parser.add_argument(
        "--sample-interval",
        type=positive_float,
        default=DEFAULT_SAMPLE_INTERVAL_SECONDS,
        help="seconds between cgroup/process samples",
    )
    parser.add_argument("--label", help="label for logs; defaults to the target or custom-command")
    parser.add_argument(
        "--log-dir",
        type=Path,
        default=DEFAULT_LOG_DIR,
        help="directory for logs, relative to repo root unless absolute",
    )
    parser.add_argument("--expect-files", type=positive_int, help="metrics target: expected Lean file count")
    parser.add_argument(
        "--expect-native",
        type=int,
        help="metrics target: expected native_decide occurrence count",
    )
    parser.add_argument(
        "--allowed-native-profile",
        choices=sorted(NATIVE_PROFILES),
        help=(
            "metrics target: require native_decide occurrences to appear at the "
            "exact files/counts in the named profile"
        ),
    )
    parser.add_argument(
        "--require-no-stale",
        action="store_true",
        help="metrics target: fail if stale quotient/proof-family/direct-route imports are present",
    )
    parser.add_argument(
        "--require-full-objective-route",
        action="store_true",
        help=(
            "metrics target: fail unless FullObjectiveData/FullObjective and "
            "their chunk families are present, CompactObjective imports "
            "FullObjective, and the CompactDataQuotientCoeff route is absent"
        ),
    )
    parser.add_argument(
        "--stale-profile",
        choices=sorted(STALE_PROFILES),
        default=DEFAULT_STALE_PROFILE,
        help=(
            "metrics target: stale-family profile for --require-no-stale "
            f"(default: {DEFAULT_STALE_PROFILE})"
        ),
    )
    parser.add_argument(
        "command",
        nargs=argparse.REMAINDER,
        help="custom focused command after --, for example: -- lake env lean -M 8192 path.lean",
    )
    return parser


def resolve_log_dir(path: Path) -> Path:
    return path if path.is_absolute() else ROOT / path


def main(argv: Sequence[str] | None = None) -> int:
    parser = build_parser()
    args = parser.parse_args(argv)
    command = list(args.command)
    if command and command[0] == "--":
        command = command[1:]

    if args.target and command:
        parser.error("use either --target or a custom command after --, not both")
    if not args.target and not command:
        parser.print_help(sys.stderr)
        print("\nBuilt-in targets:", file=sys.stderr)
        for name, target in TARGETS.items():
            print(f"  {name:28} {target.description}", file=sys.stderr)
        return 2

    log_dir = resolve_log_dir(args.log_dir)

    if args.target == "metrics-k2-static":
        timeout_seconds = args.timeout or TARGETS[args.target].timeout_seconds
        return run_static_metrics(args, log_dir, timeout_seconds)

    if args.target:
        target = TARGETS[args.target]
        assert target.command is not None
        command = list(target.command)
        timeout_seconds = args.timeout or target.timeout_seconds
        label = args.label or args.target
    else:
        timeout_seconds = args.timeout or DEFAULT_CUSTOM_TIMEOUT_SECONDS
        label = args.label or "custom-command"

    ulimit_v_kb = args.ulimit_v_kb
    if ulimit_v_kb is None:
        ulimit_v_kb = DEFAULT_LEAN_ULIMIT_V_KB

    return run_command(
        command,
        label=label,
        timeout_seconds=timeout_seconds,
        threads=args.threads,
        ulimit_v_kb=ulimit_v_kb,
        sample_interval_seconds=args.sample_interval,
        log_dir=log_dir,
    )


if __name__ == "__main__":
    raise SystemExit(main())
