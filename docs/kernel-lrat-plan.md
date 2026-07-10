# Plan: Kernel-Provable K16 LRAT Certificates

**Context:** The K16 LRAT certificate replay (`LRATNative.lean` and the
`HexadecimaryFourTwo*LRAT*.lean` files) currently uses `native_decide`.
This extends the trusted computing base (TCB) beyond Lean's kernel to the
native code compiler (LLVM/Clang).  Everything else in the repo is
kernel-provable.  This document records the plan to close that gap.

## Why the current approach is kernel-irreducible

Two independent blockers prevent using `decide` (kernel evaluation):

1. **`String.Legacy.Iterator`** — the LRAT/CNF parsers use `String` operations
   that are compiler primitives, not reducible by the kernel.
2. **`Array`** — `Db := Array (Option RawClause)` and `Assignment.table :
   Array (Option Int)` are also compiler primitives.  Replacing `Array` with
   `List` would make lookups O(n) per step → O(n²) total, a ~50,000× slowdown
   for typical certificates; too slow regardless of core count.

**`RBMap` (Batteries) is the key enabler.**
`Batteries.Data.RBMap` is a pure inductive type (`RBNode`) with zero
`@[extern]` or `@[implementedBy]` annotations.  All operations (`find?`,
`insert`, …) are pure recursive functions over algebraic data — fully
kernel-reducible.  Lookup is O(log n): for a 50K-clause database that is
≈ 16 comparisons per step, a bounded constant.

## Scale reference

| Certificate | LRAT lines | LRAT size | Notes |
|---|---|---|---|
| K8 (FromLRAT works today) | 7K–24K | 1–2.4 MB | 4 files |
| K16 OA | 134K | 21 MB | 6× largest K8 |
| K16 support | — | 20 MB | similar to OA |
| K16 tail-box (smallest, 144) | 83K | 38 MB | |
| K16 tail-box (largest, 444) | — | 159 MB | |
| K16 E01 / NotGlobal originals | — | 1.4–2.6 GB | excluded from routine testing |

The tail-box certificates are already split into **16 independent parallel
files**, one per spread.  With ~100 available CPU cores, all 16 can run
concurrently.

---

## Path 1 — `FromLRAT` on the OA and support certificates ✅ COMPLETE (2026-07-10)

