import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 79. Do not edit manually.

def precomputedTable_chunk_79 : Array AnyBoundEntry := #[
  { key := { q := 8, n := 11, r := 3 }
    lowerValue := 144690
    upperValue := 1912896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 3))
    upperTrace := (.lengthenFreeN 2 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 11, r := 4 }
    lowerValue := 10086
    upperValue := 239112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 4))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 8, n := 11, r := 5 }
    lowerValue := 997
    upperValue := 29889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 5))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 8) (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 11, r := 6 }
    lowerValue := 137
    upperValue := 5832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 6))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 8, n := 11, r := 7 }
    lowerValue := 26
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 7))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 11, r := 8 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 10 9))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 11, r := 9 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 11 10)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9)) },
  { key := { q := 8, n := 11, r := 10 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 10)) },
  { key := { q := 8, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 11)) },
  { key := { q := 8, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 12)) },
  { key := { q := 8, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 13)) },
  { key := { q := 8, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 14)) },
  { key := { q := 8, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 15)) },
  { key := { q := 8, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 16)) },
  { key := { q := 8, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 17)) },
  { key := { q := 8, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 18)) },
  { key := { q := 8, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 19)) },
  { key := { q := 8, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 20)) },
  { key := { q := 8, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 21)) },
  { key := { q := 8, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 22)) },
  { key := { q := 8, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 23)) },
  { key := { q := 8, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 24)) },
  { key := { q := 8, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 25)) },
  { key := { q := 8, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 26)) },
  { key := { q := 8, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 27)) },
  { key := { q := 8, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 28)) },
  { key := { q := 8, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 29)) },
  { key := { q := 8, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 30)) },
  { key := { q := 8, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 31)) },
  { key := { q := 8, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 32)) },
  { key := { q := 8, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 33)) },
  { key := { q := 8, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 34)) },
  { key := { q := 8, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 35)) },
  { key := { q := 8, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 36)) },
  { key := { q := 8, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 37)) },
  { key := { q := 8, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 38)) },
  { key := { q := 8, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 39)) },
  { key := { q := 8, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 40)) },
  { key := { q := 8, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 41)) },
  { key := { q := 8, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 42)) },
  { key := { q := 8, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 43)) },
  { key := { q := 8, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 44)) },
  { key := { q := 8, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 45)) },
  { key := { q := 8, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 46)) },
  { key := { q := 8, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 47)) },
  { key := { q := 8, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 11 48)) },
  { key := { q := 8, n := 12, r := 0 }
    lowerValue := 68719476736
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 12 0)) },
  { key := { q := 8, n := 12, r := 1 }
    lowerValue := 808464433
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 1))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))) },
  { key := { q := 8, n := 12, r := 2 }
    lowerValue := 20704874
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 2))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 8, n := 12, r := 3 }
    lowerValue := 872308
    upperValue := 15303168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 3))
    upperTrace := (.lengthenFreeN 3 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 12, r := 4 }
    lowerValue := 54227
    upperValue := 1912896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 4))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 12, r := 5 }
    lowerValue := 4714
    upperValue := 239112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 5))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 8, n := 12, r := 6 }
    lowerValue := 558
    upperValue := 29889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 6))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 8) (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 12, r := 7 }
    lowerValue := 89
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 7))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 12, r := 8 }
    lowerValue := 19
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 8))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 12, r := 9 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 11 10))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 12, r := 10 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 12 11)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10)) },
  { key := { q := 8, n := 12, r := 11 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 11)) },
  { key := { q := 8, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 12)) },
  { key := { q := 8, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 13)) },
  { key := { q := 8, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 14)) },
  { key := { q := 8, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 15)) },
  { key := { q := 8, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 16)) },
  { key := { q := 8, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 17)) },
  { key := { q := 8, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 18)) },
  { key := { q := 8, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 19)) },
  { key := { q := 8, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 20)) },
  { key := { q := 8, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 21)) },
  { key := { q := 8, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 22)) },
  { key := { q := 8, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 23)) },
  { key := { q := 8, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 24)) },
  { key := { q := 8, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 25)) },
  { key := { q := 8, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 26)) },
  { key := { q := 8, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 27)) },
  { key := { q := 8, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 28)) },
  { key := { q := 8, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 29)) },
  { key := { q := 8, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 30)) },
  { key := { q := 8, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 31)) },
  { key := { q := 8, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 32)) },
  { key := { q := 8, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 33)) },
  { key := { q := 8, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 34)) },
  { key := { q := 8, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 35)) },
  { key := { q := 8, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 36)) },
  { key := { q := 8, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 37)) },
  { key := { q := 8, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 38)) },
  { key := { q := 8, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 39)) },
  { key := { q := 8, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 40)) },
  { key := { q := 8, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 41)) },
  { key := { q := 8, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 42)) },
  { key := { q := 8, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 43)) },
  { key := { q := 8, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 44)) },
  { key := { q := 8, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 45)) },
  { key := { q := 8, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 46)) },
  { key := { q := 8, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 47)) },
  { key := { q := 8, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 12 48)) },
  { key := { q := 8, n := 13, r := 0 }
    lowerValue := 549755813888
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 13 0)) },
  { key := { q := 8, n := 13, r := 1 }
    lowerValue := 5975606673
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 1))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))) },
  { key := { q := 8, n := 13, r := 2 }
    lowerValue := 140458819
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 2))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 8, n := 13, r := 3 }
    lowerValue := 5389129
    upperValue := 122425344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 3))
    upperTrace := (.lengthenFreeN 4 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 13, r := 4 }
    lowerValue := 302276
    upperValue := 15303168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 4))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 13, r := 5 }
    lowerValue := 23445
    upperValue := 1912896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 13, r := 6 }
    lowerValue := 2440
    upperValue := 239112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 6))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 8, n := 13, r := 7 }
    lowerValue := 336
    upperValue := 29889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 7))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 8) (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 13, r := 8 }
    lowerValue := 61
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 8))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 13, r := 9 }
    lowerValue := 15
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 9))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 13, r := 10 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 12 11))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 13, r := 11 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 13 12)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11)) },
  { key := { q := 8, n := 13, r := 12 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 12)) },
  { key := { q := 8, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 13)) },
  { key := { q := 8, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 14)) },
  { key := { q := 8, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 15)) },
  { key := { q := 8, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 16)) },
  { key := { q := 8, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 17)) },
  { key := { q := 8, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 18)) },
  { key := { q := 8, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 19)) },
  { key := { q := 8, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 20)) },
  { key := { q := 8, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 21)) },
  { key := { q := 8, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 22)) },
  { key := { q := 8, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 23)) },
  { key := { q := 8, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 24)) },
  { key := { q := 8, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 25)) },
  { key := { q := 8, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 26)) },
  { key := { q := 8, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 27)) },
  { key := { q := 8, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 28)) },
  { key := { q := 8, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 29)) },
  { key := { q := 8, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 30)) },
  { key := { q := 8, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 31)) },
  { key := { q := 8, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 32)) },
  { key := { q := 8, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 33)) },
  { key := { q := 8, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 34)) },
  { key := { q := 8, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 35)) },
  { key := { q := 8, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 36)) },
  { key := { q := 8, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 37)) },
  { key := { q := 8, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 38)) },
  { key := { q := 8, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 39)) },
  { key := { q := 8, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 40)) },
  { key := { q := 8, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 41)) },
  { key := { q := 8, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 42)) },
  { key := { q := 8, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 43)) },
  { key := { q := 8, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 44)) },
  { key := { q := 8, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 45)) },
  { key := { q := 8, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 46)) },
  { key := { q := 8, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 47)) },
  { key := { q := 8, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 13 48)) },
  { key := { q := 8, n := 14, r := 0 }
    lowerValue := 4398046511104
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 14 0)) },
  { key := { q := 8, n := 14, r := 1 }
    lowerValue := 44424712234
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 1))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))) },
  { key := { q := 8, n := 14, r := 2 }
    lowerValue := 964907089
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 2))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 8, n := 14, r := 3 }
    lowerValue := 33985369
    upperValue := 979402752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 3))
    upperTrace := (.lengthenFreeN 5 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 14, r := 4 }
    lowerValue := 1736430
    upperValue := 122425344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 4))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 14, r := 5 }
    lowerValue := 121559
    upperValue := 15303168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 5))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 14, r := 6 }
    lowerValue := 11293
    upperValue := 1912896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 6))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 14, r := 7 }
    lowerValue := 1368
    upperValue := 239112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 7))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 8, n := 14, r := 8 }
    lowerValue := 215
    upperValue := 29889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 8))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 8) (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 14, r := 9 }
    lowerValue := 44
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 9))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 14, r := 10 }
    lowerValue := 12
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 10))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 14, r := 11 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 13 12))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 14, r := 12 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 14 13)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12)) },
  { key := { q := 8, n := 14, r := 13 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 13)) },
  { key := { q := 8, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 14)) },
  { key := { q := 8, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 15)) },
  { key := { q := 8, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 16)) },
  { key := { q := 8, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 17)) },
  { key := { q := 8, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 18)) },
  { key := { q := 8, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 19)) },
  { key := { q := 8, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 20)) },
  { key := { q := 8, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 21)) },
  { key := { q := 8, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 22)) },
  { key := { q := 8, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 23)) },
  { key := { q := 8, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 24)) },
  { key := { q := 8, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 25)) },
  { key := { q := 8, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 26)) },
  { key := { q := 8, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 27)) },
  { key := { q := 8, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 28)) },
  { key := { q := 8, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 29)) },
  { key := { q := 8, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 30)) },
  { key := { q := 8, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 31)) },
  { key := { q := 8, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 32)) },
  { key := { q := 8, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 33)) },
  { key := { q := 8, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 34)) },
  { key := { q := 8, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 35)) },
  { key := { q := 8, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 36)) },
  { key := { q := 8, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 37)) },
  { key := { q := 8, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 38)) },
  { key := { q := 8, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 39)) },
  { key := { q := 8, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 40)) },
  { key := { q := 8, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 41)) },
  { key := { q := 8, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 42)) },
  { key := { q := 8, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 43)) },
  { key := { q := 8, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 44)) },
  { key := { q := 8, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 45)) },
  { key := { q := 8, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 46)) },
  { key := { q := 8, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 47)) },
  { key := { q := 8, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 14 48)) },
  { key := { q := 8, n := 15, r := 0 }
    lowerValue := 35184372088832
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 15 0)) },
  { key := { q := 8, n := 15, r := 1 }
    lowerValue := 331928038574
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 1))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))) },
  { key := { q := 8, n := 15, r := 2 }
    lowerValue := 6700508873
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 2))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 8, n := 15, r := 3 }
    lowerValue := 218108385
    upperValue := 7835222016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 3))
    upperTrace := (.lengthenFreeN 6 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 15, r := 4 }
    lowerValue := 10231939
    upperValue := 979402752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 4))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 15, r := 5 }
    lowerValue := 652649
    upperValue := 122425344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 5))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 15, r := 6 }
    lowerValue := 54741
    upperValue := 15303168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 6))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 15, r := 7 }
    lowerValue := 5922
    upperValue := 1912896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 4 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 15, r := 8 }
    lowerValue := 818
    upperValue := 239112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 8))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 8, n := 15, r := 9 }
    lowerValue := 144
    upperValue := 29889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 9))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 8) (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 15, r := 10 }
    lowerValue := 33
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 10))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 15, r := 11 }
    lowerValue := 10
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 11))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 15, r := 12 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 14 13))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 15, r := 13 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 15 14)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13)) },
  { key := { q := 8, n := 15, r := 14 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 14)) },
  { key := { q := 8, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 15)) },
  { key := { q := 8, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 16)) },
  { key := { q := 8, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 17)) },
  { key := { q := 8, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 18)) },
  { key := { q := 8, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 19)) },
  { key := { q := 8, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 20)) },
  { key := { q := 8, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 21)) },
  { key := { q := 8, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 22)) },
  { key := { q := 8, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 23)) },
  { key := { q := 8, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 24)) },
  { key := { q := 8, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 25)) },
  { key := { q := 8, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 26)) },
  { key := { q := 8, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 27)) },
  { key := { q := 8, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 28)) },
  { key := { q := 8, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 29)) },
  { key := { q := 8, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 30)) },
  { key := { q := 8, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 31)) },
  { key := { q := 8, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 32)) },
  { key := { q := 8, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 33)) },
  { key := { q := 8, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 34)) },
  { key := { q := 8, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 35)) },
  { key := { q := 8, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 36)) },
  { key := { q := 8, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 37)) },
  { key := { q := 8, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 38)) },
  { key := { q := 8, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 39)) },
  { key := { q := 8, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 40)) },
  { key := { q := 8, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 41)) },
  { key := { q := 8, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 42)) },
  { key := { q := 8, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 43)) },
  { key := { q := 8, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 44)) },
  { key := { q := 8, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 45)) },
  { key := { q := 8, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 46)) },
  { key := { q := 8, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 47)) },
  { key := { q := 8, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 15 48)) },
  { key := { q := 8, n := 16, r := 0 }
    lowerValue := 281474976710656
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 16 0)) },
  { key := { q := 8, n := 16, r := 1 }
    lowerValue := 2490928997440
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 1))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))) },
  { key := { q := 8, n := 16, r := 2 }
    lowerValue := 46967291292
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 2))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 8, n := 16, r := 3 }
    lowerValue := 1421066863
    upperValue := 62681776128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 3))
    upperTrace := (.lengthenFreeN 7 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 16, r := 4 }
    lowerValue := 61620309
    upperValue := 7835222016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 16, r := 5 }
    lowerValue := 3609539
    upperValue := 979402752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 5))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 16, r := 6 }
    lowerValue := 275926
    upperValue := 122425344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 16, r := 7 }
    lowerValue := 26958
    upperValue := 15303168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 4 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) }]

end CoveringCodes.Database
