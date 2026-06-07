import CoveringCodes.Database
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Sources.SmallExplicitUpper

namespace CoveringCodes
namespace Database

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

-- Consistency example using the source-level one-step query
example (q n r : Nat) :
    (bestBoundsOneStep q n r).lower ≤ (bestBoundsOneStep q n r).upper :=
  bestBoundsOneStep_consistent q n r

-- Primitive bound checks via covering_decide
example : (bestBoundsOneStep 2 3 1).upper ≤ 2 := by covering_decide
example : (bestBoundsOneStep 3 3 1).upper ≤ 5 := by covering_decide
example : (bestBoundsOneStep 2 7 1).upper ≤ 16 := by covering_decide

-- Trace replay examples: construct an UpperTrace manually and replay it
example : QaryKUpper 2 7 1 16 := by
  exact (UpperTrace.primitive
    "lean_small_explicit_upper"
    (by
      simpa [smallExplicitBinaryHamming7Upper] using
        smallExplicitBinaryHamming7Upper_valid 2 7 1)).valid

-- Manual trace replay example only: radius monotonicity transports the
-- primitive K_2(7,1) ≤ 16 certificate to radius 3.
example : QaryKUpper 2 7 3 16 :=
  (UpperTrace.radiusMono (by norm_num : 1 ≤ 3)
    (UpperTrace.primitive
      "lean_small_explicit_upper"
      (by
        simpa [smallExplicitBinaryHamming7Upper] using
          smallExplicitBinaryHamming7Upper_valid 2 7 1))).valid

-- Precomputed-table examples belong in GeneratedTableSmokeTest.lean; this file
-- stays focused on source-level one-step queries and manual trace replay.

end Database
end CoveringCodes
