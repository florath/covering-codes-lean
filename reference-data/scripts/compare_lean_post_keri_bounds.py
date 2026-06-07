#!/usr/bin/env python3
"""
Compare Lean-certified bounds from the generated table against the post-Keri
reference bounds.

The overlap region is derived from the generated Lean table.  Reference data
uses r≥1; our DB is keyed from r=0.

For each overlapping triple (q,n,r) recorded in the reference CSV:
  - agree_exact   : both agree lower==upper (same exact value)
  - agree_range   : both agree on at least one bound; our interval ⊆ reference interval
  - we_improved   : one of our bounds is strictly tighter than the reference
  - reference_better : the reference is strictly tighter on one side but no contradiction
  - contradiction : the intervals are disjoint (shouldn't happen if both are correct)

Prints a summary and a CSV report.
"""

import csv
import re
import sys
from collections import defaultdict
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
GENERATED_TABLE = REPO / "CoveringCodes/Database/GeneratedTable.lean"
CHUNK_DIR = REPO / "CoveringCodes/Database/GeneratedTable"
REFERENCE_CSV = REPO / "reference-data/post-keri/non_mixed_covering_codes.csv"
OUT_CSV = REPO / "reference-data/reference-db-comparison.csv"


# ── 1. Load the generated Lean table ──────────────────────────────────────────

ENTRY_PAT = re.compile(
    r'key\s*:=\s*\{\s*q\s*:=\s*(\d+),\s*n\s*:=\s*(\d+),\s*r\s*:=\s*(\d+)\s*\}\s*'
    r'lowerValue\s*:=\s*(\d+)\s*'
    r'upperValue\s*:=\s*(\d+)'
)

IMPORT_PAT = re.compile(r'^import\s+CoveringCodes\.Database\.GeneratedTable\.Chunk(\d+)\s*$',
                        re.MULTILINE)

def imported_chunks():
    if not GENERATED_TABLE.exists():
        sys.exit(f"ERROR: {GENERATED_TABLE} not found")
    text = GENERATED_TABLE.read_text()
    chunk_ids = [int(m.group(1)) for m in IMPORT_PAT.finditer(text)]
    if not chunk_ids:
        sys.exit(f"ERROR: no generated chunk imports found in {GENERATED_TABLE}")
    return [CHUNK_DIR / f"Chunk{i}.lean" for i in chunk_ids]

def load_lean_db():
    db = {}
    chunks = imported_chunks()
    for f in chunks:
        if not f.exists():
            sys.exit(f"ERROR: imported chunk file not found: {f}")
        with open(f) as fh:
            text = fh.read()
        for m in ENTRY_PAT.finditer(text):
            q, n, r, lo, hi = (int(m.group(i)) for i in range(1, 6))
            db[(q, n, r)] = (lo, hi)
    return db


# ── 2. Load the post-Keri reference CSV ───────────────────────────────────────

def load_reference():
    """Returns {(q,n,r): {'lower': int, 'upper': int}}."""
    bounds = {}
    with open(REFERENCE_CSV, newline="") as f:
        for row in csv.DictReader(f):
            q, n, r = int(row["q"]), int(row["n"]), int(row["r"])
            bounds[(q, n, r)] = {
                "lower": int(row["lower_bound"]),
                "upper": int(row["upper_bound"]),
            }
    return bounds


# ── 3. Classify one comparison ────────────────────────────────────────────────

def classify(lean_lo, lean_hi, reference_lo, reference_hi):
    """
    Returns (tag, detail) where tag is one of:
      exact_agree    – both say exact and the value is the same
      we_tighter     – our interval is strictly contained in the reference
      reference_tighter – the reference interval is strictly contained in ours
      both_exact_diff– both say exact but different values (ERROR)
      contradiction  – disjoint intervals (ERROR)
      agree_lower    – same lower, our upper is looser
      agree_upper    – same upper, our lower is looser
      we_better_lower– our lower strictly exceeds the reference (no upper issue)
      we_better_upper– our upper strictly less than the reference (no lower issue)
      reference_better_lower – reference lower strictly exceeds ours
      reference_better_upper – reference upper strictly less than ours
      partial        – some partial agreement
    """
    # Contradiction check first
    if lean_lo > reference_hi or reference_lo > lean_hi:
        return "CONTRADICTION", f"lean=[{lean_lo},{lean_hi}] reference=[{reference_lo},{reference_hi}]"

    # Exact agreement
    if lean_lo == lean_hi == reference_lo == reference_hi:
        return "exact_agree", f"K={lean_lo}"

    # Both exact but different — contradiction (covered above, but be explicit)
    if lean_lo == lean_hi and reference_lo == reference_hi and lean_lo != reference_lo:
        return "CONTRADICTION", f"lean={lean_lo} reference={reference_lo}"

    better_lower = lean_lo > reference_lo   # we proved a higher lower bound
    worse_lower  = lean_lo < reference_lo   # reference has a higher lower bound
    better_upper = lean_hi < reference_hi   # we proved a lower upper bound
    worse_upper  = lean_hi > reference_hi   # reference has a lower upper bound

    if better_lower and better_upper:
        return "we_tighter", f"lean=[{lean_lo},{lean_hi}] reference=[{reference_lo},{reference_hi}]"
    if worse_lower and worse_upper:
        return "reference_tighter", f"lean=[{lean_lo},{lean_hi}] reference=[{reference_lo},{reference_hi}]"
    if better_lower and not worse_upper:
        return "we_better_lower", f"lean_lo={lean_lo}>reference_lo={reference_lo}, uppers=[{lean_hi},{reference_hi}]"
    if better_upper and not worse_lower:
        return "we_better_upper", f"lean_hi={lean_hi}<reference_hi={reference_hi}, lowers=[{lean_lo},{reference_lo}]"
    if worse_lower and not better_upper:
        return "reference_better_lower", f"reference_lo={reference_lo}>lean_lo={lean_lo}, uppers=[{lean_hi},{reference_hi}]"
    if worse_upper and not better_lower:
        return "reference_better_upper", f"reference_hi={reference_hi}<lean_hi={lean_hi}, lowers=[{lean_lo},{reference_lo}]"
    # Same lower or same upper but not both equal to exact
    if lean_lo == reference_lo and lean_hi == reference_hi:
        return "exact_agree", f"[{lean_lo},{lean_hi}]"
    if lean_lo == reference_lo:
        return "agree_lower", f"lo={lean_lo}, lean_hi={lean_hi} reference_hi={reference_hi}"
    if lean_hi == reference_hi:
        return "agree_upper", f"hi={lean_hi}, lean_lo={lean_lo} reference_lo={reference_lo}"
    return "partial", f"lean=[{lean_lo},{lean_hi}] reference=[{reference_lo},{reference_hi}]"


