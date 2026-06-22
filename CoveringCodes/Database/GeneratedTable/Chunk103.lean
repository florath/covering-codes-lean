import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 103. Do not edit manually.

def precomputedTable_chunk_103 : Array AnyBoundEntry := #[
  { key := { q := 10, n := 35, r := 25 }
    lowerValue := 574
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 35, r := 26 }
    lowerValue := 159
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 35, r := 27 }
    lowerValue := 51
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 35, r := 28 }
    lowerValue := 19
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 35, r := 29 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 31 30)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29))) },
  { key := { q := 10, n := 35, r := 30 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 32 31))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 30))) },
  { key := { q := 10, n := 35, r := 31 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 33 32)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 31)) },
  { key := { q := 10, n := 35, r := 32 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 34 33))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 32)) },
  { key := { q := 10, n := 35, r := 33 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 33)) },
  { key := { q := 10, n := 35, r := 34 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 34)) },
  { key := { q := 10, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 35 35)) },
  { key := { q := 10, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 35 36)) },
  { key := { q := 10, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 35 37)) },
  { key := { q := 10, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 35 38)) },
  { key := { q := 10, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 35 39)) },
  { key := { q := 10, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 35 40)) },
  { key := { q := 10, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 35 41)) },
  { key := { q := 10, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 35 42)) },
  { key := { q := 10, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 35 43)) },
  { key := { q := 10, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 35 44)) },
  { key := { q := 10, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 35 45)) },
  { key := { q := 10, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 35 46)) },
  { key := { q := 10, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 35 47)) },
  { key := { q := 10, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 35 48)) },
  { key := { q := 10, n := 36, r := 0 }
    lowerValue := 1000000000000000000000000000000000000
    upperValue := 1000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 36 0)) },
  { key := { q := 10, n := 36, r := 1 }
    lowerValue := 3076923076923076923076923076923077
    upperValue := 50000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 36, r := 2 }
    lowerValue := 19472300652322071852789407068446
    upperValue := 5000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 36, r := 3 }
    lowerValue := 190243730755657610748009812772
    upperValue := 500000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 36, r := 4 }
    lowerValue := 2552764884329628114232756814
    upperValue := 11560000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 4))
    upperTrace := (.lengthenFreeN 28 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 36, r := 5 }
    lowerValue := 44144784296331101796946960
    upperValue := 1156000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 5))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 36, r := 6 }
    lowerValue := 945367888358624582406306
    upperValue := 115600000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 6))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 36, r := 7 }
    lowerValue := 24399477662832396236857
    upperValue := 11560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 7))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 36, r := 8 }
    lowerValue := 744273062200097477106
    upperValue := 1156000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 8))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 36, r := 9 }
    lowerValue := 26443393830538253847
    upperValue := 100000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 9))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 36, r := 10 }
    lowerValue := 1082120627092351360
    upperValue := 10000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 10))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 36, r := 11 }
    lowerValue := 50561183121747601
    upperValue := 1000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 11))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 36, r := 12 }
    lowerValue := 2678891191299287
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 12))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 36, r := 13 }
    lowerValue := 160076685913714
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 13))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 36, r := 14 }
    lowerValue := 10741818256648
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 14))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 36, r := 15 }
    lowerValue := 806792632110
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 15))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 36, r := 16 }
    lowerValue := 67653915779
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 16))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 36, r := 17 }
    lowerValue := 6322586319
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 17))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 36, r := 18 }
    lowerValue := 657768270
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 36, r := 19 }
    lowerValue := 76136904
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 36, r := 20 }
    lowerValue := 9805758
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 36, r := 21 }
    lowerValue := 1406045
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 36, r := 22 }
    lowerValue := 224735
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 36, r := 23 }
    lowerValue := 40113
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 36, r := 24 }
    lowerValue := 8015
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 36, r := 25 }
    lowerValue := 1799
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 36, r := 26 }
    lowerValue := 455
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 36, r := 27 }
    lowerValue := 131
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 36, r := 28 }
    lowerValue := 43
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 36, r := 29 }
    lowerValue := 16
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29))) },
  { key := { q := 10, n := 36, r := 30 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 32 31)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 30))) },
  { key := { q := 10, n := 36, r := 31 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 33 32))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 31))) },
  { key := { q := 10, n := 36, r := 32 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 34 33)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 32)) },
  { key := { q := 10, n := 36, r := 33 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 35 34))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 33)) },
  { key := { q := 10, n := 36, r := 34 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 34)) },
  { key := { q := 10, n := 36, r := 35 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 35)) },
  { key := { q := 10, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 36 36)) },
  { key := { q := 10, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 36 37)) },
  { key := { q := 10, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 36 38)) },
  { key := { q := 10, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 36 39)) },
  { key := { q := 10, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 36 40)) },
  { key := { q := 10, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 36 41)) },
  { key := { q := 10, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 36 42)) },
  { key := { q := 10, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 36 43)) },
  { key := { q := 10, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 36 44)) },
  { key := { q := 10, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 36 45)) },
  { key := { q := 10, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 36 46)) },
  { key := { q := 10, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 36 47)) },
  { key := { q := 10, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 36 48)) },
  { key := { q := 10, n := 37, r := 0 }
    lowerValue := 10000000000000000000000000000000000000
    upperValue := 10000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 37 0)) },
  { key := { q := 10, n := 37, r := 1 }
    lowerValue := 29940119760479041916167664670658683
    upperValue := 500000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 1))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 37, r := 2 }
    lowerValue := 184229918938835666912306558585115
    upperValue := 50000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 2))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 37, r := 3 }
    lowerValue := 1748676688915663071970286485702
    upperValue := 5000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 37, r := 4 }
    lowerValue := 22776975452490526173301510407
    upperValue := 115600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 4))
    upperTrace := (.lengthenFreeN 29 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 37, r := 5 }
    lowerValue := 381995456902972150979373430
    upperValue := 11560000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 5))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 37, r := 6 }
    lowerValue := 7926041438053898378656690
    upperValue := 1156000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 6))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 37, r := 7 }
    lowerValue := 198001816075821908466701
    upperValue := 115600000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 7))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 37, r := 8 }
    lowerValue := 5839575465763487146564
    upperValue := 11560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 8))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 37, r := 9 }
    lowerValue := 200364806020252919496
    upperValue := 1000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 9))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 37, r := 10 }
    lowerValue := 7908507744645315840
    upperValue := 100000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 10))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 37, r := 11 }
    lowerValue := 355934957082399997
    upperValue := 10000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 11))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 37, r := 12 }
    lowerValue := 18139242588147590
    upperValue := 1000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 12))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 37, r := 13 }
    lowerValue := 1040950489580421
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 13))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 37, r := 14 }
    lowerValue := 66971538048503
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 14))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 37, r := 15 }
    lowerValue := 4813888217384
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 15))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 37, r := 16 }
    lowerValue := 385558620230
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 16))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 37, r := 17 }
    lowerValue := 34341471031
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 17))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 37, r := 18 }
    lowerValue := 3397015650
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 37, r := 19 }
    lowerValue := 372899659
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 37, r := 20 }
    lowerValue := 45415526
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 37, r := 21 }
    lowerValue := 6138573
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 37, r := 22 }
    lowerValue := 921606
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 37, r := 23 }
    lowerValue := 153900
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 37, r := 24 }
    lowerValue := 28642
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 37, r := 25 }
    lowerValue := 5956
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 37, r := 26 }
    lowerValue := 1389
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 37, r := 27 }
    lowerValue := 365
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 37, r := 28 }
    lowerValue := 109
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 37, r := 29 }
    lowerValue := 37
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29))) },
  { key := { q := 10, n := 37, r := 30 }
    lowerValue := 15
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 30))) },
  { key := { q := 10, n := 37, r := 31 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 33 32)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 31))) },
  { key := { q := 10, n := 37, r := 32 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 34 33))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 32))) },
  { key := { q := 10, n := 37, r := 33 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 35 34)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 37 33)) },
  { key := { q := 10, n := 37, r := 34 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 36 35))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 37 34)) },
  { key := { q := 10, n := 37, r := 35 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 37 35)) },
  { key := { q := 10, n := 37, r := 36 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 37 36)) },
  { key := { q := 10, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 37 37)) },
  { key := { q := 10, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 37 38)) },
  { key := { q := 10, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 37 39)) },
  { key := { q := 10, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 37 40)) },
  { key := { q := 10, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 37 41)) },
  { key := { q := 10, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 37 42)) },
  { key := { q := 10, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 37 43)) },
  { key := { q := 10, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 37 44)) },
  { key := { q := 10, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 37 45)) },
  { key := { q := 10, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 37 46)) },
  { key := { q := 10, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 37 47)) },
  { key := { q := 10, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 37 48)) },
  { key := { q := 10, n := 38, r := 0 }
    lowerValue := 100000000000000000000000000000000000000
    upperValue := 100000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 38 0)) },
  { key := { q := 10, n := 38, r := 1 }
    lowerValue := 291545189504373177842565597667638484
    upperValue := 5000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 1))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 38, r := 2 }
    lowerValue := 1745627203854344866110393464371749
    upperValue := 500000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 2))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 38, r := 3 }
    lowerValue := 16110505177110838664568004858929
    upperValue := 50000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 38, r := 4 }
    lowerValue := 203870545506306332680910211447
    upperValue := 1156000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 4))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 38, r := 5 }
    lowerValue := 3318986405781602655317078190
    upperValue := 115600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 38, r := 6 }
    lowerValue := 66788276906319044542186607
    upperValue := 11560000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 38, r := 7 }
    lowerValue := 1616564954750970820128977
    upperValue := 1156000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 38, r := 8 }
    lowerValue := 46146862968697664905059
    upperValue := 115600000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 8))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 38, r := 9 }
    lowerValue := 1530900214581792341028
    upperValue := 10000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 9))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 38, r := 10 }
    lowerValue := 58355254920246413056
    upperValue := 1000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 10))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 38, r := 11 }
    lowerValue := 2533237970792293310
    upperValue := 100000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 11))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 38, r := 12 }
    lowerValue := 124355508726512246
    upperValue := 10000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 12))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 38, r := 13 }
    lowerValue := 6864255053435896
    upperValue := 1000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 13))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 38, r := 14 }
    lowerValue := 424130289687123
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 14))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 38, r := 15 }
    lowerValue := 29229703967234
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 15))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 38, r := 16 }
    lowerValue := 2240529894278
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 16))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 38, r := 17 }
    lowerValue := 190613920253
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 17))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 38, r := 18 }
    lowerValue := 17971071711
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 38, r := 19 }
    lowerValue := 1875795734
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 38, r := 20 }
    lowerValue := 216665566
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 38, r := 21 }
    lowerValue := 27695120
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 38, r := 22 }
    lowerValue := 3919721
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 38, r := 23 }
    lowerValue := 614882
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 38, r := 24 }
    lowerValue := 107074
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 38, r := 25 }
    lowerValue := 20742
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 38, r := 26 }
    lowerValue := 4482
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 38, r := 27 }
    lowerValue := 1084
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 38, r := 28 }
    lowerValue := 295
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 38, r := 29 }
    lowerValue := 91
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29))) },
  { key := { q := 10, n := 38, r := 30 }
    lowerValue := 32
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 30))) },
  { key := { q := 10, n := 38, r := 31 }
    lowerValue := 13
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 31))) },
  { key := { q := 10, n := 38, r := 32 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 34 33)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 32))) },
  { key := { q := 10, n := 38, r := 33 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 35 34))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 37 33))) },
  { key := { q := 10, n := 38, r := 34 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 36 35)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 38 34)) },
  { key := { q := 10, n := 38, r := 35 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 37 36))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 38 35)) },
  { key := { q := 10, n := 38, r := 36 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 38 36)) },
  { key := { q := 10, n := 38, r := 37 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 38 37)) },
  { key := { q := 10, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 38 38)) },
  { key := { q := 10, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 38 39)) },
  { key := { q := 10, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 38 40)) },
  { key := { q := 10, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 38 41)) },
  { key := { q := 10, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 38 42)) },
  { key := { q := 10, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 38 43)) },
  { key := { q := 10, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 38 44)) },
  { key := { q := 10, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 38 45)) },
  { key := { q := 10, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 38 46)) },
  { key := { q := 10, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 38 47)) },
  { key := { q := 10, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 38 48)) },
  { key := { q := 10, n := 39, r := 0 }
    lowerValue := 1000000000000000000000000000000000000000
    upperValue := 1000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 39 0)) },
  { key := { q := 10, n := 39, r := 1 }
    lowerValue := 2840909090909090909090909090909090910
    upperValue := 50000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 1))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 39, r := 2 }
    lowerValue := 16563695691782750567306577443559207
    upperValue := 5000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 2))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 39, r := 3 }
    lowerValue := 148749669775733097872522722999555
    upperValue := 500000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 39, r := 4 }
    lowerValue := 1830256469354922355350095438267
    upperValue := 11560000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 4))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 39, r := 5 }
    lowerValue := 28948380647804110882463626026
    upperValue := 1156000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 39, r := 6 }
    lowerValue := 565471450434157286287496009
    upperValue := 115600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 39, r := 7 }
    lowerValue := 13274046003592471111874779
    upperValue := 11560000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 7))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 39, r := 8 }
    lowerValue := 367143505878858439617241
    upperValue := 1156000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 8))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 39, r := 9 }
    lowerValue := 11789117029776327936198
    upperValue := 100000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 9))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 39, r := 10 }
    lowerValue := 434493363735158825883
    upperValue := 10000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 10))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 39, r := 11 }
    lowerValue := 18215617840563941377
    upperValue := 1000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 11))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 39, r := 12 }
    lowerValue := 862498242142162449
    upperValue := 100000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 12))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 39, r := 13 }
    lowerValue := 45859908834574555
    upperValue := 10000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 13))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 39, r := 14 }
    lowerValue := 2725608014959934
    upperValue := 1000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 14))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 39, r := 15 }
    lowerValue := 180402294085574
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 15))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 39, r := 16 }
    lowerValue := 13258573589523
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 16))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 39, r := 17 }
    lowerValue := 1079550631959
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 17))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 39, r := 18 }
    lowerValue := 97218724710
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 39, r := 19 }
    lowerValue := 9672003554
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 39, r := 20 }
    lowerValue := 1062318599
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 39, r := 21 }
    lowerValue := 128789442
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 39, r := 22 }
    lowerValue := 17238787
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 39, r := 23 }
    lowerValue := 2549452
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 39, r := 24 }
    lowerValue := 417078
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 39, r := 25 }
    lowerValue := 75605
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 39, r := 26 }
    lowerValue := 15220
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 39, r := 27 }
    lowerValue := 3412
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 39, r := 28 }
    lowerValue := 855
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 39, r := 29 }
    lowerValue := 241
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29))) },
  { key := { q := 10, n := 39, r := 30 }
    lowerValue := 77
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 30))) },
  { key := { q := 10, n := 39, r := 31 }
    lowerValue := 28
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 31))) },
  { key := { q := 10, n := 39, r := 32 }
    lowerValue := 12
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 32))) },
  { key := { q := 10, n := 39, r := 33 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 35 34)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 37 33))) },
  { key := { q := 10, n := 39, r := 34 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 36 35))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 38 34))) },
  { key := { q := 10, n := 39, r := 35 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 37 36)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 39 35)) },
  { key := { q := 10, n := 39, r := 36 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 39 36)) },
  { key := { q := 10, n := 39, r := 37 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 39 37)) },
  { key := { q := 10, n := 39, r := 38 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 39 38)) },
  { key := { q := 10, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 39 39)) },
  { key := { q := 10, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 39 40)) },
  { key := { q := 10, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 39 41)) },
  { key := { q := 10, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 39 42)) },
  { key := { q := 10, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 39 43)) },
  { key := { q := 10, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 39 44)) },
  { key := { q := 10, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 39 45)) },
  { key := { q := 10, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 39 46)) },
  { key := { q := 10, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 39 47)) },
  { key := { q := 10, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 39 48)) },
  { key := { q := 10, n := 40, r := 0 }
    lowerValue := 10000000000000000000000000000000000000000
    upperValue := 10000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 40 0)) },
  { key := { q := 10, n := 40, r := 1 }
    lowerValue := 27700831024930747922437673130193905818
    upperValue := 500000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 1))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 40, r := 2 }
    lowerValue := 157378700366692371854393226420736218
    upperValue := 50000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 2))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 40, r := 3 }
    lowerValue := 1376261498492787219925624076098453
    upperValue := 5000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 3))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 40, r := 4 }
    lowerValue := 16477834772173196919644772617588
    upperValue := 115600000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 4))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 40, r := 5 }
    lowerValue := 253410973516807950095666903609
    upperValue := 11560000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 5))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 40, r := 6 }
    lowerValue := 4809231965218173413650221169
    upperValue := 1156000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 6))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 40, r := 7 }
    lowerValue := 109587955874330233805727808
    upperValue := 115600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 7))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 40, r := 8 }
    lowerValue := 2939667364321919082836136
    upperValue := 11560000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 8))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 40, r := 9 }
    lowerValue := 91459870544399326445568
    upperValue := 1000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 9))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 40, r := 10 }
    lowerValue := 3262699077908398514271
    upperValue := 100000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 10))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 40, r := 11 }
    lowerValue := 132254619042787749038
    upperValue := 10000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 11))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 40, r := 12 }
    lowerValue := 6047762209502062175
    upperValue := 1000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 12))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 40, r := 13 }
    lowerValue := 310170405000653675
    upperValue := 100000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 13))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 40, r := 14 }
    lowerValue := 17757559110173984
    upperValue := 10000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 14))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 40, r := 15 }
    lowerValue := 1130558949460250
    upperValue := 1000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 15))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 40, r := 16 }
    lowerValue := 79801202079045
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 16))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 40, r := 17 }
    lowerValue := 6230073889555
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 17))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 40, r := 18 }
    lowerValue := 536973687187
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 40, r := 19 }
    lowerValue := 51029272331
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 40, r := 20 }
    lowerValue := 5342285764
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 40, r := 21 }
    lowerValue := 615890732
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 40, r := 22 }
    lowerValue := 78192057
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 40, r := 23 }
    lowerValue := 10937093
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 40, r := 24 }
    lowerValue := 1686965
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 40, r := 25 }
    lowerValue := 287311
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 40, r := 26 }
    lowerValue := 54128
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 40, r := 27 }
    lowerValue := 11307
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 40, r := 28 }
    lowerValue := 2626
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 40, r := 29 }
    lowerValue := 681
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29))) }]

end CoveringCodes.Database
