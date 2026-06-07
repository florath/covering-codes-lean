import CoveringCodes.Database.Lower
import CoveringCodes.Database.Upper

namespace CoveringCodes
namespace Database

/-- Computed lower and upper bounds for `K_q(n,r)`, together with their proofs. -/
structure BestBounds (q n r : ℕ) where
  lower : ℕ
  upper : ℕ
  lower_proof : QaryKLower q n r lower
  upper_proof : QaryKUpper q n r upper

/--
Source-level query using primitive sources plus the registered one-step derived sources.
This does not use the generated bounded closure table.  For the generated closure table,
import `CoveringCodes.Database.GeneratedAPI` and use `bestBoundsPrecomputed`.
-/
def bestBoundsOneStep (q n r : ℕ) : BestBounds q n r :=
  { lower       := bestLower q n r
    upper       := bestUpper q n r
    lower_proof := bestLower_valid q n r
    upper_proof := bestUpper_valid q n r }

/-- Certified bounds are always consistent: `lower ≤ upper`. -/
theorem BestBounds.consistent {q n r : ℕ} (B : BestBounds q n r) :
    B.lower ≤ B.upper := by
  rcases B.upper_proof with ⟨C, hcard, hcov⟩
  exact (B.lower_proof C hcov).trans hcard

theorem bestBoundsOneStep_consistent (q n r : ℕ) :
    (bestBoundsOneStep q n r).lower ≤ (bestBoundsOneStep q n r).upper :=
  (bestBoundsOneStep q n r).consistent

end Database
end CoveringCodes
