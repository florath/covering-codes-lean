# How to Add Results to the Covering-Code Database

The database uses a **trace-based proof-carrying architecture**.  Every bound is
represented as a `LowerBoundSource` or `UpperBoundSource` (defined in
`Database/Source.lean`), which bundles a value function and a *trace function*:

```lean
structure LowerBoundSource where
  value : Nat → Nat → Nat → Nat
  trace : ∀ q n r, LowerTrace q n r (value q n r)

structure UpperBoundSource where
  value : Nat → Nat → Nat → Nat
  trace : ∀ q n r, UpperTrace q n r (value q n r)
```

The `trace` field is a proof-carrying derivation tree.  Calling `.valid` on any
`LowerTrace` or `UpperTrace` replays the tree into a `QaryKLower` / `QaryKUpper`
proof accepted by the Lean kernel.  The aggregators `.max` / `.min` combine
sources and carry the winning trace forward automatically.
Primitive explicit-code leaves may have been proved with `native_decide`; those
leaves additionally rely on Lean's native compiled evaluator/runtime.

---

## Checklist for any database change

1. Add the relation theorem (if new), or identify the existing one in `Relations/`.
2. Add a trace constructor to `Trace.lean` (if the relation is not yet wrapped).
3. Add a certificate helper to `Certificate.lean`.
4. If the relation should be **automatic**: add a closure pass to `BoundTable.lean`
   and update the serialiser in `Tools/TableGen/Main.lean`.
5. If the relation is **manual/witness-dependent**: document it in `HOWTO.md` and
   `RELATION_COVERAGE.md`; do not add a closure pass.
6. Update trace statistics in `Tools/TableGen/Main.lean` if a new constructor was added.
7. Update `RELATION_COVERAGE.md` to reflect the new status.
8. If a primitive or explicit-code source changed: regenerate the table
   (`lake -KproofMode=native exe table_gen`), then rebuild
   (`scripts/build-proof-mode.sh native CoveringCodes.Database.GeneratedAPI`).

---

## Adding a primitive source

### Step 1: Prove the bound

```lean
-- Lower bound
theorem myResult_lower_valid (q n r : ℕ) :
    QaryKLower q n r (myResult_lower q n r) := by ...

-- Upper bound
theorem myResult_upper_valid (q n r : ℕ) :
    QaryKUpper q n r (myResult_upper q n r) := ...
```

Inactive lower values must be `0` (always valid via `zeroLower_valid`).
Inactive upper values must be `trivialUpper q n r` (always valid via `trivialUpper_valid`).

### Step 2: Create a source file under `Database/Sources/`

```lean
-- CoveringCodes/Database/Sources/MyPaper.lean
import CoveringCodes.Database.Source

namespace CoveringCodes.Database

def myPaperLower (q n r : ℕ) : ℕ := ...

theorem myPaperLower_valid (q n r : ℕ) :
    QaryKLower q n r (myPaperLower q n r) := ...

def myPaperLowerSource : LowerBoundSource where
  value := myPaperLower
  trace := fun q n r => .primitive "MyPaper 2025, Theorem 3" (myPaperLower_valid q n r)

end CoveringCodes.Database
```

### Step 3: Register in `PrimitiveLower.lean` or `PrimitiveUpper.lean`

Extend the `.max` / `.min` chain:

```lean
def primitiveLowerSource : LowerBoundSource :=
  sphereLowerSource.max
    (zeroRadiusLowerSource.max
      (myPaperLowerSource.max ...))
```

### Step 4: Build and regenerate

```bash
scripts/build-proof-mode.sh native CoveringCodes.Database.Core
scripts/build-proof-mode.sh native table_gen
lake -KproofMode=native exe table_gen
scripts/build-proof-mode.sh native CoveringCodes.Database.GeneratedAPI
```

---

## Adding a one-step derived source

One-step derived sources apply a single relation rule to the existing primitive
source.  They live in `Sources/Derived/` and are aggregated in
`DerivedLower.lean` / `DerivedUpper.lean`.

