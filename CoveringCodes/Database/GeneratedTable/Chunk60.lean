import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 60. Do not edit manually.

def precomputedTable_chunk_60 : Array AnyBoundEntry := #[
  { key := { q := 6, n := 12, r := 6 }
    lowerValue := 127
    upperValue := 5184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 6))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 12, r := 7 }
    lowerValue := 28
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 7))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 6) (.primitive "lean_known_bounds_q6_n7_r2_synchronized_syndrome" (primitiveUpper_valid 6 7 2))) },
  { key := { q := 6, n := 12, r := 8 }
    lowerValue := 8
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 8))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 10 8))) },
  { key := { q := 6, n := 12, r := 9 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 11 10))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 11 9))) },
  { key := { q := 6, n := 12, r := 10 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 12 11)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 12 10)) },
  { key := { q := 6, n := 12, r := 11 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 12 11)) },
  { key := { q := 6, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 12)) },
  { key := { q := 6, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 13)) },
  { key := { q := 6, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 14)) },
  { key := { q := 6, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 15)) },
  { key := { q := 6, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 16)) },
  { key := { q := 6, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 17)) },
  { key := { q := 6, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 18)) },
  { key := { q := 6, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 19)) },
  { key := { q := 6, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 20)) },
  { key := { q := 6, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 21)) },
  { key := { q := 6, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 22)) },
  { key := { q := 6, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 23)) },
  { key := { q := 6, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 24)) },
  { key := { q := 6, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 25)) },
  { key := { q := 6, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 26)) },
  { key := { q := 6, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 27)) },
  { key := { q := 6, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 28)) },
  { key := { q := 6, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 29)) },
  { key := { q := 6, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 30)) },
  { key := { q := 6, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 31)) },
  { key := { q := 6, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 32)) },
  { key := { q := 6, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 33)) },
  { key := { q := 6, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 34)) },
  { key := { q := 6, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 35)) },
  { key := { q := 6, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 36)) },
  { key := { q := 6, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 37)) },
  { key := { q := 6, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 38)) },
  { key := { q := 6, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 39)) },
  { key := { q := 6, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 40)) },
  { key := { q := 6, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 41)) },
  { key := { q := 6, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 42)) },
  { key := { q := 6, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 43)) },
  { key := { q := 6, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 44)) },
  { key := { q := 6, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 45)) },
  { key := { q := 6, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 46)) },
  { key := { q := 6, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 47)) },
  { key := { q := 6, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 12 48)) },
  { key := { q := 6, n := 13, r := 0 }
    lowerValue := 13060694016
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 13 0)) },
  { key := { q := 6, n := 13, r := 1 }
    lowerValue := 197889304
    upperValue := 483729408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 1))
    upperTrace := (@UpperTrace.alphabetExpand 3 6 2 13 1 59049 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 6, n := 13, r := 2 }
    lowerValue := 6478519
    upperValue := 40310784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 2))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 13, r := 3 }
    lowerValue := 345833
    upperValue := 6718464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 3))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 13, r := 4 }
    lowerValue := 26950
    upperValue := 1119744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 4))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 13, r := 5 }
    lowerValue := 2899
    upperValue := 186624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 13, r := 6 }
    lowerValue := 418
    upperValue := 31104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 6))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 6, n := 13, r := 7 }
    lowerValue := 79
    upperValue := 5184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 7))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 13, r := 8 }
    lowerValue := 20
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 8))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 6) (.primitive "lean_known_bounds_q6_n7_r2_synchronized_syndrome" (primitiveUpper_valid 6 7 2))) },
  { key := { q := 6, n := 13, r := 9 }
    lowerValue := 7
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 9))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 11 9))) },
  { key := { q := 6, n := 13, r := 10 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 12 11))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10)) },
  { key := { q := 6, n := 13, r := 11 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 13 12)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 11)) },
  { key := { q := 6, n := 13, r := 12 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 12)) },
  { key := { q := 6, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 13)) },
  { key := { q := 6, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 14)) },
  { key := { q := 6, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 15)) },
  { key := { q := 6, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 16)) },
  { key := { q := 6, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 17)) },
  { key := { q := 6, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 18)) },
  { key := { q := 6, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 19)) },
  { key := { q := 6, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 20)) },
  { key := { q := 6, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 21)) },
  { key := { q := 6, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 22)) },
  { key := { q := 6, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 23)) },
  { key := { q := 6, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 24)) },
  { key := { q := 6, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 25)) },
  { key := { q := 6, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 26)) },
  { key := { q := 6, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 27)) },
  { key := { q := 6, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 28)) },
  { key := { q := 6, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 29)) },
  { key := { q := 6, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 30)) },
  { key := { q := 6, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 31)) },
  { key := { q := 6, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 32)) },
  { key := { q := 6, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 33)) },
  { key := { q := 6, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 34)) },
  { key := { q := 6, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 35)) },
  { key := { q := 6, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 36)) },
  { key := { q := 6, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 37)) },
  { key := { q := 6, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 38)) },
  { key := { q := 6, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 39)) },
  { key := { q := 6, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 40)) },
  { key := { q := 6, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 41)) },
  { key := { q := 6, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 42)) },
  { key := { q := 6, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 43)) },
  { key := { q := 6, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 44)) },
  { key := { q := 6, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 45)) },
  { key := { q := 6, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 46)) },
  { key := { q := 6, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 47)) },
  { key := { q := 6, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 13 48)) },
  { key := { q := 6, n := 14, r := 0 }
    lowerValue := 78364164096
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 14 0)) },
  { key := { q := 6, n := 14, r := 1 }
    lowerValue := 1103720622
    upperValue := 2902376448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 1))
    upperTrace := (@UpperTrace.alphabetExpand 3 6 2 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1)))) },
  { key := { q := 6, n := 14, r := 2 }
    lowerValue := 33403310
    upperValue := 241864704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 2))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 14, r := 3 }
    lowerValue := 1637842
    upperValue := 40310784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 3))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 14, r := 4 }
    lowerValue := 116359
    upperValue := 6718464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 4))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 14, r := 5 }
    lowerValue := 11309
    upperValue := 1119744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 5))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 14, r := 6 }
    lowerValue := 1456
    upperValue := 186624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 6))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 14, r := 7 }
    lowerValue := 244
    upperValue := 31104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 7))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 6, n := 14, r := 8 }
    lowerValue := 53
    upperValue := 5184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 8))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 14, r := 9 }
    lowerValue := 15
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 9))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 6) (.primitive "lean_known_bounds_q6_n7_r2_synchronized_syndrome" (primitiveUpper_valid 6 7 2))) },
  { key := { q := 6, n := 14, r := 10 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 10))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 14, r := 11 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 13 12))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11)) },
  { key := { q := 6, n := 14, r := 12 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 14 13)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 12)) },
  { key := { q := 6, n := 14, r := 13 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 13)) },
  { key := { q := 6, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 14)) },
  { key := { q := 6, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 15)) },
  { key := { q := 6, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 16)) },
  { key := { q := 6, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 17)) },
  { key := { q := 6, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 18)) },
  { key := { q := 6, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 19)) },
  { key := { q := 6, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 20)) },
  { key := { q := 6, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 21)) },
  { key := { q := 6, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 22)) },
  { key := { q := 6, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 23)) },
  { key := { q := 6, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 24)) },
  { key := { q := 6, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 25)) },
  { key := { q := 6, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 26)) },
  { key := { q := 6, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 27)) },
  { key := { q := 6, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 28)) },
  { key := { q := 6, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 29)) },
  { key := { q := 6, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 30)) },
  { key := { q := 6, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 31)) },
  { key := { q := 6, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 32)) },
  { key := { q := 6, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 33)) },
  { key := { q := 6, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 34)) },
  { key := { q := 6, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 35)) },
  { key := { q := 6, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 36)) },
  { key := { q := 6, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 37)) },
  { key := { q := 6, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 38)) },
  { key := { q := 6, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 39)) },
  { key := { q := 6, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 40)) },
  { key := { q := 6, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 41)) },
  { key := { q := 6, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 42)) },
  { key := { q := 6, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 43)) },
  { key := { q := 6, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 44)) },
  { key := { q := 6, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 45)) },
  { key := { q := 6, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 46)) },
  { key := { q := 6, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 47)) },
  { key := { q := 6, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 14 48)) },
  { key := { q := 6, n := 15, r := 0 }
    lowerValue := 470184984576
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 15 0)) },
  { key := { q := 6, n := 15, r := 1 }
    lowerValue := 6186644534
    upperValue := 17414258688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 1))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 6, n := 15, r := 2 }
    lowerValue := 174078114
    upperValue := 1451188224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 2))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 15, r := 3 }
    lowerValue := 7892188
    upperValue := 241864704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 3))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 15, r := 4 }
    lowerValue := 515158
    upperValue := 40310784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 4))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 15, r := 5 }
    lowerValue := 45662
    upperValue := 6718464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 5))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 15, r := 6 }
    lowerValue := 5313
    upperValue := 1119744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 6))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 15, r := 7 }
    lowerValue := 796
    upperValue := 186624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 15, r := 8 }
    lowerValue := 152
    upperValue := 31104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 8))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 6, n := 15, r := 9 }
    lowerValue := 37
    upperValue := 5184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 9))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 15, r := 10 }
    lowerValue := 12
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 10))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 15, r := 11 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 13 12)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 15, r := 12 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 14 13))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12)) },
  { key := { q := 6, n := 15, r := 13 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 15 14)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 13)) },
  { key := { q := 6, n := 15, r := 14 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 14)) },
  { key := { q := 6, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 15)) },
  { key := { q := 6, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 16)) },
  { key := { q := 6, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 17)) },
  { key := { q := 6, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 18)) },
  { key := { q := 6, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 19)) },
  { key := { q := 6, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 20)) },
  { key := { q := 6, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 21)) },
  { key := { q := 6, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 22)) },
  { key := { q := 6, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 23)) },
  { key := { q := 6, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 24)) },
  { key := { q := 6, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 25)) },
  { key := { q := 6, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 26)) },
  { key := { q := 6, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 27)) },
  { key := { q := 6, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 28)) },
  { key := { q := 6, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 29)) },
  { key := { q := 6, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 30)) },
  { key := { q := 6, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 31)) },
  { key := { q := 6, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 32)) },
  { key := { q := 6, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 33)) },
  { key := { q := 6, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 34)) },
  { key := { q := 6, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 35)) },
  { key := { q := 6, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 36)) },
  { key := { q := 6, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 37)) },
  { key := { q := 6, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 38)) },
  { key := { q := 6, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 39)) },
  { key := { q := 6, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 40)) },
  { key := { q := 6, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 41)) },
  { key := { q := 6, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 42)) },
  { key := { q := 6, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 43)) },
  { key := { q := 6, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 44)) },
  { key := { q := 6, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 45)) },
  { key := { q := 6, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 46)) },
  { key := { q := 6, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 47)) },
  { key := { q := 6, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 15 48)) },
  { key := { q := 6, n := 16, r := 0 }
    lowerValue := 2821109907456
    upperValue := 2821109907456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 16 0)) },
  { key := { q := 6, n := 16, r := 1 }
    lowerValue := 34828517376
    upperValue := 104485552128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 1))
    upperTrace := (.lengthenFreeN 2 (@UpperTrace.alphabetExpand 3 6 2 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 6, n := 16, r := 2 }
    lowerValue := 915647488
    upperValue := 8707129344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 2))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 16, r := 3 }
    lowerValue := 38602509
    upperValue := 1451188224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 3))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 16, r := 4 }
    lowerValue := 2330377
    upperValue := 241864704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 16, r := 5 }
    lowerValue := 189839
    upperValue := 40310784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 5))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 16, r := 6 }
    lowerValue := 20153
    upperValue := 6718464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 16, r := 7 }
    lowerValue := 2730
    upperValue := 1119744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 16, r := 8 }
    lowerValue := 466
    upperValue := 186624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 16, r := 9 }
    lowerValue := 100
    upperValue := 31104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 9))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 6, n := 16, r := 10 }
    lowerValue := 27
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 10))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 16, r := 11 }
    lowerValue := 9
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 11))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 16, r := 12 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 14 13)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 16, r := 13 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 15 14))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13)) },
  { key := { q := 6, n := 16, r := 14 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 16 15)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 14)) },
  { key := { q := 6, n := 16, r := 15 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 15)) },
  { key := { q := 6, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 16)) },
  { key := { q := 6, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 17)) },
  { key := { q := 6, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 18)) },
  { key := { q := 6, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 19)) },
  { key := { q := 6, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 20)) },
  { key := { q := 6, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 21)) },
  { key := { q := 6, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 22)) },
  { key := { q := 6, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 23)) },
  { key := { q := 6, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 24)) },
  { key := { q := 6, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 25)) },
  { key := { q := 6, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 26)) },
  { key := { q := 6, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 27)) },
  { key := { q := 6, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 28)) },
  { key := { q := 6, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 29)) },
  { key := { q := 6, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 30)) },
  { key := { q := 6, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 31)) },
  { key := { q := 6, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 32)) },
  { key := { q := 6, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 33)) },
  { key := { q := 6, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 34)) },
  { key := { q := 6, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 35)) },
  { key := { q := 6, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 36)) },
  { key := { q := 6, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 37)) },
  { key := { q := 6, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 38)) },
  { key := { q := 6, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 39)) },
  { key := { q := 6, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 40)) },
  { key := { q := 6, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 41)) },
  { key := { q := 6, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 42)) },
  { key := { q := 6, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 43)) },
  { key := { q := 6, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 44)) },
  { key := { q := 6, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 45)) },
  { key := { q := 6, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 46)) },
  { key := { q := 6, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 47)) },
  { key := { q := 6, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 16 48)) },
  { key := { q := 6, n := 17, r := 0 }
    lowerValue := 16926659444736
    upperValue := 16926659444736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 17 0)) },
  { key := { q := 6, n := 17, r := 1 }
    lowerValue := 196821621451
    upperValue := 626913312768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 1))
    upperTrace := (.lengthenFreeN 3 (@UpperTrace.alphabetExpand 3 6 2 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 6, n := 17, r := 2 }
    lowerValue := 4855610857
    upperValue := 52242776064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 2))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 17, r := 3 }
    lowerValue := 191291950
    upperValue := 8707129344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 3))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 17, r := 4 }
    lowerValue := 10740362
    upperValue := 1451188224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 17, r := 5 }
    lowerValue := 809366
    upperValue := 241864704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 5))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 17, r := 6 }
    lowerValue := 78991
    upperValue := 40310784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 6))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 17, r := 7 }
    lowerValue := 9764
    upperValue := 6718464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 17, r := 8 }
    lowerValue := 1508
    upperValue := 1119744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 17, r := 9 }
    lowerValue := 289
    upperValue := 186624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 7 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 17, r := 10 }
    lowerValue := 69
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 10))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) }]

end CoveringCodes.Database
