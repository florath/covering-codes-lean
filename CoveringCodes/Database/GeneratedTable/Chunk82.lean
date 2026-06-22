import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 82. Do not edit manually.

def precomputedTable_chunk_82 : Array AnyBoundEntry := #[
  { key := { q := 8, n := 26, r := 18 }
    lowerValue := 87
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 26, r := 19 }
    lowerValue := 28
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 26, r := 20 }
    lowerValue := 11
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 26, r := 21 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 23 22))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 26, r := 22 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 24 23)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22)) },
  { key := { q := 8, n := 26, r := 23 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 25 24))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 23)) },
  { key := { q := 8, n := 26, r := 24 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 24)) },
  { key := { q := 8, n := 26, r := 25 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 25)) },
  { key := { q := 8, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 26)) },
  { key := { q := 8, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 27)) },
  { key := { q := 8, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 28)) },
  { key := { q := 8, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 29)) },
  { key := { q := 8, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 30)) },
  { key := { q := 8, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 31)) },
  { key := { q := 8, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 32)) },
  { key := { q := 8, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 33)) },
  { key := { q := 8, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 34)) },
  { key := { q := 8, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 35)) },
  { key := { q := 8, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 36)) },
  { key := { q := 8, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 37)) },
  { key := { q := 8, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 38)) },
  { key := { q := 8, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 39)) },
  { key := { q := 8, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 40)) },
  { key := { q := 8, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 41)) },
  { key := { q := 8, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 42)) },
  { key := { q := 8, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 43)) },
  { key := { q := 8, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 44)) },
  { key := { q := 8, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 45)) },
  { key := { q := 8, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 46)) },
  { key := { q := 8, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 47)) },
  { key := { q := 8, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 26 48)) },
  { key := { q := 8, n := 27, r := 0 }
    lowerValue := 2417851639229258349412352
    upperValue := 2417851639229258349412352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 27 0)) },
  { key := { q := 8, n := 27, r := 1 }
    lowerValue := 12725534943311886049539
    upperValue := 151115727451828646838272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 1))
    upperTrace := (.lengthenFreeN 21 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 27, r := 2 }
    lowerValue := 139044892703965630538
    upperValue := 8509857740691213385728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 2))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 27, r := 3 }
    lowerValue := 2368900675667269885
    upperValue := 538432357049907019776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 3))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 27, r := 4 }
    lowerValue := 56022977207288012
    upperValue := 67304044631238377472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 4))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 27, r := 5 }
    lowerValue := 1727052522390738
    upperValue := 8413005578904797184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 5))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 27, r := 6 }
    lowerValue := 66744893416491
    upperValue := 1051625697363099648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 6))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 27, r := 7 }
    lowerValue := 3150064804642
    upperValue := 131453212170387456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 7))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 4 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 27, r := 8 }
    lowerValue := 178230794281
    upperValue := 16431651521298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 8))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 5 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 27, r := 9 }
    lowerValue := 11928454232
    upperValue := 2053956440162304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 9))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 6 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 27, r := 10 }
    lowerValue := 935072225
    upperValue := 256744555020288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 10))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 7 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 27, r := 11 }
    lowerValue := 85237918
    upperValue := 32093069377536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 11))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 8 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 27, r := 12 }
    lowerValue := 8988934
    upperValue := 4011633672192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 12))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 9 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 27, r := 13 }
    lowerValue := 1092859
    upperValue := 501454209024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 13))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 10 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 27, r := 14 }
    lowerValue := 152870
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 14))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 27, r := 15 }
    lowerValue := 24585
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 15))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 27, r := 16 }
    lowerValue := 4548
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 16))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 27, r := 17 }
    lowerValue := 970
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 27, r := 18 }
    lowerValue := 239
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 27, r := 19 }
    lowerValue := 69
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 27, r := 20 }
    lowerValue := 23
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 27, r := 21 }
    lowerValue := 9
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 21))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 27, r := 22 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 24 23))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 27, r := 23 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 25 24)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23)) },
  { key := { q := 8, n := 27, r := 24 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 26 25))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 24)) },
  { key := { q := 8, n := 27, r := 25 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 25)) },
  { key := { q := 8, n := 27, r := 26 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 26)) },
  { key := { q := 8, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 27)) },
  { key := { q := 8, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 28)) },
  { key := { q := 8, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 29)) },
  { key := { q := 8, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 30)) },
  { key := { q := 8, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 31)) },
  { key := { q := 8, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 32)) },
  { key := { q := 8, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 33)) },
  { key := { q := 8, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 34)) },
  { key := { q := 8, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 35)) },
  { key := { q := 8, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 36)) },
  { key := { q := 8, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 37)) },
  { key := { q := 8, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 38)) },
  { key := { q := 8, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 39)) },
  { key := { q := 8, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 40)) },
  { key := { q := 8, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 41)) },
  { key := { q := 8, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 42)) },
  { key := { q := 8, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 43)) },
  { key := { q := 8, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 44)) },
  { key := { q := 8, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 45)) },
  { key := { q := 8, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 46)) },
  { key := { q := 8, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 47)) },
  { key := { q := 8, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 27 48)) },
  { key := { q := 8, n := 28, r := 0 }
    lowerValue := 19342813113834066795298816
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 28 0)) },
  { key := { q := 8, n := 28, r := 1 }
    lowerValue := 98186868598142471042126
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 1))
    upperTrace := (.lengthenFreeN 22 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 28, r := 2 }
    lowerValue := 1033325130286557337214
    upperValue := 68078861925529707085824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 2))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 28, r := 3 }
    lowerValue := 16931926846011086257
    upperValue := 4307458856399256158208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 3))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 28, r := 4 }
    lowerValue := 384527089409625775
    upperValue := 538432357049907019776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 4))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 28, r := 5 }
    lowerValue := 11364121941870326
    upperValue := 67304044631238377472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 5))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 28, r := 6 }
    lowerValue := 420265895747462
    upperValue := 8413005578904797184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 6))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 28, r := 7 }
    lowerValue := 18942500626738
    upperValue := 1051625697363099648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 7))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 4 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 28, r := 8 }
    lowerValue := 1021335805457
    upperValue := 131453212170387456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 8))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 5 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 28, r := 9 }
    lowerValue := 64983550506
    upperValue := 16431651521298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 9))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 6 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 28, r := 10 }
    lowerValue := 4830135542
    upperValue := 2053956440162304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 10))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 7 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 28, r := 11 }
    lowerValue := 416278124
    upperValue := 256744555020288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 11))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 8 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 28, r := 12 }
    lowerValue := 41371256
    upperValue := 32093069377536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 12))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 9 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 28, r := 13 }
    lowerValue := 4723202
    upperValue := 4011633672192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 13))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 10 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 28, r := 14 }
    lowerValue := 617917
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 14))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 28, r := 15 }
    lowerValue := 92522
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 15))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 28, r := 16 }
    lowerValue := 15854
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 16))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 28, r := 17 }
    lowerValue := 3112
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 28, r := 18 }
    lowerValue := 702
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 28, r := 19 }
    lowerValue := 182
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 28, r := 20 }
    lowerValue := 55
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 28, r := 21 }
    lowerValue := 20
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 28, r := 22 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 22))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 28, r := 23 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 25 24))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 28, r := 24 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 26 25)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24)) },
  { key := { q := 8, n := 28, r := 25 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 27 26))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 25)) },
  { key := { q := 8, n := 28, r := 26 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 26)) },
  { key := { q := 8, n := 28, r := 27 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 27)) },
  { key := { q := 8, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 28)) },
  { key := { q := 8, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 29)) },
  { key := { q := 8, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 30)) },
  { key := { q := 8, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 31)) },
  { key := { q := 8, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 32)) },
  { key := { q := 8, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 33)) },
  { key := { q := 8, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 34)) },
  { key := { q := 8, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 35)) },
  { key := { q := 8, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 36)) },
  { key := { q := 8, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 37)) },
  { key := { q := 8, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 38)) },
  { key := { q := 8, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 39)) },
  { key := { q := 8, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 40)) },
  { key := { q := 8, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 41)) },
  { key := { q := 8, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 42)) },
  { key := { q := 8, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 43)) },
  { key := { q := 8, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 44)) },
  { key := { q := 8, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 45)) },
  { key := { q := 8, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 46)) },
  { key := { q := 8, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 47)) },
  { key := { q := 8, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 28 48)) },
  { key := { q := 8, n := 29, r := 0 }
    lowerValue := 154742504910672534362390528
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 29 0)) },
  { key := { q := 8, n := 29, r := 1 }
    lowerValue := 758541690738590854717601
    upperValue := 9671406556917033397649408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 1))
    upperTrace := (.lengthenFreeN 23 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 29, r := 2 }
    lowerValue := 7699398194381159038830
    upperValue := 544630895404237656686592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 2))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 29, r := 3 }
    lowerValue := 121517256608717103833
    upperValue := 34459670851194049265664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 3))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 29, r := 4 }
    lowerValue := 2654264898633174066
    upperValue := 4307458856399256158208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 4))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 29, r := 5 }
    lowerValue := 75329269700633757
    upperValue := 538432357049907019776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 5))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 29, r := 6 }
    lowerValue := 2670744298507585
    upperValue := 67304044631238377472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 6))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 29, r := 7 }
    lowerValue := 115194993796358
    upperValue := 8413005578904797184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 7))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 4 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 29, r := 8 }
    lowerValue := 5931860928849
    upperValue := 1051625697363099648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 8))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 5 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 29, r := 9 }
    lowerValue := 359675372337
    upperValue := 131453212170387456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 9))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 6 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 29, r := 10 }
    lowerValue := 25416747625
    upperValue := 16431651521298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 10))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 7 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 29, r := 11 }
    lowerValue := 2077126410
    upperValue := 2053956440162304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 11))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 8 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 29, r := 12 }
    lowerValue := 195183589
    upperValue := 256744555020288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 12))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 9 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 29, r := 13 }
    lowerValue := 21001763
    upperValue := 32093069377536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 13))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 10 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 29, r := 14 }
    lowerValue := 2580323
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 14))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 29, r := 15 }
    lowerValue := 361392
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 15))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 29, r := 16 }
    lowerValue := 57665
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 16))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 29, r := 17 }
    lowerValue := 10487
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 29, r := 18 }
    lowerValue := 2177
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 29, r := 19 }
    lowerValue := 517
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 29, r := 20 }
    lowerValue := 141
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 29, r := 21 }
    lowerValue := 45
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 29, r := 22 }
    lowerValue := 17
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 29, r := 23 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 25 24)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 29, r := 24 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 26 25))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 29, r := 25 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 27 26)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25)) },
  { key := { q := 8, n := 29, r := 26 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 28 27))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 26)) },
  { key := { q := 8, n := 29, r := 27 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 27)) },
  { key := { q := 8, n := 29, r := 28 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 28)) },
  { key := { q := 8, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 29)) },
  { key := { q := 8, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 30)) },
  { key := { q := 8, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 31)) },
  { key := { q := 8, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 32)) },
  { key := { q := 8, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 33)) },
  { key := { q := 8, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 34)) },
  { key := { q := 8, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 35)) },
  { key := { q := 8, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 36)) },
  { key := { q := 8, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 37)) },
  { key := { q := 8, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 38)) },
  { key := { q := 8, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 39)) },
  { key := { q := 8, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 40)) },
  { key := { q := 8, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 41)) },
  { key := { q := 8, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 42)) },
  { key := { q := 8, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 43)) },
  { key := { q := 8, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 44)) },
  { key := { q := 8, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 45)) },
  { key := { q := 8, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 46)) },
  { key := { q := 8, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 47)) },
  { key := { q := 8, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 29 48)) },
  { key := { q := 8, n := 30, r := 0 }
    lowerValue := 1237940039285380274899124224
    upperValue := 1237940039285380274899124224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 30 0)) },
  { key := { q := 8, n := 30, r := 1 }
    lowerValue := 5867014404196115046915281
    upperValue := 77371252455336267181195264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 1))
    upperTrace := (.lengthenFreeN 24 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 30, r := 2 }
    lowerValue := 57509060637618706443331
    upperValue := 4357047163233901253492736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 2))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 30, r := 3 }
    lowerValue := 875422379429392333319
    upperValue := 275677366809552394125312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 3))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 30, r := 4 }
    lowerValue := 18418023710818800627
    upperValue := 34459670851194049265664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 4))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 30, r := 5 }
    lowerValue := 502755180168228787
    upperValue := 4307458856399256158208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 5))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 30, r := 6 }
    lowerValue := 17117688330753632
    upperValue := 538432357049907019776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 6))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 30, r := 7 }
    lowerValue := 707844017149758
    upperValue := 67304044631238377472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 7))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 4 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 30, r := 8 }
    lowerValue := 34881537252649
    upperValue := 8413005578904797184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 8))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 5 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 30, r := 9 }
    lowerValue := 2020021949561
    upperValue := 1051625697363099648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 9))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 6 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 30, r := 10 }
    lowerValue := 136040236689
    upperValue := 131453212170387456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 10))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 7 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 30, r := 11 }
    lowerValue := 10570219649
    upperValue := 16431651521298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 11))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 8 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 30, r := 12 }
    lowerValue := 941905394
    upperValue := 2053956440162304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 12))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 9 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 30, r := 13 }
    lowerValue := 95832803
    upperValue := 256744555020288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 13))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 10 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 30, r := 14 }
    lowerValue := 11097952
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 14))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 30, r := 15 }
    lowerValue := 1459876
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 15))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 30, r := 16 }
    lowerValue := 217917
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 16))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 30, r := 17 }
    lowerValue := 36909
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 30, r := 18 }
    lowerValue := 7099
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 30, r := 19 }
    lowerValue := 1554
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 30, r := 20 }
    lowerValue := 388
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 30, r := 21 }
    lowerValue := 111
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 30, r := 22 }
    lowerValue := 37
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 30, r := 23 }
    lowerValue := 14
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 30, r := 24 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 26 25)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 30, r := 25 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 27 26))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 30, r := 26 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 28 27)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26)) },
  { key := { q := 8, n := 30, r := 27 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 29 28))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 27)) },
  { key := { q := 8, n := 30, r := 28 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 28)) },
  { key := { q := 8, n := 30, r := 29 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 29)) },
  { key := { q := 8, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 30)) },
  { key := { q := 8, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 31)) },
  { key := { q := 8, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 32)) },
  { key := { q := 8, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 33)) },
  { key := { q := 8, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 34)) },
  { key := { q := 8, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 35)) },
  { key := { q := 8, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 36)) },
  { key := { q := 8, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 37)) },
  { key := { q := 8, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 38)) },
  { key := { q := 8, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 39)) },
  { key := { q := 8, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 40)) },
  { key := { q := 8, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 41)) },
  { key := { q := 8, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 42)) },
  { key := { q := 8, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 43)) },
  { key := { q := 8, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 44)) },
  { key := { q := 8, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 45)) },
  { key := { q := 8, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 46)) },
  { key := { q := 8, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 47)) },
  { key := { q := 8, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 30 48)) },
  { key := { q := 8, n := 31, r := 0 }
    lowerValue := 9903520314283042199192993792
    upperValue := 9903520314283042199192993792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 31 0)) },
  { key := { q := 8, n := 31, r := 1 }
    lowerValue := 45428992267353404583454100
    upperValue := 618970019642690137449562112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 1))
    upperTrace := (.lengthenFreeN 25 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 31, r := 2 }
    lowerValue := 430531683444900326009347
    upperValue := 34856377305871210027941888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 2))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 31, r := 3 }
    lowerValue := 6328985341326136319549
    upperValue := 2205418934476419153002496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 3))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 8, n := 31, r := 4 }
    lowerValue := 128429917801559269695
    upperValue := 275677366809552394125312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 4))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 31, r := 5 }
    lowerValue := 3376806669877303222
    upperValue := 34459670851194049265664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 5))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 31, r := 6 }
    lowerValue := 110585246232261444
    upperValue := 4307458856399256158208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 6))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 31, r := 7 }
    lowerValue := 4391564281751894
    upperValue := 538432357049907019776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 7))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 4 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 31, r := 8 }
    lowerValue := 207481547773981
    upperValue := 67304044631238377472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 8))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 5 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 31, r := 9 }
    lowerValue := 11498823413352
    upperValue := 8413005578904797184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 9))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 6 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 31, r := 10 }
    lowerValue := 739639822917
    upperValue := 1051625697363099648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 10))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 7 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 31, r := 11 }
    lowerValue := 54771719686
    upperValue := 131453212170387456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 11))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 8 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 31, r := 12 }
    lowerValue := 4640598292
    upperValue := 16431651521298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 12))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 9 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 31, r := 13 }
    lowerValue := 447763249
    upperValue := 2053956440162304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 13))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 10 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))))) },
  { key := { q := 8, n := 31, r := 14 }
    lowerValue := 49034449
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 14))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 31, r := 15 }
    lowerValue := 6080242
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 15))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 31, r := 16 }
    lowerValue := 852530
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 16))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 31, r := 17 }
    lowerValue := 135099
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 31, r := 18 }
    lowerValue := 24204
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 31, r := 19 }
    lowerValue := 4909
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 31, r := 20 }
    lowerValue := 1129
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 31, r := 21 }
    lowerValue := 296
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 31, r := 22 }
    lowerValue := 89
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) }]

end CoveringCodes.Database
