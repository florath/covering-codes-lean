import CoveringCodes.Database.Core
import CoveringCodes.Database.GeneratedTable

namespace CoveringCodes.Database

/-- Query the precomputed proof-carrying closure table. -/
def bestBoundsPrecomputed (q n r : Nat) : BestBounds q n r :=
  (lookupPrecomputed q n r).toBestBounds

theorem bestBoundsPrecomputed_consistent (q n r : Nat) :
    (bestBoundsPrecomputed q n r).lower ≤ (bestBoundsPrecomputed q n r).upper :=
  (bestBoundsPrecomputed q n r).consistent

/-- Canonical generated-table query for the proof-carrying database. -/
def bestBounds (q n r : Nat) : BestBounds q n r :=
  bestBoundsPrecomputed q n r

theorem bestBounds_consistent (q n r : Nat) :
    (bestBounds q n r).lower ≤ (bestBounds q n r).upper :=
  (bestBounds q n r).consistent

end CoveringCodes.Database
