import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 169. Do not edit manually.

def precomputedTable_chunk_169 : Array AnyBoundEntry := #[
  { key := { q := 17, n := 29, r := 12 }
    lowerValue := 31627767570377
    upperValue := 415051342468923289985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 12))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 29, r := 13 }
    lowerValue := 1502064849251
    upperValue := 24414784851113134705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 13))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 29, r := 14 }
    lowerValue := 81557322921
    upperValue := 1436163814771360865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 14))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 29, r := 15 }
    lowerValue := 5055858492
    upperValue := 84480224398315345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 15))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 29, r := 16 }
    lowerValue := 357756566
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 16))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 29, r := 17 }
    lowerValue := 28922441
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 29, r := 18 }
    lowerValue := 2676931
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 29, r := 19 }
    lowerValue := 284605
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 29, r := 20 }
    lowerValue := 34924
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 29, r := 21 }
    lowerValue := 4978
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 29, r := 22 }
    lowerValue := 832
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 29, r := 23 }
    lowerValue := 165
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 29, r := 24 }
    lowerValue := 40
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 29, r := 25 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 27 26)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 29, r := 26 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 28 27))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 29, r := 27 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27)) },
  { key := { q := 17, n := 29, r := 28 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 28)) },
  { key := { q := 17, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 29)) },
  { key := { q := 17, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 30)) },
  { key := { q := 17, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 31)) },
  { key := { q := 17, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 32)) },
  { key := { q := 17, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 33)) },
  { key := { q := 17, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 34)) },
  { key := { q := 17, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 35)) },
  { key := { q := 17, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 36)) },
  { key := { q := 17, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 37)) },
  { key := { q := 17, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 38)) },
  { key := { q := 17, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 39)) },
  { key := { q := 17, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 40)) },
  { key := { q := 17, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 41)) },
  { key := { q := 17, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 42)) },
  { key := { q := 17, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 43)) },
  { key := { q := 17, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 44)) },
  { key := { q := 17, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 45)) },
  { key := { q := 17, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 46)) },
  { key := { q := 17, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 47)) },
  { key := { q := 17, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 29 48)) },
  { key := { q := 17, n := 30, r := 0 }
    lowerValue := 8193465725814765556554001028792218849
    upperValue := 8193465725814765556554001028792218849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 30 0)) },
  { key := { q := 17, n := 30, r := 1 }
    lowerValue := 17034232278201175793251561390420414
    upperValue := 241818141714459801689462680475243585
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 1))
    upperTrace := (.lengthenFreeN 27 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 30, r := 2 }
    lowerValue := 73259946940878260714353421632427
    upperValue := 14224596571438811864086040027955505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 2))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 30, r := 3 }
    lowerValue := 489407537894061957189996406485
    upperValue := 836740974790518344946237648703265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 30, r := 4 }
    lowerValue := 4519895213509892487576764091
    upperValue := 49220057340618726173308096982545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 4))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 30, r := 5 }
    lowerValue := 54174852309800698523697892
    upperValue := 2895297490624630951371064528385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 5))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 30, r := 6 }
    lowerValue := 810180790096381456168848
    upperValue := 170311617095566526551239089905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 6))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 30, r := 7 }
    lowerValue := 14720721436167693099812
    upperValue := 10018330417386266267719946465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 7))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 30, r := 8 }
    lowerValue := 318877464413472509693
    upperValue := 589313553963898015748232145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 8))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 30, r := 9 }
    lowerValue := 8121391808229674558
    upperValue := 34665503174346942102837185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 9))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 30, r := 10 }
    lowerValue := 240674821227125730
    upperValue := 2039147245549820123696305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 10))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 30, r := 11 }
    lowerValue := 8234164379065379
    upperValue := 119949837973518830805665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 11))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 30, r := 12 }
    lowerValue := 323331799799378
    upperValue := 7055872821971695929745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 12))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 30, r := 13 }
    lowerValue := 14509640715278
    upperValue := 415051342468923289985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 13))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 30, r := 14 }
    lowerValue := 741926589991
    upperValue := 24414784851113134705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 14))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 30, r := 15 }
    lowerValue := 43150342475
    upperValue := 1436163814771360865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 15))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 30, r := 16 }
    lowerValue := 2852424460
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 16))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 30, r := 17 }
    lowerValue := 214380176
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 30, r := 18 }
    lowerValue := 18343360
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 30, r := 19 }
    lowerValue := 1791237
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 30, r := 20 }
    lowerValue := 200347
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 30, r := 21 }
    lowerValue := 25796
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 30, r := 22 }
    lowerValue := 3849
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 30, r := 23 }
    lowerValue := 672
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 30, r := 24 }
    lowerValue := 139
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 30, r := 25 }
    lowerValue := 35
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 30, r := 26 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 28 27)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 30, r := 27 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 29 28))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 30, r := 28 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28)) },
  { key := { q := 17, n := 30, r := 29 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 29)) },
  { key := { q := 17, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 30)) },
  { key := { q := 17, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 31)) },
  { key := { q := 17, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 32)) },
  { key := { q := 17, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 33)) },
  { key := { q := 17, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 34)) },
  { key := { q := 17, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 35)) },
  { key := { q := 17, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 36)) },
  { key := { q := 17, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 37)) },
  { key := { q := 17, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 38)) },
  { key := { q := 17, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 39)) },
  { key := { q := 17, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 40)) },
  { key := { q := 17, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 41)) },
  { key := { q := 17, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 42)) },
  { key := { q := 17, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 43)) },
  { key := { q := 17, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 44)) },
  { key := { q := 17, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 45)) },
  { key := { q := 17, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 46)) },
  { key := { q := 17, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 47)) },
  { key := { q := 17, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 30 48)) },
  { key := { q := 17, n := 31, r := 0 }
    lowerValue := 139288917338851014461418017489467720433
    upperValue := 139288917338851014461418017489467720433
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 31 0)) },
  { key := { q := 17, n := 31, r := 1 }
    lowerValue := 280259391023845099519955769596514529
    upperValue := 4110908409145816628720865568079140945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 1))
    upperTrace := (.lengthenFreeN 28 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 31, r := 2 }
    lowerValue := 1165236850003354730848339990877032
    upperValue := 241818141714459801689462680475243585
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 2))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 31, r := 3 }
    lowerValue := 7516512271202393606658164048034
    upperValue := 14224596571438811864086040027955505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 31, r := 4 }
    lowerValue := 66945828892402716985847529509
    upperValue := 836740974790518344946237648703265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 4))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 31, r := 5 }
    lowerValue := 772774550464631213107052790
    upperValue := 49220057340618726173308096982545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 5))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 31, r := 6 }
    lowerValue := 11113781369210721355377056
    upperValue := 2895297490624630951371064528385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 6))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 31, r := 7 }
    lowerValue := 193886569847386857983599
    upperValue := 170311617095566526551239089905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 7))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 31, r := 8 }
    lowerValue := 4025665651551949545869
    upperValue := 10018330417386266267719946465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 8))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 31, r := 9 }
    lowerValue := 98091475916738759282
    upperValue := 589313553963898015748232145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 9))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 31, r := 10 }
    lowerValue := 2775469633100663595
    upperValue := 34665503174346942102837185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 10))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 31, r := 11 }
    lowerValue := 90461633080413560
    upperValue := 2039147245549820123696305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 11))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 31, r := 12 }
    lowerValue := 3375747362035919
    upperValue := 119949837973518830805665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 12))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 31, r := 13 }
    lowerValue := 143575666785764
    upperValue := 7055872821971695929745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 13))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 31, r := 14 }
    lowerValue := 6937197368223
    upperValue := 415051342468923289985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 14))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 31, r := 15 }
    lowerValue := 379970944722
    upperValue := 24414784851113134705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 15))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 31, r := 16 }
    lowerValue := 23566088315
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 31, r := 17 }
    lowerValue := 1654682585
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 31, r := 18 }
    lowerValue := 131630492
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 31, r := 19 }
    lowerValue := 11883761
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 31, r := 20 }
    lowerValue := 1220939
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 31, r := 21 }
    lowerValue := 143305
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 31, r := 22 }
    lowerValue := 19316
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 31, r := 23 }
    lowerValue := 3011
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 31, r := 24 }
    lowerValue := 548
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 31, r := 25 }
    lowerValue := 118
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 31, r := 26 }
    lowerValue := 31
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 31, r := 27 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 29 28)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 31, r := 28 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 30 29))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 31, r := 29 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29)) },
  { key := { q := 17, n := 31, r := 30 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 30)) },
  { key := { q := 17, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 31)) },
  { key := { q := 17, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 32)) },
  { key := { q := 17, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 33)) },
  { key := { q := 17, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 34)) },
  { key := { q := 17, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 35)) },
  { key := { q := 17, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 36)) },
  { key := { q := 17, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 37)) },
  { key := { q := 17, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 38)) },
  { key := { q := 17, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 39)) },
  { key := { q := 17, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 40)) },
  { key := { q := 17, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 41)) },
  { key := { q := 17, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 42)) },
  { key := { q := 17, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 43)) },
  { key := { q := 17, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 44)) },
  { key := { q := 17, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 45)) },
  { key := { q := 17, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 46)) },
  { key := { q := 17, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 47)) },
  { key := { q := 17, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 31 48)) },
  { key := { q := 17, n := 32, r := 0 }
    lowerValue := 2367911594760467245844106297320951247361
    upperValue := 2367911594760467245844106297320951247361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 32 0)) },
  { key := { q := 17, n := 32, r := 1 }
    lowerValue := 4615812075556466366167848532789378650
    upperValue := 69885442955478882688254714657345396065
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 1))
    upperTrace := (.lengthenFreeN 29 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 32, r := 2 }
    lowerValue := 18573458061169726375170456253645031
    upperValue := 4110908409145816628720865568079140945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 2))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 32, r := 3 }
    lowerValue := 115826269310359772164162390839373
    upperValue := 241818141714459801689462680475243585
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 32, r := 4 }
    lowerValue := 996126985101255957710812477867
    upperValue := 14224596571438811864086040027955505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 4))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 32, r := 5 }
    lowerValue := 11089094686953274067335488400
    upperValue := 836740974790518344946237648703265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 5))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 32, r := 6 }
    lowerValue := 153591800695888301471630373
    upperValue := 49220057340618726173308096982545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 6))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 32, r := 7 }
    lowerValue := 2576808277169548840416670
    upperValue := 2895297490624630951371064528385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 7))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 32, r := 8 }
    lowerValue := 51370597651254242229881
    upperValue := 170311617095566526551239089905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 8))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 32, r := 9 }
    lowerValue := 1199796989636374839620
    upperValue := 10018330417386266267719946465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 9))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 32, r := 10 }
    lowerValue := 32479167143110841706
    upperValue := 589313553963898015748232145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 10))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 32, r := 11 }
    lowerValue := 1010749598127063617
    upperValue := 34665503174346942102837185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 11))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 32, r := 12 }
    lowerValue := 35933110651255775
    upperValue := 2039147245549820123696305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 12))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 32, r := 13 }
    lowerValue := 1452413007186437
    upperValue := 119949837973518830805665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 13))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 32, r := 14 }
    lowerValue := 66512792907439
    upperValue := 7055872821971695929745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 14))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 32, r := 15 }
    lowerValue := 3442558913858
    upperValue := 415051342468923289985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 15))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 32, r := 16 }
    lowerValue := 201082679037
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 32, r := 17 }
    lowerValue := 13247229322
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 32, r := 18 }
    lowerValue := 984562512
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 32, r := 19 }
    lowerValue := 82644293
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 32, r := 20 }
    lowerValue := 7850681
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 32, r := 21 }
    lowerValue := 846495
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 32, r := 22 }
    lowerValue := 104026
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 32, r := 23 }
    lowerValue := 14649
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 32, r := 24 }
    lowerValue := 2380
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 32, r := 25 }
    lowerValue := 451
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 32, r := 26 }
    lowerValue := 101
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 32, r := 27 }
    lowerValue := 27
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 32, r := 28 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 30 29)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 32, r := 29 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 31 30))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 32, r := 30 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30)) },
  { key := { q := 17, n := 32, r := 31 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 31)) },
  { key := { q := 17, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 32)) },
  { key := { q := 17, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 33)) },
  { key := { q := 17, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 34)) },
  { key := { q := 17, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 35)) },
  { key := { q := 17, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 36)) },
  { key := { q := 17, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 37)) },
  { key := { q := 17, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 38)) },
  { key := { q := 17, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 39)) },
  { key := { q := 17, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 40)) },
  { key := { q := 17, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 41)) },
  { key := { q := 17, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 42)) },
  { key := { q := 17, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 43)) },
  { key := { q := 17, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 44)) },
  { key := { q := 17, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 45)) },
  { key := { q := 17, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 46)) },
  { key := { q := 17, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 47)) },
  { key := { q := 17, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 32 48)) },
  { key := { q := 17, n := 33, r := 0 }
    lowerValue := 40254497110927943179349807054456171205137
    upperValue := 40254497110927943179349807054456171205137
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 33 0)) },
  { key := { q := 17, n := 33, r := 1 }
    lowerValue := 76095457676612368959073359271183688479
    upperValue := 1188052530243141005700330149174871733105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 1))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 33, r := 2 }
    lowerValue := 296649867800525753549082198239136984
    upperValue := 69885442955478882688254714657345396065
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 2))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 33, r := 3 }
    lowerValue := 1790403871809659618838682398153354
    upperValue := 4110908409145816628720865568079140945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 33, r := 4 }
    lowerValue := 14885825793366080118327935670077
    upperValue := 241818141714459801689462680475243585
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 4))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 33, r := 5 }
    lowerValue := 160013710312481501794595532809
    upperValue := 14224596571438811864086040027955505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 5))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 33, r := 6 }
    lowerValue := 2137390664580424928808900919
    upperValue := 836740974790518344946237648703265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 6))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 33, r := 7 }
    lowerValue := 34535352006117524589759986
    upperValue := 49220057340618726173308096982545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 7))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 33, r := 8 }
    lowerValue := 662106695818878543853797
    upperValue := 2895297490624630951371064528385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 8))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 33, r := 9 }
    lowerValue := 14847984382901883507026
    upperValue := 170311617095566526551239089905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 9))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 33, r := 10 }
    lowerValue := 385272996626621837068
    upperValue := 10018330417386266267719946465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 10))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 33, r := 11 }
    lowerValue := 11471076520175252220
    upperValue := 589313553963898015748232145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 11))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 33, r := 12 }
    lowerValue := 389378473227731779
    upperValue := 34665503174346942102837185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 12))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 33, r := 13 }
    lowerValue := 14994075084762046
    upperValue := 2039147245549820123696305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 13))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 33, r := 14 }
    lowerValue := 652569827622079
    upperValue := 119949837973518830805665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 14))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 33, r := 15 }
    lowerValue := 32012846064104
    upperValue := 7055872821971695929745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 15))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 33, r := 16 }
    lowerValue := 1767007713781
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 33, r := 17 }
    lowerValue := 109637282712
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 33, r := 18 }
    lowerValue := 7645675054
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 33, r := 19 }
    lowerValue := 599627771
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 33, r := 20 }
    lowerValue := 52963086
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 33, r := 21 }
    lowerValue := 5280516
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 33, r := 22 }
    lowerValue := 596187
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 33, r := 23 }
    lowerValue := 76550
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 33, r := 24 }
    lowerValue := 11240
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 33, r := 25 }
    lowerValue := 1901
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 33, r := 26 }
    lowerValue := 374
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 33, r := 27 }
    lowerValue := 87
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 33, r := 28 }
    lowerValue := 24
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 33, r := 29 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 31 30)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 33, r := 30 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 32 31))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 33, r := 31 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31)) },
  { key := { q := 17, n := 33, r := 32 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 32)) },
  { key := { q := 17, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 33)) },
  { key := { q := 17, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 34)) },
  { key := { q := 17, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 35)) },
  { key := { q := 17, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 36)) },
  { key := { q := 17, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 37)) },
  { key := { q := 17, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 38)) },
  { key := { q := 17, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 39)) },
  { key := { q := 17, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 40)) },
  { key := { q := 17, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 41)) },
  { key := { q := 17, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 42)) },
  { key := { q := 17, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 43)) },
  { key := { q := 17, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 44)) },
  { key := { q := 17, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 45)) },
  { key := { q := 17, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 46)) },
  { key := { q := 17, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 47)) },
  { key := { q := 17, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 33 48)) },
  { key := { q := 17, n := 34, r := 0 }
    lowerValue := 684326450885775034048946719925754910487329
    upperValue := 684326450885775034048946719925754910487329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 34 0)) },
  { key := { q := 17, n := 34, r := 1 }
    lowerValue := 1255644864010596392750360953992210844931
    upperValue := 20196893014133397096905612535972819462785
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 34, r := 2 }
    lowerValue := 4746959655425357995913920685384777510
    upperValue := 1188052530243141005700330149174871733105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 34, r := 3 }
    lowerValue := 27756514280212131965055105073622289
    upperValue := 69885442955478882688254714657345396065
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 34, r := 4 }
    lowerValue := 223347629116515776451428322390754
    upperValue := 4110908409145816628720865568079140945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 4))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 34, r := 5 }
    lowerValue := 2321036963327609633683981022306
    upperValue := 241818141714459801689462680475243585
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 5))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 34, r := 6 }
    lowerValue := 29937398048716069025012827112
    upperValue := 14224596571438811864086040027955505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 6))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 34, r := 7 }
    lowerValue := 466499832781460283830626782
    upperValue := 836740974790518344946237648703265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 7))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 34, r := 8 }
    lowerValue := 8613596208552204449492917
    upperValue := 49220057340618726173308096982545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 8))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 34, r := 9 }
    lowerValue := 185762915354415566386715
    upperValue := 2895297490624630951371064528385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 9))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 34, r := 10 }
    lowerValue := 4628180838955232369660
    upperValue := 170311617095566526551239089905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 10))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 34, r := 11 }
    lowerValue := 132085236280450929238
    upperValue := 10018330417386266267719946465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 11))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 34, r := 12 }
    lowerValue := 4289671081776031873
    upperValue := 589313553963898015748232145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 12))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 34, r := 13 }
    lowerValue := 157722653703128468
    upperValue := 34665503174346942102837185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 13))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 34, r := 14 }
    lowerValue := 6539741266802031
    upperValue := 2039147245549820123696305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 14))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 34, r := 15 }
    lowerValue := 304900418759335
    upperValue := 119949837973518830805665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 15))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 34, r := 16 }
    lowerValue := 15951539647814
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 16))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) }]

end CoveringCodes.Database
