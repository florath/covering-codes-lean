#!/usr/bin/env python3
"""Measure Lean proof files in kernel/native covering_decide modes.

The script measures one Lean file per row.  For per-proof or per-K_q(n,r)
attribution, put that proof in an isolated Lean file and pass it as a target.
"""

from __future__ import annotations

import argparse
import csv
import json
import os
import signal
import shutil
import subprocess
import time
from dataclasses import asdict, dataclass
from datetime import datetime, timezone
from pathlib import Path


DEFAULT_TARGETS = [
    ("smallExplicitUpper", "", "", "", "CoveringCodes/Database/Sources/SmallExplicitUpper.lean"),
    ("smallLowerBounds", "", "", "", "CoveringCodes/Database/Sources/SmallLowerBounds.lean"),
]

VAN_LAARHOVEN_FILE = "VanLaarhoven1989.lean"


@dataclass(frozen=True)
class Target:
    label: str
    q: str
    n: str
    r: str
    file: str


@dataclass
class Measurement:
    mode: str
    label: str
    q: str
    n: str
    r: str
    file: str
    command: str
    exit_code: int
    wall_seconds: float
    user_seconds: float
    system_seconds: float
    max_rss_kib: int
    time_log: str
    timed_out: bool
    stdout_log: str
    stderr_log: str


def parse_target(raw: str) -> Target:
    parts = raw.split(",", 4)
    if len(parts) == 5:
        label, q, n, r, file = parts
        return Target(label=label, q=q, n=n, r=r, file=file)
    path = Path(raw)
    return Target(label=path.stem, q="", n="", r="", file=raw)


def mode_values(mode: str) -> list[tuple[str, str]]:
    if mode == "kernel":
        return [("kernel", "false")]
    if mode == "native":
        return [("native", "true")]
    return [("kernel", "false"), ("native", "true")]


def is_van_laarhoven_target(target: Target) -> bool:
    return Path(target.file).name == VAN_LAARHOVEN_FILE


def safe_log_label(label: str) -> str:
    return "".join(c if c.isalnum() or c in "-_." else "_" for c in label)


def prebuild_imports(target: Target, args: argparse.Namespace, out_dir: Path) -> int:
    safe_label = safe_log_label(target.label)
    stdout_log = out_dir / f"{safe_label}.imports.stdout.log"
    stderr_log = out_dir / f"{safe_label}.imports.stderr.log"
    cmd = ["lake", "lean", target.file, "--", "--deps"]

    print(f"==> imports: {target.file}", flush=True)
    exit_code, stdout, stderr, timed_out = run_with_timeout(cmd, args.root, args.timeout)
    stdout_log.write_text(stdout, encoding="utf-8")
    stderr_log.write_text(stderr, encoding="utf-8")
    status = "timeout" if timed_out else f"exit={exit_code}"
    print(f"    {status} stdout={stdout_log} stderr={stderr_log}", flush=True)
    return exit_code


def parse_gnu_time(path: Path) -> tuple[float, float, int]:
    user_s = 0.0
    sys_s = 0.0
    rss_kib = 0
    if not path.exists():
        return user_s, sys_s, rss_kib
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        if line.startswith("\tUser time (seconds):"):
            user_s = float(line.rsplit(":", 1)[1].strip())
        elif line.startswith("\tSystem time (seconds):"):
            sys_s = float(line.rsplit(":", 1)[1].strip())
        elif line.startswith("\tMaximum resident set size (kbytes):"):
            rss_kib = int(line.rsplit(":", 1)[1].strip())
    return user_s, sys_s, rss_kib


def run_with_timeout(cmd: list[str], cwd: str, timeout: float) -> tuple[int, str, str, bool]:
    proc = subprocess.Popen(
        cmd,
        cwd=cwd,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        preexec_fn=os.setsid,
    )
    try:
        stdout, stderr = proc.communicate(timeout=timeout)
        return proc.returncode, stdout, stderr, False
    except subprocess.TimeoutExpired:
        os.killpg(proc.pid, signal.SIGTERM)
        try:
            stdout, stderr = proc.communicate(timeout=5)
        except subprocess.TimeoutExpired:
            os.killpg(proc.pid, signal.SIGKILL)
            stdout, stderr = proc.communicate()
        return 124, stdout, stderr, True


