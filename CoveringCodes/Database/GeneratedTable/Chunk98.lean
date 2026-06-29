import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 98. Do not edit manually.

def precomputedTable_chunk_98 : Array AnyBoundEntry := #[
  { key := { q := 10, n := 10, r := 0 }
    lowerValue := 10000000000
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 10 0)) },
  { key := { q := 10, n := 10, r := 1 }
    lowerValue := 109890110
    upperValue := 200000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 1))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))) },
  { key := { q := 10, n := 10, r := 2 }
    lowerValue := 2676660
    upperValue := 20000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 2))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 10, n := 10, r := 3 }
    lowerValue := 109630
    upperValue := 2000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 10, n := 10, r := 4 }
    lowerValue := 6808
    upperValue := 115600
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 4))
    upperTrace := (.lengthenFreeN 2 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 10, r := 5 }
    lowerValue := 612
    upperValue := 11560
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 5))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4)))) },
  { key := { q := 10, n := 10, r := 6 }
    lowerValue := 79
    upperValue := 1156
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 6))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 10) (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 10, r := 7 }
    lowerValue := 15
    upperValue := 264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 7))
    upperTrace := (.alphabetProject (by decide : 0 < 10) (by decide : 10 ≤ 11) (.lengthenDummyN 2 (by decide : 0 < 11) (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 10, n := 10, r := 8 }
    lowerValue := 10
    upperValue := 50
    lowerTrace := (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 10 9)))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 10) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 10, r := 9 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 10 9))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 10 9)) },
  { key := { q := 10, n := 10, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 10)) },
  { key := { q := 10, n := 10, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 11)) },
  { key := { q := 10, n := 10, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 12)) },
  { key := { q := 10, n := 10, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 13)) },
  { key := { q := 10, n := 10, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 14)) },
  { key := { q := 10, n := 10, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 15)) },
  { key := { q := 10, n := 10, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 16)) },
  { key := { q := 10, n := 10, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 17)) },
  { key := { q := 10, n := 10, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 18)) },
  { key := { q := 10, n := 10, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 19)) },
  { key := { q := 10, n := 10, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 20)) },
  { key := { q := 10, n := 10, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 21)) },
  { key := { q := 10, n := 10, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 22)) },
  { key := { q := 10, n := 10, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 23)) },
  { key := { q := 10, n := 10, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 24)) },
  { key := { q := 10, n := 10, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 25)) },
  { key := { q := 10, n := 10, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 26)) },
  { key := { q := 10, n := 10, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 27)) },
  { key := { q := 10, n := 10, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 28)) },
  { key := { q := 10, n := 10, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 29)) },
  { key := { q := 10, n := 10, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 30)) },
  { key := { q := 10, n := 10, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 31)) },
  { key := { q := 10, n := 10, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 32)) },
  { key := { q := 10, n := 10, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 33)) },
  { key := { q := 10, n := 10, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 34)) },
  { key := { q := 10, n := 10, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 35)) },
  { key := { q := 10, n := 10, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 36)) },
  { key := { q := 10, n := 10, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 37)) },
  { key := { q := 10, n := 10, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 38)) },
  { key := { q := 10, n := 10, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 39)) },
  { key := { q := 10, n := 10, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 40)) },
  { key := { q := 10, n := 10, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 41)) },
  { key := { q := 10, n := 10, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 42)) },
  { key := { q := 10, n := 10, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 43)) },
  { key := { q := 10, n := 10, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 44)) },
  { key := { q := 10, n := 10, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 45)) },
  { key := { q := 10, n := 10, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 46)) },
  { key := { q := 10, n := 10, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 47)) },
  { key := { q := 10, n := 10, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 10 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 10 48)) },
  { key := { q := 10, n := 11, r := 0 }
    lowerValue := 100000000000
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 11 0)) },
  { key := { q := 10, n := 11, r := 1 }
    lowerValue := 1000000000
    upperValue := 2000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 1))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))) },
  { key := { q := 10, n := 11, r := 2 }
    lowerValue := 21953897
    upperValue := 200000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 2))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 10, n := 11, r := 3 }
    lowerValue := 801026
    upperValue := 20000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 10, n := 11, r := 4 }
    lowerValue := 43669
    upperValue := 1156000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 4))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 11, r := 5 }
    lowerValue := 3382
    upperValue := 115600
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 11, r := 6 }
    lowerValue := 364
    upperValue := 11560
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 6))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4)))) },
  { key := { q := 10, n := 11, r := 7 }
    lowerValue := 54
    upperValue := 1156
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 7))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 10) (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 11, r := 8 }
    lowerValue := 12
    upperValue := 264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 8))
    upperTrace := (.alphabetProject (by decide : 0 < 10) (by decide : 10 ≤ 11) (.lengthenDummyN 3 (by decide : 0 < 11) (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 10, n := 11, r := 9 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 11 10)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9)) },
  { key := { q := 10, n := 11, r := 10 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 10)) },
  { key := { q := 10, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 11)) },
  { key := { q := 10, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 12)) },
  { key := { q := 10, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 13)) },
  { key := { q := 10, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 14)) },
  { key := { q := 10, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 15)) },
  { key := { q := 10, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 16)) },
  { key := { q := 10, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 17)) },
  { key := { q := 10, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 18)) },
  { key := { q := 10, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 19)) },
  { key := { q := 10, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 20)) },
  { key := { q := 10, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 21)) },
  { key := { q := 10, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 22)) },
  { key := { q := 10, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 23)) },
  { key := { q := 10, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 24)) },
  { key := { q := 10, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 25)) },
  { key := { q := 10, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 26)) },
  { key := { q := 10, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 27)) },
  { key := { q := 10, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 28)) },
  { key := { q := 10, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 29)) },
  { key := { q := 10, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 30)) },
  { key := { q := 10, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 31)) },
  { key := { q := 10, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 32)) },
  { key := { q := 10, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 33)) },
  { key := { q := 10, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 34)) },
  { key := { q := 10, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 35)) },
  { key := { q := 10, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 36)) },
  { key := { q := 10, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 37)) },
  { key := { q := 10, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 38)) },
  { key := { q := 10, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 39)) },
  { key := { q := 10, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 40)) },
  { key := { q := 10, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 41)) },
  { key := { q := 10, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 42)) },
  { key := { q := 10, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 43)) },
  { key := { q := 10, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 44)) },
  { key := { q := 10, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 45)) },
  { key := { q := 10, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 46)) },
  { key := { q := 10, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 47)) },
  { key := { q := 10, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 11 48)) },
  { key := { q := 10, n := 12, r := 0 }
    lowerValue := 1000000000000
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 12 0)) },
  { key := { q := 10, n := 12, r := 1 }
    lowerValue := 9174311927
    upperValue := 20000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 1))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))) },
  { key := { q := 10, n := 12, r := 2 }
    lowerValue := 183318057
    upperValue := 2000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 2))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 10, n := 12, r := 3 }
    lowerValue := 6030091
    upperValue := 200000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 3))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 10, n := 12, r := 4 }
    lowerValue := 292952
    upperValue := 11560000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 4))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 12, r := 5 }
    lowerValue := 19929
    upperValue := 1156000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 5))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 12, r := 6 }
    lowerValue := 1848
    upperValue := 115600
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 6))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 12, r := 7 }
    lowerValue := 231
    upperValue := 11560
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 7))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4)))) },
  { key := { q := 10, n := 12, r := 8 }
    lowerValue := 40
    upperValue := 1156
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 8))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 10) (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 12, r := 9 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 9))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 12, r := 10 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 12 11)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10)) },
  { key := { q := 10, n := 12, r := 11 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 11)) },
  { key := { q := 10, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 12)) },
  { key := { q := 10, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 13)) },
  { key := { q := 10, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 14)) },
  { key := { q := 10, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 15)) },
  { key := { q := 10, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 16)) },
  { key := { q := 10, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 17)) },
  { key := { q := 10, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 18)) },
  { key := { q := 10, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 19)) },
  { key := { q := 10, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 20)) },
  { key := { q := 10, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 21)) },
  { key := { q := 10, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 22)) },
  { key := { q := 10, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 23)) },
  { key := { q := 10, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 24)) },
  { key := { q := 10, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 25)) },
  { key := { q := 10, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 26)) },
  { key := { q := 10, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 27)) },
  { key := { q := 10, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 28)) },
  { key := { q := 10, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 29)) },
  { key := { q := 10, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 30)) },
  { key := { q := 10, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 31)) },
  { key := { q := 10, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 32)) },
  { key := { q := 10, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 33)) },
  { key := { q := 10, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 34)) },
  { key := { q := 10, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 35)) },
  { key := { q := 10, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 36)) },
  { key := { q := 10, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 37)) },
  { key := { q := 10, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 38)) },
  { key := { q := 10, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 39)) },
  { key := { q := 10, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 40)) },
  { key := { q := 10, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 41)) },
  { key := { q := 10, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 42)) },
  { key := { q := 10, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 43)) },
  { key := { q := 10, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 44)) },
  { key := { q := 10, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 45)) },
  { key := { q := 10, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 46)) },
  { key := { q := 10, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 47)) },
  { key := { q := 10, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 12 48)) },
  { key := { q := 10, n := 13, r := 0 }
    lowerValue := 10000000000000
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 13 0)) },
  { key := { q := 10, n := 13, r := 1 }
    lowerValue := 84745762712
    upperValue := 200000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 1))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))) },
  { key := { q := 10, n := 13, r := 2 }
    lowerValue := 1553760100
    upperValue := 20000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 2))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 10, n := 13, r := 3 }
    lowerValue := 46526777
    upperValue := 2000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 3))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 10, n := 13, r := 4 }
    lowerValue := 2038302
    upperValue := 115600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 4))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 13, r := 5 }
    lowerValue := 123607
    upperValue := 11560000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 5))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 13, r := 6 }
    lowerValue := 10072
    upperValue := 1156000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 6))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 13, r := 7 }
    lowerValue := 1087
    upperValue := 115600
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 13, r := 8 }
    lowerValue := 155
    upperValue := 11560
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 8))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4)))) },
  { key := { q := 10, n := 13, r := 9 }
    lowerValue := 30
    upperValue := 1000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 9))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 13, r := 10 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 12 11))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 13, r := 11 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 13 12)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11)) },
  { key := { q := 10, n := 13, r := 12 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 12)) },
  { key := { q := 10, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 13)) },
  { key := { q := 10, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 14)) },
  { key := { q := 10, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 15)) },
  { key := { q := 10, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 16)) },
  { key := { q := 10, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 17)) },
  { key := { q := 10, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 18)) },
  { key := { q := 10, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 19)) },
  { key := { q := 10, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 20)) },
  { key := { q := 10, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 21)) },
  { key := { q := 10, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 22)) },
  { key := { q := 10, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 23)) },
  { key := { q := 10, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 24)) },
  { key := { q := 10, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 25)) },
  { key := { q := 10, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 26)) },
  { key := { q := 10, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 27)) },
  { key := { q := 10, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 28)) },
  { key := { q := 10, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 29)) },
  { key := { q := 10, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 30)) },
  { key := { q := 10, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 31)) },
  { key := { q := 10, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 32)) },
  { key := { q := 10, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 33)) },
  { key := { q := 10, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 34)) },
  { key := { q := 10, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 35)) },
  { key := { q := 10, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 36)) },
  { key := { q := 10, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 37)) },
  { key := { q := 10, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 38)) },
  { key := { q := 10, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 39)) },
  { key := { q := 10, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 40)) },
  { key := { q := 10, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 41)) },
  { key := { q := 10, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 42)) },
  { key := { q := 10, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 43)) },
  { key := { q := 10, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 44)) },
  { key := { q := 10, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 45)) },
  { key := { q := 10, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 46)) },
  { key := { q := 10, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 47)) },
  { key := { q := 10, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 13 48)) },
  { key := { q := 10, n := 14, r := 0 }
    lowerValue := 100000000000000
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 14 0)) },
  { key := { q := 10, n := 14, r := 1 }
    lowerValue := 787401574804
    upperValue := 2000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 1))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))) },
  { key := { q := 10, n := 14, r := 2 }
    lowerValue := 13336889838
    upperValue := 200000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 2))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 10, n := 14, r := 3 }
    lowerValue := 366496369
    upperValue := 20000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 3))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 10, n := 14, r := 4 }
    lowerValue := 14618997
    upperValue := 1156000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 4))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 14, r := 5 }
    lowerValue := 799639
    upperValue := 115600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 5))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 14, r := 6 }
    lowerValue := 58107
    upperValue := 11560000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 14, r := 7 }
    lowerValue := 5514
    upperValue := 1156000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 14, r := 8 }
    lowerValue := 679
    upperValue := 115600
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 14, r := 9 }
    lowerValue := 109
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 9))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 14, r := 10 }
    lowerValue := 23
    upperValue := 1000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 10))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 14, r := 11 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 13 12))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 14, r := 12 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 14 13)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12)) },
  { key := { q := 10, n := 14, r := 13 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 13)) },
  { key := { q := 10, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 14)) },
  { key := { q := 10, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 15)) },
  { key := { q := 10, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 16)) },
  { key := { q := 10, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 17)) },
  { key := { q := 10, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 18)) },
  { key := { q := 10, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 19)) },
  { key := { q := 10, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 20)) },
  { key := { q := 10, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 21)) },
  { key := { q := 10, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 22)) },
  { key := { q := 10, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 23)) },
  { key := { q := 10, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 24)) },
  { key := { q := 10, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 25)) },
  { key := { q := 10, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 26)) },
  { key := { q := 10, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 27)) },
  { key := { q := 10, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 28)) },
  { key := { q := 10, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 29)) },
  { key := { q := 10, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 30)) },
  { key := { q := 10, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 31)) },
  { key := { q := 10, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 32)) },
  { key := { q := 10, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 33)) },
  { key := { q := 10, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 34)) },
  { key := { q := 10, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 35)) },
  { key := { q := 10, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 36)) },
  { key := { q := 10, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 37)) },
  { key := { q := 10, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 38)) },
  { key := { q := 10, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 39)) },
  { key := { q := 10, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 40)) },
  { key := { q := 10, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 41)) },
  { key := { q := 10, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 42)) },
  { key := { q := 10, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 43)) },
  { key := { q := 10, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 44)) },
  { key := { q := 10, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 45)) },
  { key := { q := 10, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 46)) },
  { key := { q := 10, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 47)) },
  { key := { q := 10, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 14 48)) },
  { key := { q := 10, n := 15, r := 0 }
    lowerValue := 1000000000000000
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 15 0)) },
  { key := { q := 10, n := 15, r := 1 }
    lowerValue := 7352941176471
    upperValue := 20000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 1))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))) },
  { key := { q := 10, n := 15, r := 2 }
    lowerValue := 115727346372
    upperValue := 2000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 2))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 10, n := 15, r := 3 }
    lowerValue := 2938272766
    upperValue := 200000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 3))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 10, n := 15, r := 4 }
    lowerValue := 107571981
    upperValue := 11560000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 4))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) }]

end CoveringCodes.Database
