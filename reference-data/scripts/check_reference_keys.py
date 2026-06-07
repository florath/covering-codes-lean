#!/usr/bin/env python3
"""
Validate reference keys used by reference-data CSVs and Lean primitive traces.
"""

import csv
import re
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
BIB = REPO / "reference-data/references.bib"
CSV_FILES = [
    REPO / "reference-data/post-keri/non_mixed_covering_codes.csv",
    REPO / "reference-data/lean/non_mixed_covering_codes.csv",
]
GENERATED_TABLE = REPO / "CoveringCodes/Database/GeneratedTable.lean"
CHUNK_DIR = REPO / "CoveringCodes/Database/GeneratedTable"
LEAN_SOURCE_DIR = REPO / "CoveringCodes/Database/Sources"

ALLOWED_PREFIXES = ("lit_", "lean_", "rule_")

BIB_KEY_PAT = re.compile(r"@\w+\{([^,\s]+),")
IMPORT_PAT = re.compile(
    r"^import\s+CoveringCodes\.Database\.GeneratedTable\.Chunk(\d+)\s*$",
    re.MULTILINE,
)
PRIMITIVE_KEY_PAT = re.compile(r'\.primitive\s+"([^"]+)"')
NAME_DEF_PAT = re.compile(r'def\s+\w+Name\s*:\s*String\s*:=\s*"([^"]+)"')


def fail(message: str) -> None:
    print(f"ERROR: {message}", file=sys.stderr)
    sys.exit(1)


def load_bib_keys() -> set[str]:
    text = BIB.read_text()
    keys = BIB_KEY_PAT.findall(text)
    duplicates = sorted({key for key in keys if keys.count(key) > 1})
    if duplicates:
        fail(f"duplicate BibTeX keys: {', '.join(duplicates)}")
    bad = sorted(key for key in keys if not key.startswith(ALLOWED_PREFIXES))
    if bad:
        fail(f"BibTeX keys without required prefix: {', '.join(bad)}")
    return set(keys)


def split_reference_cell(value: str, origin: str) -> list[str]:
    if value == "":
        return []
    parts = value.split(";")
    if any(part == "" for part in parts):
        fail(f"{origin}: empty reference key in semicolon-separated cell")
    if any(part != part.strip() for part in parts):
        fail(f"{origin}: spaces around semicolon-separated reference keys are not allowed")
    return parts


def validate_key(key: str, bib_keys: set[str], origin: str, used: set[str]) -> None:
    if not key.startswith(ALLOWED_PREFIXES):
        fail(f"{origin}: reference key has no allowed prefix: {key}")
    if key not in bib_keys:
        fail(f"{origin}: reference key missing from {BIB}: {key}")
    used.add(key)


def validate_csv(path: Path, bib_keys: set[str], used: set[str]) -> int:
    if not path.exists():
        return 0
    count = 0
    with path.open(newline="") as file:
        reader = csv.DictReader(file)
        required = {"lower_bound_reference", "upper_bound_reference"}
        missing = required - set(reader.fieldnames or [])
        if missing:
            fail(f"{path}: missing columns: {', '.join(sorted(missing))}")
        for line_no, row in enumerate(reader, start=2):
            count += 1
            for column in required:
                origin = f"{path}:{line_no}:{column}"
                keys = split_reference_cell(row[column], origin)
                if not keys:
                    fail(f"{path}:{line_no}: empty {column}")
                for key in keys:
                    validate_key(key, bib_keys, origin, used)
    return count


def imported_chunks() -> list[Path]:
    text = GENERATED_TABLE.read_text()
    chunk_ids = [int(match.group(1)) for match in IMPORT_PAT.finditer(text)]
    if not chunk_ids:
        fail(f"no generated chunk imports found in {GENERATED_TABLE}")
    return [CHUNK_DIR / f"Chunk{chunk_id}.lean" for chunk_id in chunk_ids]


def validate_lean_text(path: Path, bib_keys: set[str], used: set[str]) -> int:
    text = path.read_text()
    keys = PRIMITIVE_KEY_PAT.findall(text) + NAME_DEF_PAT.findall(text)
    for key in keys:
        validate_key(key, bib_keys, str(path), used)
    return len(keys)


def main() -> None:
    bib_keys = load_bib_keys()
    used: set[str] = set()

    csv_rows = sum(validate_csv(path, bib_keys, used) for path in CSV_FILES)

    source_labels = 0
    for path in LEAN_SOURCE_DIR.rglob("*.lean"):
        source_labels += validate_lean_text(path, bib_keys, used)

    generated_labels = 0
    for path in imported_chunks():
        generated_labels += validate_lean_text(path, bib_keys, used)

    unused = sorted(bib_keys - used)
    print(f"OK: {len(bib_keys)} BibTeX keys")
    print(f"OK: {csv_rows} reference CSV rows checked")
    print(f"OK: {source_labels} Lean source labels checked")
    print(f"OK: {generated_labels} generated-table primitive labels checked")
    if unused:
        print(f"NOTE: {len(unused)} BibTeX keys are currently unused")


if __name__ == "__main__":
    main()
