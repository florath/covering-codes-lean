# Developer Workflow

This note is for day-to-day work in a Git checkout. The reviewer-facing build
instructions stay in `README.md`.

## Ground Rules

Never run `lake clean` or `lake clear`. The build artifacts are expensive and
may take hours, and large amounts of memory, to recreate.

Use the Lean version from `lean-toolchain` and the dependency revisions pinned
in `lake-manifest.json`. Do not update dependencies as part of unrelated work.

Run commands from the repository root.

## Fast Validation

For ordinary development, use native proof mode. It checks the same source
structure while avoiding the most expensive kernel reductions.

```bash
scripts/build-proof-mode.sh native covering_codes
lake -KproofMode=native exe covering_codes 3 6 1
lake -KproofMode=native exe covering_codes 3 8 3
```

If the machine has many cores but limited memory per worker, reduce parallelism:

```bash
export LEAN_NUM_THREADS=4
```

Pick a value that matches the available RAM. This is often more useful than
letting Lake start too many Lean workers at once.

## Editing Lean Sources

Most hand-written proof content lives under `CoveringCodes/`. The database
layers are:

- `CoveringCodes/Relations/`: formal covering-code inequalities.
- `CoveringCodes/Database/Sources/`: primitive literature and explicit-code
  sources.
- `CoveringCodes/Database/BoundTable.lean`: closure engine.
- `Tools/TableGen/Main.lean`: generated-table serializer.
- `Main.lean`: command-line lookup tool.

After changing a focused Lean file, prefer a focused native check first:

```bash
scripts/check-proof-mode.sh native CoveringCodes/Database/Sources/SmallLowerBounds.lean
```

Use kernel mode only when the task requires full kernel replay for that file:

```bash
scripts/check-proof-mode.sh kernel path/to/file.lean
```

## Generated Table

Do not edit these files by hand:

- `CoveringCodes/Database/GeneratedTable.lean`
- `CoveringCodes/Database/GeneratedTable/Chunk*.lean`

When a source bound or closure rule changes, regenerate the table and verify the
committed generated output:

```bash
scripts/build-proof-mode.sh native table_gen
lake -KproofMode=native exe table_gen
scripts/check-generated-metadata.sh
git diff --exit-code -- \
  CoveringCodes/Database/GeneratedTable.lean \
  CoveringCodes/Database/GeneratedTable
```

For the full developer regeneration path, run:

```bash
scripts/check-generated.sh
```

This script relies on `git diff`, so it is intended for a Git checkout. From an
archive without `.git`, compare a clean copy with `diff -ru` instead.

## Reference Data

`reference-data/` is documentation and comparison material. It is not imported
by Lean and does not certify a bound by itself.

After changing reference CSV files, BibTeX labels, or Lean-side source labels,
run:

```bash
python3 -B reference-data/scripts/check_reference_keys.py
python3 -B reference-data/scripts/compare_lean_post_keri_bounds.py
```

The comparison script writes `reference-data/reference-db-comparison.csv`; that
file is generated and should remain ignored.

## Heavy Checks

`scripts/check.sh` is the heavy pre-submission path. It runs kernel-mode checks,
verification modules, and smoke queries. Use it before a release-style commit,
not after every small edit.

The van Laarhoven kernel certificates are especially expensive. Follow the
explicit opt-in and memory guidance in `README.md` before running those in
kernel mode.