# ── 4. Main ───────────────────────────────────────────────────────────────────

def main():
    print("Loading Lean generated table ...")
    lean_db = load_lean_db()
    print(f"  {len(lean_db)} entries")
    q_max = max(k[0] for k in lean_db)
    n_max = max(k[1] for k in lean_db)
    r_max = max(k[2] for k in lean_db)
    print(f"  generated table range: q≤{q_max}, n≤{n_max}, r≤{r_max}")

    print("Loading reference CSV ...")
    reference = load_reference()
    print(f"  {len(reference)} (q,n,r) triples")

    # Overlap region
    overlap_keys = [
        k for k in reference
        if k[0] >= 2 and k[0] <= q_max  # q range our DB covers
        and k[1] >= 1 and k[1] <= n_max # n range
        and k[2] >= 1 and k[2] <= r_max # r range
        and "lower" in reference[k] and "upper" in reference[k]
    ]
    overlap_keys.sort()
    print(f"  {len(overlap_keys)} triples in overlap with both lower+upper in reference table")

    tag_counts = defaultdict(int)
    rows = []

    for key in overlap_keys:
        q, n, r = key
        reference_lo = reference[key]["lower"]
        reference_hi = reference[key]["upper"]
        if key not in lean_db:
            tag, detail = "lean_missing", ""
            lean_lo = lean_hi = None
        else:
            lean_lo, lean_hi = lean_db[key]
            tag, detail = classify(lean_lo, lean_hi, reference_lo, reference_hi)

        tag_counts[tag] += 1
        rows.append({
            "q": q, "n": n, "r": r,
            "lean_lower": lean_lo, "lean_upper": lean_hi,
            "reference_lower":  reference_lo,   "reference_upper":  reference_hi,
            "tag": tag, "detail": detail,
        })

    # ── Print summary ──────────────────────────────────────────────────────────
    print()
    print("=" * 60)
    print("COMPARISON SUMMARY")
    print("=" * 60)
    total = len(rows)
    for tag in sorted(tag_counts, key=lambda t: -tag_counts[t]):
        pct = 100 * tag_counts[tag] / total if total else 0
        print(f"  {tag:<30s}  {tag_counts[tag]:5d}  ({pct:.1f}%)")
    print(f"  {'TOTAL':<30s}  {total:5d}")

    errors = [r for r in rows if r["tag"].startswith("CONTRADICTION")]
    if errors:
        print()
        print(f"!!! {len(errors)} CONTRADICTIONS — check these immediately !!!")
        for r in errors[:20]:
            print(f"  K_{r['q']}({r['n']},{r['r']}): {r['detail']}")
    else:
        print()
        print("No contradictions found — all intervals are consistent.")

    # Interesting: cases where our DB already proves something better than the reference table
    better = [r for r in rows if r["tag"] in ("we_tighter","we_better_lower","we_better_upper")]
    if better:
        print()
        print(f"Cases where our DB is tighter than the reference table ({len(better)}):")
        for r in better[:30]:
            print(f"  K_{r['q']}({r['n']},{r['r']}): lean=[{r['lean_lower']},{r['lean_upper']}]  reference=[{r['reference_lower']},{r['reference_upper']}]  ({r['tag']})")
        if len(better) > 30:
            print(f"  ... and {len(better)-30} more")

    # Cases where the reference table is tighter
    reference_better = [r for r in rows if r["tag"] in ("reference_tighter","reference_better_lower","reference_better_upper")]
    print()
    print(f"Cases where the reference table is tighter than our DB: {len(reference_better)}")

    exact = [r for r in rows if r["tag"] == "exact_agree"]
    differences = [r for r in rows if r["tag"] != "exact_agree"]
    print(f"Exact agreements (lower==upper, same value): {len(exact)}")

    # ── Write CSV report ───────────────────────────────────────────────────────
    with open(OUT_CSV, "w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        writer.writeheader()
        writer.writerows(rows)
    print()
    print(f"Full report written to: {OUT_CSV}")

    # ── Print sample of differing intervals ───────────────────────────────────
    if differences:
        print()
        print("Sample differences (up to 20):")
        for r in differences[:20]:
            print(
                f"  K_{r['q']}({r['n']},{r['r']}): "
                f"lean=[{r['lean_lower']},{r['lean_upper']}]  "
                f"reference=[{r['reference_lower']},{r['reference_upper']}]  "
                f"({r['tag']})"
            )


if __name__ == "__main__":
    main()
