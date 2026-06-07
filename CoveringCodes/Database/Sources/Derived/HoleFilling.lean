import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Relations.HoleFilling

/-!
# Hole-filling helper for explicit code certificates

**Status: manual explicit-code helper.**

This wrapper applies Rule 14 (hole filling) via `ExplicitQaryUpper.hole_filling`.
It requires explicit deep-hole coverage data — a separate `D_code` that covers
all deep holes of the primary code `C` at radius `r-1` — and cannot be derived
numerically.  Do not add it to the automatic closure pipeline in `BoundTable.lean`.
-/

namespace CoveringCodes
namespace Database

/-- **Rule 14**: If `D` covers all deep holes of `C` at radius `r-1`, then
    `C ∪ D` covers the whole space at radius `r-1`, giving an upper bound
    `C.code.card + D.code.card`. -/
theorem ExplicitQaryUpper.hole_filling
    (C : ExplicitQaryUpper q n r U_C)
    (D_code : Finset (QaryWord q n))
    (hr : 0 < r)
    (hD : CoversSet D_code (r - 1) (DeepHoles r C.code)) :
    QaryKUpper q n (r - 1) (C.code.card + D_code.card) :=
  upper_hole_filling hr C.code D_code C.covers hD

end Database
end CoveringCodes
