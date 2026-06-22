import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 130. Do not edit manually.

def precomputedTable_chunk_130 : Array AnyBoundEntry := #[
  { key := { q := 13, n := 26, r := 13 }
    lowerValue := 76127949
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 13))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 26, r := 14 }
    lowerValue := 6742774
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 14))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 26, r := 15 }
    lowerValue := 691587
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 15))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 26, r := 16 }
    lowerValue := 82295
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 16))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 26, r := 17 }
    lowerValue := 11400
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 26, r := 18 }
    lowerValue := 1848
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 26, r := 19 }
    lowerValue := 354
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 26, r := 20 }
    lowerValue := 81
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 26, r := 21 }
    lowerValue := 23
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 26, r := 22 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 24 23)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 26, r := 23 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 25 24))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 26, r := 24 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 26 24)) },
  { key := { q := 13, n := 26, r := 25 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 26 25)) },
  { key := { q := 13, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 26)) },
  { key := { q := 13, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 27)) },
  { key := { q := 13, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 28)) },
  { key := { q := 13, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 29)) },
  { key := { q := 13, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 30)) },
  { key := { q := 13, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 31)) },
  { key := { q := 13, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 32)) },
  { key := { q := 13, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 33)) },
  { key := { q := 13, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 34)) },
  { key := { q := 13, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 35)) },
  { key := { q := 13, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 36)) },
  { key := { q := 13, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 37)) },
  { key := { q := 13, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 38)) },
  { key := { q := 13, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 39)) },
  { key := { q := 13, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 40)) },
  { key := { q := 13, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 41)) },
  { key := { q := 13, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 42)) },
  { key := { q := 13, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 43)) },
  { key := { q := 13, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 44)) },
  { key := { q := 13, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 45)) },
  { key := { q := 13, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 46)) },
  { key := { q := 13, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 47)) },
  { key := { q := 13, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 26 48)) },
  { key := { q := 13, n := 27, r := 0 }
    lowerValue := 1192533292512492016559195008117
    upperValue := 1192533292512492016559195008117
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 27 0)) },
  { key := { q := 13, n := 27, r := 1 }
    lowerValue := 3669333207730744666335984641
    upperValue := 46138065481821493585585605685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 1))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 27, r := 2 }
    lowerValue := 23443222640753543740965913
    upperValue := 2656437816597738622357848576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 2))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 27, r := 3 }
    lowerValue := 233588728138026030863251
    upperValue := 204341370507518355565988352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 3))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 27, r := 4 }
    lowerValue := 3231604266227481415371
    upperValue := 15718566962116796581999104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 4))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 27, r := 5 }
    lowerValue := 58293978500430104189
    upperValue := 1209120535547445890923008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 5))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 27, r := 6 }
    lowerValue := 1318680434376940530
    upperValue := 93009271965188145455616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 6))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 27, r := 7 }
    lowerValue := 36442095993699900
    upperValue := 7154559381937549650432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 7))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 27, r := 8 }
    lowerValue := 1207854109539197
    upperValue := 550350721687503819264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 8))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 27, r := 9 }
    lowerValue := 47378582691290
    upperValue := 42334670899038755328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 9))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 27, r := 10 }
    lowerValue := 2178052161272
    upperValue := 3256513146079904256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 10))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 27, r := 11 }
    lowerValue := 116517635511
    upperValue := 250501011236915712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 11))
    upperTrace := (.lengthenFreeN 12 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 27, r := 12 }
    lowerValue := 7217368877
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 12))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 27, r := 13 }
    lowerValue := 515950482
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 13))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 27, r := 14 }
    lowerValue := 42492508
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 14))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 27, r := 15 }
    lowerValue := 4030217
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 15))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 27, r := 16 }
    lowerValue := 440635
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 16))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 27, r := 17 }
    lowerValue := 55666
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 27, r := 18 }
    lowerValue := 8157
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 27, r := 19 }
    lowerValue := 1395
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 27, r := 20 }
    lowerValue := 280
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 27, r := 21 }
    lowerValue := 67
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 27, r := 22 }
    lowerValue := 20
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 27, r := 23 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 25 24)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 27, r := 24 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 26 25))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24)) },
  { key := { q := 13, n := 27, r := 25 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 25)) },
  { key := { q := 13, n := 27, r := 26 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 26)) },
  { key := { q := 13, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 27)) },
  { key := { q := 13, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 28)) },
  { key := { q := 13, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 29)) },
  { key := { q := 13, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 30)) },
  { key := { q := 13, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 31)) },
  { key := { q := 13, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 32)) },
  { key := { q := 13, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 33)) },
  { key := { q := 13, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 34)) },
  { key := { q := 13, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 35)) },
  { key := { q := 13, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 36)) },
  { key := { q := 13, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 37)) },
  { key := { q := 13, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 38)) },
  { key := { q := 13, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 39)) },
  { key := { q := 13, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 40)) },
  { key := { q := 13, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 41)) },
  { key := { q := 13, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 42)) },
  { key := { q := 13, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 43)) },
  { key := { q := 13, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 44)) },
  { key := { q := 13, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 45)) },
  { key := { q := 13, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 46)) },
  { key := { q := 13, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 47)) },
  { key := { q := 13, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 27 48)) },
  { key := { q := 13, n := 28, r := 0 }
    lowerValue := 15502932802662396215269535105521
    upperValue := 15502932802662396215269535105521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 28 0)) },
  { key := { q := 13, n := 28, r := 1 }
    lowerValue := 46002767960422540698129184290
    upperValue := 599794851263679416612612873905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 1))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 28, r := 2 }
    lowerValue := 283060359010798010101873964
    upperValue := 34533691615770602090652031488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 2))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 28, r := 3 }
    lowerValue := 2712343359464715539551788
    upperValue := 2656437816597738622357848576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 3))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 28, r := 4 }
    lowerValue := 36029427244553039457608
    upperValue := 204341370507518355565988352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 4))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 28, r := 5 }
    lowerValue := 622970660841972290319
    upperValue := 15718566962116796581999104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 5))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 28, r := 6 }
    lowerValue := 13482861624905277480
    upperValue := 1209120535547445890923008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 6))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 28, r := 7 }
    lowerValue := 355766716733352512
    upperValue := 93009271965188145455616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 7))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 28, r := 8 }
    lowerValue := 11233973635501005
    upperValue := 7154559381937549650432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 8))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 28, r := 9 }
    lowerValue := 418793413214458
    upperValue := 550350721687503819264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 9))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 28, r := 10 }
    lowerValue := 18248051561526
    upperValue := 42334670899038755328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 10))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 28, r := 11 }
    lowerValue := 922515658288
    upperValue := 3256513146079904256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 11))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 28, r := 12 }
    lowerValue := 53820566991
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 12))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 28, r := 13 }
    lowerValue := 3610282488
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 13))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 28, r := 14 }
    lowerValue := 277827606
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 14))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 28, r := 15 }
    lowerValue := 24503875
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 15))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 28, r := 16 }
    lowerValue := 2477625
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 16))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 28, r := 17 }
    lowerValue := 287624
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 28, r := 18 }
    lowerValue := 38443
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 28, r := 19 }
    lowerValue := 5941
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 28, r := 20 }
    lowerValue := 1068
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 28, r := 21 }
    lowerValue := 225
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 28, r := 22 }
    lowerValue := 56
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 28, r := 23 }
    lowerValue := 17
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 28, r := 24 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 26 25)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 28, r := 25 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 27 26))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25)) },
  { key := { q := 13, n := 28, r := 26 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 26)) },
  { key := { q := 13, n := 28, r := 27 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 27)) },
  { key := { q := 13, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 28)) },
  { key := { q := 13, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 29)) },
  { key := { q := 13, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 30)) },
  { key := { q := 13, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 31)) },
  { key := { q := 13, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 32)) },
  { key := { q := 13, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 33)) },
  { key := { q := 13, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 34)) },
  { key := { q := 13, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 35)) },
  { key := { q := 13, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 36)) },
  { key := { q := 13, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 37)) },
  { key := { q := 13, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 38)) },
  { key := { q := 13, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 39)) },
  { key := { q := 13, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 40)) },
  { key := { q := 13, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 41)) },
  { key := { q := 13, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 42)) },
  { key := { q := 13, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 43)) },
  { key := { q := 13, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 44)) },
  { key := { q := 13, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 45)) },
  { key := { q := 13, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 46)) },
  { key := { q := 13, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 47)) },
  { key := { q := 13, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 28 48)) },
  { key := { q := 13, n := 29, r := 0 }
    lowerValue := 201538126434611150798503956371773
    upperValue := 201538126434611150798503956371773
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 29 0)) },
  { key := { q := 13, n := 29, r := 1 }
    lowerValue := 577473141646450288820928241753
    upperValue := 7797333066427832415963967360765
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 1))
    upperTrace := (.lengthenFreeN 26 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 29, r := 2 }
    lowerValue := 3426761539703996578962201493
    upperValue := 448937991005017827178476409344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 2))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 29, r := 3 }
    lowerValue := 31624117094522711439174941
    upperValue := 34533691615770602090652031488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 3))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 29, r := 4 }
    lowerValue := 403986303928383083745334
    upperValue := 2656437816597738622357848576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 4))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 29, r := 5 }
    lowerValue := 6707001151760750818505
    upperValue := 204341370507518355565988352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 5))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 29, r := 6 }
    lowerValue := 139140448117820489566
    upperValue := 15718566962116796581999104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 6))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 29, r := 7 }
    lowerValue := 3512707062941607113
    upperValue := 1209120535547445890923008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 7))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 29, r := 8 }
    lowerValue := 105910053341890137
    upperValue := 93009271965188145455616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 8))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 29, r := 9 }
    lowerValue := 3761573507846563
    upperValue := 7154559381937549650432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 9))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 29, r := 10 }
    lowerValue := 155774220167340
    upperValue := 550350721687503819264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 10))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 29, r := 11 }
    lowerValue := 7464413856604
    upperValue := 42334670899038755328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 11))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 29, r := 12 }
    lowerValue := 411546514784
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 12))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 29, r := 13 }
    lowerValue := 26002614453
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 13))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 29, r := 14 }
    lowerValue := 1877746029
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 14))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 29, r := 15 }
    lowerValue := 154757990
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 15))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 29, r := 16 }
    lowerValue := 14552279
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 16))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 29, r := 17 }
    lowerValue := 1562479
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 29, r := 18 }
    lowerValue := 191927
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 29, r := 19 }
    lowerValue := 27055
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 29, r := 20 }
    lowerValue := 4397
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 29, r := 21 }
    lowerValue := 829
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 29, r := 22 }
    lowerValue := 183
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 29, r := 23 }
    lowerValue := 48
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 29, r := 24 }
    lowerValue := 15
    upperValue := 2197
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 24))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 29, r := 25 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 27 26)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 29, r := 26 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 28 27))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26)) },
  { key := { q := 13, n := 29, r := 27 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 27)) },
  { key := { q := 13, n := 29, r := 28 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 28)) },
  { key := { q := 13, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 29)) },
  { key := { q := 13, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 30)) },
  { key := { q := 13, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 31)) },
  { key := { q := 13, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 32)) },
  { key := { q := 13, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 33)) },
  { key := { q := 13, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 34)) },
  { key := { q := 13, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 35)) },
  { key := { q := 13, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 36)) },
  { key := { q := 13, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 37)) },
  { key := { q := 13, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 38)) },
  { key := { q := 13, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 39)) },
  { key := { q := 13, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 40)) },
  { key := { q := 13, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 41)) },
  { key := { q := 13, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 42)) },
  { key := { q := 13, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 43)) },
  { key := { q := 13, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 44)) },
  { key := { q := 13, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 45)) },
  { key := { q := 13, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 46)) },
  { key := { q := 13, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 47)) },
  { key := { q := 13, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 29 48)) },
  { key := { q := 13, n := 30, r := 0 }
    lowerValue := 2619995643649944960380551432833049
    upperValue := 2619995643649944960380551432833049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 30 0)) },
  { key := { q := 13, n := 30, r := 1 }
    lowerValue := 7257605661080179945652497043859
    upperValue := 101365329863561821407531575689945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 1))
    upperTrace := (.lengthenFreeN 27 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 30, r := 2 }
    lowerValue := 41586572334565244367241018918
    upperValue := 5836193883065231753320193321472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 2))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 30, r := 3 }
    lowerValue := 370124835919282838198324156
    upperValue := 448937991005017827178476409344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 3))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 30, r := 4 }
    lowerValue := 4553752126095123302751932
    upperValue := 34533691615770602090652031488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 4))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 30, r := 5 }
    lowerValue := 72706158838143839588694
    upperValue := 2656437816597738622357848576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 5))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 30, r := 6 }
    lowerValue := 1448281113650661252599
    upperValue := 204341370507518355565988352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 6))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 30, r := 7 }
    lowerValue := 35047561712861196435
    upperValue := 15718566962116796581999104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 7))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 30, r := 8 }
    lowerValue := 1011032463554733407
    upperValue := 1209120535547445890923008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 8))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 30, r := 9 }
    lowerValue := 34287231792135465
    upperValue := 93009271965188145455616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 9))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 30, r := 10 }
    lowerValue := 1352799523218231
    upperValue := 7154559381937549650432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 10))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 30, r := 11 }
    lowerValue := 61610334467947
    upperValue := 550350721687503819264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 11))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 30, r := 12 }
    lowerValue := 3219824691140
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 12))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 30, r := 13 }
    lowerValue := 192262245512
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 13))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 30, r := 14 }
    lowerValue := 13077872993
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 14))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 30, r := 15 }
    lowerValue := 1011488760
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 15))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 30, r := 16 }
    lowerValue := 88883915
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 16))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 30, r := 17 }
    lowerValue := 8876012
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 30, r := 18 }
    lowerValue := 1008500
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 30, r := 19 }
    lowerValue := 130672
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 30, r := 20 }
    lowerValue := 19374
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 30, r := 21 }
    lowerValue := 3303
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 30, r := 22 }
    lowerValue := 651
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 30, r := 23 }
    lowerValue := 150
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 30, r := 24 }
    lowerValue := 41
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 30, r := 25 }
    lowerValue := 14
    upperValue := 2197
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 25))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 30, r := 26 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 28 27)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 30, r := 27 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 29 28))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27)) },
  { key := { q := 13, n := 30, r := 28 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 28)) },
  { key := { q := 13, n := 30, r := 29 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 29)) },
  { key := { q := 13, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 30)) },
  { key := { q := 13, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 31)) },
  { key := { q := 13, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 32)) },
  { key := { q := 13, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 33)) },
  { key := { q := 13, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 34)) },
  { key := { q := 13, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 35)) },
  { key := { q := 13, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 36)) },
  { key := { q := 13, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 37)) },
  { key := { q := 13, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 38)) },
  { key := { q := 13, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 39)) },
  { key := { q := 13, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 40)) },
  { key := { q := 13, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 41)) },
  { key := { q := 13, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 42)) },
  { key := { q := 13, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 43)) },
  { key := { q := 13, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 44)) },
  { key := { q := 13, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 45)) },
  { key := { q := 13, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 46)) },
  { key := { q := 13, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 47)) },
  { key := { q := 13, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 30 48)) },
  { key := { q := 13, n := 31, r := 0 }
    lowerValue := 34059943367449284484947168626829637
    upperValue := 34059943367449284484947168626829637
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 31 0)) },
  { key := { q := 13, n := 31, r := 1 }
    lowerValue := 91313521092357331058839594173806
    upperValue := 1317749288226303678297910483969285
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 1))
    upperTrace := (.lengthenFreeN 28 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 31, r := 2 }
    lowerValue := 505843247255421331070161267534
    upperValue := 75870520479848012793162513179136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 2))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 31, r := 3 }
    lowerValue := 4347323292367586641231145704
    upperValue := 5836193883065231753320193321472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 3))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 31, r := 4 }
    lowerValue := 51583080274235321075210067
    upperValue := 448937991005017827178476409344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 4))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 31, r := 5 }
    lowerValue := 793206126054914989780000
    upperValue := 34533691615770602090652031488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 5))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 31, r := 6 }
    lowerValue := 15195408225141580968988
    upperValue := 2656437816597738622357848576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 6))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 31, r := 7 }
    lowerValue := 353084906501517010758
    upperValue := 204341370507518355565988352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 7))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 31, r := 8 }
    lowerValue := 9763572918754999138
    upperValue := 15718566962116796581999104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 8))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 31, r := 9 }
    lowerValue := 316807123281051100
    upperValue := 1209120535547445890923008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 9))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 31, r := 10 }
    lowerValue := 11935449349677620
    upperValue := 93009271965188145455616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 10))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 31, r := 11 }
    lowerValue := 517896570226478
    upperValue := 7154559381937549650432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 11))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 31, r := 12 }
    lowerValue := 25724824970453
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 12))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 31, r := 13 }
    lowerValue := 1456070332306
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 13))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 31, r := 14 }
    lowerValue := 93606136483
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 14))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 31, r := 15 }
    lowerValue := 6819771811
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 15))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 31, r := 16 }
    lowerValue := 562421658
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 31, r := 17 }
    lowerValue := 52489037
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) }]

end CoveringCodes.Database
