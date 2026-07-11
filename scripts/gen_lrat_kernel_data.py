#!/usr/bin/env python3
"""Generate LRATKernel pre-parsed Lean source from a DIMACS CNF + LRAT proof pair.

Produces a Lean source file declaring:
  {prefix}KNVars : Nat
  {prefix}KCnf   : LRATKernel.RawCnf       (list-of-lists literal)
  {prefix}KSteps : List LRATKernel.Step     (del/add literal)
  {prefix}KLeaf  : LRATKernel.Leaf          ({ cube := [], steps := ... })
  {prefix}KLeaves : List LRATKernel.Leaf    ([{prefix}KLeaf])

The generated file can be placed in
  CoveringCodes/Database/Sources/{ModuleName}.lean
and imported by the corresponding kernel smoke module.

Usage:
  python3 scripts/gen_lrat_kernel_data.py \\
      --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_1_4_4_fixlow.cnf \\
      --lrat data/K_16_4_2/lrat/tail_box_profile_spread_1_4_4_fixlow.lrat \\
      --prefix tailBox144 \\
      --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel144Data.lean

Batch generation for all K16 tail-box spreads:
  python3 scripts/gen_lrat_kernel_data.py --batch-k16

Performance note:
  The generated Lean files can be large (40–160 MB).  Kernel evaluation of
  `decide` on `LRATKernel.checkLeaves` is a known unknown; feasibility depends
  on Lean's kernel speed for RBMap operations at the scale of each certificate.
  See docs/kernel-lrat-plan.md Path 2 "Known unknowns".
"""

import sys
import os
import argparse


# ---------------------------------------------------------------------------
# Parsing
# ---------------------------------------------------------------------------

def parse_cnf(cnf_path: str):
    """Return (nvars: int, clauses: list[list[int]])."""
    clauses = []
    nvars = 0
    with open(cnf_path) as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith('c'):
                continue
            if line.startswith('p'):
                parts = line.split()
                nvars = int(parts[2])
                continue
            lits = [int(x) for x in line.split()]
            # strip trailing 0
            if lits and lits[-1] == 0:
                lits = lits[:-1]
            clauses.append(lits)
    return nvars, clauses


def parse_lrat(lrat_path: str):
    """Return list of steps.

    Each step is one of:
      ('del', [id1, id2, ...])                   — delete
      ('add', id, [lit1, ...], [hint1, ...])     — add with RUP proof
    """
    steps = []
    with open(lrat_path) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            tokens = line.split()
            step_id = int(tokens[0])
            if len(tokens) > 1 and tokens[1] == 'd':
                # Delete: step_id d id1 id2 ... 0
                ids = [int(t) for t in tokens[2:] if t != '0']
                steps.append(('del', ids))
            else:
                # Add: step_id lit1 lit2 ... 0 hint1 hint2 ... 0
                lits: list[int] = []
                hints: list[int] = []
                phase = 'lits'
                for t in tokens[1:]:
                    n = int(t)
                    if n == 0:
                        if phase == 'lits':
                            phase = 'hints'
                        else:
                            break
                    elif phase == 'lits':
                        lits.append(n)
                    else:
                        hints.append(n)
                steps.append(('add', step_id, lits, hints))
    return steps


# ---------------------------------------------------------------------------
# Emission
# ---------------------------------------------------------------------------

def _ints(xs) -> str:
    return ', '.join(str(x) for x in xs)


def emit_lean(out, prefix: str, nvars: int, clauses, steps):
    out.write('import CoveringCodes.Database.Sources.LRATKernel\n\n')
    out.write('/-!\n')
    out.write(f'Auto-generated LRATKernel data for {prefix}.\n')
    out.write('Do not edit; regenerate with scripts/gen_lrat_kernel_data.py.\n')
    out.write('-/\n\n')
    out.write('namespace CoveringCodes\nnamespace Database\n\n')
    out.write('open LRATKernel\n\n')

    # NVars
    out.write(f'def {prefix}KNVars : Nat := {nvars}\n\n')

    # CNF
    out.write(f'def {prefix}KCnf : RawCnf :=\n  [\n')
    last_cnf = len(clauses) - 1
    for i, clause in enumerate(clauses):
        sep = ',' if i < last_cnf else ''
        out.write(f'    [{_ints(clause)}]{sep}\n')
    out.write('  ]\n\n')

    # Steps
    out.write(f'def {prefix}KSteps : List Step :=\n  [\n')
    last_step = len(steps) - 1
    for i, step in enumerate(steps):
        sep = ',' if i < last_step else ''
        if step[0] == 'del':
            out.write(f'    .del [{_ints(step[1])}]{sep}\n')
        else:
            _, sid, lits, hints = step
            out.write(f'    .add {sid} [{_ints(lits)}] [{_ints(hints)}]{sep}\n')
    out.write('  ]\n\n')

    # Leaf and Leaves
    out.write(f'def {prefix}KLeaf : Leaf :=\n')
    out.write(f'  {{ cube := [], steps := {prefix}KSteps }}\n\n')
    out.write(f'def {prefix}KLeaves : List Leaf :=\n')
    out.write(f'  [{prefix}KLeaf]\n\n')

    out.write('end Database\nend CoveringCodes\n')


