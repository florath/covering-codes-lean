import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 158. Do not edit manually.

def precomputedTable_chunk_158 : Array AnyBoundEntry := #[
  { key := { q := 16, n := 22, r := 6 }
    lowerValue := 355622941293223
    upperValue := 3026418949592973312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 6))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 22, r := 7 }
    lowerValue := 10312968974661
    upperValue := 189151184349560832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 7))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 22, r := 8 }
    lowerValue := 364295085975
    upperValue := 11821949021847552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 8))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 22, r := 9 }
    lowerValue := 15495913268
    upperValue := 738871813865472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 9))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 22, r := 10 }
    lowerValue := 787772874
    upperValue := 46179488366592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 10))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 22, r := 11 }
    lowerValue := 47652115
    upperValue := 2886218022912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 11))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 22, r := 12 }
    lowerValue := 3423711
    upperValue := 180388626432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 12))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 22, r := 13 }
    lowerValue := 292389
    upperValue := 11274289152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 13))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 22, r := 14 }
    lowerValue := 29777
    upperValue := 704643072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 14))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 22, r := 15 }
    lowerValue := 3638
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 15))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 22, r := 16 }
    lowerValue := 539
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 16))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 22, r := 17 }
    lowerValue := 98
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 17))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 22, r := 18 }
    lowerValue := 23
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 18))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 22, r := 19 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 21 20))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 22, r := 20 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20)) },
  { key := { q := 16, n := 22, r := 21 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 21)) },
  { key := { q := 16, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 22)) },
  { key := { q := 16, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 23)) },
  { key := { q := 16, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 24)) },
  { key := { q := 16, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 25)) },
  { key := { q := 16, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 26)) },
  { key := { q := 16, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 27)) },
  { key := { q := 16, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 28)) },
  { key := { q := 16, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 29)) },
  { key := { q := 16, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 30)) },
  { key := { q := 16, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 31)) },
  { key := { q := 16, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 32)) },
  { key := { q := 16, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 33)) },
  { key := { q := 16, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 34)) },
  { key := { q := 16, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 35)) },
  { key := { q := 16, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 36)) },
  { key := { q := 16, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 37)) },
  { key := { q := 16, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 38)) },
  { key := { q := 16, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 39)) },
  { key := { q := 16, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 40)) },
  { key := { q := 16, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 41)) },
  { key := { q := 16, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 42)) },
  { key := { q := 16, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 43)) },
  { key := { q := 16, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 44)) },
  { key := { q := 16, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 45)) },
  { key := { q := 16, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 46)) },
  { key := { q := 16, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 47)) },
  { key := { q := 16, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 22 48)) },
  { key := { q := 16, n := 23, r := 0 }
    lowerValue := 4951760157141521099596496896
    upperValue := 4951760157141521099596496896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 23 0)) },
  { key := { q := 16, n := 23, r := 1 }
    lowerValue := 14311445540871448264729760
    upperValue := 77371252455336267181195264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 1))
    upperTrace := (.lengthenFreeN 13 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 23, r := 2 }
    lowerValue := 86461911912512809268155
    upperValue := 3173430276488401583603712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 2))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 23, r := 3 }
    lowerValue := 820589195197252732436
    upperValue := 198339392280525098975232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 3))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 23, r := 4 }
    lowerValue := 10899307871964465012
    upperValue := 12396212017532818685952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 4))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 23, r := 5 }
    lowerValue := 190404506489388478
    upperValue := 774763251095801167872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 5))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 23, r := 6 }
    lowerValue := 4211196241387465
    upperValue := 48422703193487572992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 6))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 23, r := 7 }
    lowerValue := 114988132943622
    upperValue := 3026418949592973312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 7))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 23, r := 8 }
    lowerValue := 3809971272290
    upperValue := 189151184349560832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 8))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 23, r := 9 }
    lowerValue := 151359556254
    upperValue := 11821949021847552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 9))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 23, r := 10 }
    lowerValue := 7151162158
    upperValue := 738871813865472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 10))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 23, r := 11 }
    lowerValue := 399735687
    upperValue := 46179488366592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 11))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 23, r := 12 }
    lowerValue := 26365129
    upperValue := 2886218022912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 12))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 23, r := 13 }
    lowerValue := 2050937
    upperValue := 180388626432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 13))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 23, r := 14 }
    lowerValue := 188491
    upperValue := 11274289152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 14))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 23, r := 15 }
    lowerValue := 20549
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 15))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 23, r := 16 }
    lowerValue := 2675
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 16))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 23, r := 17 }
    lowerValue := 420
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 23, r := 18 }
    lowerValue := 81
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 23, r := 19 }
    lowerValue := 20
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 19))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 23, r := 20 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 22 21))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 23, r := 21 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21)) },
  { key := { q := 16, n := 23, r := 22 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 22)) },
  { key := { q := 16, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 23)) },
  { key := { q := 16, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 24)) },
  { key := { q := 16, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 25)) },
  { key := { q := 16, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 26)) },
  { key := { q := 16, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 27)) },
  { key := { q := 16, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 28)) },
  { key := { q := 16, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 29)) },
  { key := { q := 16, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 30)) },
  { key := { q := 16, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 31)) },
  { key := { q := 16, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 32)) },
  { key := { q := 16, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 33)) },
  { key := { q := 16, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 34)) },
  { key := { q := 16, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 35)) },
  { key := { q := 16, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 36)) },
  { key := { q := 16, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 37)) },
  { key := { q := 16, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 38)) },
  { key := { q := 16, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 39)) },
  { key := { q := 16, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 40)) },
  { key := { q := 16, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 41)) },
  { key := { q := 16, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 42)) },
  { key := { q := 16, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 43)) },
  { key := { q := 16, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 44)) },
  { key := { q := 16, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 45)) },
  { key := { q := 16, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 46)) },
  { key := { q := 16, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 47)) },
  { key := { q := 16, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 23 48)) },
  { key := { q := 16, n := 24, r := 0 }
    lowerValue := 79228162514264337593543950336
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 24 0)) },
  { key := { q := 16, n := 24, r := 1 }
    lowerValue := 219468594222338885300675763
    upperValue := 1237940039285380274899124224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 1))
    upperTrace := (.lengthenFreeN 14 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 24, r := 2 }
    lowerValue := 1268442108103686101624117
    upperValue := 50774884423814425337659392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 2))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 24, r := 3 }
    lowerValue := 11493234314992764533454
    upperValue := 3173430276488401583603712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 3))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 24, r := 4 }
    lowerValue := 145416877659735481857
    upperValue := 198339392280525098975232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 4))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 24, r := 5 }
    lowerValue := 2413924465900005462
    upperValue := 12396212017532818685952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 5))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 24, r := 6 }
    lowerValue := 50594186661705809
    upperValue := 774763251095801167872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 6))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 24, r := 7 }
    lowerValue := 1305218613667938
    upperValue := 48422703193487572992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 7))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 24, r := 8 }
    lowerValue := 40721025365910
    upperValue := 3026418949592973312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 8))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 24, r := 9 }
    lowerValue := 1517476263413
    upperValue := 189151184349560832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 9))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 24, r := 10 }
    lowerValue := 66962646810
    upperValue := 11821949021847552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 10))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 24, r := 11 }
    lowerValue := 3478855137
    upperValue := 738871813865472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 11))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 24, r := 12 }
    lowerValue := 212050616
    upperValue := 46179488366592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 12))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 24, r := 13 }
    lowerValue := 15144122
    upperValue := 2886218022912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 13))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 24, r := 14 }
    lowerValue := 1267927
    upperValue := 180388626432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 14))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 24, r := 15 }
    lowerValue := 124762
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 15))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 24, r := 16 }
    lowerValue := 14495
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 16))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 24, r := 17 }
    lowerValue := 2003
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 24, r := 18 }
    lowerValue := 333
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 24, r := 19 }
    lowerValue := 68
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 24, r := 20 }
    lowerValue := 17
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 20))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 24, r := 21 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 23 22))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 24, r := 22 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22)) },
  { key := { q := 16, n := 24, r := 23 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 23)) },
  { key := { q := 16, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 24)) },
  { key := { q := 16, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 25)) },
  { key := { q := 16, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 26)) },
  { key := { q := 16, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 27)) },
  { key := { q := 16, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 28)) },
  { key := { q := 16, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 29)) },
  { key := { q := 16, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 30)) },
  { key := { q := 16, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 31)) },
  { key := { q := 16, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 32)) },
  { key := { q := 16, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 33)) },
  { key := { q := 16, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 34)) },
  { key := { q := 16, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 35)) },
  { key := { q := 16, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 36)) },
  { key := { q := 16, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 37)) },
  { key := { q := 16, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 38)) },
  { key := { q := 16, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 39)) },
  { key := { q := 16, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 40)) },
  { key := { q := 16, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 41)) },
  { key := { q := 16, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 42)) },
  { key := { q := 16, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 43)) },
  { key := { q := 16, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 44)) },
  { key := { q := 16, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 45)) },
  { key := { q := 16, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 46)) },
  { key := { q := 16, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 47)) },
  { key := { q := 16, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 24 48)) },
  { key := { q := 16, n := 25, r := 0 }
    lowerValue := 1267650600228229401496703205376
    upperValue := 1267650600228229401496703205376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 25 0)) },
  { key := { q := 16, n := 25, r := 1 }
    lowerValue := 3371411170819759046533785121
    upperValue := 19807040628566084398385987584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 1))
    upperTrace := (.lengthenFreeN 15 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 25, r := 2 }
    lowerValue := 18675976784551673662217916
    upperValue := 812398150781030805402550272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 2))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 25, r := 3 }
    lowerValue := 161888854408553229308108
    upperValue := 50774884423814425337659392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 3))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 25, r := 4 }
    lowerValue := 1955536835445995613178
    upperValue := 3173430276488401583603712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 4))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 25, r := 5 }
    lowerValue := 30922960567509701536
    upperValue := 198339392280525098975232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 5))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 25, r := 6 }
    lowerValue := 615880537362381101
    upperValue := 12396212017532818685952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 6))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 25, r := 7 }
    lowerValue := 15056953945365034
    upperValue := 774763251095801167872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 7))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 25, r := 8 }
    lowerValue := 443832127716509
    upperValue := 48422703193487572992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 8))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 25, r := 9 }
    lowerValue := 15574065398263
    upperValue := 3026418949592973312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 9))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 25, r := 10 }
    lowerValue := 644679543374
    upperValue := 189151184349560832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 10))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 25, r := 11 }
    lowerValue := 31283215758
    upperValue := 11821949021847552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 11))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 25, r := 12 }
    lowerValue := 1772338953
    upperValue := 738871813865472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 12))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 25, r := 13 }
    lowerValue := 116984676
    upperValue := 46179488366592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 13))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 25, r := 14 }
    lowerValue := 8992944
    upperValue := 2886218022912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 14))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 25, r := 15 }
    lowerValue := 806224
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 15))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 25, r := 16 }
    lowerValue := 84559
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 16))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 25, r := 17 }
    lowerValue := 10429
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 25, r := 18 }
    lowerValue := 1524
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 25, r := 19 }
    lowerValue := 267
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 25, r := 20 }
    lowerValue := 57
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 25, r := 21 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 23 22)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 25, r := 22 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 24 23))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 25, r := 23 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23)) },
  { key := { q := 16, n := 25, r := 24 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 24)) },
  { key := { q := 16, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 25)) },
  { key := { q := 16, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 26)) },
  { key := { q := 16, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 27)) },
  { key := { q := 16, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 28)) },
  { key := { q := 16, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 29)) },
  { key := { q := 16, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 30)) },
  { key := { q := 16, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 31)) },
  { key := { q := 16, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 32)) },
  { key := { q := 16, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 33)) },
  { key := { q := 16, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 34)) },
  { key := { q := 16, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 35)) },
  { key := { q := 16, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 36)) },
  { key := { q := 16, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 37)) },
  { key := { q := 16, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 38)) },
  { key := { q := 16, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 39)) },
  { key := { q := 16, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 40)) },
  { key := { q := 16, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 41)) },
  { key := { q := 16, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 42)) },
  { key := { q := 16, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 43)) },
  { key := { q := 16, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 44)) },
  { key := { q := 16, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 45)) },
  { key := { q := 16, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 46)) },
  { key := { q := 16, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 47)) },
  { key := { q := 16, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 25 48)) },
  { key := { q := 16, n := 26, r := 0 }
    lowerValue := 20282409603651670423947251286016
    upperValue := 20282409603651670423947251286016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 26 0)) },
  { key := { q := 16, n := 26, r := 1 }
    lowerValue := 51873170341820128961501921448
    upperValue := 316912650057057350374175801344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 1))
    upperTrace := (.lengthenFreeN 16 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 26, r := 2 }
    lowerValue := 275891093145052375318940793
    upperValue := 12998370412496492886440804352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 2))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 26, r := 3 }
    lowerValue := 2292182056703256277543857
    upperValue := 812398150781030805402550272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 3))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 26, r := 4 }
    lowerValue := 26488983243369563333094
    upperValue := 50774884423814425337659392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 4))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 26, r := 5 }
    lowerValue := 399910438931007736082
    upperValue := 3173430276488401583603712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 5))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 26, r := 6 }
    lowerValue := 7587368683450743754
    upperValue := 198339392280525098975232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 6))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 26, r := 7 }
    lowerValue := 176269948666118725
    upperValue := 12396212017532818685952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 7))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 26, r := 8 }
    lowerValue := 4924104829980814
    upperValue := 774763251095801167872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 8))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 26, r := 9 }
    lowerValue := 163255523464256
    upperValue := 48422703193487572992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 9))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 26, r := 10 }
    lowerValue := 6363605474878
    upperValue := 3026418949592973312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 10))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 26, r := 11 }
    lowerValue := 289679810367
    upperValue := 189151184349560832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 11))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 26, r := 12 }
    lowerValue := 15329833240
    upperValue := 11821949021847552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 12))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 26, r := 13 }
    lowerValue := 940539085
    upperValue := 738871813865472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 13))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 26, r := 14 }
    lowerValue := 66828107
    upperValue := 46179488366592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 14))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 26, r := 15 }
    lowerValue := 5501450
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 15))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 26, r := 16 }
    lowerValue := 525773
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 16))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 26, r := 17 }
    lowerValue := 58548
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 26, r := 18 }
    lowerValue := 7639
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 26, r := 19 }
    lowerValue := 1177
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 26, r := 20 }
    lowerValue := 217
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 26, r := 21 }
    lowerValue := 49
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 26, r := 22 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 24 23)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 26, r := 23 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 25 24))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 26, r := 24 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24)) },
  { key := { q := 16, n := 26, r := 25 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 25)) },
  { key := { q := 16, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 26)) },
  { key := { q := 16, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 27)) },
  { key := { q := 16, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 28)) },
  { key := { q := 16, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 29)) },
  { key := { q := 16, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 30)) },
  { key := { q := 16, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 31)) },
  { key := { q := 16, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 32)) },
  { key := { q := 16, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 33)) },
  { key := { q := 16, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 34)) },
  { key := { q := 16, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 35)) },
  { key := { q := 16, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 36)) },
  { key := { q := 16, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 37)) },
  { key := { q := 16, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 38)) },
  { key := { q := 16, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 39)) },
  { key := { q := 16, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 40)) },
  { key := { q := 16, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 41)) },
  { key := { q := 16, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 42)) },
  { key := { q := 16, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 43)) },
  { key := { q := 16, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 44)) },
  { key := { q := 16, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 45)) },
  { key := { q := 16, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 46)) },
  { key := { q := 16, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 47)) },
  { key := { q := 16, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 26 48)) },
  { key := { q := 16, n := 27, r := 0 }
    lowerValue := 324518553658426726783156020576256
    upperValue := 324518553658426726783156020576256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 27 0)) },
  { key := { q := 16, n := 27, r := 1 }
    lowerValue := 799306782409918046263931085164
    upperValue := 5070602400912917605986812821504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 1))
    upperTrace := (.lengthenFreeN 17 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 27, r := 2 }
    lowerValue := 4088113700487858892973835308
    upperValue := 207973926599943886183052869632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 2))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 27, r := 3 }
    lowerValue := 32610813515241365188791850
    upperValue := 12998370412496492886440804352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 3))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 27, r := 4 }
    lowerValue := 361210293060222355270166
    upperValue := 812398150781030805402550272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 4))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 27, r := 5 }
    lowerValue := 5217108277236701996537
    upperValue := 50774884423814425337659392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 5))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 27, r := 6 }
    lowerValue := 94503222490048792078
    upperValue := 3173430276488401583603712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 6))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 27, r := 7 }
    lowerValue := 2091479557820593483
    upperValue := 198339392280525098975232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 7))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 27, r := 8 }
    lowerValue := 55520980433672883
    upperValue := 12396212017532818685952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 8))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 27, r := 9 }
    lowerValue := 1744514539608824
    upperValue := 774763251095801167872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 9))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 27, r := 10 }
    lowerValue := 64250802937900
    upperValue := 48422703193487572992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 10))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) }]

end CoveringCodes.Database
