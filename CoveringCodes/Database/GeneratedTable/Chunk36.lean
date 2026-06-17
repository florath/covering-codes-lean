import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 36. Do not edit manually.

def precomputedTable_chunk_36 : Array AnyBoundEntry := #[
  { key := { q := 3, n := 36, r := 33 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 35 34))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 36 33)) },
  { key := { q := 3, n := 36, r := 34 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 36 34)) },
  { key := { q := 3, n := 36, r := 35 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 36 35)) },
  { key := { q := 3, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 36 36)) },
  { key := { q := 3, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 36 37)) },
  { key := { q := 3, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 36 38)) },
  { key := { q := 3, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 36 39)) },
  { key := { q := 3, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 36 40)) },
  { key := { q := 3, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 36 41)) },
  { key := { q := 3, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 36 42)) },
  { key := { q := 3, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 36 43)) },
  { key := { q := 3, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 36 44)) },
  { key := { q := 3, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 36 45)) },
  { key := { q := 3, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 36 46)) },
  { key := { q := 3, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 36 47)) },
  { key := { q := 3, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 36 48)) },
  { key := { q := 3, n := 37, r := 0 }
    lowerValue := 450283905890997363
    upperValue := 450283905890997363
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 37 0)) },
  { key := { q := 3, n := 37, r := 1 }
    lowerValue := 6003785411879965
    upperValue := 33354363399333138
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 1))
    upperTrace := (.lengthenFreeN 29 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 37, r := 2 }
    lowerValue := 164397190905805
    upperValue := 10500447736827099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 2))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 37, r := 3 }
    lowerValue := 6938225641243
    upperValue := 3500149245609033
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))))) },
  { key := { q := 3, n := 37, r := 4 }
    lowerValue := 401458878542
    upperValue := 617673396283947
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 4))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 37, r := 5 }
    lowerValue := 29878849040
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 5))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 37, r := 6 }
    lowerValue := 2748038123
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 6))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 37, r := 7 }
    lowerValue := 303901547
    upperValue := 7625597484987
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 7))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 37, r := 8 }
    lowerValue := 39619079
    upperValue := 847288609443
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 8))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 37, r := 9 }
    lowerValue := 5998988
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 9))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 37, r := 10 }
    lowerValue := 1042928
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 10))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 37, r := 11 }
    lowerValue := 206290
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 11))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 37, r := 12 }
    lowerValue := 46086
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 12))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 37, r := 13 }
    lowerValue := 11560
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 13))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 37, r := 14 }
    lowerValue := 3240
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 14))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 37, r := 15 }
    lowerValue := 1010
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 15))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 37, r := 16 }
    lowerValue := 350
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 16))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 37, r := 17 }
    lowerValue := 134
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 37, r := 18 }
    lowerValue := 57
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 37, r := 19 }
    lowerValue := 27
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 37, r := 20 }
    lowerValue := 14
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 37, r := 21 }
    lowerValue := 8
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 37, r := 22 }
    lowerValue := 5
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 22))) },
  { key := { q := 3, n := 37, r := 23 }
    lowerValue := 3
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 23))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 23))) },
  { key := { q := 3, n := 37, r := 24 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 24)) },
  { key := { q := 3, n := 37, r := 25 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 27 26)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 25)) },
  { key := { q := 3, n := 37, r := 26 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 28 27))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 26)) },
  { key := { q := 3, n := 37, r := 27 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 29 28)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 27)) },
  { key := { q := 3, n := 37, r := 28 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 30 29))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 28)) },
  { key := { q := 3, n := 37, r := 29 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 31 30)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 29)) },
  { key := { q := 3, n := 37, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 32 31))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 30)) },
  { key := { q := 3, n := 37, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 31)) },
  { key := { q := 3, n := 37, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 32)) },
  { key := { q := 3, n := 37, r := 33 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 35 34)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 33)) },
  { key := { q := 3, n := 37, r := 34 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 36 35))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 34)) },
  { key := { q := 3, n := 37, r := 35 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 35)) },
  { key := { q := 3, n := 37, r := 36 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 36)) },
  { key := { q := 3, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 37 37)) },
  { key := { q := 3, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 37 38)) },
  { key := { q := 3, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 37 39)) },
  { key := { q := 3, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 37 40)) },
  { key := { q := 3, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 37 41)) },
  { key := { q := 3, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 37 42)) },
  { key := { q := 3, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 37 43)) },
  { key := { q := 3, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 37 44)) },
  { key := { q := 3, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 37 45)) },
  { key := { q := 3, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 37 46)) },
  { key := { q := 3, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 37 47)) },
  { key := { q := 3, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 37 48)) },
  { key := { q := 3, n := 38, r := 0 }
    lowerValue := 1350851717672992089
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 38 0)) },
  { key := { q := 3, n := 38, r := 1 }
    lowerValue := 17543528800947950
    upperValue := 100063090197999414
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 1))
    upperTrace := (.lengthenFreeN 30 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 38, r := 2 }
    lowerValue := 467584533635512
    upperValue := 31501343210481297
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 2))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 38, r := 3 }
    lowerValue := 19194505558251
    upperValue := 10500447736827099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))))) },
  { key := { q := 3, n := 38, r := 4 }
    lowerValue := 1079457700889
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 4))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 38, r := 5 }
    lowerValue := 78022754399
    upperValue := 617673396283947
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 5))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 38, r := 6 }
    lowerValue := 6963255659
    upperValue := 68630377364883
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 6))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 38, r := 7 }
    lowerValue := 746578562
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 7))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 38, r := 8 }
    lowerValue := 94276051
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 8))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 38, r := 9 }
    lowerValue := 13813712
    upperValue := 847288609443
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 9))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 38, r := 10 }
    lowerValue := 2321570
    upperValue := 94143178827
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 10))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 38, r := 11 }
    lowerValue := 443444
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 11))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 38, r := 12 }
    lowerValue := 95561
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 12))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 38, r := 13 }
    lowerValue := 23094
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 13))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 38, r := 14 }
    lowerValue := 6228
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 14))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 38, r := 15 }
    lowerValue := 1867
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 15))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 38, r := 16 }
    lowerValue := 620
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 38, r := 17 }
    lowerValue := 227
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 38, r := 18 }
    lowerValue := 92
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 38, r := 19 }
    lowerValue := 41
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 38, r := 20 }
    lowerValue := 20
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 38, r := 21 }
    lowerValue := 11
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 38, r := 22 }
    lowerValue := 7
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 22))) },
  { key := { q := 3, n := 38, r := 23 }
    lowerValue := 4
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 23))) },
  { key := { q := 3, n := 38, r := 24 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 24))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 24))) },
  { key := { q := 3, n := 38, r := 25 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 27 26))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 25)) },
  { key := { q := 3, n := 38, r := 26 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 28 27)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 26)) },
  { key := { q := 3, n := 38, r := 27 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 29 28))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 27)) },
  { key := { q := 3, n := 38, r := 28 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 30 29)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 28)) },
  { key := { q := 3, n := 38, r := 29 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 31 30))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 29)) },
  { key := { q := 3, n := 38, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 32 31)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 30)) },
  { key := { q := 3, n := 38, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 31)) },
  { key := { q := 3, n := 38, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 32)) },
  { key := { q := 3, n := 38, r := 33 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 35 34))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 33)) },
  { key := { q := 3, n := 38, r := 34 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 36 35)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 34)) },
  { key := { q := 3, n := 38, r := 35 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 37 36))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 35)) },
  { key := { q := 3, n := 38, r := 36 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 36)) },
  { key := { q := 3, n := 38, r := 37 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 37)) },
  { key := { q := 3, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 38 38)) },
  { key := { q := 3, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 38 39)) },
  { key := { q := 3, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 38 40)) },
  { key := { q := 3, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 38 41)) },
  { key := { q := 3, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 38 42)) },
  { key := { q := 3, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 38 43)) },
  { key := { q := 3, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 38 44)) },
  { key := { q := 3, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 38 45)) },
  { key := { q := 3, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 38 46)) },
  { key := { q := 3, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 38 47)) },
  { key := { q := 3, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 38 48)) },
  { key := { q := 3, n := 39, r := 0 }
    lowerValue := 4052555153018976267
    upperValue := 4052555153018976267
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 39 0)) },
  { key := { q := 3, n := 39, r := 1 }
    lowerValue := 51298166493911092
    upperValue := 300189270593998242
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 39, r := 2 }
    lowerValue := 1331763113052572
    upperValue := 94504029631443891
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 2))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 39, r := 3 }
    lowerValue := 53214564414930
    upperValue := 31501343210481297
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))))) },
  { key := { q := 3, n := 39, r := 4 }
    lowerValue := 2910960760582
    upperValue := 5559060566555523
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 4))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 39, r := 5 }
    lowerValue := 204505166203
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 5))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 39, r := 6 }
    lowerValue := 17725831148
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 6))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 39, r := 7 }
    lowerValue := 1844263351
    upperValue := 68630377364883
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 7))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 39, r := 8 }
    lowerValue := 225800995
    upperValue := 7625597484987
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 8))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 39, r := 9 }
    lowerValue := 32049181
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 9))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 39, r := 10 }
    lowerValue := 5212617
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 10))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 39, r := 11 }
    lowerValue := 962599
    upperValue := 94143178827
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 11))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 39, r := 12 }
    lowerValue := 200338
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 12))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 39, r := 13 }
    lowerValue := 46706
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 13))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 39, r := 14 }
    lowerValue := 12137
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 14))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 39, r := 15 }
    lowerValue := 3501
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 15))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 39, r := 16 }
    lowerValue := 1117
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 39, r := 17 }
    lowerValue := 393
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 39, r := 18 }
    lowerValue := 152
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 39, r := 19 }
    lowerValue := 65
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 39, r := 20 }
    lowerValue := 31
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 39, r := 21 }
    lowerValue := 16
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 39, r := 22 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 22))) },
  { key := { q := 3, n := 39, r := 23 }
    lowerValue := 6
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 23))) },
  { key := { q := 3, n := 39, r := 24 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 24))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 24))) },
  { key := { q := 3, n := 39, r := 25 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 25))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 25))) },
  { key := { q := 3, n := 39, r := 26 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 28 27))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 39 26)) },
  { key := { q := 3, n := 39, r := 27 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 29 28)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 39 27)) },
  { key := { q := 3, n := 39, r := 28 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 30 29))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 39 28)) },
  { key := { q := 3, n := 39, r := 29 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 31 30)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 39 29)) },
  { key := { q := 3, n := 39, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 32 31))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 39 30)) },
  { key := { q := 3, n := 39, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 39 31)) },
  { key := { q := 3, n := 39, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 39 32)) },
  { key := { q := 3, n := 39, r := 33 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 35 34)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 39 33)) },
  { key := { q := 3, n := 39, r := 34 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 36 35))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 39 34)) },
  { key := { q := 3, n := 39, r := 35 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 37 36)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 39 35)) },
  { key := { q := 3, n := 39, r := 36 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 39 36)) },
  { key := { q := 3, n := 39, r := 37 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 39 37)) },
  { key := { q := 3, n := 39, r := 38 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 39 38)) },
  { key := { q := 3, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 39 39)) },
  { key := { q := 3, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 39 40)) },
  { key := { q := 3, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 39 41)) },
  { key := { q := 3, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 39 42)) },
  { key := { q := 3, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 39 43)) },
  { key := { q := 3, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 39 44)) },
  { key := { q := 3, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 39 45)) },
  { key := { q := 3, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 39 46)) },
  { key := { q := 3, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 39 47)) },
  { key := { q := 3, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 39 48)) },
  { key := { q := 3, n := 40, r := 0 }
    lowerValue := 12157665459056928801
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 40 0)) },
  { key := { q := 3, n := 40, r := 1 }
    lowerValue := 150094635296999121
    upperValue := 900567811781994726
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 1))
    upperTrace := (.lengthenFreeN 32 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 40, r := 2 }
    lowerValue := 3798083554844402
    upperValue := 283512088894331673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 2))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 40, r := 3 }
    lowerValue := 147829737710594
    upperValue := 94504029631443891
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))))) },
  { key := { q := 3, n := 40, r := 4 }
    lowerValue := 7871683406308
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 4))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 40, r := 5 }
    lowerValue := 537932256770
    upperValue := 5559060566555523
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 5))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 40, r := 6 }
    lowerValue := 45320952951
    upperValue := 617673396283947
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 6))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 40, r := 7 }
    lowerValue := 4579791883
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 7))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 40, r := 8 }
    lowerValue := 544156261
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 8))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 40, r := 9 }
    lowerValue := 74888786
    upperValue := 7625597484987
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 9))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 40, r := 10 }
    lowerValue := 11799580
    upperValue := 847288609443
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 10))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 40, r := 11 }
    lowerValue := 2108906
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 11))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 40, r := 12 }
    lowerValue := 424372
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 12))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 40, r := 13 }
    lowerValue := 95561
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 13))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 40, r := 14 }
    lowerValue := 23959
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 14))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 40, r := 15 }
    lowerValue := 6660
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 15))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 40, r := 16 }
    lowerValue := 2046
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 40, r := 17 }
    lowerValue := 692
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 40, r := 18 }
    lowerValue := 258
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 40, r := 19 }
    lowerValue := 105
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 40, r := 20 }
    lowerValue := 47
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 40, r := 21 }
    lowerValue := 23
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 40, r := 22 }
    lowerValue := 13
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 22))) },
  { key := { q := 3, n := 40, r := 23 }
    lowerValue := 7
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 23))) },
  { key := { q := 3, n := 40, r := 24 }
    lowerValue := 5
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 24))) },
  { key := { q := 3, n := 40, r := 25 }
    lowerValue := 3
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 25))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 25))) },
  { key := { q := 3, n := 40, r := 26 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 26)) },
  { key := { q := 3, n := 40, r := 27 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 29 28))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 27)) },
  { key := { q := 3, n := 40, r := 28 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 30 29)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 28)) },
  { key := { q := 3, n := 40, r := 29 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 31 30))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 29)) },
  { key := { q := 3, n := 40, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 32 31)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 30)) },
  { key := { q := 3, n := 40, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 31)) },
  { key := { q := 3, n := 40, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 32)) },
  { key := { q := 3, n := 40, r := 33 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 35 34))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 33)) },
  { key := { q := 3, n := 40, r := 34 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 36 35)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 34)) },
  { key := { q := 3, n := 40, r := 35 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 37 36))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 35)) },
  { key := { q := 3, n := 40, r := 36 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 38 37)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 36)) },
  { key := { q := 3, n := 40, r := 37 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 37)) },
  { key := { q := 3, n := 40, r := 38 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 38)) },
  { key := { q := 3, n := 40, r := 39 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 39)) },
  { key := { q := 3, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 40 40)) },
  { key := { q := 3, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 40 41)) },
  { key := { q := 3, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 40 42)) },
  { key := { q := 3, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 40 43)) },
  { key := { q := 3, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 40 44)) },
  { key := { q := 3, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 40 45)) },
  { key := { q := 3, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 40 46)) },
  { key := { q := 3, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 40 47)) },
  { key := { q := 3, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 40 48)) },
  { key := { q := 3, n := 41, r := 0 }
    lowerValue := 36472996377170786403
    upperValue := 36472996377170786403
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 41 0)) },
  { key := { q := 3, n := 41, r := 1 }
    lowerValue := 439433691291214295
    upperValue := 2701703435345984178
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 41, r := 2 }
    lowerValue := 10845375074983880
    upperValue := 850536266682995019
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 2))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 41, r := 3 }
    lowerValue := 411459408832856
    upperValue := 283512088894331673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))))) },
  { key := { q := 3, n := 41, r := 4 }
    lowerValue := 21342180244494
    upperValue := 50031545098999707
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 4))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 41, r := 5 }
    lowerValue := 1419751799240
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 5))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 41, r := 6 }
    lowerValue := 116356687633
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 6))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 41, r := 7 }
    lowerValue := 11429432139
    upperValue := 617673396283947
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 7))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 41, r := 8 }
    lowerValue := 1319024270
    upperValue := 68630377364883
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 8))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 41, r := 9 }
    lowerValue := 176174728
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 9))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 41, r := 10 }
    lowerValue := 26916682
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 10))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 41, r := 11 }
    lowerValue := 4660722
    upperValue := 847288609443
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 11))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 41, r := 12 }
    lowerValue := 907774
    upperValue := 94143178827
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 12))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 41, r := 13 }
    lowerValue := 197662
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 13))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 41, r := 14 }
    lowerValue := 47872
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 14))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 41, r := 15 }
    lowerValue := 12841
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 15))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 41, r := 16 }
    lowerValue := 3801
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 16))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 41, r := 17 }
    lowerValue := 1238
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 41, r := 18 }
    lowerValue := 443
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 41, r := 19 }
    lowerValue := 174
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 41, r := 20 }
    lowerValue := 74
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 41, r := 21 }
    lowerValue := 35
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 41, r := 22 }
    lowerValue := 18
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 22))) },
  { key := { q := 3, n := 41, r := 23 }
    lowerValue := 10
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 23))) },
  { key := { q := 3, n := 41, r := 24 }
    lowerValue := 6
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 24))) },
  { key := { q := 3, n := 41, r := 25 }
    lowerValue := 4
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 25))) },
  { key := { q := 3, n := 41, r := 26 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 26))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 26))) },
  { key := { q := 3, n := 41, r := 27 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 29 28)))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 27)) },
  { key := { q := 3, n := 41, r := 28 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 30 29))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 28)) },
  { key := { q := 3, n := 41, r := 29 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 31 30)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 29)) },
  { key := { q := 3, n := 41, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 32 31))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 30)) },
  { key := { q := 3, n := 41, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 31)) },
  { key := { q := 3, n := 41, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 32)) },
  { key := { q := 3, n := 41, r := 33 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 35 34)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 33)) },
  { key := { q := 3, n := 41, r := 34 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 36 35))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 34)) },
  { key := { q := 3, n := 41, r := 35 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 37 36)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 35)) },
  { key := { q := 3, n := 41, r := 36 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 38 37))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 36)) },
  { key := { q := 3, n := 41, r := 37 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 39 38)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 37)) }]

end CoveringCodes.Database