def run_target(target: Target, mode: str, use_native: str, args: argparse.Namespace, out_dir: Path) -> Measurement:
    lean_cmd = [
        "lake",
        "env",
        "lean",
        "-j1",
        f"-Dweak.coveringCodes.useNativeDecide={use_native}",
    ]
    if args.lean_memory_mb is not None:
        lean_cmd.extend(["-M", str(args.lean_memory_mb)])
    if args.profile:
        lean_cmd.extend(["-Dprofiler.threshold=0", "--profile"])
    lean_cmd.append(target.file)

    safe_label = safe_log_label(target.label)
    log_base = f"{safe_label}.{mode}"
    stdout_log = out_dir / f"{log_base}.stdout.log"
    stderr_log = out_dir / f"{log_base}.stderr.log"
    time_log = out_dir / f"{log_base}.time.log"

    gnu_time = shutil.which("/usr/bin/time") or shutil.which("time")
    cmd = lean_cmd
    if gnu_time and Path(gnu_time).is_file():
        cmd = [gnu_time, "-v", "-o", str(time_log)] + lean_cmd

    start = time.monotonic()
    exit_code, stdout, stderr, timed_out = run_with_timeout(cmd, args.root, args.timeout)
    end = time.monotonic()
    user_s, sys_s, rss_kib = parse_gnu_time(time_log)

    stdout_log.write_text(stdout, encoding="utf-8")
    stderr_log.write_text(stderr, encoding="utf-8")

    return Measurement(
        mode=mode,
        label=target.label,
        q=target.q,
        n=target.n,
        r=target.r,
        file=target.file,
        command=" ".join(lean_cmd),
        exit_code=exit_code,
        wall_seconds=end - start,
        user_seconds=user_s,
        system_seconds=sys_s,
        max_rss_kib=rss_kib,
        time_log=str(time_log),
        timed_out=timed_out,
        stdout_log=str(stdout_log),
        stderr_log=str(stderr_log),
    )


def write_outputs(measurements: list[Measurement], out_dir: Path) -> None:
    csv_path = out_dir / "measurements.csv"
    json_path = out_dir / "measurements.json"
    rows = [asdict(m) for m in measurements]
    with csv_path.open("w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        writer.writeheader()
        writer.writerows(rows)
    json_path.write_text(json.dumps(rows, indent=2), encoding="utf-8")
    print(f"Wrote {csv_path}")
    print(f"Wrote {json_path}")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--mode",
        choices=["kernel", "native", "both"],
        default="both",
        help="Which proof mode(s) to measure.",
    )
    parser.add_argument(
        "--timeout",
        type=float,
        default=600.0,
        help="Timeout in seconds per file/mode run.",
    )
    parser.add_argument(
        "--lean-memory-mb",
        type=int,
        default=None,
        help="Pass Lean's -M memory cap in MiB for each run.",
    )
    parser.add_argument(
        "--allow-van-laarhoven-kernel",
        action="store_true",
        help=(
            "Allow kernel-mode measurements for VanLaarhoven1989.lean. "
            "These certificates have been reported to need >350 GB RAM and >75 minutes."
        ),
    )
    parser.add_argument(
        "--output-dir",
        default=None,
        help="Directory for CSV/JSON/log output.",
    )
    parser.add_argument(
        "--no-profile",
        action="store_false",
        dest="profile",
        help="Do not pass Lean --profile.",
    )
    parser.add_argument(
        "--no-prebuild-imports",
        action="store_false",
        dest="prebuild_imports",
        help="Do not prebuild target imports before timed Lean runs.",
    )
    parser.add_argument(
        "--root",
        default=os.getcwd(),
        help="Repository root to run commands from.",
    )
    parser.add_argument(
        "targets",
        nargs="*",
        help="Lean files, or label,q,n,r,file target specs.",
    )
    parser.set_defaults(profile=True)
    parser.set_defaults(prebuild_imports=True)
    args = parser.parse_args()

    targets = [parse_target(t) for t in args.targets]
    if not targets:
        targets = [Target(*row) for row in DEFAULT_TARGETS]

    requested_modes = mode_values(args.mode)
    if (
        not args.allow_van_laarhoven_kernel
        and any(mode == "kernel" for mode, _ in requested_modes)
        and any(is_van_laarhoven_target(target) for target in targets)
    ):
        parser.error(
            "refusing VanLaarhoven1989.lean in kernel mode: reported >350 GB RAM and >75 minutes; "
            "use --mode native, or pass --allow-van-laarhoven-kernel with --timeout and --lean-memory-mb"
        )

    timestamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    out_dir = Path(args.output_dir or f"build/proof-mode-measurements/{timestamp}")
    out_dir.mkdir(parents=True, exist_ok=True)

    if args.prebuild_imports:
        for target in targets:
            if prebuild_imports(target, args, out_dir) != 0:
                return 1

    measurements: list[Measurement] = []
    for target in targets:
        for mode, use_native in requested_modes:
            print(f"==> {mode}: {target.file}", flush=True)
            measurement = run_target(target, mode, use_native, args, out_dir)
            measurements.append(measurement)
            print(
                f"    exit={measurement.exit_code} "
                f"wall={measurement.wall_seconds:.3f}s "
                f"user={measurement.user_seconds:.3f}s "
                f"sys={measurement.system_seconds:.3f}s "
                f"rss={measurement.max_rss_kib} KiB",
                flush=True,
            )

    if measurements:
        write_outputs(measurements, out_dir)

    return 0 if all(m.exit_code == 0 for m in measurements) else 1


if __name__ == "__main__":
    raise SystemExit(main())
