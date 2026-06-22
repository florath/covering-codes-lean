import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 129. Do not edit manually.

def precomputedTable_chunk_129 : Array AnyBoundEntry := #[
  { key := { q := 13, n := 21, r := 8 }
    lowerValue := 2690434432
    upperValue := 114019577258496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 8))
    upperTrace := (.lengthenFreeN 9 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 21, r := 9 }
    lowerValue := 153604591
    upperValue := 8770736712192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 9))
    upperTrace := (.lengthenFreeN 8 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 21, r := 10 }
    lowerValue := 10536839
    upperValue := 674672054784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 10))
    upperTrace := (.lengthenFreeN 7 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 21, r := 11 }
    lowerValue := 865319
    upperValue := 51897850368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 11))
    upperTrace := (.lengthenFreeN 6 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 21, r := 12 }
    lowerValue := 85013
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 12))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 21, r := 13 }
    lowerValue := 10012
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 13))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 21, r := 14 }
    lowerValue := 1421
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 14))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 21, r := 15 }
    lowerValue := 245
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 15))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 21, r := 16 }
    lowerValue := 52
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 16))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 21, r := 17 }
    lowerValue := 14
    upperValue := 2197
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 17))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 21, r := 18 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 20 19))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 21, r := 19 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19)) },
  { key := { q := 13, n := 21, r := 20 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 20)) },
  { key := { q := 13, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 21)) },
  { key := { q := 13, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 22)) },
  { key := { q := 13, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 23)) },
  { key := { q := 13, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 24)) },
  { key := { q := 13, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 25)) },
  { key := { q := 13, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 26)) },
  { key := { q := 13, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 27)) },
  { key := { q := 13, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 28)) },
  { key := { q := 13, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 29)) },
  { key := { q := 13, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 30)) },
  { key := { q := 13, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 31)) },
  { key := { q := 13, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 32)) },
  { key := { q := 13, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 33)) },
  { key := { q := 13, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 34)) },
  { key := { q := 13, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 35)) },
  { key := { q := 13, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 36)) },
  { key := { q := 13, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 37)) },
  { key := { q := 13, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 38)) },
  { key := { q := 13, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 39)) },
  { key := { q := 13, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 40)) },
  { key := { q := 13, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 41)) },
  { key := { q := 13, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 42)) },
  { key := { q := 13, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 43)) },
  { key := { q := 13, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 44)) },
  { key := { q := 13, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 45)) },
  { key := { q := 13, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 46)) },
  { key := { q := 13, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 47)) },
  { key := { q := 13, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 21 48)) },
  { key := { q := 13, n := 22, r := 0 }
    lowerValue := 3211838877954855105157369
    upperValue := 3211838877954855105157369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 22 0)) },
  { key := { q := 13, n := 22, r := 1 }
    lowerValue := 12120146709263604170406
    upperValue := 124263224681912919407545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 1))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 22, r := 2 }
    lowerValue := 95792862237312628029
    upperValue := 7154559381937549650432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 2))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 22, r := 3 }
    lowerValue := 1191932187811791111
    upperValue := 550350721687503819264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 3))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 22, r := 4 }
    lowerValue := 20804963818209512
    upperValue := 42334670899038755328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 4))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 22, r := 5 }
    lowerValue := 478870021323737
    upperValue := 3256513146079904256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 5))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 22, r := 6 }
    lowerValue := 13994919632852
    upperValue := 250501011236915712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 6))
    upperTrace := (.lengthenFreeN 12 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 22, r := 7 }
    lowerValue := 506567215401
    upperValue := 19269308556685824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 7))
    upperTrace := (.lengthenFreeN 11 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 22, r := 8 }
    lowerValue := 22329922672
    upperValue := 1482254504360448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 8))
    upperTrace := (.lengthenFreeN 10 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 22, r := 9 }
    lowerValue := 1184999548
    upperValue := 114019577258496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 9))
    upperTrace := (.lengthenFreeN 9 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 22, r := 10 }
    lowerValue := 75132440
    upperValue := 8770736712192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 10))
    upperTrace := (.lengthenFreeN 8 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 22, r := 11 }
    lowerValue := 5665709
    upperValue := 674672054784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 11))
    upperTrace := (.lengthenFreeN 7 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 22, r := 12 }
    lowerValue := 507204
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 12))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 22, r := 13 }
    lowerValue := 53933
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 13))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 22, r := 14 }
    lowerValue := 6833
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 14))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 22, r := 15 }
    lowerValue := 1037
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 15))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 22, r := 16 }
    lowerValue := 191
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 16))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 22, r := 17 }
    lowerValue := 43
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 17))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 22, r := 18 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 20 19)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 22, r := 19 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 21 20))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 22, r := 20 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20)) },
  { key := { q := 13, n := 22, r := 21 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 21)) },
  { key := { q := 13, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 22)) },
  { key := { q := 13, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 23)) },
  { key := { q := 13, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 24)) },
  { key := { q := 13, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 25)) },
  { key := { q := 13, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 26)) },
  { key := { q := 13, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 27)) },
  { key := { q := 13, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 28)) },
  { key := { q := 13, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 29)) },
  { key := { q := 13, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 30)) },
  { key := { q := 13, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 31)) },
  { key := { q := 13, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 32)) },
  { key := { q := 13, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 33)) },
  { key := { q := 13, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 34)) },
  { key := { q := 13, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 35)) },
  { key := { q := 13, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 36)) },
  { key := { q := 13, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 37)) },
  { key := { q := 13, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 38)) },
  { key := { q := 13, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 39)) },
  { key := { q := 13, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 40)) },
  { key := { q := 13, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 41)) },
  { key := { q := 13, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 42)) },
  { key := { q := 13, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 43)) },
  { key := { q := 13, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 44)) },
  { key := { q := 13, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 45)) },
  { key := { q := 13, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 46)) },
  { key := { q := 13, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 47)) },
  { key := { q := 13, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 22 48)) },
  { key := { q := 13, n := 23, r := 0 }
    lowerValue := 41753905413413116367045797
    upperValue := 41753905413413116367045797
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 23 0)) },
  { key := { q := 13, n := 23, r := 1 }
    lowerValue := 150736120626040131288974
    upperValue := 1615421920864867952298085
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 1))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 23, r := 2 }
    lowerValue := 1137429660666678917079
    upperValue := 93009271965188145455616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 2))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 23, r := 3 }
    lowerValue := 13482061950144968293
    upperValue := 7154559381937549650432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 3))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 23, r := 4 }
    lowerValue := 223624599491195397
    upperValue := 550350721687503819264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 4))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 23, r := 5 }
    lowerValue := 4877985160898498
    upperValue := 42334670899038755328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 5))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 23, r := 6 }
    lowerValue := 134696192156365
    upperValue := 3256513146079904256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 6))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 23, r := 7 }
    lowerValue := 4591164395037
    upperValue := 250501011236915712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 7))
    upperTrace := (.lengthenFreeN 12 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 23, r := 8 }
    lowerValue := 189859130803
    upperValue := 19269308556685824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 8))
    upperTrace := (.lengthenFreeN 11 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 23, r := 9 }
    lowerValue := 9411576097
    upperValue := 1482254504360448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 9))
    upperTrace := (.lengthenFreeN 10 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 23, r := 10 }
    lowerValue := 554692318
    upperValue := 114019577258496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 10))
    upperTrace := (.lengthenFreeN 9 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 23, r := 11 }
    lowerValue := 38665347
    upperValue := 8770736712192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 11))
    upperTrace := (.lengthenFreeN 8 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 23, r := 12 }
    lowerValue := 3178794
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 12))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 23, r := 13 }
    lowerValue := 308051
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 13))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 23, r := 14 }
    lowerValue := 35243
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 14))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 23, r := 15 }
    lowerValue := 4778
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 15))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 23, r := 16 }
    lowerValue := 773
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 16))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 23, r := 17 }
    lowerValue := 151
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 23, r := 18 }
    lowerValue := 36
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 23, r := 19 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 21 20)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 23, r := 20 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 22 21))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 23, r := 21 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21)) },
  { key := { q := 13, n := 23, r := 22 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 22)) },
  { key := { q := 13, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 23)) },
  { key := { q := 13, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 24)) },
  { key := { q := 13, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 25)) },
  { key := { q := 13, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 26)) },
  { key := { q := 13, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 27)) },
  { key := { q := 13, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 28)) },
  { key := { q := 13, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 29)) },
  { key := { q := 13, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 30)) },
  { key := { q := 13, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 31)) },
  { key := { q := 13, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 32)) },
  { key := { q := 13, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 33)) },
  { key := { q := 13, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 34)) },
  { key := { q := 13, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 35)) },
  { key := { q := 13, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 36)) },
  { key := { q := 13, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 37)) },
  { key := { q := 13, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 38)) },
  { key := { q := 13, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 39)) },
  { key := { q := 13, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 40)) },
  { key := { q := 13, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 41)) },
  { key := { q := 13, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 42)) },
  { key := { q := 13, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 43)) },
  { key := { q := 13, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 44)) },
  { key := { q := 13, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 45)) },
  { key := { q := 13, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 46)) },
  { key := { q := 13, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 47)) },
  { key := { q := 13, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 23 48)) },
  { key := { q := 13, n := 24, r := 0 }
    lowerValue := 542800770374370512771595361
    upperValue := 542800770374370512771595361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 24 0)) },
  { key := { q := 13, n := 24, r := 1 }
    lowerValue := 1878203357696783781216593
    upperValue := 21000484971243283379875105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 1))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 24, r := 2 }
    lowerValue := 13558833221951153117968
    upperValue := 1209120535547445890923008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 2))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 24, r := 3 }
    lowerValue := 153441697008024161881
    upperValue := 93009271965188145455616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 3))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 24, r := 4 }
    lowerValue := 2424535622353627983
    upperValue := 7154559381937549650432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 4))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 24, r := 5 }
    lowerValue := 50258243667282907
    upperValue := 550350721687503819264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 5))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 24, r := 6 }
    lowerValue := 1315237429316188
    upperValue := 42334670899038755328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 6))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 24, r := 7 }
    lowerValue := 42359206046585
    upperValue := 3256513146079904256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 7))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 24, r := 8 }
    lowerValue := 1649583114609
    upperValue := 250501011236915712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 8))
    upperTrace := (.lengthenFreeN 12 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 24, r := 9 }
    lowerValue := 76715679002
    upperValue := 19269308556685824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 9))
    upperTrace := (.lengthenFreeN 11 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 24, r := 10 }
    lowerValue := 4223759448
    upperValue := 1482254504360448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 10))
    upperTrace := (.lengthenFreeN 10 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 24, r := 11 }
    lowerValue := 273703991
    upperValue := 114019577258496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 11))
    upperTrace := (.lengthenFreeN 9 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 24, r := 12 }
    lowerValue := 20801991
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 12))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 24, r := 13 }
    lowerValue := 1851526
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 13))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 24, r := 14 }
    lowerValue := 193082
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 14))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 24, r := 15 }
    lowerValue := 23646
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 15))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 24, r := 16 }
    lowerValue := 3416
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 16))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 24, r := 17 }
    lowerValue := 586
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 24, r := 18 }
    lowerValue := 121
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 24, r := 19 }
    lowerValue := 31
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 24, r := 20 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 22 21)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 24, r := 21 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 23 22))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 24, r := 22 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22)) },
  { key := { q := 13, n := 24, r := 23 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 23)) },
  { key := { q := 13, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 24)) },
  { key := { q := 13, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 25)) },
  { key := { q := 13, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 26)) },
  { key := { q := 13, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 27)) },
  { key := { q := 13, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 28)) },
  { key := { q := 13, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 29)) },
  { key := { q := 13, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 30)) },
  { key := { q := 13, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 31)) },
  { key := { q := 13, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 32)) },
  { key := { q := 13, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 33)) },
  { key := { q := 13, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 34)) },
  { key := { q := 13, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 35)) },
  { key := { q := 13, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 36)) },
  { key := { q := 13, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 37)) },
  { key := { q := 13, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 38)) },
  { key := { q := 13, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 39)) },
  { key := { q := 13, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 40)) },
  { key := { q := 13, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 41)) },
  { key := { q := 13, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 42)) },
  { key := { q := 13, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 43)) },
  { key := { q := 13, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 44)) },
  { key := { q := 13, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 45)) },
  { key := { q := 13, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 46)) },
  { key := { q := 13, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 47)) },
  { key := { q := 13, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 24 48)) },
  { key := { q := 13, n := 25, r := 0 }
    lowerValue := 7056410014866816666030739693
    upperValue := 7056410014866816666030739693
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 25 0)) },
  { key := { q := 13, n := 25, r := 1 }
    lowerValue := 23443222640753543740965913
    upperValue := 273006304626162683938376365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 1))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 25, r := 2 }
    lowerValue := 162212593155716343670968
    upperValue := 15718566962116796581999104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 2))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 25, r := 3 }
    lowerValue := 1756242877777928492024
    upperValue := 1209120535547445890923008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 3))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 25, r := 4 }
    lowerValue := 26495156498095246236
    upperValue := 93009271965188145455616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 4))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 25, r := 5 }
    lowerValue := 523209688253582873
    upperValue := 7154559381937549650432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 5))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 25, r := 6 }
    lowerValue := 13011895548002172
    upperValue := 550350721687503819264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 6))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 25, r := 7 }
    lowerValue := 397171564150754
    upperValue := 42334670899038755328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 7))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 25, r := 8 }
    lowerValue := 14614866791693
    upperValue := 3256513146079904256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 8))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 25, r := 9 }
    lowerValue := 640087910523
    upperValue := 250501011236915712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 9))
    upperTrace := (.lengthenFreeN 12 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 25, r := 10 }
    lowerValue := 33063934558
    upperValue := 19269308556685824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 10))
    upperTrace := (.lengthenFreeN 11 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 25, r := 11 }
    lowerValue := 2001646592
    upperValue := 1482254504360448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 11))
    upperTrace := (.lengthenFreeN 10 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 25, r := 12 }
    lowerValue := 141434549
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 12))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 25, r := 13 }
    lowerValue := 11638701
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 13))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 25, r := 14 }
    lowerValue := 1114893
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 14))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 25, r := 15 }
    lowerValue := 124472
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 15))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 25, r := 16 }
    lowerValue := 16244
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 16))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 25, r := 17 }
    lowerValue := 2490
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 25, r := 18 }
    lowerValue := 452
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 25, r := 19 }
    lowerValue := 98
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 25, r := 20 }
    lowerValue := 26
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 25, r := 21 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 23 22)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 25, r := 22 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 24 23))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 25, r := 23 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23)) },
  { key := { q := 13, n := 25, r := 24 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 24)) },
  { key := { q := 13, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 25)) },
  { key := { q := 13, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 26)) },
  { key := { q := 13, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 27)) },
  { key := { q := 13, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 28)) },
  { key := { q := 13, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 29)) },
  { key := { q := 13, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 30)) },
  { key := { q := 13, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 31)) },
  { key := { q := 13, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 32)) },
  { key := { q := 13, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 33)) },
  { key := { q := 13, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 34)) },
  { key := { q := 13, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 35)) },
  { key := { q := 13, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 36)) },
  { key := { q := 13, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 37)) },
  { key := { q := 13, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 38)) },
  { key := { q := 13, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 39)) },
  { key := { q := 13, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 40)) },
  { key := { q := 13, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 41)) },
  { key := { q := 13, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 42)) },
  { key := { q := 13, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 43)) },
  { key := { q := 13, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 44)) },
  { key := { q := 13, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 45)) },
  { key := { q := 13, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 46)) },
  { key := { q := 13, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 47)) },
  { key := { q := 13, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 25 48)) },
  { key := { q := 13, n := 26, r := 0 }
    lowerValue := 91733330193268616658399616009
    upperValue := 91733330193268616658399616009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 26 0)) },
  { key := { q := 13, n := 26, r := 1 }
    lowerValue := 293077732246864589962938071
    upperValue := 3549081960140114891198892745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 1))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 26, r := 2 }
    lowerValue := 1947091677313450993534686
    upperValue := 204341370507518355565988352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 2))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 26, r := 3 }
    lowerValue := 20205966544572245472193
    upperValue := 15718566962116796581999104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 3))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 26, r := 4 }
    lowerValue := 291639925981366556446
    upperValue := 1209120535547445890923008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 4))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 26, r := 5 }
    lowerValue := 5498706073200992340
    upperValue := 93009271965188145455616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 5))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 26, r := 6 }
    lowerValue := 130276043824818356
    upperValue := 7154559381937549650432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 6))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 26, r := 7 }
    lowerValue := 3779029498824400
    upperValue := 550350721687503819264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 7))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 26, r := 8 }
    lowerValue := 131796224037565
    upperValue := 42334670899038755328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 8))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 26, r := 9 }
    lowerValue := 5454468115413
    upperValue := 3256513146079904256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 9))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 26, r := 10 }
    lowerValue := 265350207091
    upperValue := 250501011236915712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 10))
    upperTrace := (.lengthenFreeN 12 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 26, r := 11 }
    lowerValue := 15072081003
    upperValue := 19269308556685824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 11))
    upperTrace := (.lengthenFreeN 11 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 26, r := 12 }
    lowerValue := 994988887
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 12))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) }]

end CoveringCodes.Database
