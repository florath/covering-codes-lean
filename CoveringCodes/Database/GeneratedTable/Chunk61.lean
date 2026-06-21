import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 61. Do not edit manually.

def precomputedTable_chunk_61 : Array AnyBoundEntry := #[
  { key := { q := 6, n := 17, r := 11 }
    lowerValue := 20
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 11))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 17, r := 12 }
    lowerValue := 8
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 12))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 17, r := 13 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 15 14)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 17, r := 14 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 16 15))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14)) },
  { key := { q := 6, n := 17, r := 15 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 17 16)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 15)) },
  { key := { q := 6, n := 17, r := 16 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 16)) },
  { key := { q := 6, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 17)) },
  { key := { q := 6, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 18)) },
  { key := { q := 6, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 19)) },
  { key := { q := 6, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 20)) },
  { key := { q := 6, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 21)) },
  { key := { q := 6, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 22)) },
  { key := { q := 6, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 23)) },
  { key := { q := 6, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 24)) },
  { key := { q := 6, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 25)) },
  { key := { q := 6, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 26)) },
  { key := { q := 6, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 27)) },
  { key := { q := 6, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 28)) },
  { key := { q := 6, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 29)) },
  { key := { q := 6, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 30)) },
  { key := { q := 6, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 31)) },
  { key := { q := 6, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 32)) },
  { key := { q := 6, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 33)) },
  { key := { q := 6, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 34)) },
  { key := { q := 6, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 35)) },
  { key := { q := 6, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 36)) },
  { key := { q := 6, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 37)) },
  { key := { q := 6, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 38)) },
  { key := { q := 6, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 39)) },
  { key := { q := 6, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 40)) },
  { key := { q := 6, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 41)) },
  { key := { q := 6, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 42)) },
  { key := { q := 6, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 43)) },
  { key := { q := 6, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 44)) },
  { key := { q := 6, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 45)) },
  { key := { q := 6, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 46)) },
  { key := { q := 6, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 47)) },
  { key := { q := 6, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 17 48)) },
  { key := { q := 6, n := 18, r := 0 }
    lowerValue := 101559956668416
    upperValue := 101559956668416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 18 0)) },
  { key := { q := 6, n := 18, r := 1 }
    lowerValue := 1116043479873
    upperValue := 7522959753216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 1))
    upperTrace := (.lengthenFreeN 9 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 18, r := 2 }
    lowerValue := 25934616106
    upperValue := 313456656384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 2))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 18, r := 3 }
    lowerValue := 958872661
    upperValue := 52242776064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 18, r := 4 }
    lowerValue := 50316663
    upperValue := 8707129344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 18, r := 5 }
    lowerValue := 3527194
    upperValue := 1451188224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 5))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 18, r := 6 }
    lowerValue := 318514
    upperValue := 241864704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 18, r := 7 }
    lowerValue := 36206
    upperValue := 40310784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 18, r := 8 }
    lowerValue := 5105
    upperValue := 6718464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 18, r := 9 }
    lowerValue := 885
    upperValue := 1119744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 7 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 18, r := 10 }
    lowerValue := 188
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 10))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 18, r := 11 }
    lowerValue := 49
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 11))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 18, r := 12 }
    lowerValue := 16
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 12))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 18, r := 13 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 13))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 18, r := 14 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 16 15)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 18, r := 15 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 17 16))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 18 15)) },
  { key := { q := 6, n := 18, r := 16 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 18 17)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 18 16)) },
  { key := { q := 6, n := 18, r := 17 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 18 17)) },
  { key := { q := 6, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 18)) },
  { key := { q := 6, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 19)) },
  { key := { q := 6, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 20)) },
  { key := { q := 6, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 21)) },
  { key := { q := 6, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 22)) },
  { key := { q := 6, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 23)) },
  { key := { q := 6, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 24)) },
  { key := { q := 6, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 25)) },
  { key := { q := 6, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 26)) },
  { key := { q := 6, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 27)) },
  { key := { q := 6, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 28)) },
  { key := { q := 6, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 29)) },
  { key := { q := 6, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 30)) },
  { key := { q := 6, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 31)) },
  { key := { q := 6, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 32)) },
  { key := { q := 6, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 33)) },
  { key := { q := 6, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 34)) },
  { key := { q := 6, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 35)) },
  { key := { q := 6, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 36)) },
  { key := { q := 6, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 37)) },
  { key := { q := 6, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 38)) },
  { key := { q := 6, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 39)) },
  { key := { q := 6, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 40)) },
  { key := { q := 6, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 41)) },
  { key := { q := 6, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 42)) },
  { key := { q := 6, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 43)) },
  { key := { q := 6, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 44)) },
  { key := { q := 6, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 45)) },
  { key := { q := 6, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 46)) },
  { key := { q := 6, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 47)) },
  { key := { q := 6, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 18 48)) },
  { key := { q := 6, n := 19, r := 0 }
    lowerValue := 609359740010496
    upperValue := 609359740010496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 19 0)) },
  { key := { q := 6, n := 19, r := 1 }
    lowerValue := 6347497291776
    upperValue := 45137758519296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 1))
    upperTrace := (.lengthenFreeN 10 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 19, r := 2 }
    lowerValue := 139409686573
    upperValue := 1880739938304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 2))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 19, r := 3 }
    lowerValue := 4855610857
    upperValue := 313456656384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 19, r := 4 }
    lowerValue := 239152550
    upperValue := 52242776064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 19, r := 5 }
    lowerValue := 15670618
    upperValue := 8707129344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 19, r := 6 }
    lowerValue := 1316616
    upperValue := 1451188224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 19, r := 7 }
    lowerValue := 138511
    upperValue := 241864704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 19, r := 8 }
    lowerValue := 17963
    upperValue := 40310784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 19, r := 9 }
    lowerValue := 2843
    upperValue := 6718464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 19, r := 10 }
    lowerValue := 546
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 10))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 19, r := 11 }
    lowerValue := 127
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 11))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 19, r := 12 }
    lowerValue := 36
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 12))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 19, r := 13 }
    lowerValue := 13
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 13))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 19, r := 14 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 14))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 19, r := 15 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 17 16)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15)) },
  { key := { q := 6, n := 19, r := 16 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 18 17))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 16)) },
  { key := { q := 6, n := 19, r := 17 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 19 18)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 17)) },
  { key := { q := 6, n := 19, r := 18 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 18)) },
  { key := { q := 6, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 19)) },
  { key := { q := 6, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 20)) },
  { key := { q := 6, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 21)) },
  { key := { q := 6, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 22)) },
  { key := { q := 6, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 23)) },
  { key := { q := 6, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 24)) },
  { key := { q := 6, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 25)) },
  { key := { q := 6, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 26)) },
  { key := { q := 6, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 27)) },
  { key := { q := 6, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 28)) },
  { key := { q := 6, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 29)) },
  { key := { q := 6, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 30)) },
  { key := { q := 6, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 31)) },
  { key := { q := 6, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 32)) },
  { key := { q := 6, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 33)) },
  { key := { q := 6, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 34)) },
  { key := { q := 6, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 35)) },
  { key := { q := 6, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 36)) },
  { key := { q := 6, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 37)) },
  { key := { q := 6, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 38)) },
  { key := { q := 6, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 39)) },
  { key := { q := 6, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 40)) },
  { key := { q := 6, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 41)) },
  { key := { q := 6, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 42)) },
  { key := { q := 6, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 43)) },
  { key := { q := 6, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 44)) },
  { key := { q := 6, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 45)) },
  { key := { q := 6, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 46)) },
  { key := { q := 6, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 47)) },
  { key := { q := 6, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 19 48)) },
  { key := { q := 6, n := 20, r := 0 }
    lowerValue := 3656158440062976
    upperValue := 3656158440062976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 20 0)) },
  { key := { q := 6, n := 20, r := 1 }
    lowerValue := 36199588515476
    upperValue := 270826551115776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 1))
    upperTrace := (.lengthenFreeN 11 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 20, r := 2 }
    lowerValue := 753691700694
    upperValue := 11284439629824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 2))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 20, r := 3 }
    lowerValue := 24812579759
    upperValue := 1880739938304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 20, r := 4 }
    lowerValue := 1151373351
    upperValue := 313456656384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 20, r := 5 }
    lowerValue := 70820819
    upperValue := 52242776064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 20, r := 6 }
    lowerValue := 5562809
    upperValue := 8707129344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 20, r := 7 }
    lowerValue := 544598
    upperValue := 1451188224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 20, r := 8 }
    lowerValue := 65382
    upperValue := 241864704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 20, r := 9 }
    lowerValue := 9523
    upperValue := 40310784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 20, r := 10 }
    lowerValue := 1671
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 10))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 20, r := 11 }
    lowerValue := 352
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 11))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 20, r := 12 }
    lowerValue := 89
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 12))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 20, r := 13 }
    lowerValue := 27
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 13))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 20, r := 14 }
    lowerValue := 10
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 14))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 20, r := 15 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 17 16))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 20, r := 16 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 18 17)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16)) },
  { key := { q := 6, n := 20, r := 17 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 19 18))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 17)) },
  { key := { q := 6, n := 20, r := 18 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 20 19)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 18)) },
  { key := { q := 6, n := 20, r := 19 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 19)) },
  { key := { q := 6, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 20)) },
  { key := { q := 6, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 21)) },
  { key := { q := 6, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 22)) },
  { key := { q := 6, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 23)) },
  { key := { q := 6, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 24)) },
  { key := { q := 6, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 25)) },
  { key := { q := 6, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 26)) },
  { key := { q := 6, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 27)) },
  { key := { q := 6, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 28)) },
  { key := { q := 6, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 29)) },
  { key := { q := 6, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 30)) },
  { key := { q := 6, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 31)) },
  { key := { q := 6, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 32)) },
  { key := { q := 6, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 33)) },
  { key := { q := 6, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 34)) },
  { key := { q := 6, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 35)) },
  { key := { q := 6, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 36)) },
  { key := { q := 6, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 37)) },
  { key := { q := 6, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 38)) },
  { key := { q := 6, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 39)) },
  { key := { q := 6, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 40)) },
  { key := { q := 6, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 41)) },
  { key := { q := 6, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 42)) },
  { key := { q := 6, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 43)) },
  { key := { q := 6, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 44)) },
  { key := { q := 6, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 45)) },
  { key := { q := 6, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 46)) },
  { key := { q := 6, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 47)) },
  { key := { q := 6, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 20 48)) },
  { key := { q := 6, n := 21, r := 0 }
    lowerValue := 21936950640377856
    upperValue := 21936950640377856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 21 0)) },
  { key := { q := 6, n := 21, r := 1 }
    lowerValue := 206952364531867
    upperValue := 1624959306694656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 1))
    upperTrace := (.lengthenFreeN 12 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 21, r := 2 }
    lowerValue := 4095771217397
    upperValue := 67706637778944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 2))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 21, r := 3 }
    lowerValue := 127833238001
    upperValue := 11284439629824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 21, r := 4 }
    lowerValue := 5607273866
    upperValue := 1880739938304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 4))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 21, r := 5 }
    lowerValue := 324978112
    upperValue := 313456656384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 5))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 21, r := 6 }
    lowerValue := 23964913
    upperValue := 52242776064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 6))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 21, r := 7 }
    lowerValue := 2193750
    upperValue := 8707129344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 7))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 21, r := 8 }
    lowerValue := 245139
    upperValue := 1451188224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 8))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 21, r := 9 }
    lowerValue := 33059
    upperValue := 241864704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 9))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 7 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 21, r := 10 }
    lowerValue := 5340
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 10))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 21, r := 11 }
    lowerValue := 1029
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 11))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 21, r := 12 }
    lowerValue := 236
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 12))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 21, r := 13 }
    lowerValue := 65
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 13))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 21, r := 14 }
    lowerValue := 21
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 14))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 21, r := 15 }
    lowerValue := 9
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 15))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 21, r := 16 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 18 17))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 21, r := 17 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 19 18)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17)) },
  { key := { q := 6, n := 21, r := 18 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 20 19))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 18)) },
  { key := { q := 6, n := 21, r := 19 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 19)) },
  { key := { q := 6, n := 21, r := 20 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 20)) },
  { key := { q := 6, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 21)) },
  { key := { q := 6, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 22)) },
  { key := { q := 6, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 23)) },
  { key := { q := 6, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 24)) },
  { key := { q := 6, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 25)) },
  { key := { q := 6, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 26)) },
  { key := { q := 6, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 27)) },
  { key := { q := 6, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 28)) },
  { key := { q := 6, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 29)) },
  { key := { q := 6, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 30)) },
  { key := { q := 6, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 31)) },
  { key := { q := 6, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 32)) },
  { key := { q := 6, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 33)) },
  { key := { q := 6, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 34)) },
  { key := { q := 6, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 35)) },
  { key := { q := 6, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 36)) },
  { key := { q := 6, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 37)) },
  { key := { q := 6, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 38)) },
  { key := { q := 6, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 39)) },
  { key := { q := 6, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 40)) },
  { key := { q := 6, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 41)) },
  { key := { q := 6, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 42)) },
  { key := { q := 6, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 43)) },
  { key := { q := 6, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 44)) },
  { key := { q := 6, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 45)) },
  { key := { q := 6, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 46)) },
  { key := { q := 6, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 47)) },
  { key := { q := 6, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 21 48)) },
  { key := { q := 6, n := 22, r := 0 }
    lowerValue := 131621703842267136
    upperValue := 131621703842267136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 22 0)) },
  { key := { q := 6, n := 22, r := 1 }
    lowerValue := 1185781115696101
    upperValue := 9749755840167936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 1))
    upperTrace := (.lengthenFreeN 13 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 22, r := 2 }
    lowerValue := 22361825321487
    upperValue := 406239826673664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 2))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 22, r := 3 }
    lowerValue := 663462662901
    upperValue := 67706637778944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 3))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 22, r := 4 }
    lowerValue := 27592138846
    upperValue := 11284439629824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 4))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 22, r := 5 }
    lowerValue := 1511780842
    upperValue := 1880739938304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 5))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 22, r := 6 }
    lowerValue := 105054299
    upperValue := 313456656384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 6))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 22, r := 7 }
    lowerValue := 9029632
    upperValue := 52242776064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 7))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 22, r := 8 }
    lowerValue := 943615
    upperValue := 8707129344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 8))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 22, r := 9 }
    lowerValue := 118471
    upperValue := 1451188224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 9))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 7 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 22, r := 10 }
    lowerValue := 17725
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 10))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 22, r := 11 }
    lowerValue := 3144
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 11))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 22, r := 12 }
    lowerValue := 659
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 12))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 22, r := 13 }
    lowerValue := 164
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 13))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 22, r := 14 }
    lowerValue := 48
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 14))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 22, r := 15 }
    lowerValue := 17
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 22 15))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) }]

end CoveringCodes.Database
