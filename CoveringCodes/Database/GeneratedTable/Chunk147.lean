import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 147. Do not edit manually.

def precomputedTable_chunk_147 : Array AnyBoundEntry := #[
  { key := { q := 15, n := 15, r := 0 }
    lowerValue := 437893890380859375
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 15 0)) },
  { key := { q := 15, n := 15, r := 1 }
    lowerValue := 2075326494696016
    upperValue := 14661336181640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 1))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 15, r := 2 }
    lowerValue := 21061704121056
    upperValue := 413343000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 2))
    upperTrace := (.lengthenFreeN 9 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 15, r := 3 }
    lowerValue := 344985500308
    upperValue := 27556200000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 3))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 15, r := 4 }
    lowerValue := 8153362862
    upperValue := 1837080000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 15, r := 5 }
    lowerValue := 262401622
    upperValue := 122472000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 5))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 15, r := 6 }
    lowerValue := 11127016
    upperValue := 8164800000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 6))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 15, r := 7 }
    lowerValue := 610144
    upperValue := 544320000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 15, r := 8 }
    lowerValue := 42871
    upperValue := 36288000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 15, r := 9 }
    lowerValue := 3854
    upperValue := 2419200
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 15, r := 10 }
    lowerValue := 446
    upperValue := 161280
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 10))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 15, n := 15, r := 11 }
    lowerValue := 68
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 11))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 15, r := 12 }
    lowerValue := 15
    upperValue := 1695
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 14 13))))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1)))) },
  { key := { q := 15, n := 15, r := 13 }
    lowerValue := 15
    upperValue := 113
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 15 14)))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 15) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 15, r := 14 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 15 14)) },
  { key := { q := 15, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 15)) },
  { key := { q := 15, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 16)) },
  { key := { q := 15, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 17)) },
  { key := { q := 15, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 18)) },
  { key := { q := 15, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 19)) },
  { key := { q := 15, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 20)) },
  { key := { q := 15, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 21)) },
  { key := { q := 15, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 22)) },
  { key := { q := 15, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 23)) },
  { key := { q := 15, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 24)) },
  { key := { q := 15, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 25)) },
  { key := { q := 15, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 26)) },
  { key := { q := 15, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 27)) },
  { key := { q := 15, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 28)) },
  { key := { q := 15, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 29)) },
  { key := { q := 15, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 30)) },
  { key := { q := 15, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 31)) },
  { key := { q := 15, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 32)) },
  { key := { q := 15, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 33)) },
  { key := { q := 15, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 34)) },
  { key := { q := 15, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 35)) },
  { key := { q := 15, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 36)) },
  { key := { q := 15, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 37)) },
  { key := { q := 15, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 38)) },
  { key := { q := 15, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 39)) },
  { key := { q := 15, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 40)) },
  { key := { q := 15, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 41)) },
  { key := { q := 15, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 42)) },
  { key := { q := 15, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 43)) },
  { key := { q := 15, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 44)) },
  { key := { q := 15, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 45)) },
  { key := { q := 15, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 46)) },
  { key := { q := 15, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 47)) },
  { key := { q := 15, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 15 48)) },
  { key := { q := 15, n := 16, r := 0 }
    lowerValue := 6568408355712890625
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 16 0)) },
  { key := { q := 15, n := 16, r := 1 }
    lowerValue := 29192926025390625
    upperValue := 219920042724609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 1))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 16, r := 2 }
    lowerValue := 276622798724485
    upperValue := 6200145000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 2))
    upperTrace := (.lengthenFreeN 10 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 16, r := 3 }
    lowerValue := 4209479298836
    upperValue := 413343000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 16, r := 4 }
    lowerValue := 91894762635
    upperValue := 27556200000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 16, r := 5 }
    lowerValue := 2713441593
    upperValue := 1837080000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 5))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 16, r := 6 }
    lowerValue := 104730546
    upperValue := 122472000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 16, r := 7 }
    lowerValue := 5177489
    upperValue := 8164800000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 16, r := 8 }
    lowerValue := 324173
    upperValue := 544320000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 16, r := 9 }
    lowerValue := 25596
    upperValue := 36288000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 16, r := 10 }
    lowerValue := 2553
    upperValue := 2419200
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 10))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 16, r := 11 }
    lowerValue := 325
    upperValue := 161280
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 11))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 15, n := 16, r := 12 }
    lowerValue := 54
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 12))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 16, r := 13 }
    lowerValue := 15
    upperValue := 1695
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 15 14))))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1)))) },
  { key := { q := 15, n := 16, r := 14 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 16 15)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14)) },
  { key := { q := 15, n := 16, r := 15 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 15)) },
  { key := { q := 15, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 16)) },
  { key := { q := 15, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 17)) },
  { key := { q := 15, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 18)) },
  { key := { q := 15, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 19)) },
  { key := { q := 15, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 20)) },
  { key := { q := 15, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 21)) },
  { key := { q := 15, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 22)) },
  { key := { q := 15, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 23)) },
  { key := { q := 15, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 24)) },
  { key := { q := 15, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 25)) },
  { key := { q := 15, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 26)) },
  { key := { q := 15, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 27)) },
  { key := { q := 15, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 28)) },
  { key := { q := 15, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 29)) },
  { key := { q := 15, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 30)) },
  { key := { q := 15, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 31)) },
  { key := { q := 15, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 32)) },
  { key := { q := 15, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 33)) },
  { key := { q := 15, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 34)) },
  { key := { q := 15, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 35)) },
  { key := { q := 15, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 36)) },
  { key := { q := 15, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 37)) },
  { key := { q := 15, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 38)) },
  { key := { q := 15, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 39)) },
  { key := { q := 15, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 40)) },
  { key := { q := 15, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 41)) },
  { key := { q := 15, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 42)) },
  { key := { q := 15, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 43)) },
  { key := { q := 15, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 44)) },
  { key := { q := 15, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 45)) },
  { key := { q := 15, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 46)) },
  { key := { q := 15, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 47)) },
  { key := { q := 15, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 16 48)) },
  { key := { q := 15, n := 17, r := 0 }
    lowerValue := 98526125335693359375
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 17 0)) },
  { key := { q := 15, n := 17, r := 1 }
    lowerValue := 412243202241394810
    upperValue := 3298800640869140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 1))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 17, r := 2 }
    lowerValue := 3663362161579973
    upperValue := 93002175000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 2))
    upperTrace := (.lengthenFreeN 11 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 17, r := 3 }
    lowerValue := 52052696822296
    upperValue := 6200145000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 17, r := 4 }
    lowerValue := 1055755132069
    upperValue := 413343000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 17, r := 5 }
    lowerValue := 28797207118
    upperValue := 27556200000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 17, r := 6 }
    lowerValue := 1019866177
    upperValue := 1837080000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 17, r := 7 }
    lowerValue := 45896792
    upperValue := 122472000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 17, r := 8 }
    lowerValue := 2591217
    upperValue := 8164800000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 17, r := 9 }
    lowerValue := 182357
    upperValue := 544320000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 17, r := 10 }
    lowerValue := 15980
    upperValue := 36288000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 10))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 17, r := 11 }
    lowerValue := 1751
    upperValue := 2419200
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 11))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 17, r := 12 }
    lowerValue := 243
    upperValue := 161280
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 12))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 15, n := 17, r := 13 }
    lowerValue := 43
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 13))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 17, r := 14 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 16 15))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 17, r := 15 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 17 16)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15)) },
  { key := { q := 15, n := 17, r := 16 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 16)) },
  { key := { q := 15, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 17)) },
  { key := { q := 15, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 18)) },
  { key := { q := 15, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 19)) },
  { key := { q := 15, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 20)) },
  { key := { q := 15, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 21)) },
  { key := { q := 15, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 22)) },
  { key := { q := 15, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 23)) },
  { key := { q := 15, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 24)) },
  { key := { q := 15, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 25)) },
  { key := { q := 15, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 26)) },
  { key := { q := 15, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 27)) },
  { key := { q := 15, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 28)) },
  { key := { q := 15, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 29)) },
  { key := { q := 15, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 30)) },
  { key := { q := 15, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 31)) },
  { key := { q := 15, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 32)) },
  { key := { q := 15, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 33)) },
  { key := { q := 15, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 34)) },
  { key := { q := 15, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 35)) },
  { key := { q := 15, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 36)) },
  { key := { q := 15, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 37)) },
  { key := { q := 15, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 38)) },
  { key := { q := 15, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 39)) },
  { key := { q := 15, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 40)) },
  { key := { q := 15, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 41)) },
  { key := { q := 15, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 42)) },
  { key := { q := 15, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 43)) },
  { key := { q := 15, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 44)) },
  { key := { q := 15, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 45)) },
  { key := { q := 15, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 46)) },
  { key := { q := 15, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 47)) },
  { key := { q := 15, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 17 48)) },
  { key := { q := 15, n := 18, r := 0 }
    lowerValue := 1477891880035400390625
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 18 0)) },
  { key := { q := 15, n := 18, r := 1 }
    lowerValue := 5841469881562847394
    upperValue := 49482009613037109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 1))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 18, r := 2 }
    lowerValue := 48870469893039265
    upperValue := 1395032625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 2))
    upperTrace := (.lengthenFreeN 12 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 18, r := 3 }
    lowerValue := 651241604972096
    upperValue := 93002175000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 18, r := 4 }
    lowerValue := 12334029795500
    upperValue := 6200145000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 18, r := 5 }
    lowerValue := 312589606353
    upperValue := 413343000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 18, r := 6 }
    lowerValue := 10227186326
    upperValue := 27556200000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 18, r := 7 }
    lowerValue := 422353104
    upperValue := 1837080000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 18, r := 8 }
    lowerValue := 21709198
    upperValue := 122472000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 18, r := 9 }
    lowerValue := 1377838
    upperValue := 8164800000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 18, r := 10 }
    lowerValue := 107642
    upperValue := 544320000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 10))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 18, r := 11 }
    lowerValue := 10364
    upperValue := 36288000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 11))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 18, r := 12 }
    lowerValue := 1237
    upperValue := 2419200
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 12))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 18, r := 13 }
    lowerValue := 185
    upperValue := 161280
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 13))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 15, n := 18, r := 14 }
    lowerValue := 36
    upperValue := 3375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 14))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 18, r := 15 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 17 16))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 18, r := 16 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 18 17)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16)) },
  { key := { q := 15, n := 18, r := 17 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 17)) },
  { key := { q := 15, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 18)) },
  { key := { q := 15, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 19)) },
  { key := { q := 15, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 20)) },
  { key := { q := 15, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 21)) },
  { key := { q := 15, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 22)) },
  { key := { q := 15, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 23)) },
  { key := { q := 15, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 24)) },
  { key := { q := 15, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 25)) },
  { key := { q := 15, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 26)) },
  { key := { q := 15, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 27)) },
  { key := { q := 15, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 28)) },
  { key := { q := 15, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 29)) },
  { key := { q := 15, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 30)) },
  { key := { q := 15, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 31)) },
  { key := { q := 15, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 32)) },
  { key := { q := 15, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 33)) },
  { key := { q := 15, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 34)) },
  { key := { q := 15, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 35)) },
  { key := { q := 15, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 36)) },
  { key := { q := 15, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 37)) },
  { key := { q := 15, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 38)) },
  { key := { q := 15, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 39)) },
  { key := { q := 15, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 40)) },
  { key := { q := 15, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 41)) },
  { key := { q := 15, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 42)) },
  { key := { q := 15, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 43)) },
  { key := { q := 15, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 44)) },
  { key := { q := 15, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 45)) },
  { key := { q := 15, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 46)) },
  { key := { q := 15, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 47)) },
  { key := { q := 15, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 18 48)) },
  { key := { q := 15, n := 19, r := 0 }
    lowerValue := 22168378200531005859375
    upperValue := 22168378200531005859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 19 0)) },
  { key := { q := 15, n := 19, r := 1 }
    lowerValue := 83027633709853954530
    upperValue := 742230144195556640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 1))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 19, r := 2 }
    lowerValue := 656199218557588310
    upperValue := 20925489375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 2))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 19, r := 3 }
    lowerValue := 8232711322841710
    upperValue := 1395032625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 19, r := 4 }
    lowerValue := 146236029755114
    upperValue := 93002175000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 4))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 19, r := 5 }
    lowerValue := 3460883237728
    upperValue := 6200145000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 5))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 19, r := 6 }
    lowerValue := 105214602984
    upperValue := 413343000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 6))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 19, r := 7 }
    lowerValue := 4014357952
    upperValue := 27556200000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 7))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 19, r := 8 }
    lowerValue := 189367530
    upperValue := 1837080000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 8))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 19, r := 9 }
    lowerValue := 10943610
    upperValue := 122472000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 9))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 19, r := 10 }
    lowerValue := 771170
    upperValue := 8164800000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 10))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 19, r := 11 }
    lowerValue := 66210
    upperValue := 544320000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 11))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 19, r := 12 }
    lowerValue := 6947
    upperValue := 36288000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 12))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 19, r := 13 }
    lowerValue := 897
    upperValue := 2419200
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 13))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 19, r := 14 }
    lowerValue := 145
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 14))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 19, r := 15 }
    lowerValue := 30
    upperValue := 3375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 15))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 19, r := 16 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 18 17))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 19, r := 17 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 19 18)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17)) },
  { key := { q := 15, n := 19, r := 18 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 18)) },
  { key := { q := 15, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 19)) },
  { key := { q := 15, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 20)) },
  { key := { q := 15, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 21)) },
  { key := { q := 15, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 22)) },
  { key := { q := 15, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 23)) },
  { key := { q := 15, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 24)) },
  { key := { q := 15, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 25)) },
  { key := { q := 15, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 26)) },
  { key := { q := 15, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 27)) },
  { key := { q := 15, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 28)) },
  { key := { q := 15, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 29)) },
  { key := { q := 15, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 30)) },
  { key := { q := 15, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 31)) },
  { key := { q := 15, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 32)) },
  { key := { q := 15, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 33)) },
  { key := { q := 15, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 34)) },
  { key := { q := 15, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 35)) },
  { key := { q := 15, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 36)) },
  { key := { q := 15, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 37)) },
  { key := { q := 15, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 38)) },
  { key := { q := 15, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 39)) },
  { key := { q := 15, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 40)) },
  { key := { q := 15, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 41)) },
  { key := { q := 15, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 42)) },
  { key := { q := 15, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 43)) },
  { key := { q := 15, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 44)) },
  { key := { q := 15, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 45)) },
  { key := { q := 15, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 46)) },
  { key := { q := 15, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 47)) },
  { key := { q := 15, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 19 48)) },
  { key := { q := 15, n := 20, r := 0 }
    lowerValue := 332525673007965087890625
    upperValue := 332525673007965087890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 20 0)) },
  { key := { q := 15, n := 20, r := 1 }
    lowerValue := 1183365384369982519184
    upperValue := 11133452162933349609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 1))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 20, r := 2 }
    lowerValue := 8862388342740467682
    upperValue := 313882340625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 2))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 20, r := 3 }
    lowerValue := 105040802597597512
    upperValue := 20925489375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 3))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 20, r := 4 }
    lowerValue := 1756688484468780
    upperValue := 1395032625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 4))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) }]

end CoveringCodes.Database
