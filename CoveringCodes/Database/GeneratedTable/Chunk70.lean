import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 70. Do not edit manually.

def precomputedTable_chunk_70 : Array AnyBoundEntry := #[
  { key := { q := 7, n := 14, r := 7 }
    lowerValue := 607
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 14, r := 8 }
    lowerValue := 111
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 8))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2)))) },
  { key := { q := 7, n := 14, r := 9 }
    lowerValue := 26
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 9))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 7) (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 14, r := 10 }
    lowerValue := 8
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 10))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 14, r := 11 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 13 12))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 14, r := 12 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 14 13)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 14 12)) },
  { key := { q := 7, n := 14, r := 13 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 14 13)) },
  { key := { q := 7, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 14)) },
  { key := { q := 7, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 15)) },
  { key := { q := 7, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 16)) },
  { key := { q := 7, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 17)) },
  { key := { q := 7, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 18)) },
  { key := { q := 7, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 19)) },
  { key := { q := 7, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 20)) },
  { key := { q := 7, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 21)) },
  { key := { q := 7, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 22)) },
  { key := { q := 7, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 23)) },
  { key := { q := 7, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 24)) },
  { key := { q := 7, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 25)) },
  { key := { q := 7, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 26)) },
  { key := { q := 7, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 27)) },
  { key := { q := 7, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 28)) },
  { key := { q := 7, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 29)) },
  { key := { q := 7, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 30)) },
  { key := { q := 7, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 31)) },
  { key := { q := 7, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 32)) },
  { key := { q := 7, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 33)) },
  { key := { q := 7, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 34)) },
  { key := { q := 7, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 35)) },
  { key := { q := 7, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 36)) },
  { key := { q := 7, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 37)) },
  { key := { q := 7, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 38)) },
  { key := { q := 7, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 39)) },
  { key := { q := 7, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 40)) },
  { key := { q := 7, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 41)) },
  { key := { q := 7, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 42)) },
  { key := { q := 7, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 43)) },
  { key := { q := 7, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 44)) },
  { key := { q := 7, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 45)) },
  { key := { q := 7, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 46)) },
  { key := { q := 7, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 47)) },
  { key := { q := 7, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 14 48)) },
  { key := { q := 7, n := 15, r := 0 }
    lowerValue := 4747561509943
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 15 0)) },
  { key := { q := 7, n := 15, r := 1 }
    lowerValue := 52171005604
    upperValue := 346032180025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 1))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 15, r := 2 }
    lowerValue := 1226443170
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 2))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 15, r := 3 }
    lowerValue := 46475919
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 3))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 15, r := 4 }
    lowerValue := 2537188
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 15, r := 5 }
    lowerValue := 188228
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 5))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 15, r := 6 }
    lowerValue := 18350
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 15, r := 7 }
    lowerValue := 2305
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 15, r := 8 }
    lowerValue := 369
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 15, r := 9 }
    lowerValue := 75
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 9))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2)))) },
  { key := { q := 7, n := 15, r := 10 }
    lowerValue := 20
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 10))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 7) (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 15, r := 11 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 11))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 15, r := 12 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 14 13))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12)) },
  { key := { q := 7, n := 15, r := 13 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 15 14)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 13)) },
  { key := { q := 7, n := 15, r := 14 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 14)) },
  { key := { q := 7, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 15)) },
  { key := { q := 7, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 16)) },
  { key := { q := 7, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 17)) },
  { key := { q := 7, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 18)) },
  { key := { q := 7, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 19)) },
  { key := { q := 7, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 20)) },
  { key := { q := 7, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 21)) },
  { key := { q := 7, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 22)) },
  { key := { q := 7, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 23)) },
  { key := { q := 7, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 24)) },
  { key := { q := 7, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 25)) },
  { key := { q := 7, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 26)) },
  { key := { q := 7, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 27)) },
  { key := { q := 7, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 28)) },
  { key := { q := 7, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 29)) },
  { key := { q := 7, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 30)) },
  { key := { q := 7, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 31)) },
  { key := { q := 7, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 32)) },
  { key := { q := 7, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 33)) },
  { key := { q := 7, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 34)) },
  { key := { q := 7, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 35)) },
  { key := { q := 7, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 36)) },
  { key := { q := 7, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 37)) },
  { key := { q := 7, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 38)) },
  { key := { q := 7, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 39)) },
  { key := { q := 7, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 40)) },
  { key := { q := 7, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 41)) },
  { key := { q := 7, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 42)) },
  { key := { q := 7, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 43)) },
  { key := { q := 7, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 44)) },
  { key := { q := 7, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 45)) },
  { key := { q := 7, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 46)) },
  { key := { q := 7, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 47)) },
  { key := { q := 7, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 15 48)) },
  { key := { q := 7, n := 16, r := 0 }
    lowerValue := 33232930569601
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 16 0)) },
  { key := { q := 7, n := 16, r := 1 }
    lowerValue := 342607531646
    upperValue := 2422225260175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 1))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 16, r := 2 }
    lowerValue := 7523869271
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 2))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 16, r := 3 }
    lowerValue := 265064012
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 3))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 16, r := 4 }
    lowerValue := 13378275
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 16, r := 5 }
    lowerValue := 911749
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 5))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 16, r := 6 }
    lowerValue := 81042
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 6))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 16, r := 7 }
    lowerValue := 9200
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 16, r := 8 }
    lowerValue := 1318
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 16, r := 9 }
    lowerValue := 237
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 16, r := 10 }
    lowerValue := 54
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 10))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2)))) },
  { key := { q := 7, n := 16, r := 11 }
    lowerValue := 16
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 11))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 7) (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 16, r := 12 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 14 13)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 16, r := 13 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 15 14))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13)) },
  { key := { q := 7, n := 16, r := 14 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 16 15)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 14)) },
  { key := { q := 7, n := 16, r := 15 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 15)) },
  { key := { q := 7, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 16)) },
  { key := { q := 7, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 17)) },
  { key := { q := 7, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 18)) },
  { key := { q := 7, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 19)) },
  { key := { q := 7, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 20)) },
  { key := { q := 7, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 21)) },
  { key := { q := 7, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 22)) },
  { key := { q := 7, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 23)) },
  { key := { q := 7, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 24)) },
  { key := { q := 7, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 25)) },
  { key := { q := 7, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 26)) },
  { key := { q := 7, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 27)) },
  { key := { q := 7, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 28)) },
  { key := { q := 7, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 29)) },
  { key := { q := 7, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 30)) },
  { key := { q := 7, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 31)) },
  { key := { q := 7, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 32)) },
  { key := { q := 7, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 33)) },
  { key := { q := 7, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 34)) },
  { key := { q := 7, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 35)) },
  { key := { q := 7, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 36)) },
  { key := { q := 7, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 37)) },
  { key := { q := 7, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 38)) },
  { key := { q := 7, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 39)) },
  { key := { q := 7, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 40)) },
  { key := { q := 7, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 41)) },
  { key := { q := 7, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 42)) },
  { key := { q := 7, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 43)) },
  { key := { q := 7, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 44)) },
  { key := { q := 7, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 45)) },
  { key := { q := 7, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 46)) },
  { key := { q := 7, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 47)) },
  { key := { q := 7, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 16 48)) },
  { key := { q := 7, n := 17, r := 0 }
    lowerValue := 232630513987207
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 17 0)) },
  { key := { q := 7, n := 17, r := 1 }
    lowerValue := 2258548679488
    upperValue := 16955576821225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 1))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 17, r := 2 }
    lowerValue := 46535409880
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 2))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 17, r := 3 }
    lowerValue := 1531683209
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 17, r := 4 }
    lowerValue := 71880318
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 17, r := 5 }
    lowerValue := 4529918
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 5))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 17, r := 6 }
    lowerValue := 369978
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 17, r := 7 }
    lowerValue := 38306
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 17, r := 8 }
    lowerValue := 4960
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 17, r := 9 }
    lowerValue := 797
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 17, r := 10 }
    lowerValue := 159
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 10))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 17, r := 11 }
    lowerValue := 40
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 11))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2)))) },
  { key := { q := 7, n := 17, r := 12 }
    lowerValue := 12
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 12))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 17, r := 13 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 15 14)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 17, r := 14 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 16 15))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14)) },
  { key := { q := 7, n := 17, r := 15 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 17 16)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 15)) },
  { key := { q := 7, n := 17, r := 16 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 16)) },
  { key := { q := 7, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 17)) },
  { key := { q := 7, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 18)) },
  { key := { q := 7, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 19)) },
  { key := { q := 7, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 20)) },
  { key := { q := 7, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 21)) },
  { key := { q := 7, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 22)) },
  { key := { q := 7, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 23)) },
  { key := { q := 7, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 24)) },
  { key := { q := 7, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 25)) },
  { key := { q := 7, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 26)) },
  { key := { q := 7, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 27)) },
  { key := { q := 7, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 28)) },
  { key := { q := 7, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 29)) },
  { key := { q := 7, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 30)) },
  { key := { q := 7, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 31)) },
  { key := { q := 7, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 32)) },
  { key := { q := 7, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 33)) },
  { key := { q := 7, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 34)) },
  { key := { q := 7, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 35)) },
  { key := { q := 7, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 36)) },
  { key := { q := 7, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 37)) },
  { key := { q := 7, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 38)) },
  { key := { q := 7, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 39)) },
  { key := { q := 7, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 40)) },
  { key := { q := 7, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 41)) },
  { key := { q := 7, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 42)) },
  { key := { q := 7, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 43)) },
  { key := { q := 7, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 44)) },
  { key := { q := 7, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 45)) },
  { key := { q := 7, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 46)) },
  { key := { q := 7, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 47)) },
  { key := { q := 7, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 17 48)) },
  { key := { q := 7, n := 18, r := 0 }
    lowerValue := 1628413597910449
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 18 0)) },
  { key := { q := 7, n := 18, r := 1 }
    lowerValue := 14939574292757
    upperValue := 118689037748575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 1))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 18, r := 2 }
    lowerValue := 289908064432
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 2))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 18, r := 3 }
    lowerValue := 8953575286
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 18, r := 4 }
    lowerValue := 392612750
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 18, r := 5 }
    lowerValue := 23009162
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 18, r := 6 }
    lowerValue := 1738098
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 18, r := 7 }
    lowerValue := 165396
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 18, r := 8 }
    lowerValue := 19539
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 18, r := 9 }
    lowerValue := 2841
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 18, r := 10 }
    lowerValue := 506
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 10))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 18, r := 11 }
    lowerValue := 111
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 11))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 9 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 18, r := 12 }
    lowerValue := 30
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 12))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 18, r := 13 }
    lowerValue := 10
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 13))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 18, r := 14 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 16 15)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 18, r := 15 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 17 16))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15)) },
  { key := { q := 7, n := 18, r := 16 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 18 17)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 16)) },
  { key := { q := 7, n := 18, r := 17 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 17)) },
  { key := { q := 7, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 18)) },
  { key := { q := 7, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 19)) },
  { key := { q := 7, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 20)) },
  { key := { q := 7, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 21)) },
  { key := { q := 7, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 22)) },
  { key := { q := 7, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 23)) },
  { key := { q := 7, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 24)) },
  { key := { q := 7, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 25)) },
  { key := { q := 7, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 26)) },
  { key := { q := 7, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 27)) },
  { key := { q := 7, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 28)) },
  { key := { q := 7, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 29)) },
  { key := { q := 7, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 30)) },
  { key := { q := 7, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 31)) },
  { key := { q := 7, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 32)) },
  { key := { q := 7, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 33)) },
  { key := { q := 7, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 34)) },
  { key := { q := 7, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 35)) },
  { key := { q := 7, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 36)) },
  { key := { q := 7, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 37)) },
  { key := { q := 7, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 38)) },
  { key := { q := 7, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 39)) },
  { key := { q := 7, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 40)) },
  { key := { q := 7, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 41)) },
  { key := { q := 7, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 42)) },
  { key := { q := 7, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 43)) },
  { key := { q := 7, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 44)) },
  { key := { q := 7, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 45)) },
  { key := { q := 7, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 46)) },
  { key := { q := 7, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 47)) },
  { key := { q := 7, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 18 48)) },
  { key := { q := 7, n := 19, r := 0 }
    lowerValue := 11398895185373143
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 19 0)) },
  { key := { q := 7, n := 19, r := 1 }
    lowerValue := 99120827698897
    upperValue := 830823264240025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 1))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 19, r := 2 }
    lowerValue := 1817715704892
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 2))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 19, r := 3 }
    lowerValue := 52876702704
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 19, r := 4 }
    lowerValue := 2175830477
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 19, r := 5 }
    lowerValue := 119162762
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 19, r := 6 }
    lowerValue := 8372130
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 19, r := 7 }
    lowerValue := 736985
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 19, r := 8 }
    lowerValue := 80040
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 19, r := 9 }
    lowerValue := 10620
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 19, r := 10 }
    lowerValue := 1712
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 10))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 19, r := 11 }
    lowerValue := 335
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 11))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 9 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) }]

end CoveringCodes.Database
