import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 62. Do not edit manually.

def precomputedTable_chunk_62 : Array AnyBoundEntry := #[
  { key := { q := 6, n := 22, r := 16 }
    lowerValue := 7
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 16))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 22, r := 17 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 19 18))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 22, r := 18 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 20 19)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18)) },
  { key := { q := 6, n := 22, r := 19 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 21 20))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 19)) },
  { key := { q := 6, n := 22, r := 20 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 20)) },
  { key := { q := 6, n := 22, r := 21 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 21)) },
  { key := { q := 6, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 22)) },
  { key := { q := 6, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 23)) },
  { key := { q := 6, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 24)) },
  { key := { q := 6, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 25)) },
  { key := { q := 6, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 26)) },
  { key := { q := 6, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 27)) },
  { key := { q := 6, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 28)) },
  { key := { q := 6, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 29)) },
  { key := { q := 6, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 30)) },
  { key := { q := 6, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 31)) },
  { key := { q := 6, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 32)) },
  { key := { q := 6, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 33)) },
  { key := { q := 6, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 34)) },
  { key := { q := 6, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 35)) },
  { key := { q := 6, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 36)) },
  { key := { q := 6, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 37)) },
  { key := { q := 6, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 38)) },
  { key := { q := 6, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 39)) },
  { key := { q := 6, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 40)) },
  { key := { q := 6, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 41)) },
  { key := { q := 6, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 42)) },
  { key := { q := 6, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 43)) },
  { key := { q := 6, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 44)) },
  { key := { q := 6, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 45)) },
  { key := { q := 6, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 46)) },
  { key := { q := 6, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 47)) },
  { key := { q := 6, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 22 48)) },
  { key := { q := 6, n := 23, r := 0 }
    lowerValue := 789730223053602816
    upperValue := 789730223053602816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 23 0)) },
  { key := { q := 6, n := 23, r := 1 }
    lowerValue := 6808019164255197
    upperValue := 58498535041007616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 1))
    upperTrace := (.lengthenFreeN 14 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 23, r := 2 }
    lowerValue := 122609877822327
    upperValue := 2437438960041984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 2))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 23, r := 3 }
    lowerValue := 3466526596261
    upperValue := 406239826673664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 3))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 23, r := 4 }
    lowerValue := 137053808709
    upperValue := 67706637778944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 4))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 23, r := 5 }
    lowerValue := 7120118768
    upperValue := 11284439629824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 5))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 23, r := 6 }
    lowerValue := 467790855
    upperValue := 1880739938304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 6))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 23, r := 7 }
    lowerValue := 37892920
    upperValue := 313456656384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 7))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 23, r := 8 }
    lowerValue := 3718653
    upperValue := 52242776064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 8))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 23, r := 9 }
    lowerValue := 436691
    upperValue := 8707129344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 9))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 7 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 23, r := 10 }
    lowerValue := 60838
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 10))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 23, r := 11 }
    lowerValue := 9997
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 11))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 23, r := 12 }
    lowerValue := 1931
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 12))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 23, r := 13 }
    lowerValue := 438
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 13))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 23, r := 14 }
    lowerValue := 117
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 14))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 23, r := 15 }
    lowerValue := 37
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 15))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 23, r := 16 }
    lowerValue := 14
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 16))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 23, r := 17 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 17))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 23, r := 18 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 20 19))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 23, r := 19 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 21 20)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19)) },
  { key := { q := 6, n := 23, r := 20 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 22 21))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 20)) },
  { key := { q := 6, n := 23, r := 21 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 21)) },
  { key := { q := 6, n := 23, r := 22 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 22)) },
  { key := { q := 6, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 23)) },
  { key := { q := 6, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 24)) },
  { key := { q := 6, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 25)) },
  { key := { q := 6, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 26)) },
  { key := { q := 6, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 27)) },
  { key := { q := 6, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 28)) },
  { key := { q := 6, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 29)) },
  { key := { q := 6, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 30)) },
  { key := { q := 6, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 31)) },
  { key := { q := 6, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 32)) },
  { key := { q := 6, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 33)) },
  { key := { q := 6, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 34)) },
  { key := { q := 6, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 35)) },
  { key := { q := 6, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 36)) },
  { key := { q := 6, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 37)) },
  { key := { q := 6, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 38)) },
  { key := { q := 6, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 39)) },
  { key := { q := 6, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 40)) },
  { key := { q := 6, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 41)) },
  { key := { q := 6, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 42)) },
  { key := { q := 6, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 43)) },
  { key := { q := 6, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 44)) },
  { key := { q := 6, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 45)) },
  { key := { q := 6, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 46)) },
  { key := { q := 6, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 47)) },
  { key := { q := 6, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 23 48)) },
  { key := { q := 6, n := 24, r := 0 }
    lowerValue := 4738381338321616896
    upperValue := 4738381338321616896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 24 0)) },
  { key := { q := 6, n := 24, r := 1 }
    lowerValue := 39160176349765429
    upperValue := 350991210246045696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 1))
    upperTrace := (.lengthenFreeN 15 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 24, r := 2 }
    lowerValue := 674886958883581
    upperValue := 14624633760251904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 2))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 24, r := 3 }
    lowerValue := 18223071745443
    upperValue := 2437438960041984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 3))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 24, r := 4 }
    lowerValue := 686595460217
    upperValue := 406239826673664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 4))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 24, r := 5 }
    lowerValue := 33911885750
    upperValue := 67706637778944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 5))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 24, r := 6 }
    lowerValue := 2112718505
    upperValue := 11284439629824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 6))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 24, r := 7 }
    lowerValue := 161818006
    upperValue := 1880739938304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 7))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 24, r := 8 }
    lowerValue := 14967618
    upperValue := 313456656384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 8))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 24, r := 9 }
    lowerValue := 1650835
    upperValue := 52242776064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 9))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 7 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 24, r := 10 }
    lowerValue := 215155
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 10))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 24, r := 11 }
    lowerValue := 32928
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 11))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 24, r := 12 }
    lowerValue := 5893
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 12))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 24, r := 13 }
    lowerValue := 1231
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 13))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 24, r := 14 }
    lowerValue := 300
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 14))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 24, r := 15 }
    lowerValue := 86
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 15))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 24, r := 16 }
    lowerValue := 29
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 16))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 24, r := 17 }
    lowerValue := 11
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 17))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 24, r := 18 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 18))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 24, r := 19 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 21 20))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 24, r := 20 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 22 21)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 24 20)) },
  { key := { q := 6, n := 24, r := 21 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 23 22))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 24 21)) },
  { key := { q := 6, n := 24, r := 22 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 24 22)) },
  { key := { q := 6, n := 24, r := 23 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 24 23)) },
  { key := { q := 6, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 24)) },
  { key := { q := 6, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 25)) },
  { key := { q := 6, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 26)) },
  { key := { q := 6, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 27)) },
  { key := { q := 6, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 28)) },
  { key := { q := 6, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 29)) },
  { key := { q := 6, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 30)) },
  { key := { q := 6, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 31)) },
  { key := { q := 6, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 32)) },
  { key := { q := 6, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 33)) },
  { key := { q := 6, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 34)) },
  { key := { q := 6, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 35)) },
  { key := { q := 6, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 36)) },
  { key := { q := 6, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 37)) },
  { key := { q := 6, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 38)) },
  { key := { q := 6, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 39)) },
  { key := { q := 6, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 40)) },
  { key := { q := 6, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 41)) },
  { key := { q := 6, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 42)) },
  { key := { q := 6, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 43)) },
  { key := { q := 6, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 44)) },
  { key := { q := 6, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 45)) },
  { key := { q := 6, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 46)) },
  { key := { q := 6, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 47)) },
  { key := { q := 6, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 24 48)) },
  { key := { q := 6, n := 25, r := 0 }
    lowerValue := 28430288029929701376
    upperValue := 28430288029929701376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 25 0)) },
  { key := { q := 6, n := 25, r := 1 }
    lowerValue := 225637206586743662
    upperValue := 2105947261476274176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 1))
    upperTrace := (.lengthenFreeN 16 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 25, r := 2 }
    lowerValue := 3728073436917087
    upperValue := 87747802561511424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 2))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 25, r := 3 }
    lowerValue := 96332712231148
    upperValue := 14624633760251904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 3))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 25, r := 4 }
    lowerValue := 3466526596261
    upperValue := 2437438960041984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 4))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 25, r := 5 }
    lowerValue := 163174307147
    upperValue := 406239826673664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 5))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 25, r := 6 }
    lowerValue := 9665497213
    upperValue := 67706637778944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 6))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 25, r := 7 }
    lowerValue := 702049894
    upperValue := 11284439629824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 7))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 25, r := 8 }
    lowerValue := 61406322
    upperValue := 1880739938304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 8))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 25, r := 9 }
    lowerValue := 6384279
    upperValue := 313456656384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 9))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 7 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 25, r := 10 }
    lowerValue := 781597
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 10))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 25, r := 11 }
    lowerValue := 111921
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 11))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 25, r := 12 }
    lowerValue := 18660
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 12))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 25, r := 13 }
    lowerValue := 3612
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 13))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 25, r := 14 }
    lowerValue := 811
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 14))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 25, r := 15 }
    lowerValue := 211
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 15))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 25, r := 16 }
    lowerValue := 64
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 16))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 25, r := 17 }
    lowerValue := 23
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 25, r := 18 }
    lowerValue := 10
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 25, r := 19 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 21 20)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 25, r := 20 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 22 21))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20)) },
  { key := { q := 6, n := 25, r := 21 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 23 22)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 21)) },
  { key := { q := 6, n := 25, r := 22 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 24 23))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 22)) },
  { key := { q := 6, n := 25, r := 23 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 23)) },
  { key := { q := 6, n := 25, r := 24 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 24)) },
  { key := { q := 6, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 25)) },
  { key := { q := 6, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 26)) },
  { key := { q := 6, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 27)) },
  { key := { q := 6, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 28)) },
  { key := { q := 6, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 29)) },
  { key := { q := 6, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 30)) },
  { key := { q := 6, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 31)) },
  { key := { q := 6, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 32)) },
  { key := { q := 6, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 33)) },
  { key := { q := 6, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 34)) },
  { key := { q := 6, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 35)) },
  { key := { q := 6, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 36)) },
  { key := { q := 6, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 37)) },
  { key := { q := 6, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 38)) },
  { key := { q := 6, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 39)) },
  { key := { q := 6, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 40)) },
  { key := { q := 6, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 41)) },
  { key := { q := 6, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 42)) },
  { key := { q := 6, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 43)) },
  { key := { q := 6, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 44)) },
  { key := { q := 6, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 45)) },
  { key := { q := 6, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 46)) },
  { key := { q := 6, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 47)) },
  { key := { q := 6, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 25 48)) },
  { key := { q := 6, n := 26, r := 0 }
    lowerValue := 170581728179578208256
    upperValue := 170581728179578208256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 26 0)) },
  { key := { q := 6, n := 26, r := 1 }
    lowerValue := 1302150596790673346
    upperValue := 12635683568857645056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 1))
    upperTrace := (.lengthenFreeN 17 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 26, r := 2 }
    lowerValue := 20661546533379144
    upperValue := 526486815369068544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 2))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 26, r := 3 }
    lowerValue := 511863936972113
    upperValue := 87747802561511424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 3))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 26, r := 4 }
    lowerValue := 17627531509186
    upperValue := 14624633760251904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 4))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 26, r := 5 }
    lowerValue := 792520533752
    upperValue := 2437438960041984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 5))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 26, r := 6 }
    lowerValue := 44741771321
    upperValue := 406239826673664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 6))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 26, r := 7 }
    lowerValue := 3090069103
    upperValue := 67706637778944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 7))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 26, r := 8 }
    lowerValue := 256333912
    upperValue := 11284439629824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 8))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 26, r := 9 }
    lowerValue := 25203771
    upperValue := 1880739938304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 9))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 7 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 26, r := 10 }
    lowerValue := 2908940
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 10))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 26, r := 11 }
    lowerValue := 391338
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 11))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 26, r := 12 }
    lowerValue := 61059
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 12))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 26, r := 13 }
    lowerValue := 11013
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 13))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 26, r := 14 }
    lowerValue := 2292
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 14))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 26, r := 15 }
    lowerValue := 550
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 15))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 26, r := 16 }
    lowerValue := 153
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 16))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 26, r := 17 }
    lowerValue := 49
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 26, r := 18 }
    lowerValue := 19
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 26, r := 19 }
    lowerValue := 8
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 26, r := 20 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 22 21)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 26, r := 21 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 23 22))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21)) },
  { key := { q := 6, n := 26, r := 22 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 24 23)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 22)) },
  { key := { q := 6, n := 26, r := 23 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 25 24))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 23)) },
  { key := { q := 6, n := 26, r := 24 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 24)) },
  { key := { q := 6, n := 26, r := 25 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 25)) },
  { key := { q := 6, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 26)) },
  { key := { q := 6, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 27)) },
  { key := { q := 6, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 28)) },
  { key := { q := 6, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 29)) },
  { key := { q := 6, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 30)) },
  { key := { q := 6, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 31)) },
  { key := { q := 6, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 32)) },
  { key := { q := 6, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 33)) },
  { key := { q := 6, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 34)) },
  { key := { q := 6, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 35)) },
  { key := { q := 6, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 36)) },
  { key := { q := 6, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 37)) },
  { key := { q := 6, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 38)) },
  { key := { q := 6, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 39)) },
  { key := { q := 6, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 40)) },
  { key := { q := 6, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 41)) },
  { key := { q := 6, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 42)) },
  { key := { q := 6, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 43)) },
  { key := { q := 6, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 44)) },
  { key := { q := 6, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 45)) },
  { key := { q := 6, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 46)) },
  { key := { q := 6, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 47)) },
  { key := { q := 6, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 26 48)) },
  { key := { q := 6, n := 27, r := 0 }
    lowerValue := 1023490369077469249536
    upperValue := 1023490369077469249536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 27 0)) },
  { key := { q := 6, n := 27, r := 1 }
    lowerValue := 7525664478510803306
    upperValue := 75814101413145870336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 1))
    upperTrace := (.lengthenFreeN 18 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 27, r := 2 }
    lowerValue := 114856959833629139
    upperValue := 3158920892214411264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 2))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 27, r := 3 }
    lowerValue := 2732688897936298
    upperValue := 526486815369068544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 3))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 27, r := 4 }
    lowerValue := 90228736988336
    upperValue := 87747802561511424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 4))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 27, r := 5 }
    lowerValue := 3882379025136
    upperValue := 14624633760251904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 5))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 27, r := 6 }
    lowerValue := 209354932013
    upperValue := 2437438960041984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 6))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 27, r := 7 }
    lowerValue := 13781389234
    upperValue := 406239826673664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 7))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 27, r := 8 }
    lowerValue := 1087104552
    upperValue := 67706637778944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 8))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 27, r := 9 }
    lowerValue := 101381473
    upperValue := 11284439629824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 9))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 7 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 27, r := 10 }
    lowerValue := 11067030
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 10))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 27, r := 11 }
    lowerValue := 1403779
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 11))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 27, r := 12 }
    lowerValue := 205802
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 12))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 27, r := 13 }
    lowerValue := 34744
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 13))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 27, r := 14 }
    lowerValue := 6739
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 14))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 27, r := 15 }
    lowerValue := 1500
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 15))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 27, r := 16 }
    lowerValue := 384
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 16))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 27, r := 17 }
    lowerValue := 113
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 27, r := 18 }
    lowerValue := 38
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 27, r := 19 }
    lowerValue := 15
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 27, r := 20 }
    lowerValue := 7
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 20))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) }]

end CoveringCodes.Database