# ---------------------------------------------------------------------------
# Batch configuration for K16 tail-box spreads
# ---------------------------------------------------------------------------

K16_SPREADS = [
    ('1_1_4', '114'),
    ('1_2_2', '122'),
    ('1_2_3', '123'),
    ('1_2_4', '124'),
    ('1_3_3', '133'),
    ('1_3_4', '134'),
    ('1_4_4', '144'),
    ('2_2_2', '222'),
    ('2_2_3', '223'),
    ('2_2_4', '224'),
    ('2_3_3', '233'),
    ('2_3_4', '234'),
    ('2_4_4', '244'),
    ('3_3_3', '333'),
    ('3_3_4', '334'),
    ('3_4_4', '344'),
    ('4_4_4', '444'),
]


def batch_k16(root: str):
    lrat_dir = os.path.join(root, 'data', 'K_16_4_2', 'lrat')
    out_dir = os.path.join(root, 'CoveringCodes', 'Database', 'Sources')
    for spread_id, suffix in K16_SPREADS:
        cnf_path = os.path.join(lrat_dir,
            f'tail_box_profile_spread_{spread_id}_fixlow.cnf')
        lrat_path = os.path.join(lrat_dir,
            f'tail_box_profile_spread_{spread_id}_fixlow.lrat')
        prefix = f'tailBox{suffix}'
        out_path = os.path.join(out_dir,
            f'HexadecimaryFourTwoTailBoxLRATKernel{suffix}Data.lean')

        if not os.path.exists(cnf_path):
            print(f'SKIP {spread_id}: CNF not found at {cnf_path}', file=sys.stderr)
            continue
        if not os.path.exists(lrat_path):
            print(f'SKIP {spread_id}: LRAT not found at {lrat_path}', file=sys.stderr)
            continue

        print(f'Generating {spread_id} → {out_path}', file=sys.stderr)
        nvars, clauses = parse_cnf(cnf_path)
        print(f'  CNF: {nvars} vars, {len(clauses)} clauses', file=sys.stderr)
        steps = parse_lrat(lrat_path)
        print(f'  LRAT: {len(steps)} steps', file=sys.stderr)

        with open(out_path, 'w') as f:
            emit_lean(f, prefix, nvars, clauses, steps)
        size_mb = os.path.getsize(out_path) / 1024 / 1024
        print(f'  Written: {out_path} ({size_mb:.1f} MB)', file=sys.stderr)


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(
        description='Generate LRATKernel pre-parsed Lean source.',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__,
    )
    parser.add_argument('--cnf',    help='DIMACS CNF input file')
    parser.add_argument('--lrat',   help='LRAT proof input file')
    parser.add_argument('--prefix', help='Lean identifier prefix (e.g. tailBox144)')
    parser.add_argument('--output', help='Output .lean file path')
    parser.add_argument('--batch-k16', action='store_true',
                        help='Generate all K16 tail-box data files')
    parser.add_argument('--root', default='.',
                        help='Repository root for --batch-k16 (default: .)')
    args = parser.parse_args()

    if args.batch_k16:
        batch_k16(args.root)
        return

    if not all([args.cnf, args.lrat, args.prefix, args.output]):
        parser.error('--cnf, --lrat, --prefix, and --output are required '
                     '(or use --batch-k16)')

    print(f'Parsing CNF: {args.cnf}', file=sys.stderr)
    nvars, clauses = parse_cnf(args.cnf)
    print(f'  {nvars} vars, {len(clauses)} clauses', file=sys.stderr)

    print(f'Parsing LRAT: {args.lrat}', file=sys.stderr)
    steps = parse_lrat(args.lrat)
    print(f'  {len(steps)} steps', file=sys.stderr)

    print(f'Writing: {args.output}', file=sys.stderr)
    with open(args.output, 'w') as f:
        emit_lean(f, args.prefix, nvars, clauses, steps)
    size_mb = os.path.getsize(args.output) / 1024 / 1024
    print(f'Done ({size_mb:.1f} MB).', file=sys.stderr)


if __name__ == '__main__':
    main()
