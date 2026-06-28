import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 37. Do not edit manually.

def precomputedTable_chunk_37 : Array AnyBoundEntry := #[
  { key := { q := 3, n := 41, r := 38 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 38)) },
  { key := { q := 3, n := 41, r := 39 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 39)) },
  { key := { q := 3, n := 41, r := 40 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 40)) },
  { key := { q := 3, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 41 41)) },
  { key := { q := 3, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 41 42)) },
  { key := { q := 3, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 41 43)) },
  { key := { q := 3, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 41 44)) },
  { key := { q := 3, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 41 45)) },
  { key := { q := 3, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 41 46)) },
  { key := { q := 3, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 41 47)) },
  { key := { q := 3, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 41 48)) },
  { key := { q := 3, n := 42, r := 0 }
    lowerValue := 109418989131512359209
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 42 0)) },
  { key := { q := 3, n := 42, r := 1 }
    lowerValue := 1287282225076615991
    upperValue := 4052555153018976267
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 1))
    upperTrace := (.lengthenFreeN 29 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 42, r := 2 }
    lowerValue := 31005664248090780
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 2))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 42, r := 3 }
    lowerValue := 1147322391254102
    upperValue := 450283905890997363
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 42, r := 4 }
    lowerValue := 58008772506447
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 4))
    upperTrace := (@UpperTrace.blockUngroup 3 2 21 2 150094635296999121 (.lengthenFreeN 13 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 3, n := 42, r := 5 }
    lowerValue := 3759117727109
    upperValue := 50031545098999707
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 5))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 20 2 16677181699666569 (.lengthenFreeN 12 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 3, n := 42, r := 6 }
    lowerValue := 299911222037
    upperValue := 5559060566555523
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 6))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 42, r := 7 }
    lowerValue := 28658239261
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 7))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 42, r := 8 }
    lowerValue := 3215010290
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 8))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 42, r := 9 }
    lowerValue := 417103737
    upperValue := 68630377364883
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 9))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 42, r := 10 }
    lowerValue := 61850507
    upperValue := 7625597484987
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 10))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 42, r := 11 }
    lowerValue := 10385568
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 11))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 42, r := 12 }
    lowerValue := 1959870
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 12))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 42, r := 13 }
    lowerValue := 413091
    upperValue := 94143178827
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 13))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 42, r := 14 }
    lowerValue := 96751
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 14))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 42, r := 15 }
    lowerValue := 25072
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 15))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 42, r := 16 }
    lowerValue := 7163
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 16))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 42, r := 17 }
    lowerValue := 2249
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 42, r := 18 }
    lowerValue := 774
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 42, r := 19 }
    lowerValue := 292
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 42, r := 20 }
    lowerValue := 120
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 42, r := 21 }
    lowerValue := 54
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 42, r := 22 }
    lowerValue := 27
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 22))) },
  { key := { q := 3, n := 42, r := 23 }
    lowerValue := 14
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 23))) },
  { key := { q := 3, n := 42, r := 24 }
    lowerValue := 8
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 24))) },
  { key := { q := 3, n := 42, r := 25 }
    lowerValue := 5
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 25))) },
  { key := { q := 3, n := 42, r := 26 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 26))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 26))) },
  { key := { q := 3, n := 42, r := 27 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 27))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 27))) },
  { key := { q := 3, n := 42, r := 28 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 30 29)))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 42 28)) },
  { key := { q := 3, n := 42, r := 29 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 31 30))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 42 29)) },
  { key := { q := 3, n := 42, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 32 31)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 42 30)) },
  { key := { q := 3, n := 42, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 42 31)) },
  { key := { q := 3, n := 42, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 42 32)) },
  { key := { q := 3, n := 42, r := 33 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 35 34))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 42 33)) },
  { key := { q := 3, n := 42, r := 34 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 36 35)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 42 34)) },
  { key := { q := 3, n := 42, r := 35 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 37 36))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 42 35)) },
  { key := { q := 3, n := 42, r := 36 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 38 37)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 42 36)) },
  { key := { q := 3, n := 42, r := 37 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 39 38))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 42 37)) },
  { key := { q := 3, n := 42, r := 38 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 40 39)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 42 38)) },
  { key := { q := 3, n := 42, r := 39 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 42 39)) },
  { key := { q := 3, n := 42, r := 40 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 42 40)) },
  { key := { q := 3, n := 42, r := 41 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 42 41)) },
  { key := { q := 3, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 42 42)) },
  { key := { q := 3, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 42 43)) },
  { key := { q := 3, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 42 44)) },
  { key := { q := 3, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 42 45)) },
  { key := { q := 3, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 42 46)) },
  { key := { q := 3, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 42 47)) },
  { key := { q := 3, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 42 48)) },
  { key := { q := 3, n := 43, r := 0 }
    lowerValue := 328256967394537077627
    upperValue := 328256967394537077627
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 43 0)) },
  { key := { q := 3, n := 43, r := 1 }
    lowerValue := 3773068590741805490
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 1))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 43, r := 2 }
    lowerValue := 88742083642751306
    upperValue := 4052555153018976267
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 2))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 43, r := 3 }
    lowerValue := 3204789434373135
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 43, r := 4 }
    lowerValue := 158044786700417
    upperValue := 450283905890997363
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 4))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 21 2 150094635296999121 (.lengthenFreeN 13 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 3, n := 43, r := 5 }
    lowerValue := 9983447062973
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 20 2 16677181699666569 (.lengthenFreeN 12 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 3, n := 43, r := 6 }
    lowerValue := 775923651421
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 6))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 43, r := 7 }
    lowerValue := 72180244237
    upperValue := 5559060566555523
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 7))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 43, r := 8 }
    lowerValue := 7877552309
    upperValue := 617673396283947
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 8))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 43, r := 9 }
    lowerValue := 993519897
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 9))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 43, r := 10 }
    lowerValue := 143109380
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 10))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 43, r := 11 }
    lowerValue := 23323887
    upperValue := 7625597484987
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 11))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 43, r := 12 }
    lowerValue := 4268562
    upperValue := 847288609443
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 12))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 43, r := 13 }
    lowerValue := 871776
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 13))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 43, r := 14 }
    lowerValue := 197662
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 14))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 43, r := 15 }
    lowerValue := 49540
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 15))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 43, r := 16 }
    lowerValue := 13675
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 16))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 43, r := 17 }
    lowerValue := 4145
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 17))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 43, r := 18 }
    lowerValue := 1376
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 43, r := 19 }
    lowerValue := 499
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 43, r := 20 }
    lowerValue := 198
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 43, r := 21 }
    lowerValue := 85
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 43, r := 22 }
    lowerValue := 40
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 22))) },
  { key := { q := 3, n := 43, r := 23 }
    lowerValue := 21
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 23))) },
  { key := { q := 3, n := 43, r := 24 }
    lowerValue := 12
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 24))) },
  { key := { q := 3, n := 43, r := 25 }
    lowerValue := 7
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 25))) },
  { key := { q := 3, n := 43, r := 26 }
    lowerValue := 5
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 26))) },
  { key := { q := 3, n := 43, r := 27 }
    lowerValue := 3
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 27))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 27))) },
  { key := { q := 3, n := 43, r := 28 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 28)) },
  { key := { q := 3, n := 43, r := 29 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 31 30)))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 29)) },
  { key := { q := 3, n := 43, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 32 31))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 30)) },
  { key := { q := 3, n := 43, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 31)) },
  { key := { q := 3, n := 43, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 32)) },
  { key := { q := 3, n := 43, r := 33 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 35 34)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 33)) },
  { key := { q := 3, n := 43, r := 34 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 36 35))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 34)) },
  { key := { q := 3, n := 43, r := 35 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 37 36)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 35)) },
  { key := { q := 3, n := 43, r := 36 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 38 37))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 36)) },
  { key := { q := 3, n := 43, r := 37 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 39 38)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 37)) },
  { key := { q := 3, n := 43, r := 38 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 40 39))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 38)) },
  { key := { q := 3, n := 43, r := 39 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 41 40)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 39)) },
  { key := { q := 3, n := 43, r := 40 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 40)) },
  { key := { q := 3, n := 43, r := 41 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 41)) },
  { key := { q := 3, n := 43, r := 42 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 42)) },
  { key := { q := 3, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 43 43)) },
  { key := { q := 3, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 43 44)) },
  { key := { q := 3, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 43 45)) },
  { key := { q := 3, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 43 46)) },
  { key := { q := 3, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 43 47)) },
  { key := { q := 3, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 43 48)) },
  { key := { q := 3, n := 44, r := 0 }
    lowerValue := 984770902183611232881
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 44 0)) },
  { key := { q := 3, n := 44, r := 1 }
    lowerValue := 11064841597568665538
    upperValue := 36472996377170786403
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 44, r := 2 }
    lowerValue := 254265660259130192
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 44, r := 3 }
    lowerValue := 8966727996208616
    upperValue := 4052555153018976267
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 44, r := 4 }
    lowerValue := 431568589653535
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 4))
    upperTrace := (@UpperTrace.blockUngroup 3 2 22 2 1350851717672992089 (.lengthenFreeN 14 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 3, n := 44, r := 5 }
    lowerValue := 26590925173189
    upperValue := 450283905890997363
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 5))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 21 2 150094635296999121 (.lengthenFreeN 13 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 3, n := 44, r := 6 }
    lowerValue := 2014615089968
    upperValue := 50031545098999707
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 6))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 44, r := 7 }
    lowerValue := 182573043174
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 7))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 44, r := 8 }
    lowerValue := 19398466841
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 8))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 44, r := 9 }
    lowerValue := 2380181018
    upperValue := 617673396283947
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 9))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 44, r := 10 }
    lowerValue := 333307154
    upperValue := 68630377364883
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 10))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 44, r := 11 }
    lowerValue := 52770611
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 11))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 44, r := 12 }
    lowerValue := 9374415
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 12))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 44, r := 13 }
    lowerValue := 1856865
    upperValue := 847288609443
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 13))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 44, r := 14 }
    lowerValue := 407980
    upperValue := 94143178827
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 14))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 44, r := 15 }
    lowerValue := 98997
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 15))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 44, r := 16 }
    lowerValue := 26432
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 16))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 44, r := 17 }
    lowerValue := 7741
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 17))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 44, r := 18 }
    lowerValue := 2480
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 44, r := 19 }
    lowerValue := 868
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 44, r := 20 }
    lowerValue := 331
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 44, r := 21 }
    lowerValue := 137
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 44, r := 22 }
    lowerValue := 62
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 22))) },
  { key := { q := 3, n := 44, r := 23 }
    lowerValue := 30
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 23))) },
  { key := { q := 3, n := 44, r := 24 }
    lowerValue := 16
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 24))) },
  { key := { q := 3, n := 44, r := 25 }
    lowerValue := 9
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 25))) },
  { key := { q := 3, n := 44, r := 26 }
    lowerValue := 6
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 26))) },
  { key := { q := 3, n := 44, r := 27 }
    lowerValue := 4
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 27))) },
  { key := { q := 3, n := 44, r := 28 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 28))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 28))) },
  { key := { q := 3, n := 44, r := 29 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 31 30))))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 29)) },
  { key := { q := 3, n := 44, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 32 31)))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 30)) },
  { key := { q := 3, n := 44, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 31)) },
  { key := { q := 3, n := 44, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 32)) },
  { key := { q := 3, n := 44, r := 33 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 35 34))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 33)) },
  { key := { q := 3, n := 44, r := 34 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 36 35)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 34)) },
  { key := { q := 3, n := 44, r := 35 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 37 36))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 35)) },
  { key := { q := 3, n := 44, r := 36 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 38 37)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 36)) },
  { key := { q := 3, n := 44, r := 37 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 39 38))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 37)) },
  { key := { q := 3, n := 44, r := 38 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 40 39)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 38)) },
  { key := { q := 3, n := 44, r := 39 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 41 40))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 39)) },
  { key := { q := 3, n := 44, r := 40 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 42 41)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 40)) },
  { key := { q := 3, n := 44, r := 41 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 41)) },
  { key := { q := 3, n := 44, r := 42 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 42)) },
  { key := { q := 3, n := 44, r := 43 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 43)) },
  { key := { q := 3, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 44 44)) },
  { key := { q := 3, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 44 45)) },
  { key := { q := 3, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 44 46)) },
  { key := { q := 3, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 44 47)) },
  { key := { q := 3, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 44 48)) },
  { key := { q := 3, n := 45, r := 0 }
    lowerValue := 2954312706550833698643
    upperValue := 2954312706550833698643
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 45 0)) },
  { key := { q := 3, n := 45, r := 1 }
    lowerValue := 32464974797261908777
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 1))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 45, r := 2 }
    lowerValue := 729279858442565712
    upperValue := 36472996377170786403
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 45, r := 3 }
    lowerValue := 25127903195097718
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 45, r := 4 }
    lowerValue := 1181020721861816
    upperValue := 4052555153018976267
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 4))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 22 2 1350851717672992089 (.lengthenFreeN 14 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 3, n := 45, r := 5 }
    lowerValue := 71020924135177
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 21 2 150094635296999121 (.lengthenFreeN 13 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 3, n := 45, r := 6 }
    lowerValue := 5248550684245
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 6))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 45, r := 7 }
    lowerValue := 463678134756
    upperValue := 50031545098999707
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 7))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 45, r := 8 }
    lowerValue := 47996171491
    upperValue := 5559060566555523
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 8))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 45, r := 9 }
    lowerValue := 5733539003
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 9))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 45, r := 10 }
    lowerValue := 781146688
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 10))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 45, r := 11 }
    lowerValue := 120238491
    upperValue := 68630377364883
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 11))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 45, r := 12 }
    lowerValue := 20750733
    upperValue := 7625597484987
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 12))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 45, r := 13 }
    lowerValue := 3989951
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 13))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 45, r := 14 }
    lowerValue := 850295
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 14))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 45, r := 15 }
    lowerValue := 199953
    upperValue := 94143178827
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 15))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 45, r := 16 }
    lowerValue := 51692
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 16))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 45, r := 17 }
    lowerValue := 14645
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 17))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 45, r := 18 }
    lowerValue := 4535
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 45, r := 19 }
    lowerValue := 1531
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 45, r := 20 }
    lowerValue := 563
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 45, r := 21 }
    lowerValue := 225
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 45, r := 22 }
    lowerValue := 98
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 22))) },
  { key := { q := 3, n := 45, r := 23 }
    lowerValue := 46
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 23))) },
  { key := { q := 3, n := 45, r := 24 }
    lowerValue := 24
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 24))) },
  { key := { q := 3, n := 45, r := 25 }
    lowerValue := 13
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 25))) },
  { key := { q := 3, n := 45, r := 26 }
    lowerValue := 8
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 26))) },
  { key := { q := 3, n := 45, r := 27 }
    lowerValue := 5
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 27))) },
  { key := { q := 3, n := 45, r := 28 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 28))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 28))) },
  { key := { q := 3, n := 45, r := 29 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 29))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 29))) },
  { key := { q := 3, n := 45, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 32 31))))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 45 30)) },
  { key := { q := 3, n := 45, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32)))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 45 31)) },
  { key := { q := 3, n := 45, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 45 32)) },
  { key := { q := 3, n := 45, r := 33 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 35 34)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 45 33)) },
  { key := { q := 3, n := 45, r := 34 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 36 35))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 45 34)) },
  { key := { q := 3, n := 45, r := 35 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 37 36)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 45 35)) },
  { key := { q := 3, n := 45, r := 36 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 38 37))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 45 36)) },
  { key := { q := 3, n := 45, r := 37 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 39 38)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 45 37)) },
  { key := { q := 3, n := 45, r := 38 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 40 39))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 45 38)) },
  { key := { q := 3, n := 45, r := 39 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 41 40)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 45 39)) },
  { key := { q := 3, n := 45, r := 40 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 42 41))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 45 40)) },
  { key := { q := 3, n := 45, r := 41 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 43 42)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 45 41)) },
  { key := { q := 3, n := 45, r := 42 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 45 42)) },
  { key := { q := 3, n := 45, r := 43 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 45 43)) },
  { key := { q := 3, n := 45, r := 44 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 45 44)) },
  { key := { q := 3, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 45 45)) },
  { key := { q := 3, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 45 46)) },
  { key := { q := 3, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 45 47)) },
  { key := { q := 3, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 45 48)) },
  { key := { q := 3, n := 46, r := 0 }
    lowerValue := 8862938119652501095929
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 46 0)) },
  { key := { q := 3, n := 46, r := 1 }
    lowerValue := 95300409888736570924
    upperValue := 328256967394537077627
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 46, r := 2 }
    lowerValue := 2093772293799315166
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 46, r := 3 }
    lowerValue := 70523804792218704
    upperValue := 36472996377170786403
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 46, r := 4 }
    lowerValue := 3238628679714270
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 4))
    upperTrace := (@UpperTrace.blockUngroup 3 2 23 2 12157665459056928801 (.lengthenFreeN 15 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 3, n := 46, r := 5 }
    lowerValue := 190188699271510
    upperValue := 4052555153018976267
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 5))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 22 2 1350851717672992089 (.lengthenFreeN 14 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 3, n := 46, r := 6 }
    lowerValue := 13718079565675
    upperValue := 450283905890997363
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 6))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 46, r := 7 }
    lowerValue := 1182160714045
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 7))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 46, r := 8 }
    lowerValue := 119292205811
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 8))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 46, r := 9 }
    lowerValue := 13883596518
    upperValue := 5559060566555523
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 9))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 46, r := 10 }
    lowerValue := 1841627427
    upperValue := 617673396283947
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 10))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 46, r := 11 }
    lowerValue := 275807721
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 11))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 46, r := 12 }
    lowerValue := 46278672
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 12))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 46, r := 13 }
    lowerValue := 8645240
    upperValue := 7625597484987
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 13))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 46, r := 14 }
    lowerValue := 1788565
    upperValue := 847288609443
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 14))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 46, r := 15 }
    lowerValue := 407980
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 15))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 46, r := 16 }
    lowerValue := 102223
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 16))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 46, r := 17 }
    lowerValue := 28044
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 17))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 46, r := 18 }
    lowerValue := 8401
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 46, r := 19 }
    lowerValue := 2742
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 46, r := 20 }
    lowerValue := 973
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 46, r := 21 }
    lowerValue := 375
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 46, r := 22 }
    lowerValue := 157
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 22))) },
  { key := { q := 3, n := 46, r := 23 }
    lowerValue := 71
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 23))) },
  { key := { q := 3, n := 46, r := 24 }
    lowerValue := 35
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 24))) },
  { key := { q := 3, n := 46, r := 25 }
    lowerValue := 19
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 25))) },
  { key := { q := 3, n := 46, r := 26 }
    lowerValue := 11
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 26))) },
  { key := { q := 3, n := 46, r := 27 }
    lowerValue := 7
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 27))) },
  { key := { q := 3, n := 46, r := 28 }
    lowerValue := 5
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 28))) },
  { key := { q := 3, n := 46, r := 29 }
    lowerValue := 3
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 29))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 29))) },
  { key := { q := 3, n := 46, r := 30 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 30)) },
  { key := { q := 3, n := 46, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32))))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 31)) },
  { key := { q := 3, n := 46, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33)))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 32)) },
  { key := { q := 3, n := 46, r := 33 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 35 34))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 33)) },
  { key := { q := 3, n := 46, r := 34 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 36 35)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 34)) },
  { key := { q := 3, n := 46, r := 35 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 37 36))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 35)) },
  { key := { q := 3, n := 46, r := 36 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 38 37)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 36)) },
  { key := { q := 3, n := 46, r := 37 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 39 38))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 37)) },
  { key := { q := 3, n := 46, r := 38 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 40 39)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 38)) },
  { key := { q := 3, n := 46, r := 39 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 41 40))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 39)) },
  { key := { q := 3, n := 46, r := 40 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 42 41)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 40)) },
  { key := { q := 3, n := 46, r := 41 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 43 42))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 41)) },
  { key := { q := 3, n := 46, r := 42 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 44 43)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 42)) }]

end CoveringCodes.Database
