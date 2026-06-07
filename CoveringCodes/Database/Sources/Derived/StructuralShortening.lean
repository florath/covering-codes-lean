import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Relations.StructuralShortening

/-!
# Structural shortening helpers for explicit code certificates

**Status: manual explicit-code helper.**

These wrappers consume `ExplicitQaryUpper` certificates and apply the
structural shortening rules (Rules 11–13) to derive new upper bounds.
They require explicit code data and explicit side conditions — they cannot
be used as blind numeric closure rules and must not be added to the
automatic closure pipeline in `BoundTable.lean`.

To use a helper, provide an `ExplicitQaryUpper` certificate and verify the
required side condition (which may require `native_decide` for concrete codes):
- `ExplicitQaryUpper.shortening_missing_symbol`  — coordinate + missing symbol
- `ExplicitQaryUpper.shortening_fixed_coordinate` — coordinate + fixed value
- `ExplicitQaryUpper.shortening_pattern_avoidance` — pattern avoidance with `delta`

Future concrete examples should be kept in a separate file and excluded from
the default build (use `native_decide` freely there).
-/

namespace CoveringCodes
namespace Database

/-- **Rule 11**: If an explicit code has no codeword using symbol `a` in coordinate `j`,
    deleting `j` gives an upper bound for `(q, n, r-1)`. -/
theorem ExplicitQaryUpper.shortening_missing_symbol
    (E : ExplicitQaryUpper q (n + 1) r U)
    (hr : 0 < r)
    (j : Fin (n + 1))
    (a : Fin q)
    (hmiss : ∀ c, c ∈ E.code → c j ≠ a) :
    QaryKUpper q n (r - 1) E.code.card :=
  upper_shortening_missing_symbol hr E.code E.covers j a hmiss

/-- **Rule 12**: If an explicit code has all codewords equal at coordinate `j`
    (fixed coordinate), deleting `j` gives an upper bound for `(q, n, r-1)`. -/
theorem ExplicitQaryUpper.shortening_fixed_coordinate
    (E : ExplicitQaryUpper q (n + 1) r U)
    (hq : 2 ≤ q)
    (hr : 0 < r)
    (j : Fin (n + 1))
    (a : Fin q)
    (hfixed : ∀ c, c ∈ E.code → c j = a) :
    QaryKUpper q n (r - 1) E.code.card :=
  upper_shortening_fixed_coordinate hq hr E.code E.covers j a hfixed

/-- **Rule 13**: Pattern-avoidance shortening.
    If every codeword in an explicit code differs from pattern `p` on `S` in at least
    `delta` coordinates, deleting `S` gives an upper bound for `(q, n - |S|, r - delta)`. -/
theorem ExplicitQaryUpper.shortening_pattern_avoidance
    (E : ExplicitQaryUpper q n r U)
    (S : Finset (Fin n))
    (p : (j : Fin n) → j ∈ S → Fin q)
    (delta : ℕ)
    (hAvoid : PatternAvoids E.code S p delta)
    (hdelta : delta ≤ r) :
    QaryKUpper q (n - S.card) (r - delta) E.code.card :=
  upper_shortening_pattern_avoidance E.code E.covers S p hAvoid hdelta

end Database
end CoveringCodes
