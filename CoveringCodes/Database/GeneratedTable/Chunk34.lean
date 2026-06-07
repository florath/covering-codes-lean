import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 34. Do not edit manually.

def precomputedTable_chunk_34 : Array AnyBoundEntry := #[
  { key := { q := 3, n := 26, r := 23 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 25 24))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 23)) },
  { key := { q := 3, n := 26, r := 24 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 24)) },
  { key := { q := 3, n := 26, r := 25 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 25)) },
  { key := { q := 3, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 26)) },
  { key := { q := 3, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 27)) },
  { key := { q := 3, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 28)) },
  { key := { q := 3, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 29)) },
  { key := { q := 3, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 30)) },
  { key := { q := 3, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 31)) },
  { key := { q := 3, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 32)) },
  { key := { q := 3, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 33)) },
  { key := { q := 3, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 34)) },
  { key := { q := 3, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 35)) },
  { key := { q := 3, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 36)) },
  { key := { q := 3, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 37)) },
  { key := { q := 3, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 38)) },
  { key := { q := 3, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 39)) },
  { key := { q := 3, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 40)) },
  { key := { q := 3, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 41)) },
  { key := { q := 3, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 42)) },
  { key := { q := 3, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 43)) },
  { key := { q := 3, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 44)) },
  { key := { q := 3, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 45)) },
  { key := { q := 3, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 46)) },
  { key := { q := 3, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 47)) },
  { key := { q := 3, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 26 48)) },
  { key := { q := 3, n := 27, r := 0 }
    lowerValue := 7625597484987
    upperValue := 7625597484987
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 27 0)) },
  { key := { q := 3, n := 27, r := 1 }
    lowerValue := 138647227000
    upperValue := 564859072962
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 1))
    upperTrace := (.lengthenFreeN 19 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 27, r := 2 }
    lowerValue := 5226591834
    upperValue := 188286357654
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 2))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 27, r := 3 }
    lowerValue := 306753992
    upperValue := 62762119218
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 3))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 27, r := 4 }
    lowerValue := 24948055
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 4))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 27, r := 5 }
    lowerValue := 2639512
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 5))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 27, r := 6 }
    lowerValue := 349259
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 6))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 27, r := 7 }
    lowerValue := 56277
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 7))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 27, r := 8 }
    lowerValue := 10835
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 8))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 27, r := 9 }
    lowerValue := 2458
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 9))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 27, r := 10 }
    lowerValue := 650
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 10))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 27, r := 11 }
    lowerValue := 199
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 11))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 27, r := 12 }
    lowerValue := 70
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 12))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 27, r := 13 }
    lowerValue := 28
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 13))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 27, r := 14 }
    lowerValue := 13
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 14))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 27, r := 15 }
    lowerValue := 7
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 15))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 27, r := 16 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 16))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 27, r := 17 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 17))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 27, r := 18 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 20 19))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 27 18)) },
  { key := { q := 3, n := 27, r := 19 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 21 20)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 27 19)) },
  { key := { q := 3, n := 27, r := 20 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 22 21))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 27 20)) },
  { key := { q := 3, n := 27, r := 21 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 23 22)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 27 21)) },
  { key := { q := 3, n := 27, r := 22 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 24 23))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 27 22)) },
  { key := { q := 3, n := 27, r := 23 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 25 24)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 27 23)) },
  { key := { q := 3, n := 27, r := 24 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 26 25))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 27 24)) },
  { key := { q := 3, n := 27, r := 25 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 27 25)) },
  { key := { q := 3, n := 27, r := 26 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 27 26)) },
  { key := { q := 3, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 27)) },
  { key := { q := 3, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 28)) },
  { key := { q := 3, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 29)) },
  { key := { q := 3, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 30)) },
  { key := { q := 3, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 31)) },
  { key := { q := 3, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 32)) },
  { key := { q := 3, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 33)) },
  { key := { q := 3, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 34)) },
  { key := { q := 3, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 35)) },
  { key := { q := 3, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 36)) },
  { key := { q := 3, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 37)) },
  { key := { q := 3, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 38)) },
  { key := { q := 3, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 39)) },
  { key := { q := 3, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 40)) },
  { key := { q := 3, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 41)) },
  { key := { q := 3, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 42)) },
  { key := { q := 3, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 43)) },
  { key := { q := 3, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 44)) },
  { key := { q := 3, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 45)) },
  { key := { q := 3, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 46)) },
  { key := { q := 3, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 47)) },
  { key := { q := 3, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 27 48)) },
  { key := { q := 3, n := 28, r := 0 }
    lowerValue := 22876792454961
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 28 0)) },
  { key := { q := 3, n := 28, r := 1 }
    lowerValue := 401347236052
    upperValue := 1694577218886
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 1))
    upperTrace := (.lengthenFreeN 20 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 28, r := 2 }
    lowerValue := 14580492324
    upperValue := 564859072962
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 2))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 28, r := 3 }
    lowerValue := 823587589
    upperValue := 188286357654
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 3))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 28, r := 4 }
    lowerValue := 64373307
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 4))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 28, r := 5 }
    lowerValue := 6535598
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 5))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 28, r := 6 }
    lowerValue := 828519
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 6))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 28, r := 7 }
    lowerValue := 127683
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 7))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 28, r := 8 }
    lowerValue := 23468
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 8))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 28, r := 9 }
    lowerValue := 5072
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 9))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 28, r := 10 }
    lowerValue := 1275
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 10))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 28, r := 11 }
    lowerValue := 370
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 11))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 28, r := 12 }
    lowerValue := 123
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 12))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 28, r := 13 }
    lowerValue := 47
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 13))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 28, r := 14 }
    lowerValue := 20
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 14))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 28, r := 15 }
    lowerValue := 10
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 15))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 28, r := 16 }
    lowerValue := 6
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 16))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 28, r := 17 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 17))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 28, r := 18 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18)) },
  { key := { q := 3, n := 28, r := 19 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 21 20))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 19)) },
  { key := { q := 3, n := 28, r := 20 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 22 21)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 20)) },
  { key := { q := 3, n := 28, r := 21 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 23 22))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 21)) },
  { key := { q := 3, n := 28, r := 22 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 24 23)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 22)) },
  { key := { q := 3, n := 28, r := 23 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 25 24))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 23)) },
  { key := { q := 3, n := 28, r := 24 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 26 25)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 24)) },
  { key := { q := 3, n := 28, r := 25 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 27 26))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 25)) },
  { key := { q := 3, n := 28, r := 26 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 26)) },
  { key := { q := 3, n := 28, r := 27 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 27)) },
  { key := { q := 3, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 28)) },
  { key := { q := 3, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 29)) },
  { key := { q := 3, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 30)) },
  { key := { q := 3, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 31)) },
  { key := { q := 3, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 32)) },
  { key := { q := 3, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 33)) },
  { key := { q := 3, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 34)) },
  { key := { q := 3, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 35)) },
  { key := { q := 3, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 36)) },
  { key := { q := 3, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 37)) },
  { key := { q := 3, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 38)) },
  { key := { q := 3, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 39)) },
  { key := { q := 3, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 40)) },
  { key := { q := 3, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 41)) },
  { key := { q := 3, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 42)) },
  { key := { q := 3, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 43)) },
  { key := { q := 3, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 44)) },
  { key := { q := 3, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 45)) },
  { key := { q := 3, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 46)) },
  { key := { q := 3, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 47)) },
  { key := { q := 3, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 28 48)) },
  { key := { q := 3, n := 29, r := 0 }
    lowerValue := 68630377364883
    upperValue := 68630377364883
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 29 0)) },
  { key := { q := 3, n := 29, r := 1 }
    lowerValue := 1163226734999
    upperValue := 5083731656658
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 1))
    upperTrace := (.lengthenFreeN 21 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 29, r := 2 }
    lowerValue := 40778596177
    upperValue := 1694577218886
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 2))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 29, r := 3 }
    lowerValue := 2219970156
    upperValue := 564859072962
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 3))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 29, r := 4 }
    lowerValue := 167011926
    upperValue := 94143178827
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 4))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 29, r := 5 }
    lowerValue := 16297529
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 5))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 29, r := 6 }
    lowerValue := 1982828
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 6))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 29, r := 7 }
    lowerValue := 292802
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 7))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 29, r := 8 }
    lowerValue := 51479
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 8))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 29, r := 9 }
    lowerValue := 10623
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 9))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 29, r := 10 }
    lowerValue := 2545
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 10))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 29, r := 11 }
    lowerValue := 702
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 11))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 29, r := 12 }
    lowerValue := 222
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 12))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 29, r := 13 }
    lowerValue := 80
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 13))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 29, r := 14 }
    lowerValue := 33
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 14))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 29, r := 15 }
    lowerValue := 15
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 15))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 29, r := 16 }
    lowerValue := 8
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 16))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 29, r := 17 }
    lowerValue := 5
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 17))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 29, r := 18 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 18))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 29, r := 19 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 21 20)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19)) },
  { key := { q := 3, n := 29, r := 20 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 22 21))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 20)) },
  { key := { q := 3, n := 29, r := 21 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 23 22)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 21)) },
  { key := { q := 3, n := 29, r := 22 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 24 23))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 22)) },
  { key := { q := 3, n := 29, r := 23 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 25 24)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 23)) },
  { key := { q := 3, n := 29, r := 24 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 26 25))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 24)) },
  { key := { q := 3, n := 29, r := 25 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 27 26)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 25)) },
  { key := { q := 3, n := 29, r := 26 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 28 27))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 26)) },
  { key := { q := 3, n := 29, r := 27 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 27)) },
  { key := { q := 3, n := 29, r := 28 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 28)) },
  { key := { q := 3, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 29)) },
  { key := { q := 3, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 30)) },
  { key := { q := 3, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 31)) },
  { key := { q := 3, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 32)) },
  { key := { q := 3, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 33)) },
  { key := { q := 3, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 34)) },
  { key := { q := 3, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 35)) },
  { key := { q := 3, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 36)) },
  { key := { q := 3, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 37)) },
  { key := { q := 3, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 38)) },
  { key := { q := 3, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 39)) },
  { key := { q := 3, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 40)) },
  { key := { q := 3, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 41)) },
  { key := { q := 3, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 42)) },
  { key := { q := 3, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 43)) },
  { key := { q := 3, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 44)) },
  { key := { q := 3, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 45)) },
  { key := { q := 3, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 46)) },
  { key := { q := 3, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 47)) },
  { key := { q := 3, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 29 48)) },
  { key := { q := 3, n := 30, r := 0 }
    lowerValue := 205891132094649
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 30 0)) },
  { key := { q := 3, n := 30, r := 1 }
    lowerValue := 3375264460569
    upperValue := 15251194969974
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 1))
    upperTrace := (.lengthenFreeN 22 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 30, r := 2 }
    lowerValue := 114320450914
    upperValue := 5083731656658
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 2))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 30, r := 3 }
    lowerValue := 6005983843
    upperValue := 1694577218886
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 3))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 30, r := 4 }
    lowerValue := 435507862
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 4))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 30, r := 5 }
    lowerValue := 40908615
    upperValue := 94143178827
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 5))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 30, r := 6 }
    lowerValue := 4784322
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 6))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 30, r := 7 }
    lowerValue := 678128
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 7))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 30, r := 8 }
    lowerValue := 114260
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 8))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 30, r := 9 }
    lowerValue := 22558
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 9))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 30, r := 10 }
    lowerValue := 5162
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 10))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 30, r := 11 }
    lowerValue := 1357
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 11))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 30, r := 12 }
    lowerValue := 407
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 12))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 30, r := 13 }
    lowerValue := 139
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 13))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 30, r := 14 }
    lowerValue := 54
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 14))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 30, r := 15 }
    lowerValue := 23
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 15))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 30, r := 16 }
    lowerValue := 12
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 16))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 30, r := 17 }
    lowerValue := 7
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 30, r := 18 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 18))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 30, r := 19 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 19))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 30, r := 20 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 22 21)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 30 20)) },
  { key := { q := 3, n := 30, r := 21 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 23 22))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 30 21)) },
  { key := { q := 3, n := 30, r := 22 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 24 23)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 30 22)) },
  { key := { q := 3, n := 30, r := 23 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 25 24))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 30 23)) },
  { key := { q := 3, n := 30, r := 24 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 26 25)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 30 24)) },
  { key := { q := 3, n := 30, r := 25 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 27 26))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 30 25)) },
  { key := { q := 3, n := 30, r := 26 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 28 27)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 30 26)) },
  { key := { q := 3, n := 30, r := 27 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 29 28))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 30 27)) },
  { key := { q := 3, n := 30, r := 28 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 30 28)) },
  { key := { q := 3, n := 30, r := 29 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 30 29)) },
  { key := { q := 3, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 30)) },
  { key := { q := 3, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 31)) },
  { key := { q := 3, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 32)) },
  { key := { q := 3, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 33)) },
  { key := { q := 3, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 34)) },
  { key := { q := 3, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 35)) },
  { key := { q := 3, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 36)) },
  { key := { q := 3, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 37)) },
  { key := { q := 3, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 38)) },
  { key := { q := 3, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 39)) },
  { key := { q := 3, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 40)) },
  { key := { q := 3, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 41)) },
  { key := { q := 3, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 42)) },
  { key := { q := 3, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 43)) },
  { key := { q := 3, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 44)) },
  { key := { q := 3, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 45)) },
  { key := { q := 3, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 46)) },
  { key := { q := 3, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 47)) },
  { key := { q := 3, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 30 48)) },
  { key := { q := 3, n := 31, r := 0 }
    lowerValue := 617673396283947
    upperValue := 617673396283947
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 31 0)) },
  { key := { q := 3, n := 31, r := 1 }
    lowerValue := 9804339623555
    upperValue := 45753584909922
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 1))
    upperTrace := (.lengthenFreeN 23 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 31, r := 2 }
    lowerValue := 321203014189
    upperValue := 15251194969974
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 2))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 31, r := 3 }
    lowerValue := 16304764573
    upperValue := 5083731656658
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 3))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 31, r := 4 }
    lowerValue := 1141044065
    upperValue := 847288609443
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 4))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 31, r := 5 }
    lowerValue := 103316213
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 5))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 31, r := 6 }
    lowerValue := 11632167
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 6))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 31, r := 7 }
    lowerValue := 1585054
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 7))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 31, r := 8 }
    lowerValue := 256382
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 8))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 31, r := 9 }
    lowerValue := 48517
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 9))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 31, r := 10 }
    lowerValue := 10623
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 10))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 31, r := 11 }
    lowerValue := 2668
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 11))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 31, r := 12 }
    lowerValue := 763
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 12))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 31, r := 13 }
    lowerValue := 248
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 13))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 31, r := 14 }
    lowerValue := 91
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 14))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 31, r := 15 }
    lowerValue := 38
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 15))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 31, r := 16 }
    lowerValue := 17
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 16))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 31, r := 17 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 31, r := 18 }
    lowerValue := 5
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 31, r := 19 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 19))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 31, r := 20 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20)) },
  { key := { q := 3, n := 31, r := 21 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 23 22)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 21)) },
  { key := { q := 3, n := 31, r := 22 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 24 23))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 22)) },
  { key := { q := 3, n := 31, r := 23 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 25 24)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 23)) },
  { key := { q := 3, n := 31, r := 24 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 26 25))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 24)) },
  { key := { q := 3, n := 31, r := 25 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 27 26)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 25)) },
  { key := { q := 3, n := 31, r := 26 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 28 27))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 26)) },
  { key := { q := 3, n := 31, r := 27 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 29 28)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 27)) }]

end CoveringCodes.Database
