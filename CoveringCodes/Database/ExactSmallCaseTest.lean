import CoveringCodes.Database.GeneratedAPI

namespace CoveringCodes.Database

-- Radius-zero exactness examples: lower and upper agree with q^n
-- (for example K_2(1,0) = 2 and K_3(2,0) = 9).
example : (bestBoundsPrecomputed 2 1 0).lower = (bestBoundsPrecomputed 2 1 0).upper := by
  native_decide

example : (bestBoundsPrecomputed 3 2 0).lower = (bestBoundsPrecomputed 3 2 0).upper := by
  native_decide

-- Large-radius exactness examples for nonempty q-ary spaces: for q > 0,
-- a singleton code covers at radius n.
example : (bestBoundsPrecomputed 2 3 3).lower = (bestBoundsPrecomputed 2 3 3).upper := by
  native_decide

-- K_2(1,1) = 1: trivially, a single binary word of length 1 suffices.
example : (bestBoundsPrecomputed 2 1 1).lower = (bestBoundsPrecomputed 2 1 1).upper := by
  native_decide

-- K_3(1,1) = 1
example : (bestBoundsPrecomputed 3 1 1).lower = (bestBoundsPrecomputed 3 1 1).upper := by
  native_decide

end CoveringCodes.Database
