import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 117. Do not edit manually.

def precomputedTable_chunk_117 : Array AnyBoundEntry := #[
  { key := { q := 12, n := 8, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 46)) },
  { key := { q := 12, n := 8, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 47)) },
  { key := { q := 12, n := 8, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 48)) },
  { key := { q := 12, n := 9, r := 0 }
    lowerValue := 5159780352
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 9 0)) },
  { key := { q := 12, n := 9, r := 1 }
    lowerValue := 51597804
    upperValue := 214990848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 1))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 9, r := 2 }
    lowerValue := 1157940
    upperValue := 15925248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 2))
    upperTrace := (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 12, n := 9, r := 3 }
    lowerValue := 44382
    upperValue := 1327104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 12) (@UpperTrace.alphabetExpand 6 12 2 8 2 5184 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 12, n := 9, r := 4 }
    lowerValue := 2632
    upperValue := 124416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 4))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 9, r := 5 }
    lowerValue := 232
    upperValue := 3168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 5))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 9, r := 6 }
    lowerValue := 31
    upperValue := 264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 6))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 9, r := 7 }
    lowerValue := 12
    upperValue := 72
    lowerTrace := (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 9 8)))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 12) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 9, r := 8 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 9 8))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 9 8)) },
  { key := { q := 12, n := 9, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 9)) },
  { key := { q := 12, n := 9, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 10)) },
  { key := { q := 12, n := 9, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 11)) },
  { key := { q := 12, n := 9, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 12)) },
  { key := { q := 12, n := 9, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 13)) },
  { key := { q := 12, n := 9, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 14)) },
  { key := { q := 12, n := 9, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 15)) },
  { key := { q := 12, n := 9, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 16)) },
  { key := { q := 12, n := 9, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 17)) },
  { key := { q := 12, n := 9, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 18)) },
  { key := { q := 12, n := 9, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 19)) },
  { key := { q := 12, n := 9, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 20)) },
  { key := { q := 12, n := 9, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 21)) },
  { key := { q := 12, n := 9, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 22)) },
  { key := { q := 12, n := 9, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 23)) },
  { key := { q := 12, n := 9, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 24)) },
  { key := { q := 12, n := 9, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 25)) },
  { key := { q := 12, n := 9, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 26)) },
  { key := { q := 12, n := 9, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 27)) },
  { key := { q := 12, n := 9, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 28)) },
  { key := { q := 12, n := 9, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 29)) },
  { key := { q := 12, n := 9, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 30)) },
  { key := { q := 12, n := 9, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 31)) },
  { key := { q := 12, n := 9, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 32)) },
  { key := { q := 12, n := 9, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 33)) },
  { key := { q := 12, n := 9, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 34)) },
  { key := { q := 12, n := 9, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 35)) },
  { key := { q := 12, n := 9, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 36)) },
  { key := { q := 12, n := 9, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 37)) },
  { key := { q := 12, n := 9, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 38)) },
  { key := { q := 12, n := 9, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 39)) },
  { key := { q := 12, n := 9, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 40)) },
  { key := { q := 12, n := 9, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 41)) },
  { key := { q := 12, n := 9, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 42)) },
  { key := { q := 12, n := 9, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 43)) },
  { key := { q := 12, n := 9, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 44)) },
  { key := { q := 12, n := 9, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 45)) },
  { key := { q := 12, n := 9, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 46)) },
  { key := { q := 12, n := 9, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 47)) },
  { key := { q := 12, n := 9, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 9 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 9 48)) },
  { key := { q := 12, n := 10, r := 0 }
    lowerValue := 61917364224
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 10 0)) },
  { key := { q := 12, n := 10, r := 1 }
    lowerValue := 557814093
    upperValue := 2579890176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 1))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 10, r := 2 }
    lowerValue := 11144235
    upperValue := 191102976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 2))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 10, r := 3 }
    lowerValue := 374631
    upperValue := 15925248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 12) (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 10, r := 4 }
    lowerValue := 19111
    upperValue := 1327104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 4))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 12) (@UpperTrace.alphabetExpand 6 12 2 8 2 5184 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 12, n := 10, r := 5 }
    lowerValue := 1413
    upperValue := 38016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 5))
    upperTrace := (.lengthenFreeN 2 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 10, r := 6 }
    lowerValue := 149
    upperValue := 3168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 6))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 12, n := 10, r := 7 }
    lowerValue := 23
    upperValue := 264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 7))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 10, r := 8 }
    lowerValue := 12
    upperValue := 72
    lowerTrace := (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 10 9)))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 12) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 10, r := 9 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 10 9))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 10 9)) },
  { key := { q := 12, n := 10, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 10)) },
  { key := { q := 12, n := 10, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 11)) },
  { key := { q := 12, n := 10, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 12)) },
  { key := { q := 12, n := 10, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 13)) },
  { key := { q := 12, n := 10, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 14)) },
  { key := { q := 12, n := 10, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 15)) },
  { key := { q := 12, n := 10, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 16)) },
  { key := { q := 12, n := 10, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 17)) },
  { key := { q := 12, n := 10, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 18)) },
  { key := { q := 12, n := 10, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 19)) },
  { key := { q := 12, n := 10, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 20)) },
  { key := { q := 12, n := 10, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 21)) },
  { key := { q := 12, n := 10, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 22)) },
  { key := { q := 12, n := 10, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 23)) },
  { key := { q := 12, n := 10, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 24)) },
  { key := { q := 12, n := 10, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 25)) },
  { key := { q := 12, n := 10, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 26)) },
  { key := { q := 12, n := 10, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 27)) },
  { key := { q := 12, n := 10, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 28)) },
  { key := { q := 12, n := 10, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 29)) },
  { key := { q := 12, n := 10, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 30)) },
  { key := { q := 12, n := 10, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 31)) },
  { key := { q := 12, n := 10, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 32)) },
  { key := { q := 12, n := 10, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 33)) },
  { key := { q := 12, n := 10, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 34)) },
  { key := { q := 12, n := 10, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 35)) },
  { key := { q := 12, n := 10, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 36)) },
  { key := { q := 12, n := 10, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 37)) },
  { key := { q := 12, n := 10, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 38)) },
  { key := { q := 12, n := 10, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 39)) },
  { key := { q := 12, n := 10, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 40)) },
  { key := { q := 12, n := 10, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 41)) },
  { key := { q := 12, n := 10, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 42)) },
  { key := { q := 12, n := 10, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 43)) },
  { key := { q := 12, n := 10, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 44)) },
  { key := { q := 12, n := 10, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 45)) },
  { key := { q := 12, n := 10, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 46)) },
  { key := { q := 12, n := 10, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 47)) },
  { key := { q := 12, n := 10, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 10 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 10 48)) },
  { key := { q := 12, n := 11, r := 0 }
    lowerValue := 743008370688
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 11 0)) },
  { key := { q := 12, n := 11, r := 1 }
    lowerValue := 6090232547
    upperValue := 30958682112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 1))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 11, r := 2 }
    lowerValue := 109636768
    upperValue := 2293235712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 2))
    upperTrace := (.lengthenFreeN 2 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 11, r := 3 }
    lowerValue := 3281956
    upperValue := 191102976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 12, n := 11, r := 4 }
    lowerValue := 146900
    upperValue := 15925248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 4))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 12) (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 11, r := 5 }
    lowerValue := 9351
    upperValue := 456192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 5))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 11, r := 6 }
    lowerValue := 828
    upperValue := 38016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 6))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 11, r := 7 }
    lowerValue := 102
    upperValue := 3168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 7))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 12, n := 11, r := 8 }
    lowerValue := 18
    upperValue := 264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 8))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 11, r := 9 }
    lowerValue := 12
    upperValue := 72
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 11 10)))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 12) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 11, r := 10 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 11 10)) },
  { key := { q := 12, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 11)) },
  { key := { q := 12, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 12)) },
  { key := { q := 12, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 13)) },
  { key := { q := 12, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 14)) },
  { key := { q := 12, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 15)) },
  { key := { q := 12, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 16)) },
  { key := { q := 12, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 17)) },
  { key := { q := 12, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 18)) },
  { key := { q := 12, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 19)) },
  { key := { q := 12, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 20)) },
  { key := { q := 12, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 21)) },
  { key := { q := 12, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 22)) },
  { key := { q := 12, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 23)) },
  { key := { q := 12, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 24)) },
  { key := { q := 12, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 25)) },
  { key := { q := 12, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 26)) },
  { key := { q := 12, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 27)) },
  { key := { q := 12, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 28)) },
  { key := { q := 12, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 29)) },
  { key := { q := 12, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 30)) },
  { key := { q := 12, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 31)) },
  { key := { q := 12, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 32)) },
  { key := { q := 12, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 33)) },
  { key := { q := 12, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 34)) },
  { key := { q := 12, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 35)) },
  { key := { q := 12, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 36)) },
  { key := { q := 12, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 37)) },
  { key := { q := 12, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 38)) },
  { key := { q := 12, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 39)) },
  { key := { q := 12, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 40)) },
  { key := { q := 12, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 41)) },
  { key := { q := 12, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 42)) },
  { key := { q := 12, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 43)) },
  { key := { q := 12, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 44)) },
  { key := { q := 12, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 45)) },
  { key := { q := 12, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 46)) },
  { key := { q := 12, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 47)) },
  { key := { q := 12, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 11 48)) },
  { key := { q := 12, n := 12, r := 0 }
    lowerValue := 8916100448256
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 12 0)) },
  { key := { q := 12, n := 12, r := 1 }
    lowerValue := 67038349236
    upperValue := 371504185344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 1))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 12, r := 2 }
    lowerValue := 1098177171
    upperValue := 27518828544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 2))
    upperTrace := (.lengthenFreeN 3 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 12, r := 3 }
    lowerValue := 29627601
    upperValue := 2293235712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 12, r := 4 }
    lowerValue := 1181217
    upperValue := 191102976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 4))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 12, n := 12, r := 5 }
    lowerValue := 65996
    upperValue := 5474304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 5))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 12, r := 6 }
    lowerValue := 5032
    upperValue := 456192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 6))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 12, r := 7 }
    lowerValue := 519
    upperValue := 38016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 12, r := 8 }
    lowerValue := 73
    upperValue := 3168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 8))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 12, n := 12, r := 9 }
    lowerValue := 14
    upperValue := 264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 9))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 12, r := 10 }
    lowerValue := 12
    upperValue := 72
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 12 11)))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 12) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 12, r := 11 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 12 11)) },
  { key := { q := 12, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 12)) },
  { key := { q := 12, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 13)) },
  { key := { q := 12, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 14)) },
  { key := { q := 12, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 15)) },
  { key := { q := 12, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 16)) },
  { key := { q := 12, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 17)) },
  { key := { q := 12, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 18)) },
  { key := { q := 12, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 19)) },
  { key := { q := 12, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 20)) },
  { key := { q := 12, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 21)) },
  { key := { q := 12, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 22)) },
  { key := { q := 12, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 23)) },
  { key := { q := 12, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 24)) },
  { key := { q := 12, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 25)) },
  { key := { q := 12, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 26)) },
  { key := { q := 12, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 27)) },
  { key := { q := 12, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 28)) },
  { key := { q := 12, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 29)) },
  { key := { q := 12, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 30)) },
  { key := { q := 12, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 31)) },
  { key := { q := 12, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 32)) },
  { key := { q := 12, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 33)) },
  { key := { q := 12, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 34)) },
  { key := { q := 12, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 35)) },
  { key := { q := 12, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 36)) },
  { key := { q := 12, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 37)) },
  { key := { q := 12, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 38)) },
  { key := { q := 12, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 39)) },
  { key := { q := 12, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 40)) },
  { key := { q := 12, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 41)) },
  { key := { q := 12, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 42)) },
  { key := { q := 12, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 43)) },
  { key := { q := 12, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 44)) },
  { key := { q := 12, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 45)) },
  { key := { q := 12, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 46)) },
  { key := { q := 12, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 47)) },
  { key := { q := 12, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 12 48)) },
  { key := { q := 12, n := 13, r := 0 }
    lowerValue := 106993205379072
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 13 0)) },
  { key := { q := 12, n := 13, r := 1 }
    lowerValue := 743008370688
    upperValue := 3962711310336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 1))
    upperTrace := (@UpperTrace.alphabetExpand 3 12 4 13 1 59049 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 12, n := 13, r := 2 }
    lowerValue := 11166061927
    upperValue := 330225942528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 2))
    upperTrace := (.lengthenFreeN 4 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 13, r := 3 }
    lowerValue := 274167211
    upperValue := 27518828544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 13, r := 4 }
    lowerValue := 9853349
    upperValue := 2293235712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 4))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 13, r := 5 }
    lowerValue := 490500
    upperValue := 65691648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 5))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 13, r := 6 }
    lowerValue := 32839
    upperValue := 5474304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 13, r := 7 }
    lowerValue := 2916
    upperValue := 456192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 13, r := 8 }
    lowerValue := 343
    upperValue := 38016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 13, r := 9 }
    lowerValue := 54
    upperValue := 3168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 9))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 12, n := 13, r := 10 }
    lowerValue := 12
    upperValue := 264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 10))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 13, r := 11 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 13 12)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11)) },
  { key := { q := 12, n := 13, r := 12 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 12)) },
  { key := { q := 12, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 13)) },
  { key := { q := 12, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 14)) },
  { key := { q := 12, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 15)) },
  { key := { q := 12, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 16)) },
  { key := { q := 12, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 17)) },
  { key := { q := 12, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 18)) },
  { key := { q := 12, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 19)) },
  { key := { q := 12, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 20)) },
  { key := { q := 12, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 21)) },
  { key := { q := 12, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 22)) },
  { key := { q := 12, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 23)) },
  { key := { q := 12, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 24)) },
  { key := { q := 12, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 25)) },
  { key := { q := 12, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 26)) },
  { key := { q := 12, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 27)) },
  { key := { q := 12, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 28)) },
  { key := { q := 12, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 29)) },
  { key := { q := 12, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 30)) },
  { key := { q := 12, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 31)) },
  { key := { q := 12, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 32)) },
  { key := { q := 12, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 33)) },
  { key := { q := 12, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 34)) },
  { key := { q := 12, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 35)) },
  { key := { q := 12, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 36)) },
  { key := { q := 12, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 37)) },
  { key := { q := 12, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 38)) },
  { key := { q := 12, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 39)) },
  { key := { q := 12, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 40)) },
  { key := { q := 12, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 41)) },
  { key := { q := 12, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 42)) },
  { key := { q := 12, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 43)) },
  { key := { q := 12, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 44)) },
  { key := { q := 12, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 45)) },
  { key := { q := 12, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 46)) },
  { key := { q := 12, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 47)) },
  { key := { q := 12, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 13 48)) },
  { key := { q := 12, n := 14, r := 0 }
    lowerValue := 1283918464548864
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 14 0)) },
  { key := { q := 12, n := 14, r := 1 }
    lowerValue := 8283344932574
    upperValue := 47552535724032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 1))
    upperTrace := (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1)))) }]

end CoveringCodes.Database
