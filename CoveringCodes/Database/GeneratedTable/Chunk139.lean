import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 139. Do not edit manually.

def precomputedTable_chunk_139 : Array AnyBoundEntry := #[
  { key := { q := 14, n := 23, r := 9 }
    lowerValue := 25279928348
    upperValue := 3110066050301952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 9))
    upperTrace := (.lengthenFreeN 10 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 23, r := 10 }
    lowerValue := 1376405175
    upperValue := 222147575021568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 10))
    upperTrace := (.lengthenFreeN 9 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 23, r := 11 }
    lowerValue := 88645124
    upperValue := 15867683930112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 11))
    upperTrace := (.lengthenFreeN 8 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 23, r := 12 }
    lowerValue := 6734542
    upperValue := 1133405995008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 12))
    upperTrace := (.lengthenFreeN 7 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 23, r := 13 }
    lowerValue := 603221
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 13))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 23, r := 14 }
    lowerValue := 63806
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 14))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 23, r := 15 }
    lowerValue := 8001
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 15))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 23, r := 16 }
    lowerValue := 1197
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 16))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 23, r := 17 }
    lowerValue := 216
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 23, r := 18 }
    lowerValue := 48
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 23, r := 19 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 21 20)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 23, r := 20 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 22 21))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 23, r := 21 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21)) },
  { key := { q := 14, n := 23, r := 22 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 22)) },
  { key := { q := 14, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 23)) },
  { key := { q := 14, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 24)) },
  { key := { q := 14, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 25)) },
  { key := { q := 14, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 26)) },
  { key := { q := 14, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 27)) },
  { key := { q := 14, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 28)) },
  { key := { q := 14, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 29)) },
  { key := { q := 14, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 30)) },
  { key := { q := 14, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 31)) },
  { key := { q := 14, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 32)) },
  { key := { q := 14, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 33)) },
  { key := { q := 14, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 34)) },
  { key := { q := 14, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 35)) },
  { key := { q := 14, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 36)) },
  { key := { q := 14, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 37)) },
  { key := { q := 14, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 38)) },
  { key := { q := 14, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 39)) },
  { key := { q := 14, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 40)) },
  { key := { q := 14, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 41)) },
  { key := { q := 14, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 42)) },
  { key := { q := 14, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 43)) },
  { key := { q := 14, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 44)) },
  { key := { q := 14, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 45)) },
  { key := { q := 14, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 46)) },
  { key := { q := 14, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 47)) },
  { key := { q := 14, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 23 48)) },
  { key := { q := 14, n := 24, r := 0 }
    lowerValue := 3214199700417740936751087616
    upperValue := 3214199700417740936751087616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 24 0)) },
  { key := { q := 14, n := 24, r := 1 }
    lowerValue := 10269008627532718647767054
    upperValue := 114792846443490747741110272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 1))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 24, r := 2 }
    lowerValue := 68449852001144471255641
    upperValue := 4589801440472766257037312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 2))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 24, r := 3 }
    lowerValue := 715270362835343584776
    upperValue := 327842960033769018359808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 3))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 24, r := 4 }
    lowerValue := 10436293713288168344
    upperValue := 23417354288126358454272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 4))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 24, r := 5 }
    lowerValue := 199771004296120408
    upperValue := 1672668163437597032448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 5))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 24, r := 6 }
    lowerValue := 4827875565847638
    upperValue := 119476297388399788032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 6))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 24, r := 7 }
    lowerValue := 143598299492282
    upperValue := 8534021242028556288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 7))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 24, r := 8 }
    lowerValue := 5164787123660
    upperValue := 609572945859182592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 8))
    upperTrace := (.lengthenFreeN 12 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 24, r := 9 }
    lowerValue := 221856300075
    upperValue := 43540924704227328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 9))
    upperTrace := (.lengthenFreeN 11 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 24, r := 10 }
    lowerValue := 11283295843
    upperValue := 3110066050301952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 10))
    upperTrace := (.lengthenFreeN 10 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 24, r := 11 }
    lowerValue := 675485625
    upperValue := 222147575021568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 11))
    upperTrace := (.lengthenFreeN 9 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 24, r := 12 }
    lowerValue := 47435054
    upperValue := 15867683930112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 12))
    upperTrace := (.lengthenFreeN 8 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 24, r := 13 }
    lowerValue := 3901771
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 13))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 24, r := 14 }
    lowerValue := 376107
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 14))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 24, r := 15 }
    lowerValue := 42589
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 15))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 24, r := 16 }
    lowerValue := 5691
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 16))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 24, r := 17 }
    lowerValue := 904
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 24, r := 18 }
    lowerValue := 172
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 24, r := 19 }
    lowerValue := 40
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 24, r := 20 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 22 21)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 24, r := 21 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 23 22))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 24, r := 22 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22)) },
  { key := { q := 14, n := 24, r := 23 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 23)) },
  { key := { q := 14, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 24)) },
  { key := { q := 14, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 25)) },
  { key := { q := 14, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 26)) },
  { key := { q := 14, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 27)) },
  { key := { q := 14, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 28)) },
  { key := { q := 14, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 29)) },
  { key := { q := 14, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 30)) },
  { key := { q := 14, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 31)) },
  { key := { q := 14, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 32)) },
  { key := { q := 14, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 33)) },
  { key := { q := 14, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 34)) },
  { key := { q := 14, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 35)) },
  { key := { q := 14, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 36)) },
  { key := { q := 14, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 37)) },
  { key := { q := 14, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 38)) },
  { key := { q := 14, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 39)) },
  { key := { q := 14, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 40)) },
  { key := { q := 14, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 41)) },
  { key := { q := 14, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 42)) },
  { key := { q := 14, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 43)) },
  { key := { q := 14, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 44)) },
  { key := { q := 14, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 45)) },
  { key := { q := 14, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 46)) },
  { key := { q := 14, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 47)) },
  { key := { q := 14, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 24 48)) },
  { key := { q := 14, n := 25, r := 0 }
    lowerValue := 44998795805848373114515226624
    upperValue := 44998795805848373114515226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 25 0)) },
  { key := { q := 14, n := 25, r := 1 }
    lowerValue := 138033115968860040228574315
    upperValue := 1607099850208870468375543808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 1))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 25, r := 2 }
    lowerValue := 881879743774710404784135
    upperValue := 64257220166618727598522368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 2))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 25, r := 3 }
    lowerValue := 8816160848272235660820
    upperValue := 4589801440472766257037312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 3))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 25, r := 4 }
    lowerValue := 122813047224136810001
    upperValue := 327842960033769018359808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 4))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 25, r := 5 }
    lowerValue := 2239503940882974487
    upperValue := 23417354288126358454272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 5))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 25, r := 6 }
    lowerValue := 51431834548252168
    upperValue := 1672668163437597032448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 6))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 25, r := 7 }
    lowerValue := 1449790666373948
    upperValue := 119476297388399788032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 7))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 25, r := 8 }
    lowerValue := 49269900627562
    upperValue := 8534021242028556288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 8))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 25, r := 9 }
    lowerValue := 1993033824531
    upperValue := 609572945859182592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 9))
    upperTrace := (.lengthenFreeN 12 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 25, r := 10 }
    lowerValue := 95093788907
    upperValue := 43540924704227328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 10))
    upperTrace := (.lengthenFreeN 11 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 25, r := 11 }
    lowerValue := 5318013333
    upperValue := 3110066050301952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 11))
    upperTrace := (.lengthenFreeN 10 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 25, r := 12 }
    lowerValue := 347163074
    upperValue := 222147575021568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 12))
    upperTrace := (.lengthenFreeN 9 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 25, r := 13 }
    lowerValue := 26397520
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 13))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 25, r := 14 }
    lowerValue := 2336979
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 14))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 25, r := 15 }
    lowerValue := 241191
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 15))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 25, r := 16 }
    lowerValue := 29107
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 16))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 25, r := 17 }
    lowerValue := 4128
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 25, r := 18 }
    lowerValue := 693
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 25, r := 19 }
    lowerValue := 139
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 25, r := 20 }
    lowerValue := 34
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 25, r := 21 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 23 22)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 25, r := 22 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 24 23))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 25, r := 23 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23)) },
  { key := { q := 14, n := 25, r := 24 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 24)) },
  { key := { q := 14, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 25)) },
  { key := { q := 14, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 26)) },
  { key := { q := 14, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 27)) },
  { key := { q := 14, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 28)) },
  { key := { q := 14, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 29)) },
  { key := { q := 14, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 30)) },
  { key := { q := 14, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 31)) },
  { key := { q := 14, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 32)) },
  { key := { q := 14, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 33)) },
  { key := { q := 14, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 34)) },
  { key := { q := 14, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 35)) },
  { key := { q := 14, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 36)) },
  { key := { q := 14, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 37)) },
  { key := { q := 14, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 38)) },
  { key := { q := 14, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 39)) },
  { key := { q := 14, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 40)) },
  { key := { q := 14, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 41)) },
  { key := { q := 14, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 42)) },
  { key := { q := 14, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 43)) },
  { key := { q := 14, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 44)) },
  { key := { q := 14, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 45)) },
  { key := { q := 14, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 46)) },
  { key := { q := 14, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 47)) },
  { key := { q := 14, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 25 48)) },
  { key := { q := 14, n := 26, r := 0 }
    lowerValue := 629983141281877223603213172736
    upperValue := 629983141281877223603213172736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 26 0)) },
  { key := { q := 14, n := 26, r := 1 }
    lowerValue := 1858357348914092105024227649
    upperValue := 22499397902924186557257613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 1))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 26, r := 2 }
    lowerValue := 11399521230491408938969550
    upperValue := 899601082332662186379313152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 2))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 26, r := 3 }
    lowerValue := 109230528579264165949404
    upperValue := 64257220166618727598522368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 3))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 26, r := 4 }
    lowerValue := 1455752086868089631094
    upperValue := 4589801440472766257037312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 4))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 26, r := 5 }
    lowerValue := 25344898685592164530
    upperValue := 327842960033769018359808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 5))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 26, r := 6 }
    lowerValue := 554497878918941858
    upperValue := 23417354288126358454272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 6))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 26, r := 7 }
    lowerValue := 14853851505208717
    upperValue := 1672668163437597032448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 7))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 26, r := 8 }
    lowerValue := 478416920115056
    upperValue := 119476297388399788032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 8))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 26, r := 9 }
    lowerValue := 18286301694222
    upperValue := 8534021242028556288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 9))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 26, r := 10 }
    lowerValue := 821661190102
    upperValue := 609572945859182592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 10))
    upperTrace := (.lengthenFreeN 12 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 26, r := 11 }
    lowerValue := 43110444930
    upperValue := 43540924704227328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 11))
    upperTrace := (.lengthenFreeN 11 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 26, r := 12 }
    lowerValue := 2629101773
    upperValue := 3110066050301952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 12))
    upperTrace := (.lengthenFreeN 10 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 26, r := 13 }
    lowerValue := 185852074
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 13))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 26, r := 14 }
    lowerValue := 15211215
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 14))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 26, r := 15 }
    lowerValue := 1441985
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 15))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 26, r := 16 }
    lowerValue := 158630
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 16))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 26, r := 17 }
    lowerValue := 20322
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 26, r := 18 }
    lowerValue := 3049
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 26, r := 19 }
    lowerValue := 540
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 26, r := 20 }
    lowerValue := 114
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 26, r := 21 }
    lowerValue := 29
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 26, r := 22 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 24 23)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 26, r := 23 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 25 24))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 26, r := 24 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24)) },
  { key := { q := 14, n := 26, r := 25 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 25)) },
  { key := { q := 14, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 26)) },
  { key := { q := 14, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 27)) },
  { key := { q := 14, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 28)) },
  { key := { q := 14, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 29)) },
  { key := { q := 14, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 30)) },
  { key := { q := 14, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 31)) },
  { key := { q := 14, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 32)) },
  { key := { q := 14, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 33)) },
  { key := { q := 14, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 34)) },
  { key := { q := 14, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 35)) },
  { key := { q := 14, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 36)) },
  { key := { q := 14, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 37)) },
  { key := { q := 14, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 38)) },
  { key := { q := 14, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 39)) },
  { key := { q := 14, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 40)) },
  { key := { q := 14, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 41)) },
  { key := { q := 14, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 42)) },
  { key := { q := 14, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 43)) },
  { key := { q := 14, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 44)) },
  { key := { q := 14, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 45)) },
  { key := { q := 14, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 46)) },
  { key := { q := 14, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 47)) },
  { key := { q := 14, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 26 48)) },
  { key := { q := 14, n := 27, r := 0 }
    lowerValue := 8819763977946281130444984418304
    upperValue := 8819763977946281130444984418304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 27 0)) },
  { key := { q := 14, n := 27, r := 1 }
    lowerValue := 25056147664620116847855069371
    upperValue := 314991570640938611801606586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 1))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 27, r := 2 }
    lowerValue := 147806538820302678528011671
    upperValue := 12594415152657270609310384128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 2))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 27, r := 3 }
    lowerValue := 1359837403798377453237762
    upperValue := 899601082332662186379313152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 3))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 27, r := 4 }
    lowerValue := 17370923245802429835014
    upperValue := 64257220166618727598522368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 4))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 27, r := 5 }
    lowerValue := 289341305437534723230
    upperValue := 4589801440472766257037312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 5))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 27, r := 6 }
    lowerValue := 6043972994438380214
    upperValue := 327842960033769018359808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 6))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 27, r := 7 }
    lowerValue := 154240669575447111
    upperValue := 23417354288126358454272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 7))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 27, r := 8 }
    lowerValue := 4721083511060345
    upperValue := 1672668163437597032448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 8))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 27, r := 9 }
    lowerValue := 171026424917597
    upperValue := 119476297388399788032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 9))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 27, r := 10 }
    lowerValue := 7261556493892
    upperValue := 8534021242028556288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 10))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 27, r := 11 }
    lowerValue := 358810215257
    upperValue := 609572945859182592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 11))
    upperTrace := (.lengthenFreeN 12 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 27, r := 12 }
    lowerValue := 20530595871
    upperValue := 43540924704227328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 12))
    upperTrace := (.lengthenFreeN 11 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 27, r := 13 }
    lowerValue := 1355895714
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 13))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 27, r := 14 }
    lowerValue := 103177064
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 14))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 27, r := 15 }
    lowerValue := 9043220
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 15))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 27, r := 16 }
    lowerValue := 913878
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 16))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 27, r := 17 }
    lowerValue := 106741
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 27, r := 18 }
    lowerValue := 14467
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 27, r := 19 }
    lowerValue := 2288
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 27, r := 20 }
    lowerValue := 426
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 27, r := 21 }
    lowerValue := 94
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 27, r := 22 }
    lowerValue := 25
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 27, r := 23 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 25 24)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 27, r := 24 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 26 25))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 27, r := 25 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25)) },
  { key := { q := 14, n := 27, r := 26 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 26)) },
  { key := { q := 14, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 27)) },
  { key := { q := 14, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 28)) },
  { key := { q := 14, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 29)) },
  { key := { q := 14, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 30)) },
  { key := { q := 14, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 31)) },
  { key := { q := 14, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 32)) },
  { key := { q := 14, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 33)) },
  { key := { q := 14, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 34)) },
  { key := { q := 14, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 35)) },
  { key := { q := 14, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 36)) },
  { key := { q := 14, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 37)) },
  { key := { q := 14, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 38)) },
  { key := { q := 14, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 39)) },
  { key := { q := 14, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 40)) },
  { key := { q := 14, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 41)) },
  { key := { q := 14, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 42)) },
  { key := { q := 14, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 43)) },
  { key := { q := 14, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 44)) },
  { key := { q := 14, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 45)) },
  { key := { q := 14, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 46)) },
  { key := { q := 14, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 47)) },
  { key := { q := 14, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 27 48)) },
  { key := { q := 14, n := 28, r := 0 }
    lowerValue := 123476695691247935826229781856256
    upperValue := 123476695691247935826229781856256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 28 0)) },
  { key := { q := 14, n := 28, r := 1 }
    lowerValue := 338292316962323111852684333853
    upperValue := 4409881988973140565222492209152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 1))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 28, r := 2 }
    lowerValue := 1921906014152379657045928711
    upperValue := 176321812137201788530345377792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 2))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 28, r := 3 }
    lowerValue := 17004017381144333767198442
    upperValue := 12594415152657270609310384128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 3))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 28, r := 4 }
    lowerValue := 208558556209536476991395
    upperValue := 899601082332662186379313152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 4))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 28, r := 5 }
    lowerValue := 3329763348697351551111
    upperValue := 64257220166618727598522368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 5))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 28, r := 6 }
    lowerValue := 66545073275825979950
    upperValue := 4589801440472766257037312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 6))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 28, r := 7 }
    lowerValue := 1621444313912173662
    upperValue := 327842960033769018359808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 7))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 28, r := 8 }
    lowerValue := 47281379865585415
    upperValue := 23417354288126358454272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 8))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 28, r := 9 }
    lowerValue := 1627783030611777
    upperValue := 1672668163437597032448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 9))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 28, r := 10 }
    lowerValue := 65505298880590
    upperValue := 119476297388399788032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 10))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 28, r := 11 }
    lowerValue := 3058612776377
    upperValue := 8534021242028556288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 11))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 28, r := 12 }
    lowerValue := 164824857067
    upperValue := 609572945859182592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 12))
    upperTrace := (.lengthenFreeN 12 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 28, r := 13 }
    lowerValue := 10213601815
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 13))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) }]

end CoveringCodes.Database
