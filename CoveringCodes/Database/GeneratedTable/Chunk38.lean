import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 38. Do not edit manually.

def precomputedTable_chunk_38 : Array AnyBoundEntry := #[
  { key := { q := 3, n := 46, r := 43 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 43)) },
  { key := { q := 3, n := 46, r := 44 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 44)) },
  { key := { q := 3, n := 46, r := 45 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 45)) },
  { key := { q := 3, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 46 46)) },
  { key := { q := 3, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 46 47)) },
  { key := { q := 3, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 46 48)) },
  { key := { q := 3, n := 47, r := 0 }
    lowerValue := 26588814358957503287787
    upperValue := 26588814358957503287787
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 47 0)) },
  { key := { q := 3, n := 47, r := 1 }
    lowerValue := 279882256410078981977
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 1))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 47, r := 2 }
    lowerValue := 6016930155908011607
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 2))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_ternary_golay_upper" (primitiveUpper_valid 3 11 2))) },
  { key := { q := 3, n := 47, r := 3 }
    lowerValue := 198218373172287727
    upperValue := 36472996377170786403
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 3))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_ternary_golay_upper" (primitiveUpper_valid 3 11 2))))) },
  { key := { q := 3, n := 47, r := 4 }
    lowerValue := 8898594788971912
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 4))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_ternary_golay_upper" (primitiveUpper_valid 3 11 2))))) },
  { key := { q := 3, n := 47, r := 5 }
    lowerValue := 510596469886178
    upperValue := 4052555153018976267
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 5))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 3 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_ternary_golay_upper" (primitiveUpper_valid 3 11 2))))) },
  { key := { q := 3, n := 47, r := 6 }
    lowerValue := 35965887283001
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 6))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 4 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_ternary_golay_upper" (primitiveUpper_valid 3 11 2))))) },
  { key := { q := 3, n := 47, r := 7 }
    lowerValue := 3025103292905
    upperValue := 450283905890997363
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 7))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 5 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_ternary_golay_upper" (primitiveUpper_valid 3 11 2))))) },
  { key := { q := 3, n := 47, r := 8 }
    lowerValue := 297778728894
    upperValue := 50031545098999707
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 8))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 47, r := 9 }
    lowerValue := 33786446827
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 9))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 47, r := 10 }
    lowerValue := 4366476084
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 10))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 47, r := 11 }
    lowerValue := 636711472
    upperValue := 617673396283947
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 11))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 47, r := 12 }
    lowerValue := 103951348
    upperValue := 68630377364883
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 12))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 47, r := 13 }
    lowerValue := 18881338
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 13))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 47, r := 14 }
    lowerValue := 3795313
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 14))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 47, r := 15 }
    lowerValue := 840497
    upperValue := 847288609443
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 15))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 47, r := 16 }
    lowerValue := 204293
    upperValue := 94143178827
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 16))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 47, r := 17 }
    lowerValue := 54325
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 17))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 47, r := 18 }
    lowerValue := 15761
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 47, r := 19 }
    lowerValue := 4977
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 47, r := 20 }
    lowerValue := 1707
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 47, r := 21 }
    lowerValue := 635
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 47, r := 22 }
    lowerValue := 256
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 22))) },
  { key := { q := 3, n := 47, r := 23 }
    lowerValue := 112
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 23))) },
  { key := { q := 3, n := 47, r := 24 }
    lowerValue := 53
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 24))) },
  { key := { q := 3, n := 47, r := 25 }
    lowerValue := 27
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 25))) },
  { key := { q := 3, n := 47, r := 26 }
    lowerValue := 15
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 26))) },
  { key := { q := 3, n := 47, r := 27 }
    lowerValue := 9
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 27))) },
  { key := { q := 3, n := 47, r := 28 }
    lowerValue := 6
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 28))) },
  { key := { q := 3, n := 47, r := 29 }
    lowerValue := 4
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 29))) },
  { key := { q := 3, n := 47, r := 30 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 30))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 30))) },
  { key := { q := 3, n := 47, r := 31 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 33 32)))))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 31)) },
  { key := { q := 3, n := 47, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33))))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 32)) },
  { key := { q := 3, n := 47, r := 33 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 35 34)))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 33)) },
  { key := { q := 3, n := 47, r := 34 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 36 35))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 34)) },
  { key := { q := 3, n := 47, r := 35 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 37 36)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 35)) },
  { key := { q := 3, n := 47, r := 36 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 38 37))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 36)) },
  { key := { q := 3, n := 47, r := 37 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 39 38)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 37)) },
  { key := { q := 3, n := 47, r := 38 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 40 39))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 38)) },
  { key := { q := 3, n := 47, r := 39 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 41 40)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 39)) },
  { key := { q := 3, n := 47, r := 40 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 42 41))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 40)) },
  { key := { q := 3, n := 47, r := 41 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 43 42)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 41)) },
  { key := { q := 3, n := 47, r := 42 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 44 43))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 42)) },
  { key := { q := 3, n := 47, r := 43 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 45 44)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 43)) },
  { key := { q := 3, n := 47, r := 44 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 44)) },
  { key := { q := 3, n := 47, r := 45 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 45)) },
  { key := { q := 3, n := 47, r := 46 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 46)) },
  { key := { q := 3, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 47 47)) },
  { key := { q := 3, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 47 48)) },
  { key := { q := 3, n := 48, r := 0 }
    lowerValue := 79766443076872509863361
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 48 0)) },
  { key := { q := 3, n := 48, r := 1 }
    lowerValue := 822334464710025874881
    upperValue := 2954312706550833698643
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 1))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 48, r := 2 }
    lowerValue := 17306670227136582744
    upperValue := 328256967394537077627
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 2))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_ternary_golay_upper" (primitiveUpper_valid 3 11 2))) },
  { key := { q := 3, n := 48, r := 3 }
    lowerValue := 557897025933349489
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 3))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_ternary_golay_upper" (primitiveUpper_valid 3 11 2))))) },
  { key := { q := 3, n := 48, r := 4 }
    lowerValue := 24496359801106765
    upperValue := 36472996377170786403
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 4))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_ternary_golay_upper" (primitiveUpper_valid 3 11 2))))) },
  { key := { q := 3, n := 48, r := 5 }
    lowerValue := 1374099288343874
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 5))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 3 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_ternary_golay_upper" (primitiveUpper_valid 3 11 2))))) },
  { key := { q := 3, n := 48, r := 6 }
    lowerValue := 94574238715040
    upperValue := 4052555153018976267
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 6))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 4 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_ternary_golay_upper" (primitiveUpper_valid 3 11 2))))) },
  { key := { q := 3, n := 48, r := 7 }
    lowerValue := 7768489216901
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 7))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 5 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_ternary_golay_upper" (primitiveUpper_valid 3 11 2))))) },
  { key := { q := 3, n := 48, r := 8 }
    lowerValue := 746392558178
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 8))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 48, r := 9 }
    lowerValue := 82612622216
    upperValue := 50031545098999707
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 9))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 48, r := 10 }
    lowerValue := 10408969706
    upperValue := 5559060566555523
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 10))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 48, r := 11 }
    lowerValue := 1478848504
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 11))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 48, r := 12 }
    lowerValue := 235090831
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 12))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 48, r := 13 }
    lowerValue := 41550027
    upperValue := 68630377364883
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 13))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 48, r := 14 }
    lowerValue := 8121111
    upperValue := 7625597484987
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 14))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 22 14))) },
  { key := { q := 3, n := 48, r := 15 }
    lowerValue := 1747500
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 15))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 23 15))) },
  { key := { q := 3, n := 48, r := 16 }
    lowerValue := 412401
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 16))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 25 16))) },
  { key := { q := 3, n := 48, r := 17 }
    lowerValue := 106392
    upperValue := 94143178827
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 26 17))) },
  { key := { q := 3, n := 48, r := 18 }
    lowerValue := 29921
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 28 18))) },
  { key := { q := 3, n := 48, r := 19 }
    lowerValue := 9151
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 29 19))) },
  { key := { q := 3, n := 48, r := 20 }
    lowerValue := 3037
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 31 20))) },
  { key := { q := 3, n := 48, r := 21 }
    lowerValue := 1092
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 32 21))) },
  { key := { q := 3, n := 48, r := 22 }
    lowerValue := 425
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 34 22))) },
  { key := { q := 3, n := 48, r := 23 }
    lowerValue := 179
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 35 23))) },
  { key := { q := 3, n := 48, r := 24 }
    lowerValue := 81
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 37 24))) },
  { key := { q := 3, n := 48, r := 25 }
    lowerValue := 40
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 38 25))) },
  { key := { q := 3, n := 48, r := 26 }
    lowerValue := 21
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 40 26))) },
  { key := { q := 3, n := 48, r := 27 }
    lowerValue := 12
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 41 27))) },
  { key := { q := 3, n := 48, r := 28 }
    lowerValue := 8
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 43 28))) },
  { key := { q := 3, n := 48, r := 29 }
    lowerValue := 5
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 44 29))) },
  { key := { q := 3, n := 48, r := 30 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 30))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 46 30))) },
  { key := { q := 3, n := 48, r := 31 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 31))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 47 31))) },
  { key := { q := 3, n := 48, r := 32 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 34 33)))))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 32)) },
  { key := { q := 3, n := 48, r := 33 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 35 34))))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 33)) },
  { key := { q := 3, n := 48, r := 34 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 36 35)))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 34)) },
  { key := { q := 3, n := 48, r := 35 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 37 36))))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 35)) },
  { key := { q := 3, n := 48, r := 36 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 38 37)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 36)) },
  { key := { q := 3, n := 48, r := 37 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 39 38))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 37)) },
  { key := { q := 3, n := 48, r := 38 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 40 39)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 38)) },
  { key := { q := 3, n := 48, r := 39 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 41 40))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 39)) },
  { key := { q := 3, n := 48, r := 40 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 42 41)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 40)) },
  { key := { q := 3, n := 48, r := 41 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 43 42))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 41)) },
  { key := { q := 3, n := 48, r := 42 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 44 43)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 42)) },
  { key := { q := 3, n := 48, r := 43 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 45 44))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 43)) },
  { key := { q := 3, n := 48, r := 44 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 46 45)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 44)) },
  { key := { q := 3, n := 48, r := 45 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 45)) },
  { key := { q := 3, n := 48, r := 46 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 46)) },
  { key := { q := 3, n := 48, r := 47 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 48 47)) },
  { key := { q := 3, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 48 48)) },
  { key := { q := 4, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 0)) },
  { key := { q := 4, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 1)) },
  { key := { q := 4, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 2)) },
  { key := { q := 4, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 3)) },
  { key := { q := 4, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 4)) },
  { key := { q := 4, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 5)) },
  { key := { q := 4, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 6)) },
  { key := { q := 4, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 7)) },
  { key := { q := 4, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 8)) },
  { key := { q := 4, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 9)) },
  { key := { q := 4, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 10)) },
  { key := { q := 4, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 11)) },
  { key := { q := 4, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 12)) },
  { key := { q := 4, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 13)) },
  { key := { q := 4, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 14)) },
  { key := { q := 4, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 15)) },
  { key := { q := 4, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 16)) },
  { key := { q := 4, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 17)) },
  { key := { q := 4, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 18)) },
  { key := { q := 4, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 19)) },
  { key := { q := 4, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 20)) },
  { key := { q := 4, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 21)) },
  { key := { q := 4, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 22)) },
  { key := { q := 4, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 23)) },
  { key := { q := 4, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 24)) },
  { key := { q := 4, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 25)) },
  { key := { q := 4, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 26)) },
  { key := { q := 4, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 27)) },
  { key := { q := 4, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 28)) },
  { key := { q := 4, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 29)) },
  { key := { q := 4, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 30)) },
  { key := { q := 4, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 31)) },
  { key := { q := 4, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 32)) },
  { key := { q := 4, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 33)) },
  { key := { q := 4, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 34)) },
  { key := { q := 4, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 35)) },
  { key := { q := 4, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 36)) },
  { key := { q := 4, n := 0, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 37))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 37)) },
  { key := { q := 4, n := 0, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 38))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 38)) },
  { key := { q := 4, n := 0, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 39))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 39)) },
  { key := { q := 4, n := 0, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 40))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 40)) },
  { key := { q := 4, n := 0, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 41))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 41)) },
  { key := { q := 4, n := 0, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 42))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 42)) },
  { key := { q := 4, n := 0, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 43))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 43)) },
  { key := { q := 4, n := 0, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 44))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 44)) },
  { key := { q := 4, n := 0, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 45))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 45)) },
  { key := { q := 4, n := 0, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 46))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 46)) },
  { key := { q := 4, n := 0, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 47))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 47)) },
  { key := { q := 4, n := 0, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 0 48))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 0 48)) },
  { key := { q := 4, n := 1, r := 0 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 1 0)) },
  { key := { q := 4, n := 1, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 1))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 1)) },
  { key := { q := 4, n := 1, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 2)) },
  { key := { q := 4, n := 1, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 3)) },
  { key := { q := 4, n := 1, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 4)) },
  { key := { q := 4, n := 1, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 5)) },
  { key := { q := 4, n := 1, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 6)) },
  { key := { q := 4, n := 1, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 7)) },
  { key := { q := 4, n := 1, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 8)) },
  { key := { q := 4, n := 1, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 9)) },
  { key := { q := 4, n := 1, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 10)) },
  { key := { q := 4, n := 1, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 11)) },
  { key := { q := 4, n := 1, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 12)) },
  { key := { q := 4, n := 1, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 13)) },
  { key := { q := 4, n := 1, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 14)) },
  { key := { q := 4, n := 1, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 15)) },
  { key := { q := 4, n := 1, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 16)) },
  { key := { q := 4, n := 1, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 17)) },
  { key := { q := 4, n := 1, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 18)) },
  { key := { q := 4, n := 1, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 19)) },
  { key := { q := 4, n := 1, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 20)) },
  { key := { q := 4, n := 1, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 21)) },
  { key := { q := 4, n := 1, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 22)) },
  { key := { q := 4, n := 1, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 23)) },
  { key := { q := 4, n := 1, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 24)) },
  { key := { q := 4, n := 1, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 25)) },
  { key := { q := 4, n := 1, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 26)) },
  { key := { q := 4, n := 1, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 27)) },
  { key := { q := 4, n := 1, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 28)) },
  { key := { q := 4, n := 1, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 29)) },
  { key := { q := 4, n := 1, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 30)) },
  { key := { q := 4, n := 1, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 31)) },
  { key := { q := 4, n := 1, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 32)) },
  { key := { q := 4, n := 1, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 33)) },
  { key := { q := 4, n := 1, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 34)) },
  { key := { q := 4, n := 1, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 35)) },
  { key := { q := 4, n := 1, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 36)) },
  { key := { q := 4, n := 1, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 37)) },
  { key := { q := 4, n := 1, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 38)) },
  { key := { q := 4, n := 1, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 39)) },
  { key := { q := 4, n := 1, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 40)) },
  { key := { q := 4, n := 1, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 41)) },
  { key := { q := 4, n := 1, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 42)) },
  { key := { q := 4, n := 1, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 43)) },
  { key := { q := 4, n := 1, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 44)) },
  { key := { q := 4, n := 1, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 45)) },
  { key := { q := 4, n := 1, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 46)) },
  { key := { q := 4, n := 1, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 47)) },
  { key := { q := 4, n := 1, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 1 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 1 48)) },
  { key := { q := 4, n := 2, r := 0 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 2 0)) },
  { key := { q := 4, n := 2, r := 1 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 2 1))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 2 1)) },
  { key := { q := 4, n := 2, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 2)) },
  { key := { q := 4, n := 2, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 3)) },
  { key := { q := 4, n := 2, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 4)) },
  { key := { q := 4, n := 2, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 5)) },
  { key := { q := 4, n := 2, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 6)) },
  { key := { q := 4, n := 2, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 7)) },
  { key := { q := 4, n := 2, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 8)) },
  { key := { q := 4, n := 2, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 9)) },
  { key := { q := 4, n := 2, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 10)) },
  { key := { q := 4, n := 2, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 11)) },
  { key := { q := 4, n := 2, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 12)) },
  { key := { q := 4, n := 2, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 13)) },
  { key := { q := 4, n := 2, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 14)) },
  { key := { q := 4, n := 2, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 15)) },
  { key := { q := 4, n := 2, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 16)) },
  { key := { q := 4, n := 2, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 17)) },
  { key := { q := 4, n := 2, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 18)) },
  { key := { q := 4, n := 2, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 19)) },
  { key := { q := 4, n := 2, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 20)) },
  { key := { q := 4, n := 2, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 21)) },
  { key := { q := 4, n := 2, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 22)) },
  { key := { q := 4, n := 2, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 23)) },
  { key := { q := 4, n := 2, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 24)) },
  { key := { q := 4, n := 2, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 25)) },
  { key := { q := 4, n := 2, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 26)) },
  { key := { q := 4, n := 2, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 27)) },
  { key := { q := 4, n := 2, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 28)) },
  { key := { q := 4, n := 2, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 29)) },
  { key := { q := 4, n := 2, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 30)) },
  { key := { q := 4, n := 2, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 31)) },
  { key := { q := 4, n := 2, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 32)) },
  { key := { q := 4, n := 2, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 33)) },
  { key := { q := 4, n := 2, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 34)) },
  { key := { q := 4, n := 2, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 35)) },
  { key := { q := 4, n := 2, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 36)) },
  { key := { q := 4, n := 2, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 37)) },
  { key := { q := 4, n := 2, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 38)) },
  { key := { q := 4, n := 2, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 39)) },
  { key := { q := 4, n := 2, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 40)) },
  { key := { q := 4, n := 2, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 41)) },
  { key := { q := 4, n := 2, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 42)) },
  { key := { q := 4, n := 2, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 43)) },
  { key := { q := 4, n := 2, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 44)) },
  { key := { q := 4, n := 2, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 45)) },
  { key := { q := 4, n := 2, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 46)) },
  { key := { q := 4, n := 2, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 47)) }]

end CoveringCodes.Database
