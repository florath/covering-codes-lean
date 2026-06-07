import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 33. Do not edit manually.

def precomputedTable_chunk_33 : Array AnyBoundEntry := #[
  { key := { q := 3, n := 21, r := 18 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 20 19))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 21 18)) },
  { key := { q := 3, n := 21, r := 19 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 21 19)) },
  { key := { q := 3, n := 21, r := 20 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 21 20)) },
  { key := { q := 3, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 21)) },
  { key := { q := 3, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 22)) },
  { key := { q := 3, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 23)) },
  { key := { q := 3, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 24)) },
  { key := { q := 3, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 25)) },
  { key := { q := 3, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 26)) },
  { key := { q := 3, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 27)) },
  { key := { q := 3, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 28)) },
  { key := { q := 3, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 29)) },
  { key := { q := 3, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 30)) },
  { key := { q := 3, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 31)) },
  { key := { q := 3, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 32)) },
  { key := { q := 3, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 33)) },
  { key := { q := 3, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 34)) },
  { key := { q := 3, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 35)) },
  { key := { q := 3, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 36)) },
  { key := { q := 3, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 37)) },
  { key := { q := 3, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 38)) },
  { key := { q := 3, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 39)) },
  { key := { q := 3, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 40)) },
  { key := { q := 3, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 41)) },
  { key := { q := 3, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 42)) },
  { key := { q := 3, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 43)) },
  { key := { q := 3, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 44)) },
  { key := { q := 3, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 45)) },
  { key := { q := 3, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 46)) },
  { key := { q := 3, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 47)) },
  { key := { q := 3, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 21 48)) },
  { key := { q := 3, n := 22, r := 0 }
    lowerValue := 31381059609
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 22 0)) },
  { key := { q := 3, n := 22, r := 1 }
    lowerValue := 697356881
    upperValue := 2324522934
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 1))
    upperTrace := (.lengthenFreeN 14 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 22, r := 2 }
    lowerValue := 32384995
    upperValue := 774840978
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 2))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 22, r := 3 }
    lowerValue := 2361432
    upperValue := 258280326
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 22, r := 4 }
    lowerValue := 240784
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 4))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 22, r := 5 }
    lowerValue := 32252
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 5))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 22, r := 6 }
    lowerValue := 5460
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 6))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 22, r := 7 }
    lowerValue := 1138
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 7))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 22, r := 8 }
    lowerValue := 287
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 8))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 22, r := 9 }
    lowerValue := 87
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 9))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 22, r := 10 }
    lowerValue := 31
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 10))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 22, r := 11 }
    lowerValue := 13
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 11))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 22, r := 12 }
    lowerValue := 7
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 12))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 22, r := 13 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 13))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 22, r := 14 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14)) },
  { key := { q := 3, n := 22, r := 15 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 17 16))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 15)) },
  { key := { q := 3, n := 22, r := 16 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 18 17)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 16)) },
  { key := { q := 3, n := 22, r := 17 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 19 18))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 17)) },
  { key := { q := 3, n := 22, r := 18 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 20 19)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 18)) },
  { key := { q := 3, n := 22, r := 19 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 21 20))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 19)) },
  { key := { q := 3, n := 22, r := 20 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 20)) },
  { key := { q := 3, n := 22, r := 21 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 21)) },
  { key := { q := 3, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 22)) },
  { key := { q := 3, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 23)) },
  { key := { q := 3, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 24)) },
  { key := { q := 3, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 25)) },
  { key := { q := 3, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 26)) },
  { key := { q := 3, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 27)) },
  { key := { q := 3, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 28)) },
  { key := { q := 3, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 29)) },
  { key := { q := 3, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 30)) },
  { key := { q := 3, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 31)) },
  { key := { q := 3, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 32)) },
  { key := { q := 3, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 33)) },
  { key := { q := 3, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 34)) },
  { key := { q := 3, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 35)) },
  { key := { q := 3, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 36)) },
  { key := { q := 3, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 37)) },
  { key := { q := 3, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 38)) },
  { key := { q := 3, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 39)) },
  { key := { q := 3, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 40)) },
  { key := { q := 3, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 41)) },
  { key := { q := 3, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 42)) },
  { key := { q := 3, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 43)) },
  { key := { q := 3, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 44)) },
  { key := { q := 3, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 45)) },
  { key := { q := 3, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 46)) },
  { key := { q := 3, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 47)) },
  { key := { q := 3, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 22 48)) },
  { key := { q := 3, n := 23, r := 0 }
    lowerValue := 94143178827
    upperValue := 94143178827
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 23 0)) },
  { key := { q := 3, n := 23, r := 1 }
    lowerValue := 2003046359
    upperValue := 6973568802
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 1))
    upperTrace := (.lengthenFreeN 15 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 23, r := 2 }
    lowerValue := 88898186
    upperValue := 2324522934
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 2))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 23, r := 3 }
    lowerValue := 6182648
    upperValue := 774840978
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 3))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 23, r := 4 }
    lowerValue := 599994
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 4))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 23, r := 5 }
    lowerValue := 76312
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 5))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 23, r := 6 }
    lowerValue := 12236
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 6))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 23, r := 7 }
    lowerValue := 2410
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 7))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 23, r := 8 }
    lowerValue := 572
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 8))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 23, r := 9 }
    lowerValue := 162
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 9))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 23, r := 10 }
    lowerValue := 54
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 10))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 23, r := 11 }
    lowerValue := 21
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 11))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 23, r := 12 }
    lowerValue := 10
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 12))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 23, r := 13 }
    lowerValue := 5
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 13))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 23, r := 14 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 14))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 23, r := 15 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 17 16)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15)) },
  { key := { q := 3, n := 23, r := 16 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 18 17))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 16)) },
  { key := { q := 3, n := 23, r := 17 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 19 18)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 17)) },
  { key := { q := 3, n := 23, r := 18 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 20 19))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 18)) },
  { key := { q := 3, n := 23, r := 19 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 21 20)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 19)) },
  { key := { q := 3, n := 23, r := 20 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 22 21))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 20)) },
  { key := { q := 3, n := 23, r := 21 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 21)) },
  { key := { q := 3, n := 23, r := 22 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 22)) },
  { key := { q := 3, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 23)) },
  { key := { q := 3, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 24)) },
  { key := { q := 3, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 25)) },
  { key := { q := 3, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 26)) },
  { key := { q := 3, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 27)) },
  { key := { q := 3, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 28)) },
  { key := { q := 3, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 29)) },
  { key := { q := 3, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 30)) },
  { key := { q := 3, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 31)) },
  { key := { q := 3, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 32)) },
  { key := { q := 3, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 33)) },
  { key := { q := 3, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 34)) },
  { key := { q := 3, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 35)) },
  { key := { q := 3, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 36)) },
  { key := { q := 3, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 37)) },
  { key := { q := 3, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 38)) },
  { key := { q := 3, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 39)) },
  { key := { q := 3, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 40)) },
  { key := { q := 3, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 41)) },
  { key := { q := 3, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 42)) },
  { key := { q := 3, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 43)) },
  { key := { q := 3, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 44)) },
  { key := { q := 3, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 45)) },
  { key := { q := 3, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 46)) },
  { key := { q := 3, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 47)) },
  { key := { q := 3, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 23 48)) },
  { key := { q := 3, n := 24, r := 0 }
    lowerValue := 282429536481
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 24 0)) },
  { key := { q := 3, n := 24, r := 1 }
    lowerValue := 5763868092
    upperValue := 20920706406
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 1))
    upperTrace := (.lengthenFreeN 16 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 24, r := 2 }
    lowerValue := 244951897
    upperValue := 6973568802
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 2))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 24, r := 3 }
    lowerValue := 16283052
    upperValue := 2324522934
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 3))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 24, r := 4 }
    lowerValue := 1507409
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 4))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 24, r := 5 }
    lowerValue := 182509
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 5))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 24, r := 6 }
    lowerValue := 27794
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 6))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 24, r := 7 }
    lowerValue := 5186
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 7))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 24, r := 8 }
    lowerValue := 1164
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 8))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 24, r := 9 }
    lowerValue := 310
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 9))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 24, r := 10 }
    lowerValue := 97
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 10))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 24, r := 11 }
    lowerValue := 36
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 11))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 24, r := 12 }
    lowerValue := 15
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 12))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 24, r := 13 }
    lowerValue := 8
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 13))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 24, r := 14 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 14))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 24, r := 15 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 15))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 24, r := 16 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 18 17)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 24 16)) },
  { key := { q := 3, n := 24, r := 17 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 19 18))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 24 17)) },
  { key := { q := 3, n := 24, r := 18 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 20 19)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 24 18)) },
  { key := { q := 3, n := 24, r := 19 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 21 20))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 24 19)) },
  { key := { q := 3, n := 24, r := 20 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 22 21)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 24 20)) },
  { key := { q := 3, n := 24, r := 21 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 23 22))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 24 21)) },
  { key := { q := 3, n := 24, r := 22 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 24 22)) },
  { key := { q := 3, n := 24, r := 23 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 24 23)) },
  { key := { q := 3, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 24)) },
  { key := { q := 3, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 25)) },
  { key := { q := 3, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 26)) },
  { key := { q := 3, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 27)) },
  { key := { q := 3, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 28)) },
  { key := { q := 3, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 29)) },
  { key := { q := 3, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 30)) },
  { key := { q := 3, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 31)) },
  { key := { q := 3, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 32)) },
  { key := { q := 3, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 33)) },
  { key := { q := 3, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 34)) },
  { key := { q := 3, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 35)) },
  { key := { q := 3, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 36)) },
  { key := { q := 3, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 37)) },
  { key := { q := 3, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 38)) },
  { key := { q := 3, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 39)) },
  { key := { q := 3, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 40)) },
  { key := { q := 3, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 41)) },
  { key := { q := 3, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 42)) },
  { key := { q := 3, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 43)) },
  { key := { q := 3, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 44)) },
  { key := { q := 3, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 45)) },
  { key := { q := 3, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 46)) },
  { key := { q := 3, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 47)) },
  { key := { q := 3, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 24 48)) },
  { key := { q := 3, n := 25, r := 0 }
    lowerValue := 847288609443
    upperValue := 847288609443
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 25 0)) },
  { key := { q := 3, n := 25, r := 1 }
    lowerValue := 16613502146
    upperValue := 62762119218
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 1))
    upperTrace := (.lengthenFreeN 17 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 25, r := 2 }
    lowerValue := 677289057
    upperValue := 20920706406
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 2))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 25, r := 3 }
    lowerValue := 43116819
    upperValue := 6973568802
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 3))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 25, r := 4 }
    lowerValue := 3815739
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 4))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 25, r := 5 }
    lowerValue := 440789
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 5))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 25, r := 6 }
    lowerValue := 63915
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 6))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 25, r := 7 }
    lowerValue := 11330
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 7))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 25, r := 8 }
    lowerValue := 2410
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 8))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 25, r := 9 }
    lowerValue := 607
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 9))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 25, r := 10 }
    lowerValue := 179
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 10))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 25, r := 11 }
    lowerValue := 62
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 11))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 25, r := 12 }
    lowerValue := 25
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 12))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 25, r := 13 }
    lowerValue := 11
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 13))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 25, r := 14 }
    lowerValue := 6
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 14))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 25, r := 15 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 15))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 25, r := 16 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16)) },
  { key := { q := 3, n := 25, r := 17 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 19 18)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 17)) },
  { key := { q := 3, n := 25, r := 18 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 20 19))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 18)) },
  { key := { q := 3, n := 25, r := 19 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 21 20)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 19)) },
  { key := { q := 3, n := 25, r := 20 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 22 21))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 20)) },
  { key := { q := 3, n := 25, r := 21 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 23 22)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 21)) },
  { key := { q := 3, n := 25, r := 22 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 24 23))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 22)) },
  { key := { q := 3, n := 25, r := 23 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 23)) },
  { key := { q := 3, n := 25, r := 24 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 24)) },
  { key := { q := 3, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 25)) },
  { key := { q := 3, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 26)) },
  { key := { q := 3, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 27)) },
  { key := { q := 3, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 28)) },
  { key := { q := 3, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 29)) },
  { key := { q := 3, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 30)) },
  { key := { q := 3, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 31)) },
  { key := { q := 3, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 32)) },
  { key := { q := 3, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 33)) },
  { key := { q := 3, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 34)) },
  { key := { q := 3, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 35)) },
  { key := { q := 3, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 36)) },
  { key := { q := 3, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 37)) },
  { key := { q := 3, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 38)) },
  { key := { q := 3, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 39)) },
  { key := { q := 3, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 40)) },
  { key := { q := 3, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 41)) },
  { key := { q := 3, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 42)) },
  { key := { q := 3, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 43)) },
  { key := { q := 3, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 44)) },
  { key := { q := 3, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 45)) },
  { key := { q := 3, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 46)) },
  { key := { q := 3, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 47)) },
  { key := { q := 3, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 25 48)) },
  { key := { q := 3, n := 26, r := 0 }
    lowerValue := 2541865828329
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 26 0)) },
  { key := { q := 3, n := 26, r := 1 }
    lowerValue := 47959732610
    upperValue := 188286357654
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 1))
    upperTrace := (.lengthenFreeN 18 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 26, r := 2 }
    lowerValue := 1878688713
    upperValue := 62762119218
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 2))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 26, r := 3 }
    lowerValue := 114741382
    upperValue := 20920706406
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 3))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 3, n := 26, r := 4 }
    lowerValue := 9725796
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 4))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 26, r := 5 }
    lowerValue := 1074189
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 5))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 26, r := 6 }
    lowerValue := 148639
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 6))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 26, r := 7 }
    lowerValue := 25093
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 7))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 26, r := 8 }
    lowerValue := 5072
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 8))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 26, r := 9 }
    lowerValue := 1210
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 9))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 26, r := 10 }
    lowerValue := 338
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 10))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 26, r := 11 }
    lowerValue := 109
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 11))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 26, r := 12 }
    lowerValue := 41
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 12))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 26, r := 13 }
    lowerValue := 18
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 13))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 26, r := 14 }
    lowerValue := 9
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 14))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 26, r := 15 }
    lowerValue := 5
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 15))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 26, r := 16 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 26 16))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 26, r := 17 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 19 18))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17)) },
  { key := { q := 3, n := 26, r := 18 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 20 19)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 18)) },
  { key := { q := 3, n := 26, r := 19 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 21 20))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 19)) },
  { key := { q := 3, n := 26, r := 20 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 22 21)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 20)) },
  { key := { q := 3, n := 26, r := 21 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 23 22))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 21)) },
  { key := { q := 3, n := 26, r := 22 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 24 23)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 22)) }]

end CoveringCodes.Database
