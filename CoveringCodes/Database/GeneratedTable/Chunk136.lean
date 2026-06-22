import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 136. Do not edit manually.

def precomputedTable_chunk_136 : Array AnyBoundEntry := #[
  { key := { q := 14, n := 7, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 7 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 7 43)) },
  { key := { q := 14, n := 7, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 7 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 7 44)) },
  { key := { q := 14, n := 7, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 7 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 7 45)) },
  { key := { q := 14, n := 7, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 7 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 7 46)) },
  { key := { q := 14, n := 7, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 7 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 7 47)) },
  { key := { q := 14, n := 7, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 7 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 7 48)) },
  { key := { q := 14, n := 8, r := 0 }
    lowerValue := 1475789056
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 8 0)) },
  { key := { q := 14, n := 8, r := 1 }
    lowerValue := 14055134
    upperValue := 52706752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 1))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 8, r := 2 }
    lowerValue := 305105
    upperValue := 2107392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 2))
    upperTrace := (.lengthenFreeN 2 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 8, r := 3 }
    lowerValue := 11542
    upperValue := 150528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 3))
    upperTrace := (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 8, r := 4 }
    lowerValue := 694
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 4))
    upperTrace := (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 8, r := 5 }
    lowerValue := 65
    upperValue := 1372
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1)))) },
  { key := { q := 14, n := 8, r := 6 }
    lowerValue := 14
    upperValue := 98
    lowerTrace := (.radiusBack (by decide : 6 ≤ 7) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 8 7)))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 14) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 8, r := 7 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 8 7))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 8 7)) },
  { key := { q := 14, n := 8, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 8)) },
  { key := { q := 14, n := 8, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 9)) },
  { key := { q := 14, n := 8, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 10)) },
  { key := { q := 14, n := 8, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 11)) },
  { key := { q := 14, n := 8, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 12)) },
  { key := { q := 14, n := 8, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 13)) },
  { key := { q := 14, n := 8, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 14)) },
  { key := { q := 14, n := 8, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 15)) },
  { key := { q := 14, n := 8, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 16)) },
  { key := { q := 14, n := 8, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 17)) },
  { key := { q := 14, n := 8, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 18)) },
  { key := { q := 14, n := 8, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 19)) },
  { key := { q := 14, n := 8, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 20)) },
  { key := { q := 14, n := 8, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 21)) },
  { key := { q := 14, n := 8, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 22)) },
  { key := { q := 14, n := 8, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 23)) },
  { key := { q := 14, n := 8, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 24)) },
  { key := { q := 14, n := 8, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 25)) },
  { key := { q := 14, n := 8, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 26)) },
  { key := { q := 14, n := 8, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 27)) },
  { key := { q := 14, n := 8, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 28)) },
  { key := { q := 14, n := 8, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 29)) },
  { key := { q := 14, n := 8, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 30)) },
  { key := { q := 14, n := 8, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 31)) },
  { key := { q := 14, n := 8, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 32)) },
  { key := { q := 14, n := 8, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 33)) },
  { key := { q := 14, n := 8, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 34)) },
  { key := { q := 14, n := 8, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 35)) },
  { key := { q := 14, n := 8, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 36)) },
  { key := { q := 14, n := 8, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 37)) },
  { key := { q := 14, n := 8, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 38)) },
  { key := { q := 14, n := 8, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 39)) },
  { key := { q := 14, n := 8, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 40)) },
  { key := { q := 14, n := 8, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 41)) },
  { key := { q := 14, n := 8, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 42)) },
  { key := { q := 14, n := 8, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 43)) },
  { key := { q := 14, n := 8, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 44)) },
  { key := { q := 14, n := 8, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 45)) },
  { key := { q := 14, n := 8, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 46)) },
  { key := { q := 14, n := 8, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 47)) },
  { key := { q := 14, n := 8, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 8 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 8 48)) },
  { key := { q := 14, n := 9, r := 0 }
    lowerValue := 20661046784
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 9 0)) },
  { key := { q := 14, n := 9, r := 1 }
    lowerValue := 175093617
    upperValue := 737894528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 1))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 9, r := 2 }
    lowerValue := 3331353
    upperValue := 29503488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 2))
    upperTrace := (.lengthenFreeN 3 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 9, r := 3 }
    lowerValue := 108315
    upperValue := 2107392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 3))
    upperTrace := (.lengthenFreeN 2 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 9, r := 4 }
    lowerValue := 5453
    upperValue := 150528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 4))
    upperTrace := (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 9, r := 5 }
    lowerValue := 409
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 5))
    upperTrace := (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 9, r := 6 }
    lowerValue := 46
    upperValue := 1372
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 6))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1)))) },
  { key := { q := 14, n := 9, r := 7 }
    lowerValue := 14
    upperValue := 98
    lowerTrace := (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 9 8)))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 14) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 9, r := 8 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 9 8))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 9 8)) },
  { key := { q := 14, n := 9, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 9)) },
  { key := { q := 14, n := 9, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 10)) },
  { key := { q := 14, n := 9, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 11)) },
  { key := { q := 14, n := 9, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 12)) },
  { key := { q := 14, n := 9, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 13)) },
  { key := { q := 14, n := 9, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 14)) },
  { key := { q := 14, n := 9, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 15)) },
  { key := { q := 14, n := 9, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 16)) },
  { key := { q := 14, n := 9, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 17)) },
  { key := { q := 14, n := 9, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 18)) },
  { key := { q := 14, n := 9, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 19)) },
  { key := { q := 14, n := 9, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 20)) },
  { key := { q := 14, n := 9, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 21)) },
  { key := { q := 14, n := 9, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 22)) },
  { key := { q := 14, n := 9, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 23)) },
  { key := { q := 14, n := 9, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 24)) },
  { key := { q := 14, n := 9, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 25)) },
  { key := { q := 14, n := 9, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 26)) },
  { key := { q := 14, n := 9, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 27)) },
  { key := { q := 14, n := 9, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 28)) },
  { key := { q := 14, n := 9, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 29)) },
  { key := { q := 14, n := 9, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 30)) },
  { key := { q := 14, n := 9, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 31)) },
  { key := { q := 14, n := 9, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 32)) },
  { key := { q := 14, n := 9, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 33)) },
  { key := { q := 14, n := 9, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 34)) },
  { key := { q := 14, n := 9, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 35)) },
  { key := { q := 14, n := 9, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 36)) },
  { key := { q := 14, n := 9, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 37)) },
  { key := { q := 14, n := 9, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 38)) },
  { key := { q := 14, n := 9, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 39)) },
  { key := { q := 14, n := 9, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 40)) },
  { key := { q := 14, n := 9, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 41)) },
  { key := { q := 14, n := 9, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 42)) },
  { key := { q := 14, n := 9, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 43)) },
  { key := { q := 14, n := 9, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 44)) },
  { key := { q := 14, n := 9, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 45)) },
  { key := { q := 14, n := 9, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 46)) },
  { key := { q := 14, n := 9, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 47)) },
  { key := { q := 14, n := 9, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 9 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 9 48)) },
  { key := { q := 14, n := 10, r := 0 }
    lowerValue := 289254654976
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 10 0)) },
  { key := { q := 14, n := 10, r := 1 }
    lowerValue := 2208050802
    upperValue := 10330523392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 1))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 10, r := 2 }
    lowerValue := 37390726
    upperValue := 413048832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 2))
    upperTrace := (.lengthenFreeN 4 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 10, r := 3 }
    lowerValue := 1065882
    upperValue := 29503488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 3))
    upperTrace := (.lengthenFreeN 3 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 10, r := 4 }
    lowerValue := 46140
    upperValue := 2107392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 4))
    upperTrace := (.lengthenFreeN 2 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 10, r := 5 }
    lowerValue := 2898
    upperValue := 150528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 5))
    upperTrace := (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 10, r := 6 }
    lowerValue := 260
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 6))
    upperTrace := (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 10, r := 7 }
    lowerValue := 34
    upperValue := 1372
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 7))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1)))) },
  { key := { q := 14, n := 10, r := 8 }
    lowerValue := 14
    upperValue := 98
    lowerTrace := (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 10 9)))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 14) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 10, r := 9 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 10 9))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 10 9)) },
  { key := { q := 14, n := 10, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 10)) },
  { key := { q := 14, n := 10, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 11)) },
  { key := { q := 14, n := 10, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 12)) },
  { key := { q := 14, n := 10, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 13)) },
  { key := { q := 14, n := 10, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 14)) },
  { key := { q := 14, n := 10, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 15)) },
  { key := { q := 14, n := 10, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 16)) },
  { key := { q := 14, n := 10, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 17)) },
  { key := { q := 14, n := 10, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 18)) },
  { key := { q := 14, n := 10, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 19)) },
  { key := { q := 14, n := 10, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 20)) },
  { key := { q := 14, n := 10, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 21)) },
  { key := { q := 14, n := 10, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 22)) },
  { key := { q := 14, n := 10, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 23)) },
  { key := { q := 14, n := 10, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 24)) },
  { key := { q := 14, n := 10, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 25)) },
  { key := { q := 14, n := 10, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 26)) },
  { key := { q := 14, n := 10, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 27)) },
  { key := { q := 14, n := 10, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 28)) },
  { key := { q := 14, n := 10, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 29)) },
  { key := { q := 14, n := 10, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 30)) },
  { key := { q := 14, n := 10, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 31)) },
  { key := { q := 14, n := 10, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 32)) },
  { key := { q := 14, n := 10, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 33)) },
  { key := { q := 14, n := 10, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 34)) },
  { key := { q := 14, n := 10, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 35)) },
  { key := { q := 14, n := 10, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 36)) },
  { key := { q := 14, n := 10, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 37)) },
  { key := { q := 14, n := 10, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 38)) },
  { key := { q := 14, n := 10, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 39)) },
  { key := { q := 14, n := 10, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 40)) },
  { key := { q := 14, n := 10, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 41)) },
  { key := { q := 14, n := 10, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 42)) },
  { key := { q := 14, n := 10, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 43)) },
  { key := { q := 14, n := 10, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 44)) },
  { key := { q := 14, n := 10, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 45)) },
  { key := { q := 14, n := 10, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 46)) },
  { key := { q := 14, n := 10, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 47)) },
  { key := { q := 14, n := 10, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 10 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 10 48)) },
  { key := { q := 14, n := 11, r := 0 }
    lowerValue := 4049565169664
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 11 0)) },
  { key := { q := 14, n := 11, r := 1 }
    lowerValue := 28121980345
    upperValue := 144627327488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 1))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 11, r := 2 }
    lowerValue := 429024809
    upperValue := 5782683648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 2))
    upperTrace := (.lengthenFreeN 5 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 11, r := 3 }
    lowerValue := 10887567
    upperValue := 413048832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 3))
    upperTrace := (.lengthenFreeN 4 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 11, r := 4 }
    lowerValue := 413345
    upperValue := 29503488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 4))
    upperTrace := (.lengthenFreeN 3 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 11, r := 5 }
    lowerValue := 22333
    upperValue := 2107392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 5))
    upperTrace := (.lengthenFreeN 2 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 11, r := 6 }
    lowerValue := 1680
    upperValue := 150528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 6))
    upperTrace := (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 11, r := 7 }
    lowerValue := 176
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 7))
    upperTrace := (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 11, r := 8 }
    lowerValue := 26
    upperValue := 1372
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 8))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1)))) },
  { key := { q := 14, n := 11, r := 9 }
    lowerValue := 14
    upperValue := 98
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 11 10)))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 14) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 11, r := 10 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 11 10)) },
  { key := { q := 14, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 11)) },
  { key := { q := 14, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 12)) },
  { key := { q := 14, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 13)) },
  { key := { q := 14, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 14)) },
  { key := { q := 14, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 15)) },
  { key := { q := 14, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 16)) },
  { key := { q := 14, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 17)) },
  { key := { q := 14, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 18)) },
  { key := { q := 14, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 19)) },
  { key := { q := 14, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 20)) },
  { key := { q := 14, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 21)) },
  { key := { q := 14, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 22)) },
  { key := { q := 14, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 23)) },
  { key := { q := 14, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 24)) },
  { key := { q := 14, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 25)) },
  { key := { q := 14, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 26)) },
  { key := { q := 14, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 27)) },
  { key := { q := 14, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 28)) },
  { key := { q := 14, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 29)) },
  { key := { q := 14, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 30)) },
  { key := { q := 14, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 31)) },
  { key := { q := 14, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 32)) },
  { key := { q := 14, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 33)) },
  { key := { q := 14, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 34)) },
  { key := { q := 14, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 35)) },
  { key := { q := 14, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 36)) },
  { key := { q := 14, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 37)) },
  { key := { q := 14, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 38)) },
  { key := { q := 14, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 39)) },
  { key := { q := 14, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 40)) },
  { key := { q := 14, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 41)) },
  { key := { q := 14, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 42)) },
  { key := { q := 14, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 43)) },
  { key := { q := 14, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 44)) },
  { key := { q := 14, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 45)) },
  { key := { q := 14, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 46)) },
  { key := { q := 14, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 47)) },
  { key := { q := 14, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 11 48)) },
  { key := { q := 14, n := 12, r := 0 }
    lowerValue := 56693912375296
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 12 0)) },
  { key := { q := 14, n := 12, r := 1 }
    lowerValue := 361107722136
    upperValue := 2024782584832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 1))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 12, r := 2 }
    lowerValue := 5012281176
    upperValue := 80957571072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 2))
    upperTrace := (.lengthenFreeN 6 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 12, r := 3 }
    lowerValue := 114613965
    upperValue := 5782683648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 3))
    upperTrace := (.lengthenFreeN 5 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 12, r := 4 }
    lowerValue := 3874561
    upperValue := 413048832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 4))
    upperTrace := (.lengthenFreeN 4 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 12, r := 5 }
    lowerValue := 183656
    upperValue := 29503488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 5))
    upperTrace := (.lengthenFreeN 3 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 12, r := 6 }
    lowerValue := 11889
    upperValue := 2107392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 6))
    upperTrace := (.lengthenFreeN 2 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 12, r := 7 }
    lowerValue := 1041
    upperValue := 150528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 7))
    upperTrace := (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 12, r := 8 }
    lowerValue := 124
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 8))
    upperTrace := (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 12, r := 9 }
    lowerValue := 21
    upperValue := 1372
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 9))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1)))) },
  { key := { q := 14, n := 12, r := 10 }
    lowerValue := 14
    upperValue := 98
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 12 11)))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 14) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 12, r := 11 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 12 11)) },
  { key := { q := 14, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 12)) },
  { key := { q := 14, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 13)) },
  { key := { q := 14, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 14)) },
  { key := { q := 14, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 15)) },
  { key := { q := 14, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 16)) },
  { key := { q := 14, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 17)) },
  { key := { q := 14, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 18)) },
  { key := { q := 14, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 19)) },
  { key := { q := 14, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 20)) },
  { key := { q := 14, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 21)) },
  { key := { q := 14, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 22)) },
  { key := { q := 14, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 23)) },
  { key := { q := 14, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 24)) },
  { key := { q := 14, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 25)) },
  { key := { q := 14, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 26)) },
  { key := { q := 14, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 27)) },
  { key := { q := 14, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 28)) },
  { key := { q := 14, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 29)) },
  { key := { q := 14, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 30)) },
  { key := { q := 14, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 31)) },
  { key := { q := 14, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 32)) },
  { key := { q := 14, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 33)) },
  { key := { q := 14, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 34)) },
  { key := { q := 14, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 35)) },
  { key := { q := 14, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 36)) },
  { key := { q := 14, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 37)) },
  { key := { q := 14, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 38)) },
  { key := { q := 14, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 39)) },
  { key := { q := 14, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 40)) },
  { key := { q := 14, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 41)) },
  { key := { q := 14, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 42)) },
  { key := { q := 14, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 43)) },
  { key := { q := 14, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 44)) },
  { key := { q := 14, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 45)) },
  { key := { q := 14, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 46)) },
  { key := { q := 14, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 12 47)) }]

end CoveringCodes.Database
