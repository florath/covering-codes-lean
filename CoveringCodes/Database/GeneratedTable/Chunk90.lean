import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 90. Do not edit manually.

def precomputedTable_chunk_90 : Array AnyBoundEntry := #[
  { key := { q := 9, n := 18, r := 9 }
    lowerValue := 20473
    upperValue := 21789081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 18, r := 10 }
    lowerValue := 2764
    upperValue := 2421009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 10))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 18, r := 11 }
    lowerValue := 459
    upperValue := 269001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 11))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 9, n := 18, r := 12 }
    lowerValue := 94
    upperValue := 29889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 12))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))) },
  { key := { q := 9, n := 18, r := 13 }
    lowerValue := 24
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 13))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 9, n := 18, r := 14 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 16 15)))))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 18, r := 15 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 17 16))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 17 15))) },
  { key := { q := 9, n := 18, r := 16 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 18 17)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 18 16)) },
  { key := { q := 9, n := 18, r := 17 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 18 17)) },
  { key := { q := 9, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 18)) },
  { key := { q := 9, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 19)) },
  { key := { q := 9, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 20)) },
  { key := { q := 9, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 21)) },
  { key := { q := 9, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 22)) },
  { key := { q := 9, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 23)) },
  { key := { q := 9, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 24)) },
  { key := { q := 9, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 25)) },
  { key := { q := 9, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 26)) },
  { key := { q := 9, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 27)) },
  { key := { q := 9, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 28)) },
  { key := { q := 9, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 29)) },
  { key := { q := 9, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 30)) },
  { key := { q := 9, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 31)) },
  { key := { q := 9, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 32)) },
  { key := { q := 9, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 33)) },
  { key := { q := 9, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 34)) },
  { key := { q := 9, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 35)) },
  { key := { q := 9, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 36)) },
  { key := { q := 9, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 37)) },
  { key := { q := 9, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 38)) },
  { key := { q := 9, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 39)) },
  { key := { q := 9, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 40)) },
  { key := { q := 9, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 41)) },
  { key := { q := 9, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 42)) },
  { key := { q := 9, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 43)) },
  { key := { q := 9, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 44)) },
  { key := { q := 9, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 45)) },
  { key := { q := 9, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 46)) },
  { key := { q := 9, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 47)) },
  { key := { q := 9, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 18 48)) },
  { key := { q := 9, n := 19, r := 0 }
    lowerValue := 1350851717672992089
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 19 0)) },
  { key := { q := 9, n := 19, r := 1 }
    lowerValue := 8829096193941125
    upperValue := 50031545098999707
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 1))
    upperTrace := (.lengthenFreeN 5 (@UpperTrace.alphabetExpand 3 9 3 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 3) (by decide : 9 ≤ 3 * 3) (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 9, n := 19, r := 2 }
    lowerValue := 121731253282238
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 2))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 19, r := 3 }
    lowerValue := 2663219907681
    upperValue := 104216498961489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 3))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))) },
  { key := { q := 9, n := 19, r := 4 }
    lowerValue := 82452862743
    upperValue := 11579610995721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 19, r := 5 }
    lowerValue := 3399141925
    upperValue := 1286623443969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 19, r := 6 }
    lowerValue := 179876111
    upperValue := 142958160441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 19, r := 7 }
    lowerValue := 11935302
    upperValue := 15884240049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 19, r := 8 }
    lowerValue := 978002
    upperValue := 1764915561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 19, r := 9 }
    lowerValue := 98030
    upperValue := 196101729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 19, r := 10 }
    lowerValue := 11958
    upperValue := 21789081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 10))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 19, r := 11 }
    lowerValue := 1773
    upperValue := 2421009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 11))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 19, r := 12 }
    lowerValue := 320
    upperValue := 269001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 12))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 9, n := 19, r := 13 }
    lowerValue := 71
    upperValue := 29889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 13))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))) },
  { key := { q := 9, n := 19, r := 14 }
    lowerValue := 20
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 14))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 9, n := 19, r := 15 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 17 16)))))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 19, r := 16 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 18 17))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16)) },
  { key := { q := 9, n := 19, r := 17 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 19 18)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 17)) },
  { key := { q := 9, n := 19, r := 18 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 18)) },
  { key := { q := 9, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 19)) },
  { key := { q := 9, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 20)) },
  { key := { q := 9, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 21)) },
  { key := { q := 9, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 22)) },
  { key := { q := 9, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 23)) },
  { key := { q := 9, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 24)) },
  { key := { q := 9, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 25)) },
  { key := { q := 9, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 26)) },
  { key := { q := 9, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 27)) },
  { key := { q := 9, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 28)) },
  { key := { q := 9, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 29)) },
  { key := { q := 9, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 30)) },
  { key := { q := 9, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 31)) },
  { key := { q := 9, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 32)) },
  { key := { q := 9, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 33)) },
  { key := { q := 9, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 34)) },
  { key := { q := 9, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 35)) },
  { key := { q := 9, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 36)) },
  { key := { q := 9, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 37)) },
  { key := { q := 9, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 38)) },
  { key := { q := 9, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 39)) },
  { key := { q := 9, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 40)) },
  { key := { q := 9, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 41)) },
  { key := { q := 9, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 42)) },
  { key := { q := 9, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 43)) },
  { key := { q := 9, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 44)) },
  { key := { q := 9, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 45)) },
  { key := { q := 9, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 46)) },
  { key := { q := 9, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 47)) },
  { key := { q := 9, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 19 48)) },
  { key := { q := 9, n := 20, r := 0 }
    lowerValue := 12157665459056928801
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 20 0)) },
  { key := { q := 9, n := 20, r := 1 }
    lowerValue := 75513450056254217
    upperValue := 450283905890997363
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 1))
    upperTrace := (.lengthenFreeN 6 (@UpperTrace.alphabetExpand 3 9 3 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 3) (by decide : 9 ≤ 3 * 3) (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 9, n := 20, r := 2 }
    lowerValue := 986743402244699
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 2))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 20, r := 3 }
    lowerValue := 20398733322691
    upperValue := 937948490653401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 3))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))) },
  { key := { q := 9, n := 20, r := 4 }
    lowerValue := 594765104080
    upperValue := 104216498961489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 20, r := 5 }
    lowerValue := 23005133666
    upperValue := 11579610995721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 20, r := 6 }
    lowerValue := 1137380805
    upperValue := 1286623443969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 20, r := 7 }
    lowerValue := 70169903
    upperValue := 142958160441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 20, r := 8 }
    lowerValue := 5316718
    upperValue := 15884240049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 20, r := 9 }
    lowerValue := 489639
    upperValue := 1764915561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 20, r := 10 }
    lowerValue := 54468
    upperValue := 196101729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 10))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 20, r := 11 }
    lowerValue := 7298
    upperValue := 21789081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 11))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 20, r := 12 }
    lowerValue := 1178
    upperValue := 2421009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 12))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 20, r := 13 }
    lowerValue := 230
    upperValue := 269001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 13))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 9, n := 20, r := 14 }
    lowerValue := 55
    upperValue := 29889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 14))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))) },
  { key := { q := 9, n := 20, r := 15 }
    lowerValue := 16
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 15))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 9, n := 20, r := 16 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 18 17)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 20, r := 17 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 19 18))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17)) },
  { key := { q := 9, n := 20, r := 18 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 20 19)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 18)) },
  { key := { q := 9, n := 20, r := 19 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 19)) },
  { key := { q := 9, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 20)) },
  { key := { q := 9, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 21)) },
  { key := { q := 9, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 22)) },
  { key := { q := 9, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 23)) },
  { key := { q := 9, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 24)) },
  { key := { q := 9, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 25)) },
  { key := { q := 9, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 26)) },
  { key := { q := 9, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 27)) },
  { key := { q := 9, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 28)) },
  { key := { q := 9, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 29)) },
  { key := { q := 9, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 30)) },
  { key := { q := 9, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 31)) },
  { key := { q := 9, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 32)) },
  { key := { q := 9, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 33)) },
  { key := { q := 9, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 34)) },
  { key := { q := 9, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 35)) },
  { key := { q := 9, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 36)) },
  { key := { q := 9, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 37)) },
  { key := { q := 9, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 38)) },
  { key := { q := 9, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 39)) },
  { key := { q := 9, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 40)) },
  { key := { q := 9, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 41)) },
  { key := { q := 9, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 42)) },
  { key := { q := 9, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 43)) },
  { key := { q := 9, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 44)) },
  { key := { q := 9, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 45)) },
  { key := { q := 9, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 46)) },
  { key := { q := 9, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 47)) },
  { key := { q := 9, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 20 48)) },
  { key := { q := 9, n := 21, r := 0 }
    lowerValue := 109418989131512359209
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 21 0)) },
  { key := { q := 9, n := 21, r := 1 }
    lowerValue := 647449639831434079
    upperValue := 4052555153018976267
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 1))
    upperTrace := (.lengthenFreeN 7 (@UpperTrace.alphabetExpand 3 9 3 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 3) (by decide : 9 ≤ 3 * 3) (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 9, n := 21, r := 2 }
    lowerValue := 8040193190646805
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 2))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 21, r := 3 }
    lowerValue := 157535088855841
    upperValue := 8441536415880609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 3))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))) },
  { key := { q := 9, n := 21, r := 4 }
    lowerValue := 4340450998189
    upperValue := 937948490653401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 4))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 21, r := 5 }
    lowerValue := 158118747227
    upperValue := 104216498961489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 5))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 21, r := 6 }
    lowerValue := 7335193618
    upperValue := 11579610995721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 6))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 21, r := 7 }
    lowerValue := 422836393
    upperValue := 1286623443969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 7))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 21, r := 8 }
    lowerValue := 29791957
    upperValue := 142958160441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 8))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 21, r := 9 }
    lowerValue := 2537347
    upperValue := 15884240049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 9))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 21, r := 10 }
    lowerValue := 259380
    upperValue := 1764915561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 10))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 21, r := 11 }
    lowerValue := 31701
    upperValue := 196101729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 11))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 21, r := 12 }
    lowerValue := 4627
    upperValue := 21789081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 12))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 21, r := 13 }
    lowerValue := 808
    upperValue := 2421009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 13))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 21, r := 14 }
    lowerValue := 170
    upperValue := 269001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 14))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 9, n := 21, r := 15 }
    lowerValue := 43
    upperValue := 29889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 15))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))) },
  { key := { q := 9, n := 21, r := 16 }
    lowerValue := 14
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 16))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 21, r := 17 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 19 18)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 21, r := 18 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 20 19))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18)) },
  { key := { q := 9, n := 21, r := 19 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 19)) },
  { key := { q := 9, n := 21, r := 20 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 20)) },
  { key := { q := 9, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 21)) },
  { key := { q := 9, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 22)) },
  { key := { q := 9, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 23)) },
  { key := { q := 9, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 24)) },
  { key := { q := 9, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 25)) },
  { key := { q := 9, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 26)) },
  { key := { q := 9, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 27)) },
  { key := { q := 9, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 28)) },
  { key := { q := 9, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 29)) },
  { key := { q := 9, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 30)) },
  { key := { q := 9, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 31)) },
  { key := { q := 9, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 32)) },
  { key := { q := 9, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 33)) },
  { key := { q := 9, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 34)) },
  { key := { q := 9, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 35)) },
  { key := { q := 9, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 36)) },
  { key := { q := 9, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 37)) },
  { key := { q := 9, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 38)) },
  { key := { q := 9, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 39)) },
  { key := { q := 9, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 40)) },
  { key := { q := 9, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 41)) },
  { key := { q := 9, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 42)) },
  { key := { q := 9, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 43)) },
  { key := { q := 9, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 44)) },
  { key := { q := 9, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 45)) },
  { key := { q := 9, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 46)) },
  { key := { q := 9, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 47)) },
  { key := { q := 9, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 21 48)) },
  { key := { q := 9, n := 22, r := 0 }
    lowerValue := 984770902183611232881
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 22 0)) },
  { key := { q := 9, n := 22, r := 1 }
    lowerValue := 5563677413466730130
    upperValue := 36472996377170786403
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 1))
    upperTrace := (.lengthenFreeN 8 (@UpperTrace.alphabetExpand 3 9 3 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 3) (by decide : 9 ≤ 3 * 3) (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 9, n := 22, r := 2 }
    lowerValue := 65822532062269316
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 2))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 22, r := 3 }
    lowerValue := 1225691621641927
    upperValue := 75973827742925481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 3))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))) },
  { key := { q := 9, n := 22, r := 4 }
    lowerValue := 32008747090098
    upperValue := 8441536415880609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 4))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 22, r := 5 }
    lowerValue := 1101930101795
    upperValue := 937948490653401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 5))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 22, r := 6 }
    lowerValue := 48147926058
    upperValue := 104216498961489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 6))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 22, r := 7 }
    lowerValue := 2604458051
    upperValue := 11579610995721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 7))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 22, r := 8 }
    lowerValue := 171474447
    upperValue := 1286623443969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 8))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 22, r := 9 }
    lowerValue := 13582009
    upperValue := 142958160441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 9))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 22, r := 10 }
    lowerValue := 1284200
    upperValue := 15884240049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 10))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 22, r := 11 }
    lowerValue := 144259
    upperValue := 1764915561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 11))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 22, r := 12 }
    lowerValue := 19210
    upperValue := 196101729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 12))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 22, r := 13 }
    lowerValue := 3033
    upperValue := 21789081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 13))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 22, r := 14 }
    lowerValue := 569
    upperValue := 2421009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 14))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 22, r := 15 }
    lowerValue := 128
    upperValue := 269001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 15))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3)))) },
  { key := { q := 9, n := 22, r := 16 }
    lowerValue := 35
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 16))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 22, r := 17 }
    lowerValue := 12
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 17))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 22, r := 18 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 20 19)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 22, r := 19 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 21 20))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19)) },
  { key := { q := 9, n := 22, r := 20 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 20)) },
  { key := { q := 9, n := 22, r := 21 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 21)) },
  { key := { q := 9, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 22)) },
  { key := { q := 9, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 23)) },
  { key := { q := 9, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 24)) },
  { key := { q := 9, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 25)) },
  { key := { q := 9, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 26)) },
  { key := { q := 9, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 27)) },
  { key := { q := 9, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 28)) },
  { key := { q := 9, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 29)) },
  { key := { q := 9, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 30)) },
  { key := { q := 9, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 31)) },
  { key := { q := 9, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 32)) },
  { key := { q := 9, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 33)) },
  { key := { q := 9, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 34)) },
  { key := { q := 9, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 35)) },
  { key := { q := 9, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 36)) },
  { key := { q := 9, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 37)) },
  { key := { q := 9, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 38)) },
  { key := { q := 9, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 39)) },
  { key := { q := 9, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 40)) },
  { key := { q := 9, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 41)) },
  { key := { q := 9, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 42)) },
  { key := { q := 9, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 43)) },
  { key := { q := 9, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 44)) },
  { key := { q := 9, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 45)) },
  { key := { q := 9, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 46)) },
  { key := { q := 9, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 47)) },
  { key := { q := 9, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 22 48)) },
  { key := { q := 9, n := 23, r := 0 }
    lowerValue := 8862938119652501095929
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 23 0)) },
  { key := { q := 9, n := 23, r := 1 }
    lowerValue := 47907773619743249168
    upperValue := 328256967394537077627
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 1))
    upperTrace := (.lengthenFreeN 9 (@UpperTrace.alphabetExpand 3 9 3 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 3) (by decide : 9 ≤ 3 * 3) (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 9, n := 23, r := 2 }
    lowerValue := 541182030875770966
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 2))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 23, r := 3 }
    lowerValue := 9600974641304196
    upperValue := 683764449686329329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 3))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))) },
  { key := { q := 9, n := 23, r := 4 }
    lowerValue := 238294526284423
    upperValue := 75973827742925481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 4))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 23, r := 5 }
    lowerValue := 7775846471132
    upperValue := 8441536415880609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 5))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 23, r := 6 }
    lowerValue := 321092396958
    upperValue := 937948490653401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 6))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 23, r := 7 }
    lowerValue := 16360315190
    upperValue := 104216498961489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 7))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 23, r := 8 }
    lowerValue := 1010846493
    upperValue := 11579610995721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 8))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 23, r := 9 }
    lowerValue := 74824790
    upperValue := 1286623443969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 9))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 23, r := 10 }
    lowerValue := 6580344
    upperValue := 142958160441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 10))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 23, r := 11 }
    lowerValue := 683809
    upperValue := 15884240049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 11))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 23, r := 12 }
    lowerValue := 83712
    upperValue := 1764915561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 12))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) },
  { key := { q := 9, n := 23, r := 13 }
    lowerValue := 12062
    upperValue := 196101729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 13))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r3_gf9_product" (primitiveUpper_valid 9 9 3))))) }]

end CoveringCodes.Database
