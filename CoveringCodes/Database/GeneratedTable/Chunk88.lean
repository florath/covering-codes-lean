import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 88. Do not edit manually.

def precomputedTable_chunk_88 : Array AnyBoundEntry := #[
  { key := { q := 9, n := 7, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 7 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 7 48)) },
  { key := { q := 9, n := 8, r := 0 }
    lowerValue := 43046721
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 8 0)) },
  { key := { q := 9, n := 8, r := 1 }
    lowerValue := 662258
    upperValue := 2421009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 1))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 8, r := 2 }
    lowerValue := 23181
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 2))
    upperTrace := (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)) },
  { key := { q := 9, n := 8, r := 3 }
    lowerValue := 1411
    upperValue := 29889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 8, r := 4 }
    lowerValue := 136
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 4))
    upperTrace := (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)) },
  { key := { q := 9, n := 8, r := 5 }
    lowerValue := 21
    upperValue := 369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1)))) },
  { key := { q := 9, n := 8, r := 6 }
    lowerValue := 9
    upperValue := 41
    lowerTrace := (.radiusBack (by decide : 6 ≤ 7) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 8 7)))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 9) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 8, r := 7 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 8 7))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 8 7)) },
  { key := { q := 9, n := 8, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 8)) },
  { key := { q := 9, n := 8, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 9)) },
  { key := { q := 9, n := 8, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 10)) },
  { key := { q := 9, n := 8, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 11)) },
  { key := { q := 9, n := 8, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 12)) },
  { key := { q := 9, n := 8, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 13)) },
  { key := { q := 9, n := 8, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 14)) },
  { key := { q := 9, n := 8, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 15)) },
  { key := { q := 9, n := 8, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 16)) },
  { key := { q := 9, n := 8, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 17)) },
  { key := { q := 9, n := 8, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 18)) },
  { key := { q := 9, n := 8, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 19)) },
  { key := { q := 9, n := 8, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 20)) },
  { key := { q := 9, n := 8, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 21)) },
  { key := { q := 9, n := 8, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 22)) },
  { key := { q := 9, n := 8, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 23)) },
  { key := { q := 9, n := 8, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 24)) },
  { key := { q := 9, n := 8, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 25)) },
  { key := { q := 9, n := 8, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 26)) },
  { key := { q := 9, n := 8, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 27)) },
  { key := { q := 9, n := 8, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 28)) },
  { key := { q := 9, n := 8, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 29)) },
  { key := { q := 9, n := 8, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 30)) },
  { key := { q := 9, n := 8, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 31)) },
  { key := { q := 9, n := 8, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 32)) },
  { key := { q := 9, n := 8, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 33)) },
  { key := { q := 9, n := 8, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 34)) },
  { key := { q := 9, n := 8, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 35)) },
  { key := { q := 9, n := 8, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 36)) },
  { key := { q := 9, n := 8, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 37)) },
  { key := { q := 9, n := 8, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 38)) },
  { key := { q := 9, n := 8, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 39)) },
  { key := { q := 9, n := 8, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 40)) },
  { key := { q := 9, n := 8, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 41)) },
  { key := { q := 9, n := 8, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 42)) },
  { key := { q := 9, n := 8, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 43)) },
  { key := { q := 9, n := 8, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 44)) },
  { key := { q := 9, n := 8, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 45)) },
  { key := { q := 9, n := 8, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 46)) },
  { key := { q := 9, n := 8, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 47)) },
  { key := { q := 9, n := 8, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 8 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 8 48)) },
  { key := { q := 9, n := 9, r := 0 }
    lowerValue := 387420489
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 9 0)) },
  { key := { q := 9, n := 9, r := 1 }
    lowerValue := 5307130
    upperValue := 21789081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 1))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 9, r := 2 }
    lowerValue := 162988
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 2))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 9, r := 3 }
    lowerValue := 8537
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 9, r := 4 }
    lowerValue := 690
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 4))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 9, r := 5 }
    lowerValue := 83
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 5))
    upperTrace := (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)) },
  { key := { q := 9, n := 9, r := 6 }
    lowerValue := 15
    upperValue := 369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 6))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1)))) },
  { key := { q := 9, n := 9, r := 7 }
    lowerValue := 9
    upperValue := 41
    lowerTrace := (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 9 8)))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 9) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 9, r := 8 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 9 8))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 9 8)) },
  { key := { q := 9, n := 9, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 9)) },
  { key := { q := 9, n := 9, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 10)) },
  { key := { q := 9, n := 9, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 11)) },
  { key := { q := 9, n := 9, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 12)) },
  { key := { q := 9, n := 9, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 13)) },
  { key := { q := 9, n := 9, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 14)) },
  { key := { q := 9, n := 9, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 15)) },
  { key := { q := 9, n := 9, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 16)) },
  { key := { q := 9, n := 9, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 17)) },
  { key := { q := 9, n := 9, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 18)) },
  { key := { q := 9, n := 9, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 19)) },
  { key := { q := 9, n := 9, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 20)) },
  { key := { q := 9, n := 9, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 21)) },
  { key := { q := 9, n := 9, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 22)) },
  { key := { q := 9, n := 9, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 23)) },
  { key := { q := 9, n := 9, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 24)) },
  { key := { q := 9, n := 9, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 25)) },
  { key := { q := 9, n := 9, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 26)) },
  { key := { q := 9, n := 9, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 27)) },
  { key := { q := 9, n := 9, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 28)) },
  { key := { q := 9, n := 9, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 29)) },
  { key := { q := 9, n := 9, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 30)) },
  { key := { q := 9, n := 9, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 31)) },
  { key := { q := 9, n := 9, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 32)) },
  { key := { q := 9, n := 9, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 33)) },
  { key := { q := 9, n := 9, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 34)) },
  { key := { q := 9, n := 9, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 35)) },
  { key := { q := 9, n := 9, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 36)) },
  { key := { q := 9, n := 9, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 37)) },
  { key := { q := 9, n := 9, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 38)) },
  { key := { q := 9, n := 9, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 39)) },
  { key := { q := 9, n := 9, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 40)) },
  { key := { q := 9, n := 9, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 41)) },
  { key := { q := 9, n := 9, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 42)) },
  { key := { q := 9, n := 9, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 43)) },
  { key := { q := 9, n := 9, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 44)) },
  { key := { q := 9, n := 9, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 45)) },
  { key := { q := 9, n := 9, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 46)) },
  { key := { q := 9, n := 9, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 47)) },
  { key := { q := 9, n := 9, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 9 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 9 48)) },
  { key := { q := 9, n := 10, r := 0 }
    lowerValue := 3486784401
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 10 0)) },
  { key := { q := 9, n := 10, r := 1 }
    lowerValue := 43046721
    upperValue := 196101729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 1))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 10, r := 2 }
    lowerValue := 1177570
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 2))
    upperTrace := (.lengthenFreeN 2 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 10, r := 3 }
    lowerValue := 54142
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 9, n := 10, r := 4 }
    lowerValue := 3772
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 4))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 10, r := 5 }
    lowerValue := 380
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 5))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 10, r := 6 }
    lowerValue := 55
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 6))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 10, r := 7 }
    lowerValue := 12
    upperValue := 369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 7))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1)))) },
  { key := { q := 9, n := 10, r := 8 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 10 9)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 10 8)) },
  { key := { q := 9, n := 10, r := 9 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 10 9))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 10 9)) },
  { key := { q := 9, n := 10, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 10)) },
  { key := { q := 9, n := 10, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 11)) },
  { key := { q := 9, n := 10, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 12)) },
  { key := { q := 9, n := 10, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 13)) },
  { key := { q := 9, n := 10, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 14)) },
  { key := { q := 9, n := 10, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 15)) },
  { key := { q := 9, n := 10, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 16)) },
  { key := { q := 9, n := 10, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 17)) },
  { key := { q := 9, n := 10, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 18)) },
  { key := { q := 9, n := 10, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 19)) },
  { key := { q := 9, n := 10, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 20)) },
  { key := { q := 9, n := 10, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 21)) },
  { key := { q := 9, n := 10, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 22)) },
  { key := { q := 9, n := 10, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 23)) },
  { key := { q := 9, n := 10, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 24)) },
  { key := { q := 9, n := 10, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 25)) },
  { key := { q := 9, n := 10, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 26)) },
  { key := { q := 9, n := 10, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 27)) },
  { key := { q := 9, n := 10, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 28)) },
  { key := { q := 9, n := 10, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 29)) },
  { key := { q := 9, n := 10, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 30)) },
  { key := { q := 9, n := 10, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 31)) },
  { key := { q := 9, n := 10, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 32)) },
  { key := { q := 9, n := 10, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 33)) },
  { key := { q := 9, n := 10, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 34)) },
  { key := { q := 9, n := 10, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 35)) },
  { key := { q := 9, n := 10, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 36)) },
  { key := { q := 9, n := 10, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 37)) },
  { key := { q := 9, n := 10, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 38)) },
  { key := { q := 9, n := 10, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 39)) },
  { key := { q := 9, n := 10, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 40)) },
  { key := { q := 9, n := 10, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 41)) },
  { key := { q := 9, n := 10, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 42)) },
  { key := { q := 9, n := 10, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 43)) },
  { key := { q := 9, n := 10, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 44)) },
  { key := { q := 9, n := 10, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 45)) },
  { key := { q := 9, n := 10, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 46)) },
  { key := { q := 9, n := 10, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 47)) },
  { key := { q := 9, n := 10, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 10 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 10 48)) },
  { key := { q := 9, n := 11, r := 0 }
    lowerValue := 31381059609
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 11 0)) },
  { key := { q := 9, n := 11, r := 1 }
    lowerValue := 352596176
    upperValue := 1764915561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 1))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 11, r := 2 }
    lowerValue := 8695223
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 2))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 11, r := 3 }
    lowerValue := 356243
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 11, r := 4 }
    lowerValue := 21796
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 4))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 9, n := 11, r := 5 }
    lowerValue := 1893
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 5))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 11, r := 6 }
    lowerValue := 228
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 6))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 9, n := 11, r := 7 }
    lowerValue := 38
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 7))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 11, r := 8 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 8))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 10 8))) },
  { key := { q := 9, n := 11, r := 9 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 11 10)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 11 9)) },
  { key := { q := 9, n := 11, r := 10 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 11 10)) },
  { key := { q := 9, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 11)) },
  { key := { q := 9, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 12)) },
  { key := { q := 9, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 13)) },
  { key := { q := 9, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 14)) },
  { key := { q := 9, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 15)) },
  { key := { q := 9, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 16)) },
  { key := { q := 9, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 17)) },
  { key := { q := 9, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 18)) },
  { key := { q := 9, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 19)) },
  { key := { q := 9, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 20)) },
  { key := { q := 9, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 21)) },
  { key := { q := 9, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 22)) },
  { key := { q := 9, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 23)) },
  { key := { q := 9, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 24)) },
  { key := { q := 9, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 25)) },
  { key := { q := 9, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 26)) },
  { key := { q := 9, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 27)) },
  { key := { q := 9, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 28)) },
  { key := { q := 9, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 29)) },
  { key := { q := 9, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 30)) },
  { key := { q := 9, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 31)) },
  { key := { q := 9, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 32)) },
  { key := { q := 9, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 33)) },
  { key := { q := 9, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 34)) },
  { key := { q := 9, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 35)) },
  { key := { q := 9, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 36)) },
  { key := { q := 9, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 37)) },
  { key := { q := 9, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 38)) },
  { key := { q := 9, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 39)) },
  { key := { q := 9, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 40)) },
  { key := { q := 9, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 41)) },
  { key := { q := 9, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 42)) },
  { key := { q := 9, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 43)) },
  { key := { q := 9, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 44)) },
  { key := { q := 9, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 45)) },
  { key := { q := 9, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 46)) },
  { key := { q := 9, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 47)) },
  { key := { q := 9, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 11 48)) },
  { key := { q := 9, n := 12, r := 0 }
    lowerValue := 282429536481
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 12 0)) },
  { key := { q := 9, n := 12, r := 1 }
    lowerValue := 2911644706
    upperValue := 15884240049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 1))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 12, r := 2 }
    lowerValue := 65362078
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 2))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 12, r := 3 }
    lowerValue := 2414733
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 12, r := 4 }
    lowerValue := 131701
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 4))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 12, r := 5 }
    lowerValue := 10053
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 5))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 9, n := 12, r := 6 }
    lowerValue := 1045
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 6))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 12, r := 7 }
    lowerValue := 147
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 7))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 9, n := 12, r := 8 }
    lowerValue := 28
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 8))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 12, r := 9 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 11 10))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 11 9))) },
  { key := { q := 9, n := 12, r := 10 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 12 11)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 12 10)) },
  { key := { q := 9, n := 12, r := 11 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 12 11)) },
  { key := { q := 9, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 12)) },
  { key := { q := 9, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 13)) },
  { key := { q := 9, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 14)) },
  { key := { q := 9, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 15)) },
  { key := { q := 9, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 16)) },
  { key := { q := 9, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 17)) },
  { key := { q := 9, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 18)) },
  { key := { q := 9, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 19)) },
  { key := { q := 9, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 20)) },
  { key := { q := 9, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 21)) },
  { key := { q := 9, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 22)) },
  { key := { q := 9, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 23)) },
  { key := { q := 9, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 24)) },
  { key := { q := 9, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 25)) },
  { key := { q := 9, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 26)) },
  { key := { q := 9, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 27)) },
  { key := { q := 9, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 28)) },
  { key := { q := 9, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 29)) },
  { key := { q := 9, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 30)) },
  { key := { q := 9, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 31)) },
  { key := { q := 9, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 32)) },
  { key := { q := 9, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 33)) },
  { key := { q := 9, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 34)) },
  { key := { q := 9, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 35)) },
  { key := { q := 9, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 36)) },
  { key := { q := 9, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 37)) },
  { key := { q := 9, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 38)) },
  { key := { q := 9, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 39)) },
  { key := { q := 9, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 40)) },
  { key := { q := 9, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 41)) },
  { key := { q := 9, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 42)) },
  { key := { q := 9, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 43)) },
  { key := { q := 9, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 44)) },
  { key := { q := 9, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 45)) },
  { key := { q := 9, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 46)) },
  { key := { q := 9, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 47)) },
  { key := { q := 9, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 12 48)) },
  { key := { q := 9, n := 13, r := 0 }
    lowerValue := 2541865828329
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 13 0)) },
  { key := { q := 9, n := 13, r := 1 }
    lowerValue := 24208245985
    upperValue := 142958160441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 1))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 13, r := 2 }
    lowerValue := 498698417
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 2))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 13, r := 3 }
    lowerValue := 16774782
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 3))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) }]

end CoveringCodes.Database