`FromLRAT` (Mathlib's existing macro) converts an LRAT file to a kernel proof
term for `Sat.Fmla.proof f []` at elaboration time.  It works for K8 at
7K–24K LRAT steps.  The K16 OA has 134K steps (~6× K8 scale).

**Result:** Both certificates elaborated successfully.

| File | LRAT size | Elaboration time |
|---|---|---|
| `HexadecimaryFourTwoOAFromLRAT` | 21 MB | 1667s (~28 min) |
| `HexadecimaryFourTwoSupportFromLRAT` | 20 MB | 1225s (~20 min) |
| Wall time (parallel, ~100 cores) | — | ~28 min |

**Outcome:** Both files are added to `manifest.json` as `lean_targets` in the
`K_16_4_2-lrat` bundle alongside their `native_decide` counterparts.  The
`FromLRAT` files are the kernel-provable proofs of the same unsatisfiability
facts; the original files are retained for fast native builds.

The tail-box certificates (38–159 MB LRAT) remain too large for `FromLRAT`
and require Path 2.

---

## Path 2 — `LRATKernel.lean` with pre-parsed data (main project, 1–2 weeks)

This is the clean long-term solution and the primary engineering target.

### 2a. Write `LRATKernel.lean`

Create `CoveringCodes/Database/Sources/LRATKernel.lean` alongside the
existing `LRATNative.lean`.  Key changes from `LRATNative`:

- **`Db`**: replace `Array (Option RawClause)` with
  `Batteries.Data.RBMap Nat (List Int)`.
- **`Assignment`**: replace the hybrid `List Int` + `Array (Option Int)` with
  a pure `RBMap Int Bool` (or just `List Int` — assignment size is small).
- **Steps**: replace `Array LRATStep` with `List LRATStep`.
- **No parsing**: remove all `String.Iterator` / `parseDimacs*` / `parseLRAT*`
  code from the kernel module.  The kernel module only defines the checker and
  its soundness proof.

Prove the same soundness chain that `LRATNative` already has:
`checkParsedCubeLRATs_branch_unsat_of_mem` (algorithm correctness by kernel,
same structure).

### 2b. Write a certificate pre-parser (generator tool)

Write a generator — either a Lean tool in `Tools/LRATKernelGen/` or a Python
script — that converts `.cnf` / `.lrat` files into Lean source declaring the
pre-parsed data:

```lean
-- auto-generated from oa_36_4_6_2.cnf + oa_36_4_6_2.lrat
def oa36KernelDb : LRATKernel.Db :=
  .ofList Nat.compare [(1, [1, 2, -3, ...]), (2, [-1, 2, 3, ...]), ...]

def oa36KernelSteps : List LRATKernel.Step := [
  .add 5001 [-2] [4, 3],
  .del [3, 4],
  ...
]
```

These generated `.lean` files **do not go into git** — they are part of the
external certificate bundle on Zenodo (alongside the raw `.lrat` files), and
are downloaded / generated as part of `scripts/external-certificates.py`.

### 2c. Update the `_checked` theorems

Replace `native_decide` with `covering_decide +kernel` (or `decide`) in all
tail-box and other LRAT smoke files that have a corresponding generated data
file:

```lean
set_option maxHeartbeats 400000000 in
theorem tailBox144_checked :
    LRATKernel.check tailBox144Db tailBox144Steps = true := by
  covering_decide +kernel   -- kernel-evaluated, no native TCB extension
```

### 2d. Update `manifest.json`

Add generated Lean source files as `generated_files` entries in the
`K_16_4_2-lrat` bundle (similar to how `K_9_9_5_TailData.lean` is tracked).

### Known unknowns

- How large are the generated Lean source files?  A `List` literal with 83K–
  134K elements may be slow for Lean's elaborator.  The existing
  `CoveringCodes/Database/Sources/KnownBounds/K_9_9_5_TailData.lean` (1.6 MB,
  generated) is a lower-bound data point for what elaboration can handle.
- How fast is kernel evaluation?  Target is ≤ 30 min per file on one core
  (= ≤ 30 min wall time with 16 cores for all tail-box files).

---

## Path 3 — Checkpoint-split the large profile LRAT files (future, months)

The E01 and NotGlobal original/core LRAT files (1.4–2.6 GB) are already
excluded from routine testing in `manifest.json` under
`testing.excluded_lean_targets`.  Even with the `RBMap`-based checker they
would be very slow.

The approach here requires a new certificate format that records **intermediate
clause-database snapshots** (checkpoints), so each chunk is self-contained.
Each chunk verifies: "starting from snapshot S_i, after applying LRAT steps
i..j, we reach snapshot S_{i+1} (or derive the empty clause)."  This lets
each chunk be independently kernel-checked.

This is a research-level effort and is **explicitly out of scope** until Paths
1 and 2 are complete and validated.

---

## Current status (as of 2026-07-10)

- **Path 1 complete:** `HexadecimaryFourTwoOAFromLRAT` and
  `HexadecimaryFourTwoSupportFromLRAT` are kernel-proved via `FromLRAT`
  (28 min and 20 min elaboration respectively).  Both added to `manifest.json`.
- **Path 2 Step 2a complete:** `CoveringCodes/Database/Sources/LRATKernel.lean`
  compiles.  All soundness lemmas are proved except two marked `sorry`:
  - `Db.lookup_erase_mono` — Batteries does not yet expose `RBMap.find?_erase`.
  - `LookupSound.insertCubeClauses` — inductive step on the cube fold.
  The main soundness theorem `checkLeaves_branch_unsat_of_mem` is stated and
  the proof structure is complete; it reduces to the two `sorry`s above.
- `native_decide` is still used in all tail-box and split LRAT replay theorems.
- The `LRATNative.lean` soundness proof (algorithm correctness) is and
  remains kernel-proved.  Only the per-certificate `_checked` instances use
  `native_decide`.
- **Next (Path 2):** Step 2b — generator tool that converts `.cnf`/`.lrat`
  files into pre-parsed Lean source literals for `LRATKernel`; then Step 2c —
  fill the two `sorry`s and update tail-box smoke files to use `decide`.

## Relationship to `covering_decide`

Once Path 2 is in place, the `_checked` theorems will use
`covering_decide +kernel` (forced kernel mode) rather than `covering_decide`
(which would fall back to `decide` in kernel proof mode and `native_decide` in
native mode).  The `+kernel` forces the kernel path explicitly so the trust
model is unambiguous regardless of which `proofMode` the build uses.
