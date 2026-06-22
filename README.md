# CoveringCodes

A Lean 4 library that formalizes **covering codes** and provides a
**proof-carrying database** of certified bounds on the q-ary covering number
`K_q(n,r)`.

`K_q(n,r)` is the minimum size of a subset `C ⊆ (Fin q)^n` such that every
q-ary word of length `n` is within Hamming distance at most `r` from some
codeword.  The football pool problem is the special case `K_3(n,1)`.

---

## Quick start

Build the command-line tool and run a few example covering-code queries:

```bash
scripts/external-certificates.py materialize --all
scripts/build-proof-mode.sh native covering_codes
lake -KproofMode=native exe covering_codes 3 6 1
lake -KproofMode=native exe covering_codes 3 8 3
```

This builds the command-line executable and generated-table dependencies using
native evaluation for expensive finite `covering_decide` proof leaves.  Native
proof mode is the practical default for routine builds and interactive use; the
stronger kernel replay path is described below.

To monitor active generated-table chunks during a long build, run
`scripts/watch-generated-build.sh` in another terminal.

Use `scripts/release-qa-chain.sh` for the full pre-commit/pre-main QA path.
Developer-only workflows are summarized in `docs/HOWTO_DEVELOP.md`.

Some large proof certificates are stored outside git on Zenodo and are
materialized on demand.  See [External certificate data](#external-certificate-data).

### Parallelism and memory

Lake and Lean may compile several modules in parallel.  On machines with many
CPU cores but limited memory per worker, the default parallelism can be too
aggressive for this project.  In that case, set `LEAN_NUM_THREADS` in the
environment before running the build, choosing a value appropriate for the
available RAM and core count.  Machines with fewer cores, or more memory per
parallel worker, may not need this setting.

### Proof mode switch

Expensive finite proof leaves use the `covering_decide` tactic.  By default it
uses ordinary `decide`, which is the kernel-checked final mode.  For daily work,
run selected files with native evaluation:

```bash
scripts/check-proof-mode.sh native CoveringCodes/Database/Sources/SmallExplicitUpper.lean
scripts/check-proof-mode.sh kernel CoveringCodes/Database/Sources/SmallLowerBounds.lean
```

The underlying Lean option is
`-Dweak.coveringCodes.useNativeDecide=true`; use `false` or omit the option for
kernel mode.

For full Lake builds, use Lake's `-KproofMode=...` configuration option before
the command and force Lake to re-read the lakefile:

```bash
lake -KproofMode=native --reconfigure build covering_codes
lake -KproofMode=kernel --reconfigure build covering_codes
```

The helper script wraps the same command:

```bash
scripts/build-proof-mode.sh native covering_codes
scripts/build-proof-mode.sh kernel covering_codes
```

To compare resource usage, run:

```bash
scripts/measure-proof-modes.py --mode both --timeout 600
```

The measurement script prebuilds target imports first; the timed CSV rows then
measure the selected Lean file runs themselves.  Its default targets are the
split small-certificate leaf files, not the aggregate import modules.

For per-proof or per-`K_q(n,r)` CPU/RSS attribution, place that result in an
isolated Lean file and pass it as `label,q,n,r,file` to the measurement script.
Use `--lean-memory-mb` or `LEAN_MEMORY_MB=... scripts/check-proof-mode.sh ...`
for large kernel experiments.  In particular, the van Laarhoven kernel
certificates are known to be very expensive and should be run only with explicit
timeout and memory settings.  The helper scripts refuse those kernel runs unless
you opt in with `ALLOW_VAN_LAARHOVEN_KERNEL=1` for `check-proof-mode.sh`, or
`--allow-van-laarhoven-kernel` for `measure-proof-modes.py`.

---

## Reproducibility

This repository is built with the Lean toolchain pinned in
`lean-toolchain`:

```text
leanprover/lean4:v4.30.0-rc2
```

Lake is the Lake version bundled with that Lean toolchain.  The Lake dependency
revisions are pinned in `lake-manifest.json`; users should use the committed
manifest rather than updating dependencies.

Run commands from the repository root.

### Command cost guide

Recommended first build:

```bash
scripts/external-certificates.py materialize --all
scripts/build-proof-mode.sh native covering_codes
lake -KproofMode=native exe covering_codes 3 6 1
lake -KproofMode=native exe covering_codes 3 8 3
lake -KproofMode=native exe covering_codes 2 7 1
```

The build command compiles the CLI and generated-table dependencies using
native evaluation for expensive finite proof leaves.  The three `lake exe`
commands are cheap after the build and exercise a van Laarhoven case-study
query, a closure-derived generated-table query, and a primitive binary Hamming
source query.

Additional routine checks:

```bash
scripts/check-generated-metadata.sh
scripts/build-proof-mode.sh native \
  CoveringCodes.Database.GeneratedTableSmokeTest \
  CoveringCodes.Database.ExactSmallCaseTest
```

The metadata script is cheap and does not regenerate the table.  The native
module build is a standard incremental check for generated-table and exact-case
smoke modules.

Case-study certificate check:

```bash
LEAN_MEMORY_MB=64000 scripts/check-proof-mode.sh native \
  CoveringCodes/Database/Sources/VanLaarhoven1989/K_3_6_1.lean \
  CoveringCodes/Database/Sources/VanLaarhoven1989/K_3_7_1.lean \
  CoveringCodes/Database/Sources/VanLaarhoven1989/K_3_8_1.lean
```

This rechecks the committed van Laarhoven explicit-code certificates in native
proof mode.  It is expensive but bounded; kernel mode for these modules is much
larger.

Full QA and regeneration:

```bash
scripts/release-qa-chain.sh
scripts/check-generated.sh
lake -KproofMode=native exe table_gen
```

Kernel builds use ordinary kernel `decide` for finite proof leaves and are very
expensive.  `scripts/release-qa-chain.sh` is the canonical full QA path before
commits that may be pushed to `main`; it runs clean native and kernel phases,
generated-table checks, reference-data checks, smoke tests, external certificate
handling, and proof-mode measurements.  `scripts/check-generated.sh` and
`lake -KproofMode=native exe table_gen` remain focused developer commands for
source or generator changes.

Historical comparison data lives under `reference-data/`.  It is reference
material only; it is not imported by Lean and does not certify any bound.

### External certificate data

Large proof artifacts are archived outside git and described by
`data/external-certificates/manifest.json`.  The current external bundles are
`K_8_4_2-lrat`, archived on Zenodo at
<https://zenodo.org/records/20784013>, and `K_9_9_5-tail-values`, archived at
<https://zenodo.org/records/20794263>.

For a clean checkout, materialize the external certificates before building
Lean targets that use them:

```bash
scripts/external-certificates.py materialize K_8_4_2-lrat
```

To materialize every external certificate bundle listed in the manifest, use:

```bash
scripts/external-certificates.py materialize --all
```

To build the certificate-backed target and remove the extracted raw files
afterward, run:

```bash
scripts/external-certificates.py check K_8_4_2-lrat --proof-mode native --clean-extracted
```

Some bundles also generate ignored Lean source files from the extracted data.
For example, `K_9_9_5-tail-values` extracts
`data/K_9_9_5/tail/tail-values.txt` and generates
`CoveringCodes/Database/Sources/KnownBounds/K_9_9_5_TailData.lean`.  The raw
extracted data can be removed after the certificate-backed module is compiled;
the generated Lean source remains so Lake can still resolve the imported module
incrementally.

The full QA chain performs this external-certificate step automatically after
each native/kernel clean phase.  Set
`EXTERNAL_CERTIFICATE_STORAGE_LIMIT`, for example `20GiB`, to process external
certificate bundles in storage-bounded batches.

### Standard build checks

```bash
scripts/external-certificates.py materialize --all
scripts/build-proof-mode.sh native covering_codes
lake -KproofMode=native exe covering_codes 3 6 1
lake -KproofMode=native exe covering_codes 3 8 3
```

These commands are the practical first build and query checks for this
repository.  If the build machine has many cores relative to available memory,
set `LEAN_NUM_THREADS` as described above before running the build command.

### Kernel certification build

The kernel certification build uses ordinary kernel `decide` for finite proof
leaves.  This is the strongest replay path, but it is not needed for routine
use and is known to be very expensive for the van Laarhoven case-study file.

```bash
scripts/build-proof-mode.sh kernel covering_codes
```

### Full generated-table regeneration

This is the expensive developer check.  It rebuilds the table generator,
regenerates the precomputed closure table, checks that the generated files are
committed, and then rebuilds the CLI.  The `git diff` step requires a Git
checkout; if working from a source snapshot without `.git`, save a copy of the
generated files first and compare with ordinary `diff`.  See
`docs/HOWTO_DEVELOP.md`.

```bash
scripts/build-proof-mode.sh native table_gen
lake -KproofMode=native exe table_gen
git diff --exit-code -- \
  CoveringCodes/Database/GeneratedTable.lean \
  CoveringCodes/Database/GeneratedTable
scripts/build-proof-mode.sh native covering_codes
```

The helper scripts encode these workflows:

```bash
scripts/release-qa-chain.sh # full pre-commit/pre-main QA chain
scripts/check-generated.sh  # full native-mode table-regeneration check
scripts/check-generated-metadata.sh  # cheap generated-table metadata check
```

During a long generated-table build, `scripts/watch-generated-build.sh` can be
run in another terminal to show active generated-table chunk compilers.

---

## Architecture

```
Relations/          formal relation theorems (K_q(n,r) inequalities)
Database/
  Trace.lean        proof-carrying derivation trees (UpperTrace / LowerTrace)
  Certificate.lean  typed certificates built from traces
  Source.lean       LowerBoundSource / UpperBoundSource (primitive values + traces)
  Sources/          primitive and explicit-code sources
  BoundTable.lean   closure engine — iterates relation rules to fixed point
  Core.lean         umbrella import (no generated table)
  GeneratedAPI.lean umbrella import (Core + GeneratedTable)
  GeneratedTable.lean generated umbrella table file (do not edit)
  GeneratedTable/     auto-generated chunk files (do not edit)
Tools/TableGen/Main.lean  generator: runs closure, serialises to Lean, prints stats
Main.lean           CLI: looks up precomputed entry, prints certified bounds + trace
```

### Generated versus handwritten files

The Lean theorem library, relation layer, source wrappers, certificate types,
closure engine, and CLI are handwritten.  The precomputed table files are
generated by:

```bash
lake -KproofMode=native exe table_gen
```

This command writes `CoveringCodes/Database/GeneratedTable.lean` and
`CoveringCodes/Database/GeneratedTable/Chunk*.lean`.  Do not edit those files by
hand; update the generator or source bounds, rerun
`lake -KproofMode=native exe table_gen`, and use
`scripts/check-generated.sh` or `scripts/check-generated-metadata.sh` to verify
the result.

### Layers

1. **Relation theorem library** (`Relations/`): standalone theorems about `K_q(n,r)`.
2. **Primitive sources** (`Sources/`): point bounds from the literature, wrapped as
   `LowerBoundSource` / `UpperBoundSource` with embedded `LowerTrace` / `UpperTrace`.
3. **One-step source combinators** (`Sources/Derived/`, `DerivedLower/Upper.lean`):
   apply a single relation step to a primitive source.
4. **Bounded closure table** (`BoundTable.lean`): iterates all automatic relation
   rules to a fixed point across the bounded domain.
5. **Generated precomputed table** (`GeneratedTable/`): the fixed-point result
   serialised as Lean source; compiled once, loaded by the CLI.
6. **CLI display** (`Main.lean`): looks up a `CertifiedBoundEntry`, replays its
   traces into proofs, and prints the numbered derivation chain.

### Which relations are automatic?

Only a subset of the formal relation theorems are currently wired into the
automatic closure engine.  See
[`CoveringCodes/Database/RELATION_COVERAGE.md`](CoveringCodes/Database/RELATION_COVERAGE.md)
for the complete per-relation status table.

### Importing

```lean
-- Core database (no generated table):
import CoveringCodes.Database.Core

-- Generated closure table + canonical bestBounds query:
import CoveringCodes.Database.GeneratedAPI
```

`CoveringCodes.Database` imports only `Core` — it does **not** load the generated
chunks.  Use `GeneratedAPI` when you need `lookupPrecomputed` or `bestBounds`.

---

## Public API

| Name | Where | Description |
|---|---|---|
| `bestBoundsOneStep` | `Database.Defs` | Source-level query (primitive + one-step derived) |
| `bestBoundsPrecomputed` | `Database.GeneratedAPI` | Closure-table query |
| `bestBounds` | `Database.GeneratedAPI` | Canonical alias for `bestBoundsPrecomputed` |
| `lookupPrecomputed` | `Database.GeneratedTable` | Returns full `CertifiedBoundEntry` with traces |

---

## Correctness guarantees

- No `sorry`, `admit`, `axiom`, or `unsafe` in the source tree.
- Every bound in `CertifiedBoundEntry` is backed by a `LowerTrace` / `UpperTrace`
  whose `.valid` function replays the derivation into a Lean kernel proof.
- Primitive explicit-code leaves use `covering_decide`.  Default/final runs use
  kernel `decide`; runs with `coveringCodes.useNativeDecide=true` additionally
  rely on Lean's native compiled evaluator/runtime.
- `BestBounds.consistent` proves `lower ≤ upper` for every entry.

---

## Trust boundaries

- Handwritten Lean theorems under `CoveringCodes/` are checked by Lean.
- Generated Lean table files are produced by `Tools/TableGen/Main.lean`,
  committed, and then checked by Lean like ordinary source files.
- The generator itself is not verified; correctness of generated entries comes
  from Lean checking the emitted certificates and traces.
- Primitive explicit-code witnesses are checked as Lean data by
  `covering_decide`.
- Native proof mode uses Lean's native evaluator/runtime for expensive finite
  proof leaves; kernel proof mode uses ordinary kernel reduction and is stronger
  but much more expensive.
- Historical CSV files under `reference-data/` are comparison material only and
  do not certify bounds.

---

## Source files (core library)

- `CoveringCodes.Basic`: words and q-ary words
- `CoveringCodes.Balls`: closed Hamming balls
- `CoveringCodes.Covers`: covering predicates
- `CoveringCodes.CoveringNumber`: certificate-style covering numbers (`QaryKLower`, `QaryKUpper`)
- `CoveringCodes.Relations.*`: formal relation theorems
- `CoveringCodes.Database.*`: proof-carrying database

---

## Citation

Citation metadata is provided in `CITATION.cff`.  For formal use, cite a
released tag together with the relevant paper or preprint when available.

---

## Funding

This work was partly funded by the Federal Ministry of Research, Technology and
Space (BMFTR), Germany, under grant number 16KIS2240 of the SUSTAINET-guardian
project.

---

## License

This project is licensed under the BSD 3-Clause License. See `LICENSE`.