```lean
-- Example: use a source at radius r-1 and promote by radius monotonicity.
def UpperBoundSource.radiusPrev (S : UpperBoundSource) : UpperBoundSource where
  value q n r := if 0 < r then S.value q n (r - 1) else S.value q n r
  trace := fun q n r => by
    by_cases hr : 0 < r
    · simp only [if_pos hr]
      exact .radiusMono (Nat.sub_le r 1) (S.trace q n (r - 1))
    · simp only [if_neg hr]
      exact S.trace q n r
```

Add the new source to `derivedUpperSource` in `DerivedUpper.lean` using `.min`.
For dummy-coordinate lengthening, the trace constructor is
`UpperTrace.lengthenDummyN`; the one-step certificate helper is
`UpperCert.lengthenDummy`.

---

## Adding a closure-table relation (automatic)

A closure-table relation must be added in four places:

1. **`Trace.lean`**: a new constructor in `UpperTrace` or `LowerTrace`, plus a
   `.valid` case and a `.render` case.
2. **`Certificate.lean`**: a helper method that builds the new trace from existing
   certificate objects.
3. **`BoundTable.lean`**: a `relaxXxxOnce` pass added to `relaxOnce`.
4. **`Tools/TableGen/Main.lean`**: serialisation branch in `serializeUpperTrace` /
   `serializeLowerTrace`, and a statistics counter in `TraceStats`.

After adding, run `lake -KproofMode=native exe table_gen` to regenerate the
table, then rebuild.
Update `RELATION_COVERAGE.md` to mark the relation as `automatic`.

---

## Adding a generated-table relation

If a new relation can improve the precomputed table, follow the closure-table
steps above, then re-run:

```bash
scripts/build-proof-mode.sh native table_gen
lake -KproofMode=native exe table_gen
scripts/build-proof-mode.sh native CoveringCodes.Database.GeneratedAPI
```

The generated chunks are automatically overwritten.  Do not edit chunk files by hand.

---

## Manual witness-dependent sources

Some relations require explicit witness data that cannot be derived numerically:

| Relation | Witness required | Helper |
|---|---|---|
| `upper_shortening_missing_symbol` | coordinate index + missing symbol | `ExplicitQaryUpper.shortening_missing_symbol` |
| `upper_shortening_fixed_coordinate` | coordinate index + value | `ExplicitQaryUpper.shortening_fixed_coordinate` |
| `upper_shortening_pattern_avoidance` | pattern avoidance parameter `delta` | `ExplicitQaryUpper.shortening_pattern_avoidance` |
| `upper_hole_filling` | explicit hole-coverage data | `ExplicitQaryUpper.hole_filling` |
| `upper_colored_product` | explicit coloring / witness | see `Sources/Derived/ColoredProduct.lean` |
| `upper_concatenation` | explicit inner map `Fin Q → QaryWord q m` | see `Sources/Derived/Concatenation.md` |

These should be added as **concrete source files** (e.g. `Sources/MyExplicitCode.lean`),
not as automatic closure rules.  Use `ExplicitQaryUpper` to bundle the code with its
proof and then extract `QaryKUpper` via `.toUpper`.

```lean
def myCodeExplicit : ExplicitQaryUpper q₀ n₀ r₀ U₀ :=
  { code := myCode, card_le := by decide, covers := by decide }

-- Apply a manual helper:
have h : QaryKUpper q n r k :=
  myCodeExplicit.shortening_missing_symbol hr j a (by native_decide)
```

---

## Rules and invariants

| Rule | Why |
|---|---|
| Inactive lower returns `0` | `0` is always valid; `.max` ignores it |
| Inactive upper returns `trivialUpper q n r` | Always valid; `.min` ignores it |
| No `sorry`, `admit`, `axiom`, `unsafe` | Proof-carrying traces replay to Lean proofs; `native_decide` leaves also rely on Lean's native evaluator/runtime |
| No `noncomputable` on value functions | `#eval` and the CLI must evaluate them |
| New primitive sources go in `Database/Sources/` | Keeps aggregators thin |
| One source file per mathematical source | Easier to cite, audit, and remove |
| Slow examples excluded from `Core.lean` | Avoids slowing the default build |
| Automatic closure rules update `RELATION_COVERAGE.md` | See `RELATION_COVERAGE.md` |
