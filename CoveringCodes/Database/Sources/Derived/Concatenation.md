# Concatenation: design note for future implementation

**Status: formalized only; witness-dependent; planned manual helper.**

## Relation

`upper_concatenation` (in `CoveringCodes.Relations.Concatenation`) constructs a
q-ary upper bound from an outer Q-ary upper bound:

```
QaryKUpper Q N R U →
QaryKUpper q (m * N) (N * rho + R * (m - rho)) U
```

Equivalently, if `K_Q(N, R) ≤ U` is certified by an outer code, and there is an
inner map `f : Fin Q → QaryWord q m` such that every q-ary block of length `m`
is within radius `rho` of some `f a`, then the concatenated code proves

```
K_q(m * N, N * rho + R * (m - rho)) ≤ U
```

The theorem also requires `hrho : rho ≤ m`, so that `m - rho` is ordinary
subtraction in the radius expression.

## Why it cannot be automatic numeric closure

The theorem requires:

1. An explicit inner map `f : Fin Q → QaryWord q m`.
2. A proof that `f` covers every q-ary block of length `m` within radius `rho`.
3. An upper-bound proof for `K_Q(N, R)`.

These are not computable from the numeric table alone.  Automating concatenation
would require the database to store explicit code data for every `(q, m, Q, rho)`
combination, which is outside the scope of the current numeric closure engine.

## Recommended future implementation

When a concrete application arises:

1. Define the inner map as a `Finset` or `Array` in a source file.
2. Prove the covering property (possibly via `decide` for small parameters).
3. Wrap the result in an `ExplicitQaryUpper` or a direct `QaryKUpper` proof.
4. Register the resulting bound in `PrimitiveUpper.lean` or a dedicated source file.
5. Do **not** add a closure pass to `BoundTable.lean`.
6. Update `RELATION_COVERAGE.md` to reflect the new status.

## Example skeleton

```lean
-- Inner map: code of length m over q-ary alphabet, indexed by Q symbols
def myInnerMap : Fin Q → QaryWord q m := fun i => ...

-- Covering property (may use native_decide for concrete small cases)
theorem myInnerMap_covers : ∀ x : QaryWord q m, ∃ i, dist x (myInnerMap i) ≤ rho :=
  by native_decide

-- Apply upper_concatenation
theorem myConcatenated_upper
    (hrho : rho ≤ m)
    (myOuterCertificate : QaryKUpper Q N R U) :
    QaryKUpper q (m * N) (N * rho + R * (m - rho)) U :=
  upper_concatenation hrho myInnerMap myInnerMap_covers myOuterCertificate
```
