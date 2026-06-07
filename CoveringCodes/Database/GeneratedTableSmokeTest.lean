import CoveringCodes.Database.GeneratedAPI

namespace CoveringCodes.Database

-- Proof replay: ternary case K_3(8,3)
example : QaryKLower 3 8 3 (bestBoundsPrecomputed 3 8 3).lower :=
  (bestBoundsPrecomputed 3 8 3).lower_proof

example : QaryKUpper 3 8 3 (bestBoundsPrecomputed 3 8 3).upper :=
  (bestBoundsPrecomputed 3 8 3).upper_proof

example : (bestBoundsPrecomputed 3 8 3).lower ≤ (bestBoundsPrecomputed 3 8 3).upper :=
  bestBoundsPrecomputed_consistent 3 8 3

-- Proof replay: binary case K_2(7,1)
example : QaryKLower 2 7 1 (bestBoundsPrecomputed 2 7 1).lower :=
  (bestBoundsPrecomputed 2 7 1).lower_proof

example : QaryKUpper 2 7 1 (bestBoundsPrecomputed 2 7 1).upper :=
  (bestBoundsPrecomputed 2 7 1).upper_proof

example : (bestBoundsPrecomputed 2 7 1).lower ≤ (bestBoundsPrecomputed 2 7 1).upper :=
  bestBoundsPrecomputed_consistent 2 7 1

end CoveringCodes.Database
