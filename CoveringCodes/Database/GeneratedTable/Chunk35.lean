import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 35. Do not edit manually.

def precomputedTable_chunk_35 : Array AnyBoundEntry := #[
  { key := { q := 3, n := 31, r := 28 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 30 29))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 28)) },
  { key := { q := 3, n := 31, r := 29 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 29)) },
  { key := { q := 3, n := 31, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 30)) },
  { key := { q := 3, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 31)) },
  { key := { q := 3, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 32)) },
  { key := { q := 3, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 33)) },
  { key := { q := 3, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 34)) },
  { key := { q := 3, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 35)) },
  { key := { q := 3, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 36)) },
  { key := { q := 3, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 37)) },
  { key := { q := 3, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 38)) },
  { key := { q := 3, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 39)) },
  { key := { q := 3, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 40)) },
  { key := { q := 3, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 41)) },
  { key := { q := 3, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 42)) },
  { key := { q := 3, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 43)) },
  { key := { q := 3, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 44)) },
  { key := { q := 3, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 45)) },
  { key := { q := 3, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 46)) },
  { key := { q := 3, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 47)) },
  { key := { q := 3, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 31 48)) },
  { key := { q := 3, n := 32, r := 0 }
    lowerValue := 1853020188851841
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 32 0)) },
  { key := { q := 3, n := 32, r := 1 }
    lowerValue := 28508002905413
    upperValue := 137260754729766
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 1))
    upperTrace := (.lengthenFreeN 24 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 32, r := 2 }
    lowerValue := 904353435263
    upperValue := 43211719081593
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 2))
    upperTrace := (.lengthenFreeN 26 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 32, r := 3 }
    lowerValue := 44406053078
    upperValue := 14403906360531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))))) },
  { key := { q := 3, n := 32, r := 4 }
    lowerValue := 3002841064
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 4))
    upperTrace := (@UpperTrace.blockUngroup 3 2 16 2 2541865828329 (.lengthenFreeN 8 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 3, n := 32, r := 5 }
    lowerValue := 262425781
    upperValue := 847288609443
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 5))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 15 2 282429536481 (.lengthenFreeN 7 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 3, n := 32, r := 6 }
    lowerValue := 28482847
    upperValue := 94143178827
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 6))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 32, r := 7 }
    lowerValue := 3736780
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 7))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 32, r := 8 }
    lowerValue := 581145
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 8))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 32, r := 9 }
    lowerValue := 105588
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 9))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 32, r := 10 }
    lowerValue := 22163
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 10))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 32, r := 11 }
    lowerValue := 5328
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 11))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 32, r := 12 }
    lowerValue := 1456
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 12))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 32, r := 13 }
    lowerValue := 450
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 13))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 32, r := 14 }
    lowerValue := 157
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 14))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 32, r := 15 }
    lowerValue := 61
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 15))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 32, r := 16 }
    lowerValue := 27
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 16))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 32, r := 17 }
    lowerValue := 13
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 32, r := 18 }
    lowerValue := 7
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 32, r := 19 }
    lowerValue := 5
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 32, r := 20 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 20))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 32, r := 21 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 23 22))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21)) },
  { key := { q := 3, n := 32, r := 22 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 24 23)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 22)) },
  { key := { q := 3, n := 32, r := 23 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 25 24))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 23)) },
  { key := { q := 3, n := 32, r := 24 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 26 25)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 24)) },
  { key := { q := 3, n := 32, r := 25 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 27 26))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 25)) },
  { key := { q := 3, n := 32, r := 26 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 28 27)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 26)) },
  { key := { q := 3, n := 32, r := 27 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 29 28))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 27)) },
  { key := { q := 3, n := 32, r := 28 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 30 29)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 28)) },
  { key := { q := 3, n := 32, r := 29 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 31 30))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 29)) },
  { key := { q := 3, n := 32, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 30)) },
  { key := { q := 3, n := 32, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 31)) },
  { key := { q := 3, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 32)) },
  { key := { q := 3, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 33)) },
  { key := { q := 3, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 34)) },
  { key := { q := 3, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 35)) },
  { key := { q := 3, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 36)) },
  { key := { q := 3, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 37)) },
  { key := { q := 3, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 38)) },
  { key := { q := 3, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 39)) },
  { key := { q := 3, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 40)) },
  { key := { q := 3, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 41)) },
  { key := { q := 3, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 42)) },
  { key := { q := 3, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 43)) },
  { key := { q := 3, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 44)) },
  { key := { q := 3, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 45)) },
  { key := { q := 3, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 46)) },
  { key := { q := 3, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 47)) },
  { key := { q := 3, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 32 48)) },
  { key := { q := 3, n := 33, r := 0 }
    lowerValue := 5559060566555523
    upperValue := 5559060566555523
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 33 0)) },
  { key := { q := 3, n := 33, r := 1 }
    lowerValue := 82971053232172
    upperValue := 411782264189298
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 1))
    upperTrace := (.lengthenFreeN 25 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 33, r := 2 }
    lowerValue := 2551198057162
    upperValue := 129635157244779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 2))
    upperTrace := (.lengthenFreeN 27 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 33, r := 3 }
    lowerValue := 121305356375
    upperValue := 43211719081593
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))))) },
  { key := { q := 3, n := 33, r := 4 }
    lowerValue := 7935314214
    upperValue := 7625597484987
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 4))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 16 2 2541865828329 (.lengthenFreeN 8 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 3, n := 33, r := 5 }
    lowerValue := 670145895
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 15 2 282429536481 (.lengthenFreeN 7 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 3, n := 33, r := 6 }
    lowerValue := 70208198
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 6))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 33, r := 7 }
    lowerValue := 8880263
    upperValue := 94143178827
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 7))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 33, r := 8 }
    lowerValue := 1329809
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 8))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 33, r := 9 }
    lowerValue := 232338
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 9))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 33, r := 10 }
    lowerValue := 46830
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 10))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 33, r := 11 }
    lowerValue := 10793
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 11))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 33, r := 12 }
    lowerValue := 2825
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 12))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 33, r := 13 }
    lowerValue := 835
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 13))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 33, r := 14 }
    lowerValue := 277
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 14))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 33, r := 15 }
    lowerValue := 103
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 15))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 33, r := 16 }
    lowerValue := 43
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 16))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 33, r := 17 }
    lowerValue := 20
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 33, r := 18 }
    lowerValue := 11
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 33, r := 19 }
    lowerValue := 6
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 33, r := 20 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 20))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 33, r := 21 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 21))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 33, r := 22 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 24 23))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 33 22)) },
  { key := { q := 3, n := 33, r := 23 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 25 24)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 33 23)) },
  { key := { q := 3, n := 33, r := 24 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 26 25))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 33 24)) },
  { key := { q := 3, n := 33, r := 25 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 27 26)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 33 25)) },
  { key := { q := 3, n := 33, r := 26 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 28 27))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 33 26)) },
  { key := { q := 3, n := 33, r := 27 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 29 28)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 33 27)) },
  { key := { q := 3, n := 33, r := 28 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 30 29))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 33 28)) },
  { key := { q := 3, n := 33, r := 29 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 31 30)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 33 29)) },
  { key := { q := 3, n := 33, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 32 31))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 33 30)) },
  { key := { q := 3, n := 33, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 33 31)) },
  { key := { q := 3, n := 33, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 33 32)) },
  { key := { q := 3, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 33)) },
  { key := { q := 3, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 34)) },
  { key := { q := 3, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 35)) },
  { key := { q := 3, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 36)) },
  { key := { q := 3, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 37)) },
  { key := { q := 3, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 38)) },
  { key := { q := 3, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 39)) },
  { key := { q := 3, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 40)) },
  { key := { q := 3, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 41)) },
  { key := { q := 3, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 42)) },
  { key := { q := 3, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 43)) },
  { key := { q := 3, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 44)) },
  { key := { q := 3, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 45)) },
  { key := { q := 3, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 46)) },
  { key := { q := 3, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 47)) },
  { key := { q := 3, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 33 48)) },
  { key := { q := 3, n := 34, r := 0 }
    lowerValue := 16677181699666569
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 34 0)) },
  { key := { q := 3, n := 34, r := 1 }
    lowerValue := 241698285502415
    upperValue := 1235346792567894
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 1))
    upperTrace := (.lengthenFreeN 26 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 34, r := 2 }
    lowerValue := 7210195287362
    upperValue := 388905471734337
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 2))
    upperTrace := (.lengthenFreeN 28 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 34, r := 3 }
    lowerValue := 332314071928
    upperValue := 129635157244779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))))) },
  { key := { q := 3, n := 34, r := 4 }
    lowerValue := 21051704934
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 4))
    upperTrace := (@UpperTrace.blockUngroup 3 2 17 2 22876792454961 (.lengthenFreeN 9 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 3, n := 34, r := 5 }
    lowerValue := 1719936651
    upperValue := 7625597484987
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 5))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 16 2 2541865828329 (.lengthenFreeN 8 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 3, n := 34, r := 6 }
    lowerValue := 174137396
    upperValue := 847288609443
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 6))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 34, r := 7 }
    lowerValue := 21262123
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 7))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 34, r := 8 }
    lowerValue := 3069976
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 8))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 34, r := 9 }
    lowerValue := 516524
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 9))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 34, r := 10 }
    lowerValue := 100126
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 10))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 34, r := 11 }
    lowerValue := 22163
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 11))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 34, r := 12 }
    lowerValue := 5562
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 12))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 34, r := 13 }
    lowerValue := 1574
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 13))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 34, r := 14 }
    lowerValue := 500
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 14))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 34, r := 15 }
    lowerValue := 177
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 15))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 34, r := 16 }
    lowerValue := 70
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 16))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 34, r := 17 }
    lowerValue := 31
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 34, r := 18 }
    lowerValue := 15
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 34, r := 19 }
    lowerValue := 8
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 34, r := 20 }
    lowerValue := 5
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 34, r := 21 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 21))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 34, r := 22 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 22)) },
  { key := { q := 3, n := 34, r := 23 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 25 24))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 23)) },
  { key := { q := 3, n := 34, r := 24 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 26 25)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 24)) },
  { key := { q := 3, n := 34, r := 25 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 27 26))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 25)) },
  { key := { q := 3, n := 34, r := 26 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 28 27)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 26)) },
  { key := { q := 3, n := 34, r := 27 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 29 28))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 27)) },
  { key := { q := 3, n := 34, r := 28 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 30 29)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 28)) },
  { key := { q := 3, n := 34, r := 29 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 31 30))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 29)) },
  { key := { q := 3, n := 34, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 32 31)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 30)) },
  { key := { q := 3, n := 34, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 31)) },
  { key := { q := 3, n := 34, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 32)) },
  { key := { q := 3, n := 34, r := 33 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 33)) },
  { key := { q := 3, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 34 34)) },
  { key := { q := 3, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 34 35)) },
  { key := { q := 3, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 34 36)) },
  { key := { q := 3, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 34 37)) },
  { key := { q := 3, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 34 38)) },
  { key := { q := 3, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 34 39)) },
  { key := { q := 3, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 34 40)) },
  { key := { q := 3, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 34 41)) },
  { key := { q := 3, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 34 42)) },
  { key := { q := 3, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 34 43)) },
  { key := { q := 3, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 34 44)) },
  { key := { q := 3, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 34 45)) },
  { key := { q := 3, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 34 46)) },
  { key := { q := 3, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 34 47)) },
  { key := { q := 3, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 34 48)) },
  { key := { q := 3, n := 35, r := 0 }
    lowerValue := 50031545098999707
    upperValue := 50031545098999707
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 35 0)) },
  { key := { q := 3, n := 35, r := 1 }
    lowerValue := 704669649281687
    upperValue := 3706040377703682
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 1))
    upperTrace := (.lengthenFreeN 27 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 35, r := 2 }
    lowerValue := 20412707098736
    upperValue := 1166716415203011
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 2))
    upperTrace := (.lengthenFreeN 29 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 35, r := 3 }
    lowerValue := 912801173104
    upperValue := 388905471734337
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))))) },
  { key := { q := 3, n := 35, r := 4 }
    lowerValue := 56053294471
    upperValue := 68630377364883
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 4))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 17 2 22876792454961 (.lengthenFreeN 9 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 3, n := 35, r := 5 }
    lowerValue := 4435108085
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 16 2 2541865828329 (.lengthenFreeN 8 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 3, n := 35, r := 6 }
    lowerValue := 434441009
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 6))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 35, r := 7 }
    lowerValue := 51266998
    upperValue := 847288609443
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 7))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 35, r := 8 }
    lowerValue := 7146270
    upperValue := 94143178827
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 8))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 35, r := 9 }
    lowerValue := 1159424
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 9))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 35, r := 10 }
    lowerValue := 216459
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 10))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 35, r := 11 }
    lowerValue := 46086
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 11))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 35, r := 12 }
    lowerValue := 11110
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 12))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 35, r := 13 }
    lowerValue := 3015
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 13))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 35, r := 14 }
    lowerValue := 917
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 14))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 35, r := 15 }
    lowerValue := 311
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 15))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 35, r := 16 }
    lowerValue := 118
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 16))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 35, r := 17 }
    lowerValue := 49
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 35, r := 18 }
    lowerValue := 23
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 35, r := 19 }
    lowerValue := 12
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 35, r := 20 }
    lowerValue := 7
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 35, r := 21 }
    lowerValue := 4
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 35, r := 22 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 22))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 22))) },
  { key := { q := 3, n := 35, r := 23 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 25 24)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 23)) },
  { key := { q := 3, n := 35, r := 24 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 26 25))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 24)) },
  { key := { q := 3, n := 35, r := 25 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 27 26)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 25)) },
  { key := { q := 3, n := 35, r := 26 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 28 27))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 26)) },
  { key := { q := 3, n := 35, r := 27 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 29 28)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 27)) },
  { key := { q := 3, n := 35, r := 28 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 30 29))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 28)) },
  { key := { q := 3, n := 35, r := 29 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 31 30)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 29)) },
  { key := { q := 3, n := 35, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 32 31))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 30)) },
  { key := { q := 3, n := 35, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 31)) },
  { key := { q := 3, n := 35, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 32)) },
  { key := { q := 3, n := 35, r := 33 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 33)) },
  { key := { q := 3, n := 35, r := 34 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 34)) },
  { key := { q := 3, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 35 35)) },
  { key := { q := 3, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 35 36)) },
  { key := { q := 3, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 35 37)) },
  { key := { q := 3, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 35 38)) },
  { key := { q := 3, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 35 39)) },
  { key := { q := 3, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 35 40)) },
  { key := { q := 3, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 35 41)) },
  { key := { q := 3, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 35 42)) },
  { key := { q := 3, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 35 43)) },
  { key := { q := 3, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 35 44)) },
  { key := { q := 3, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 35 45)) },
  { key := { q := 3, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 35 46)) },
  { key := { q := 3, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 35 47)) },
  { key := { q := 3, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 35 48)) },
  { key := { q := 3, n := 36, r := 0 }
    lowerValue := 150094635296999121
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 36 0)) },
  { key := { q := 3, n := 36, r := 1 }
    lowerValue := 2056090894479441
    upperValue := 11118121133111046
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 1))
    upperTrace := (.lengthenFreeN 28 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 36, r := 2 }
    lowerValue := 57884548899730
    upperValue := 3500149245609033
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 2))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 36, r := 3 }
    lowerValue := 2513600644701
    upperValue := 1166716415203011
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))))) },
  { key := { q := 3, n := 36, r := 4 }
    lowerValue := 149766198025
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 4))
    upperTrace := (@UpperTrace.blockUngroup 3 2 18 2 205891132094649 (.lengthenFreeN 10 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 3, n := 36, r := 5 }
    lowerValue := 11487475816
    upperValue := 68630377364883
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 5))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 17 2 22876792454961 (.lengthenFreeN 9 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 3, n := 36, r := 6 }
    lowerValue := 1089816983
    upperValue := 7625597484987
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 6))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 36, r := 7 }
    lowerValue := 124433090
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 7))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 36, r := 8 }
    lowerValue := 16764966
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 8))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 36, r := 9 }
    lowerValue := 2626134
    upperValue := 94143178827
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 9))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 36, r := 10 }
    lowerValue := 472827
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 10))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 36, r := 11 }
    lowerValue := 96968
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 11))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 36, r := 12 }
    lowerValue := 22487
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 12))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 36, r := 13 }
    lowerValue := 5862
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 13))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 36, r := 14 }
    lowerValue := 1710
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 14))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 36, r := 15 }
    lowerValue := 556
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 15))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 36, r := 16 }
    lowerValue := 201
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 16))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 36, r := 17 }
    lowerValue := 81
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 36, r := 18 }
    lowerValue := 36
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 36, r := 19 }
    lowerValue := 18
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 36, r := 20 }
    lowerValue := 10
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 36, r := 21 }
    lowerValue := 6
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 36, r := 22 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 22))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 22))) },
  { key := { q := 3, n := 36, r := 23 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 36 23))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 23))) },
  { key := { q := 3, n := 36, r := 24 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 26 25)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 36 24)) },
  { key := { q := 3, n := 36, r := 25 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 27 26))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 36 25)) },
  { key := { q := 3, n := 36, r := 26 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 28 27)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 36 26)) },
  { key := { q := 3, n := 36, r := 27 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 29 28))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 36 27)) },
  { key := { q := 3, n := 36, r := 28 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 30 29)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 36 28)) },
  { key := { q := 3, n := 36, r := 29 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 31 30))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 36 29)) },
  { key := { q := 3, n := 36, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 32 31)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 36 30)) },
  { key := { q := 3, n := 36, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 36 31)) },
  { key := { q := 3, n := 36, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 36 32)) }]

end CoveringCodes.Database
