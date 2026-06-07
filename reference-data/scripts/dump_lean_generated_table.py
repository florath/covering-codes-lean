#!/usr/bin/env python3
"""
Deprecated compatibility wrapper for the Lean reference-data exporter.

The canonical producer is the Lean/Lake executable:

  lake -KproofMode=native exe reference_data_dump
"""

import subprocess
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]


def main() -> None:
    command = ["lake", "-KproofMode=native", "exe", "reference_data_dump"]
    print(
        "NOTE: this script is deprecated; running "
        "`lake -KproofMode=native exe reference_data_dump` instead.",
        file=sys.stderr,
    )
    raise SystemExit(subprocess.call(command, cwd=REPO))


if __name__ == "__main__":
    main()
