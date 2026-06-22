import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 89. Do not edit manually.

def precomputedTable_chunk_89 : Array AnyBoundEntry := #[
  { key := { q := 9, n := 13, r := 4 }
    lowerValue := 825236
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 4))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 13, r := 5 }
    lowerValue := 56171
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 5))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 13, r := 6 }
    lowerValue := 5135
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 6))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 13, r := 7 }
    lowerValue := 621
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 13, r := 8 }
    lowerValue := 99
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 8))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 9, n := 13, r := 9 }
    lowerValue := 21
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 9))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 13, r := 10 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 12 11))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 12 10))) },
  { key := { q := 9, n := 13, r := 11 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 13 12)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 13 11)) },
  { key := { q := 9, n := 13, r := 12 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 13 12)) },
  { key := { q := 9, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 13)) },
  { key := { q := 9, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 14)) },
  { key := { q := 9, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 15)) },
  { key := { q := 9, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 16)) },
  { key := { q := 9, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 17)) },
  { key := { q := 9, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 18)) },
  { key := { q := 9, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 19)) },
  { key := { q := 9, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 20)) },
  { key := { q := 9, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 21)) },
  { key := { q := 9, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 22)) },
  { key := { q := 9, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 23)) },
  { key := { q := 9, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 24)) },
  { key := { q := 9, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 25)) },
  { key := { q := 9, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 26)) },
  { key := { q := 9, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 27)) },
  { key := { q := 9, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 28)) },
  { key := { q := 9, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 29)) },
  { key := { q := 9, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 30)) },
  { key := { q := 9, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 31)) },
  { key := { q := 9, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 32)) },
  { key := { q := 9, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 33)) },
  { key := { q := 9, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 34)) },
  { key := { q := 9, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 35)) },
  { key := { q := 9, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 36)) },
  { key := { q := 9, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 37)) },
  { key := { q := 9, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 38)) },
  { key := { q := 9, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 39)) },
  { key := { q := 9, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 40)) },
  { key := { q := 9, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 41)) },
  { key := { q := 9, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 42)) },
  { key := { q := 9, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 43)) },
  { key := { q := 9, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 44)) },
  { key := { q := 9, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 45)) },
  { key := { q := 9, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 46)) },
  { key := { q := 9, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 47)) },
  { key := { q := 9, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 13 48)) },
  { key := { q := 9, n := 14, r := 0 }
    lowerValue := 22876792454961
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 14 0)) },
  { key := { q := 9, n := 14, r := 1 }
    lowerValue := 202449490752
    upperValue := 1286623443969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 1))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 14, r := 2 }
    lowerValue := 3853257951
    upperValue := 142958160441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 2))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 14, r := 3 }
    lowerValue := 118960987
    upperValue := 15884240049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 14, r := 4 }
    lowerValue := 5329603
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 4))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 14, r := 5 }
    lowerValue := 327308
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 5))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 14, r := 6 }
    lowerValue := 26691
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 14, r := 7 }
    lowerValue := 2841
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 14, r := 8 }
    lowerValue := 392
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 14, r := 9 }
    lowerValue := 70
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 9))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 9, n := 14, r := 10 }
    lowerValue := 17
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 10))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 14, r := 11 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 13 12))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 13 11))) },
  { key := { q := 9, n := 14, r := 12 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 14 13)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 14 12)) },
  { key := { q := 9, n := 14, r := 13 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 14 13)) },
  { key := { q := 9, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 14)) },
  { key := { q := 9, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 15)) },
  { key := { q := 9, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 16)) },
  { key := { q := 9, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 17)) },
  { key := { q := 9, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 18)) },
  { key := { q := 9, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 19)) },
  { key := { q := 9, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 20)) },
  { key := { q := 9, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 21)) },
  { key := { q := 9, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 22)) },
  { key := { q := 9, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 23)) },
  { key := { q := 9, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 24)) },
  { key := { q := 9, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 25)) },
  { key := { q := 9, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 26)) },
  { key := { q := 9, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 27)) },
  { key := { q := 9, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 28)) },
  { key := { q := 9, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 29)) },
  { key := { q := 9, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 30)) },
  { key := { q := 9, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 31)) },
  { key := { q := 9, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 32)) },
  { key := { q := 9, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 33)) },
  { key := { q := 9, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 34)) },
  { key := { q := 9, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 35)) },
  { key := { q := 9, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 36)) },
  { key := { q := 9, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 37)) },
  { key := { q := 9, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 38)) },
  { key := { q := 9, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 39)) },
  { key := { q := 9, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 40)) },
  { key := { q := 9, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 41)) },
  { key := { q := 9, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 42)) },
  { key := { q := 9, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 43)) },
  { key := { q := 9, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 44)) },
  { key := { q := 9, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 45)) },
  { key := { q := 9, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 46)) },
  { key := { q := 9, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 47)) },
  { key := { q := 9, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 14 48)) },
  { key := { q := 9, n := 15, r := 0 }
    lowerValue := 205891132094649
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 15 0)) },
  { key := { q := 9, n := 15, r := 1 }
    lowerValue := 1701579604089
    upperValue := 11579610995721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 1))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 15, r := 2 }
    lowerValue := 30096642610
    upperValue := 1286623443969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 2))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 15, r := 3 }
    lowerValue := 858591633
    upperValue := 142958160441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 15, r := 4 }
    lowerValue := 35310710
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 4))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 15, r := 5 }
    lowerValue := 1975295
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 5))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 15, r := 6 }
    lowerValue := 145377
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 6))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 15, r := 7 }
    lowerValue := 13808
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 15, r := 8 }
    lowerValue := 1676
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 15, r := 9 }
    lowerValue := 260
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 15, r := 10 }
    lowerValue := 52
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 10))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 9, n := 15, r := 11 }
    lowerValue := 14
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 11))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 15, r := 12 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 14 13))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 14 12))) },
  { key := { q := 9, n := 15, r := 13 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 15 14)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 15 13)) },
  { key := { q := 9, n := 15, r := 14 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 15 14)) },
  { key := { q := 9, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 15)) },
  { key := { q := 9, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 16)) },
  { key := { q := 9, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 17)) },
  { key := { q := 9, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 18)) },
  { key := { q := 9, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 19)) },
  { key := { q := 9, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 20)) },
  { key := { q := 9, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 21)) },
  { key := { q := 9, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 22)) },
  { key := { q := 9, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 23)) },
  { key := { q := 9, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 24)) },
  { key := { q := 9, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 25)) },
  { key := { q := 9, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 26)) },
  { key := { q := 9, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 27)) },
  { key := { q := 9, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 28)) },
  { key := { q := 9, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 29)) },
  { key := { q := 9, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 30)) },
  { key := { q := 9, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 31)) },
  { key := { q := 9, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 32)) },
  { key := { q := 9, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 33)) },
  { key := { q := 9, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 34)) },
  { key := { q := 9, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 35)) },
  { key := { q := 9, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 36)) },
  { key := { q := 9, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 37)) },
  { key := { q := 9, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 38)) },
  { key := { q := 9, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 39)) },
  { key := { q := 9, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 40)) },
  { key := { q := 9, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 41)) },
  { key := { q := 9, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 42)) },
  { key := { q := 9, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 43)) },
  { key := { q := 9, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 44)) },
  { key := { q := 9, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 45)) },
  { key := { q := 9, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 46)) },
  { key := { q := 9, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 47)) },
  { key := { q := 9, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 15 48)) },
  { key := { q := 9, n := 16, r := 0 }
    lowerValue := 1853020188851841
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 16 0)) },
  { key := { q := 9, n := 16, r := 1 }
    lowerValue := 14364497587999
    upperValue := 104216498961489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 1))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 16, r := 2 }
    lowerValue := 237292891389
    upperValue := 11579610995721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 2))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 16, r := 3 }
    lowerValue := 6291469394
    upperValue := 1286623443969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 16, r := 4 }
    lowerValue := 239122551
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 4))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 16, r := 5 }
    lowerValue := 12281428
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 5))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 16, r := 6 }
    lowerValue := 823518
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 16, r := 7 }
    lowerValue := 70614
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 16, r := 8 }
    lowerValue := 7652
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 16, r := 9 }
    lowerValue := 1043
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 16, r := 10 }
    lowerValue := 179
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 10))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 16, r := 11 }
    lowerValue := 39
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 11))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 9, n := 16, r := 12 }
    lowerValue := 11
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 12))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 16, r := 13 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 15 14))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 15 13))) },
  { key := { q := 9, n := 16, r := 14 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 16 15)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 16 14)) },
  { key := { q := 9, n := 16, r := 15 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 16 15)) },
  { key := { q := 9, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 16)) },
  { key := { q := 9, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 17)) },
  { key := { q := 9, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 18)) },
  { key := { q := 9, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 19)) },
  { key := { q := 9, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 20)) },
  { key := { q := 9, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 21)) },
  { key := { q := 9, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 22)) },
  { key := { q := 9, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 23)) },
  { key := { q := 9, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 24)) },
  { key := { q := 9, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 25)) },
  { key := { q := 9, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 26)) },
  { key := { q := 9, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 27)) },
  { key := { q := 9, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 28)) },
  { key := { q := 9, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 29)) },
  { key := { q := 9, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 30)) },
  { key := { q := 9, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 31)) },
  { key := { q := 9, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 32)) },
  { key := { q := 9, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 33)) },
  { key := { q := 9, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 34)) },
  { key := { q := 9, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 35)) },
  { key := { q := 9, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 36)) },
  { key := { q := 9, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 37)) },
  { key := { q := 9, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 38)) },
  { key := { q := 9, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 39)) },
  { key := { q := 9, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 40)) },
  { key := { q := 9, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 41)) },
  { key := { q := 9, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 42)) },
  { key := { q := 9, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 43)) },
  { key := { q := 9, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 44)) },
  { key := { q := 9, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 45)) },
  { key := { q := 9, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 46)) },
  { key := { q := 9, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 47)) },
  { key := { q := 9, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 16 48)) },
  { key := { q := 9, n := 17, r := 0 }
    lowerValue := 16677181699666569
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 17 0)) },
  { key := { q := 9, n := 17, r := 1 }
    lowerValue := 121731253282238
    upperValue := 937948490653401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 1))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 17, r := 2 }
    lowerValue := 1886345628285
    upperValue := 104216498961489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 2))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 17, r := 3 }
    lowerValue := 46714663824
    upperValue := 11579610995721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 17, r := 4 }
    lowerValue := 1650310530
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 4))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 17, r := 5 }
    lowerValue := 78343022
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 5))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 17, r := 6 }
    lowerValue := 4823944
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 17, r := 7 }
    lowerValue := 376949
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 17, r := 8 }
    lowerValue := 36889
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 17, r := 9 }
    lowerValue := 4490
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 17, r := 10 }
    lowerValue := 679
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 10))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 17, r := 11 }
    lowerValue := 128
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 11))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 17, r := 12 }
    lowerValue := 30
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 12))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 9, n := 17, r := 13 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 13))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 17, r := 14 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 16 15))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 16 14))) },
  { key := { q := 9, n := 17, r := 15 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 17 16)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 17 15)) },
  { key := { q := 9, n := 17, r := 16 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 17 16)) },
  { key := { q := 9, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 17)) },
  { key := { q := 9, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 18)) },
  { key := { q := 9, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 19)) },
  { key := { q := 9, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 20)) },
  { key := { q := 9, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 21)) },
  { key := { q := 9, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 22)) },
  { key := { q := 9, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 23)) },
  { key := { q := 9, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 24)) },
  { key := { q := 9, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 25)) },
  { key := { q := 9, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 26)) },
  { key := { q := 9, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 27)) },
  { key := { q := 9, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 28)) },
  { key := { q := 9, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 29)) },
  { key := { q := 9, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 30)) },
  { key := { q := 9, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 31)) },
  { key := { q := 9, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 32)) },
  { key := { q := 9, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 33)) },
  { key := { q := 9, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 34)) },
  { key := { q := 9, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 35)) },
  { key := { q := 9, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 36)) },
  { key := { q := 9, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 37)) },
  { key := { q := 9, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 38)) },
  { key := { q := 9, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 39)) },
  { key := { q := 9, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 40)) },
  { key := { q := 9, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 41)) },
  { key := { q := 9, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 42)) },
  { key := { q := 9, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 43)) },
  { key := { q := 9, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 44)) },
  { key := { q := 9, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 45)) },
  { key := { q := 9, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 46)) },
  { key := { q := 9, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 47)) },
  { key := { q := 9, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 17 48)) },
  { key := { q := 9, n := 18, r := 0 }
    lowerValue := 150094635296999121
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 18 0)) },
  { key := { q := 9, n := 18, r := 1 }
    lowerValue := 1035135415841374
    upperValue := 8441536415880609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 1))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 18, r := 2 }
    lowerValue := 15104622652411
    upperValue := 937948490653401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 2))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 18, r := 3 }
    lowerValue := 350910588941
    upperValue := 104216498961489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 3))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 18, r := 4 }
    lowerValue := 11580045726
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 4))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 18, r := 5 }
    lowerValue := 511016629
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 5))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 18, r := 6 }
    lowerValue := 29087212
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 18, r := 7 }
    lowerValue := 2087550
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 18, r := 8 }
    lowerValue := 186214
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 18 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) }]

end CoveringCodes.Database
