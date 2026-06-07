import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 110. Do not edit manually.

def precomputedTable_chunk_110 : Array AnyBoundEntry := #[
  { key := { q := 11, n := 22, r := 11 }
    lowerValue := 1049805
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 11))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 22, r := 12 }
    lowerValue := 112406
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 12))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 22, r := 13 }
    lowerValue := 14286
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 13))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 22, r := 14 }
    lowerValue := 2161
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 14))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 22, r := 15 }
    lowerValue := 391
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 15))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 22, r := 16 }
    lowerValue := 86
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 16))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 22, r := 17 }
    lowerValue := 23
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 17))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 22, r := 18 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 20 19)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 22, r := 19 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 21 20))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 22, r := 20 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 22 20)) },
  { key := { q := 11, n := 22, r := 21 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 22 21)) },
  { key := { q := 11, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 22)) },
  { key := { q := 11, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 23)) },
  { key := { q := 11, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 24)) },
  { key := { q := 11, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 25)) },
  { key := { q := 11, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 26)) },
  { key := { q := 11, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 27)) },
  { key := { q := 11, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 28)) },
  { key := { q := 11, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 29)) },
  { key := { q := 11, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 30)) },
  { key := { q := 11, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 31)) },
  { key := { q := 11, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 32)) },
  { key := { q := 11, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 33)) },
  { key := { q := 11, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 34)) },
  { key := { q := 11, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 35)) },
  { key := { q := 11, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 36)) },
  { key := { q := 11, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 37)) },
  { key := { q := 11, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 38)) },
  { key := { q := 11, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 39)) },
  { key := { q := 11, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 40)) },
  { key := { q := 11, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 41)) },
  { key := { q := 11, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 42)) },
  { key := { q := 11, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 43)) },
  { key := { q := 11, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 44)) },
  { key := { q := 11, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 45)) },
  { key := { q := 11, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 46)) },
  { key := { q := 11, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 47)) },
  { key := { q := 11, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 22 48)) },
  { key := { q := 11, n := 23, r := 0 }
    lowerValue := 895430243255237372246531
    upperValue := 895430243255237372246531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 23 0)) },
  { key := { q := 11, n := 23, r := 1 }
    lowerValue := 3876321399373321957778
    upperValue := 41037749690886160561261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 1))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 23, r := 2 }
    lowerValue := 35072274617337251665
    upperValue := 3730704517353287323751
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 2))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 23, r := 3 }
    lowerValue := 498421815852460867
    upperValue := 339154956123026120341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 3))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 23, r := 4 }
    lowerValue := 9911063915173870
    upperValue := 30832268738456920031
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 4))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 23, r := 5 }
    lowerValue := 259150898560077
    upperValue := 2802933521677901821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 5))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 23, r := 6 }
    lowerValue := 8576733480437
    upperValue := 254812138334354711
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 6))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 23, r := 7 }
    lowerValue := 350328625231
    upperValue := 23164739848577701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 7))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 23, r := 8 }
    lowerValue := 17357547095
    upperValue := 2105885440779791
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 8))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 23, r := 9 }
    lowerValue := 1030678598
    upperValue := 191444130979981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 9))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 23, r := 10 }
    lowerValue := 72743394
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 10))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 23, r := 11 }
    lowerValue := 6070005
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 11))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 23, r := 12 }
    lowerValue := 597115
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 12))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 23, r := 13 }
    lowerValue := 69198
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 13))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 23, r := 14 }
    lowerValue := 9460
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 14))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 23, r := 15 }
    lowerValue := 1531
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 15))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 23, r := 16 }
    lowerValue := 295
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 16))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 23, r := 17 }
    lowerValue := 69
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 23, r := 18 }
    lowerValue := 20
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 23, r := 19 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 21 20)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 23, r := 20 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 22 21))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20)) },
  { key := { q := 11, n := 23, r := 21 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 21)) },
  { key := { q := 11, n := 23, r := 22 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 22)) },
  { key := { q := 11, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 23)) },
  { key := { q := 11, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 24)) },
  { key := { q := 11, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 25)) },
  { key := { q := 11, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 26)) },
  { key := { q := 11, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 27)) },
  { key := { q := 11, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 28)) },
  { key := { q := 11, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 29)) },
  { key := { q := 11, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 30)) },
  { key := { q := 11, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 31)) },
  { key := { q := 11, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 32)) },
  { key := { q := 11, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 33)) },
  { key := { q := 11, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 34)) },
  { key := { q := 11, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 35)) },
  { key := { q := 11, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 36)) },
  { key := { q := 11, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 37)) },
  { key := { q := 11, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 38)) },
  { key := { q := 11, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 39)) },
  { key := { q := 11, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 40)) },
  { key := { q := 11, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 41)) },
  { key := { q := 11, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 42)) },
  { key := { q := 11, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 43)) },
  { key := { q := 11, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 44)) },
  { key := { q := 11, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 45)) },
  { key := { q := 11, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 46)) },
  { key := { q := 11, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 47)) },
  { key := { q := 11, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 23 48)) },
  { key := { q := 11, n := 24, r := 0 }
    lowerValue := 9849732675807611094711841
    upperValue := 9849732675807611094711841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 24 0)) },
  { key := { q := 11, n := 24, r := 1 }
    lowerValue := 40870260065591747280962
    upperValue := 451415246599747766173871
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 1))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 24, r := 2 }
    lowerValue := 353785161301950759482
    upperValue := 41037749690886160561261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 2))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 24, r := 3 }
    lowerValue := 4800436620482586660
    upperValue := 3730704517353287323751
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 3))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 24, r := 4 }
    lowerValue := 90938650704013157
    upperValue := 339154956123026120341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 4))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 24, r := 5 }
    lowerValue := 2259780649676495
    upperValue := 30832268738456920031
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 5))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 24, r := 6 }
    lowerValue := 70884481319916
    upperValue := 2802933521677901821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 6))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 24, r := 7 }
    lowerValue := 2736040873452
    upperValue := 254812138334354711
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 7))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 24, r := 8 }
    lowerValue := 127674706515
    upperValue := 23164739848577701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 8))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 24, r := 9 }
    lowerValue := 7113512360
    upperValue := 2105885440779791
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 9))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 24, r := 10 }
    lowerValue := 469097188
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 10))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 24, r := 11 }
    lowerValue := 36398042
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 11))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 24, r := 12 }
    lowerValue := 3311094
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 12))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 24, r := 13 }
    lowerValue := 352580
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 13))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 24, r := 14 }
    lowerValue := 43960
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 14))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 24, r := 15 }
    lowerValue := 6432
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 15))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 24, r := 16 }
    lowerValue := 1109
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 16))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 24, r := 17 }
    lowerValue := 227
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 24, r := 18 }
    lowerValue := 56
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 24, r := 19 }
    lowerValue := 17
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 24, r := 20 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 22 21)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 24, r := 21 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 23 22))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21)) },
  { key := { q := 11, n := 24, r := 22 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 22)) },
  { key := { q := 11, n := 24, r := 23 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 23)) },
  { key := { q := 11, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 24)) },
  { key := { q := 11, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 25)) },
  { key := { q := 11, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 26)) },
  { key := { q := 11, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 27)) },
  { key := { q := 11, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 28)) },
  { key := { q := 11, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 29)) },
  { key := { q := 11, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 30)) },
  { key := { q := 11, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 31)) },
  { key := { q := 11, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 32)) },
  { key := { q := 11, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 33)) },
  { key := { q := 11, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 34)) },
  { key := { q := 11, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 35)) },
  { key := { q := 11, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 36)) },
  { key := { q := 11, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 37)) },
  { key := { q := 11, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 38)) },
  { key := { q := 11, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 39)) },
  { key := { q := 11, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 40)) },
  { key := { q := 11, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 41)) },
  { key := { q := 11, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 42)) },
  { key := { q := 11, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 43)) },
  { key := { q := 11, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 44)) },
  { key := { q := 11, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 45)) },
  { key := { q := 11, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 46)) },
  { key := { q := 11, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 47)) },
  { key := { q := 11, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 24 48)) },
  { key := { q := 11, n := 25, r := 0 }
    lowerValue := 108347059433883722041830251
    upperValue := 108347059433883722041830251
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 25 0)) },
  { key := { q := 11, n := 25, r := 1 }
    lowerValue := 431661591370054669489364
    upperValue := 4965567712597225427912581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 1))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 25, r := 2 }
    lowerValue := 3581602572935893756962
    upperValue := 451415246599747766173871
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 2))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 25, r := 3 }
    lowerValue := 46495875094092319687
    upperValue := 41037749690886160561261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 3))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 25, r := 4 }
    lowerValue := 841006352101912167
    upperValue := 3730704517353287323751
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 4))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 25, r := 5 }
    lowerValue := 19910040268891828
    upperValue := 339154956123026120341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 5))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 25, r := 6 }
    lowerValue := 593546472525797
    upperValue := 30832268738456920031
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 6))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 25, r := 7 }
    lowerValue := 21714831365275
    upperValue := 2802933521677901821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 7))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 25, r := 8 }
    lowerValue := 957577482198
    upperValue := 254812138334354711
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 8))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 25, r := 9 }
    lowerValue := 50250893657
    upperValue := 23164739848577701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 9))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 25, r := 10 }
    lowerValue := 3109514515
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 10))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 25, r := 11 }
    lowerValue := 225448875
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 11))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 25, r := 12 }
    lowerValue := 19072220
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 12))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 25, r := 13 }
    lowerValue := 1878290
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 13))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 25, r := 14 }
    lowerValue := 215221
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 14))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 25, r := 15 }
    lowerValue := 28723
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 15))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 25, r := 16 }
    lowerValue := 4477
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 16))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 25, r := 17 }
    lowerValue := 819
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 25, r := 18 }
    lowerValue := 177
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 25, r := 19 }
    lowerValue := 46
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 25, r := 20 }
    lowerValue := 15
    upperValue := 1331
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 20))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 25, r := 21 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 23 22)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 25, r := 22 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 24 23))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22)) },
  { key := { q := 11, n := 25, r := 23 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 23)) },
  { key := { q := 11, n := 25, r := 24 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 24)) },
  { key := { q := 11, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 25)) },
  { key := { q := 11, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 26)) },
  { key := { q := 11, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 27)) },
  { key := { q := 11, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 28)) },
  { key := { q := 11, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 29)) },
  { key := { q := 11, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 30)) },
  { key := { q := 11, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 31)) },
  { key := { q := 11, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 32)) },
  { key := { q := 11, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 33)) },
  { key := { q := 11, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 34)) },
  { key := { q := 11, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 35)) },
  { key := { q := 11, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 36)) },
  { key := { q := 11, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 37)) },
  { key := { q := 11, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 38)) },
  { key := { q := 11, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 39)) },
  { key := { q := 11, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 40)) },
  { key := { q := 11, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 41)) },
  { key := { q := 11, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 42)) },
  { key := { q := 11, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 43)) },
  { key := { q := 11, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 44)) },
  { key := { q := 11, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 45)) },
  { key := { q := 11, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 46)) },
  { key := { q := 11, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 47)) },
  { key := { q := 11, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 25 48)) },
  { key := { q := 11, n := 26, r := 0 }
    lowerValue := 1191817653772720942460132761
    upperValue := 1191817653772720942460132761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 26 0)) },
  { key := { q := 11, n := 26, r := 1 }
    lowerValue := 4566351163880156867663344
    upperValue := 54621244838569479707038391
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 1))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 26, r := 2 }
    lowerValue := 36379159786719603872292
    upperValue := 4965567712597225427912581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 2))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 26, r := 3 }
    lowerValue := 452687370320633336053
    upperValue := 451415246599747766173871
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 3))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 26, r := 4 }
    lowerValue := 7834063129720763712
    upperValue := 41037749690886160561261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 4))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 26, r := 5 }
    lowerValue := 177086796961733954
    upperValue := 3730704517353287323751
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 5))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 26, r := 6 }
    lowerValue := 5029612533914295
    upperValue := 339154956123026120341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 6))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 26, r := 7 }
    lowerValue := 174882556985682
    upperValue := 30832268738456920031
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 7))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 26, r := 8 }
    lowerValue := 7309860589704
    upperValue := 2802933521677901821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 8))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 26, r := 9 }
    lowerValue := 362519889015
    upperValue := 254812138334354711
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 9))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 26, r := 10 }
    lowerValue := 21129667044
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 10))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 26, r := 11 }
    lowerValue := 1437620684
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 11))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 26, r := 12 }
    lowerValue := 113650174
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 12))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 26, r := 13 }
    lowerValue := 10409550
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 13))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 26, r := 14 }
    lowerValue := 1103267
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 14))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 26, r := 15 }
    lowerValue := 135336
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 15))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 26, r := 16 }
    lowerValue := 19247
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 16))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 26, r := 17 }
    lowerValue := 3184
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 26, r := 18 }
    lowerValue := 616
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 26, r := 19 }
    lowerValue := 140
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 26, r := 20 }
    lowerValue := 38
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 26, r := 21 }
    lowerValue := 13
    upperValue := 1331
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 21))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 26, r := 22 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 24 23)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 26, r := 23 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 25 24))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23)) },
  { key := { q := 11, n := 26, r := 24 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 24)) },
  { key := { q := 11, n := 26, r := 25 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 25)) },
  { key := { q := 11, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 26)) },
  { key := { q := 11, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 27)) },
  { key := { q := 11, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 28)) },
  { key := { q := 11, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 29)) },
  { key := { q := 11, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 30)) },
  { key := { q := 11, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 31)) },
  { key := { q := 11, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 32)) },
  { key := { q := 11, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 33)) },
  { key := { q := 11, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 34)) },
  { key := { q := 11, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 35)) },
  { key := { q := 11, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 36)) },
  { key := { q := 11, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 37)) },
  { key := { q := 11, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 38)) },
  { key := { q := 11, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 39)) },
  { key := { q := 11, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 40)) },
  { key := { q := 11, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 41)) },
  { key := { q := 11, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 42)) },
  { key := { q := 11, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 43)) },
  { key := { q := 11, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 44)) },
  { key := { q := 11, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 45)) },
  { key := { q := 11, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 46)) },
  { key := { q := 11, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 47)) },
  { key := { q := 11, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 26 48)) },
  { key := { q := 11, n := 27, r := 0 }
    lowerValue := 13109994191499930367061460371
    upperValue := 13109994191499930367061460371
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 27 0)) },
  { key := { q := 11, n := 27, r := 1 }
    lowerValue := 48376362330258045634913138
    upperValue := 600833693224264276777422301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 1))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 27, r := 2 }
    lowerValue := 370642452616548312659000
    upperValue := 54621244838569479707038391
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 2))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 27, r := 3 }
    lowerValue := 4428497033479901798478
    upperValue := 4965567712597225427912581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 3))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 27, r := 4 }
    lowerValue := 73461654921136134852
    upperValue := 451415246599747766173871
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 4))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 27, r := 5 }
    lowerValue := 1588808962541393313
    upperValue := 41037749690886160561261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 5))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 27, r := 6 }
    lowerValue := 43087922392518301
    upperValue := 3730704517353287323751
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 6))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 27, r := 7 }
    lowerValue := 1427394682703813
    upperValue := 339154956123026120341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 7))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 27, r := 8 }
    lowerValue := 56706074199469
    upperValue := 30832268738456920031
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 8))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 27, r := 9 }
    lowerValue := 2665707342546
    upperValue := 2802933521677901821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 9))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 27, r := 10 }
    lowerValue := 146839906724
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 10))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 27, r := 11 }
    lowerValue := 9410862870
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 11))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 27, r := 12 }
    lowerValue := 698196880
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 12))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 27, r := 13 }
    lowerValue := 59764763
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 13))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 27, r := 14 }
    lowerValue := 5891630
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 14))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 27, r := 15 }
    lowerValue := 668569
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 15))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) }]

end CoveringCodes.Database
