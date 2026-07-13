#!/usr/bin/env python3
"""
Deprecated compatibility wrapper for the Lean reference-data exporter.

The canonical producer is the Lean reference-data exporter:

  lake -KproofMode=native env lean --run Tools/ReferenceDataDump/Main.lean
"""

import subprocess
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]


def main() -> None:
    command = [
        "lake",
        "-KproofMode=native",
        "env",
        "lean",
        "--run",
        "Tools/ReferenceDataDump/Main.lean",
    ]
    print(
        "NOTE: this script is deprecated; running "
        "`lake -KproofMode=native env lean --run Tools/ReferenceDataDump/Main.lean` instead.",
        file=sys.stderr,
    )
    raise SystemExit(subprocess.call(command, cwd=REPO))


if __name__ == "__main__":
    main()
