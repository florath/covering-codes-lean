import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 149. Do not edit manually.

def precomputedTable_chunk_149 : Array AnyBoundEntry := #[
  { key := { q := 15, n := 25, r := 10 }
    lowerValue := 255226718562
    upperValue := 219920042724609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 10))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 25, r := 11 }
    lowerValue := 13262242024
    upperValue := 14661336181640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 11))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 25, r := 12 }
    lowerValue := 804522596
    upperValue := 977422412109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 12))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 25, r := 13 }
    lowerValue := 56853816
    upperValue := 65161494140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 13))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 25, r := 14 }
    lowerValue := 4678562
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 14))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 25, r := 15 }
    lowerValue := 448921
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 15))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 25, r := 16 }
    lowerValue := 50382
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 16))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 25, r := 17 }
    lowerValue := 6647
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 25, r := 18 }
    lowerValue := 1039
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 25, r := 19 }
    lowerValue := 195
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 25, r := 20 }
    lowerValue := 44
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 25, r := 21 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 23 22)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 25, r := 22 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 24 23))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 25, r := 23 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23)) },
  { key := { q := 15, n := 25, r := 24 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 24)) },
  { key := { q := 15, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 25)) },
  { key := { q := 15, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 26)) },
  { key := { q := 15, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 27)) },
  { key := { q := 15, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 28)) },
  { key := { q := 15, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 29)) },
  { key := { q := 15, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 30)) },
  { key := { q := 15, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 31)) },
  { key := { q := 15, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 32)) },
  { key := { q := 15, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 33)) },
  { key := { q := 15, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 34)) },
  { key := { q := 15, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 35)) },
  { key := { q := 15, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 36)) },
  { key := { q := 15, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 37)) },
  { key := { q := 15, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 38)) },
  { key := { q := 15, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 39)) },
  { key := { q := 15, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 40)) },
  { key := { q := 15, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 41)) },
  { key := { q := 15, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 42)) },
  { key := { q := 15, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 43)) },
  { key := { q := 15, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 44)) },
  { key := { q := 15, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 45)) },
  { key := { q := 15, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 46)) },
  { key := { q := 15, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 47)) },
  { key := { q := 15, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 25 48)) },
  { key := { q := 15, n := 26, r := 0 }
    lowerValue := 3787675244106352329254150390625
    upperValue := 3787675244106352329254150390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 26 0)) },
  { key := { q := 15, n := 26, r := 1 }
    lowerValue := 10377192449606444737682603810
    upperValue := 126816978543412685394287109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 1))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 26, r := 2 }
    lowerValue := 59122379522459257461237031
    upperValue := 8454465236227512359619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 2))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 26, r := 3 }
    lowerValue := 526178184391582417814653
    upperValue := 563631015748500823974609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 3))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 26, r := 4 }
    lowerValue := 6513431099477179819214
    upperValue := 37575401049900054931640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 4))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 26, r := 5 }
    lowerValue := 105331463925711554970
    upperValue := 2505026736660003662109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 5))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 26, r := 6 }
    lowerValue := 2140552751481187755
    upperValue := 167001782444000244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 6))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 26, r := 7 }
    lowerValue := 53264650162692920
    upperValue := 11133452162933349609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 7))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 26, r := 8 }
    lowerValue := 1593670678107194
    upperValue := 742230144195556640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 8))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 26, r := 9 }
    lowerValue := 56588909490059
    upperValue := 49482009613037109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 9))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 26, r := 10 }
    lowerValue := 2362310710380
    upperValue := 3298800640869140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 10))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 26, r := 11 }
    lowerValue := 115158529583
    upperValue := 219920042724609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 11))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 26, r := 12 }
    lowerValue := 6525706707
    upperValue := 14661336181640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 12))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 26, r := 13 }
    lowerValue := 428686643
    upperValue := 977422412109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 13))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 26, r := 14 }
    lowerValue := 32609654
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 14))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 26, r := 15 }
    lowerValue := 2873596
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 15))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 26, r := 16 }
    lowerValue := 293919
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 16))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 26, r := 17 }
    lowerValue := 35020
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 26, r := 18 }
    lowerValue := 4887
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 26, r := 19 }
    lowerValue := 805
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 26, r := 20 }
    lowerValue := 159
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 26, r := 21 }
    lowerValue := 38
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 26, r := 22 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 24 23)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 26, r := 23 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 25 24))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 26, r := 24 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24)) },
  { key := { q := 15, n := 26, r := 25 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 25)) },
  { key := { q := 15, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 26)) },
  { key := { q := 15, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 27)) },
  { key := { q := 15, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 28)) },
  { key := { q := 15, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 29)) },
  { key := { q := 15, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 30)) },
  { key := { q := 15, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 31)) },
  { key := { q := 15, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 32)) },
  { key := { q := 15, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 33)) },
  { key := { q := 15, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 34)) },
  { key := { q := 15, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 35)) },
  { key := { q := 15, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 36)) },
  { key := { q := 15, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 37)) },
  { key := { q := 15, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 38)) },
  { key := { q := 15, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 39)) },
  { key := { q := 15, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 40)) },
  { key := { q := 15, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 41)) },
  { key := { q := 15, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 42)) },
  { key := { q := 15, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 43)) },
  { key := { q := 15, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 44)) },
  { key := { q := 15, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 45)) },
  { key := { q := 15, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 46)) },
  { key := { q := 15, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 47)) },
  { key := { q := 15, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 26 48)) },
  { key := { q := 15, n := 27, r := 0 }
    lowerValue := 56815128661595284938812255859375
    upperValue := 56815128661595284938812255859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 27 0)) },
  { key := { q := 15, n := 27, r := 1 }
    lowerValue := 149907991191544287437499355830
    upperValue := 1902254678151190280914306640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 1))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 27, r := 2 }
    lowerValue := 821324592144492734930426540
    upperValue := 126816978543412685394287109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 2))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 27, r := 3 }
    lowerValue := 7018220732405266579844944
    upperValue := 8454465236227512359619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 3))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 27, r := 4 }
    lowerValue := 83270478046568683957246
    upperValue := 563631015748500823974609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 4))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 27, r := 5 }
    lowerValue := 1288300733367795466698
    upperValue := 37575401049900054931640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 5))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 27, r := 6 }
    lowerValue := 24996550332175540828
    upperValue := 2505026736660003662109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 6))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 27, r := 7 }
    lowerValue := 592544737369607735
    upperValue := 167001782444000244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 7))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 27, r := 8 }
    lowerValue := 16847861742309088
    upperValue := 11133452162933349609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 8))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 27, r := 9 }
    lowerValue := 566977890409234
    upperValue := 742230144195556640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 9))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 27, r := 10 }
    lowerValue := 22364272120239
    upperValue := 49482009613037109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 10))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 27, r := 11 }
    lowerValue := 1026688259874
    upperValue := 3298800640869140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 11))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 27, r := 12 }
    lowerValue := 54582838869
    upperValue := 219920042724609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 12))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 27, r := 13 }
    lowerValue := 3349659021
    upperValue := 14661336181640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 13))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 27, r := 14 }
    lowerValue := 236878312
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 14))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 27, r := 15 }
    lowerValue := 19297153
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 15))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 27, r := 16 }
    lowerValue := 1812855
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 16))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 27, r := 17 }
    lowerValue := 196883
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 27, r := 18 }
    lowerValue := 24818
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 27, r := 19 }
    lowerValue := 3653
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 27, r := 20 }
    lowerValue := 633
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 27, r := 21 }
    lowerValue := 131
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 27, r := 22 }
    lowerValue := 33
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 27, r := 23 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 25 24)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 27, r := 24 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 26 25))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 27, r := 25 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25)) },
  { key := { q := 15, n := 27, r := 26 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 26)) },
  { key := { q := 15, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 27)) },
  { key := { q := 15, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 28)) },
  { key := { q := 15, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 29)) },
  { key := { q := 15, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 30)) },
  { key := { q := 15, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 31)) },
  { key := { q := 15, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 32)) },
  { key := { q := 15, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 33)) },
  { key := { q := 15, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 34)) },
  { key := { q := 15, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 35)) },
  { key := { q := 15, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 36)) },
  { key := { q := 15, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 37)) },
  { key := { q := 15, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 38)) },
  { key := { q := 15, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 39)) },
  { key := { q := 15, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 40)) },
  { key := { q := 15, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 41)) },
  { key := { q := 15, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 42)) },
  { key := { q := 15, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 43)) },
  { key := { q := 15, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 44)) },
  { key := { q := 15, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 45)) },
  { key := { q := 15, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 46)) },
  { key := { q := 15, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 47)) },
  { key := { q := 15, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 27 48)) },
  { key := { q := 15, n := 28, r := 0 }
    lowerValue := 852226929923929274082183837890625
    upperValue := 852226929923929274082183837890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 28 0)) },
  { key := { q := 15, n := 28, r := 1 }
    lowerValue := 2168516361129591028198941063335
    upperValue := 28533820172267854213714599609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 1))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 28, r := 2 }
    lowerValue := 11442205796430355044671578496
    upperValue := 1902254678151190280914306640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 2))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 28, r := 3 }
    lowerValue := 94025086530678744799484086
    upperValue := 126816978543412685394287109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 3))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 28, r := 4 }
    lowerValue := 1071132817464982952479767
    upperValue := 8454465236227512359619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 4))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 28, r := 5 }
    lowerValue := 15884057566328772883392
    upperValue := 563631015748500823974609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 5))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 28, r := 6 }
    lowerValue := 294854505117311730713
    upperValue := 37575401049900054931640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 6))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 28, r := 7 }
    lowerValue := 6673448166993724537
    upperValue := 2505026736660003662109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 7))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 28, r := 8 }
    lowerValue := 180762918349053510
    upperValue := 167001782444000244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 8))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 28, r := 9 }
    lowerValue := 5781008041529241
    upperValue := 11133452162933349609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 9))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 28, r := 10 }
    lowerValue := 216118096605628
    upperValue := 742230144195556640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 10))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 28, r := 11 }
    lowerValue := 9374976840309
    upperValue := 49482009613037109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 11))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 28, r := 12 }
    lowerValue := 469382882277
    upperValue := 3298800640869140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 12))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 28, r := 13 }
    lowerValue := 27025628393
    upperValue := 219920042724609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 13))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 28, r := 14 }
    lowerValue := 1785479037
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 14))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 28, r := 15 }
    lowerValue := 135228708
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 15))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 28, r := 16 }
    lowerValue := 11745251
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 16))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 28, r := 17 }
    lowerValue := 1171711
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 28, r := 18 }
    lowerValue := 134648
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 28, r := 19 }
    lowerValue := 17902
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 28, r := 20 }
    lowerValue := 2771
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 28, r := 21 }
    lowerValue := 503
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 28, r := 22 }
    lowerValue := 109
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 28, r := 23 }
    lowerValue := 29
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 28, r := 24 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 26 25)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 28, r := 25 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 27 26))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 28, r := 26 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26)) },
  { key := { q := 15, n := 28, r := 27 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 27)) },
  { key := { q := 15, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 28)) },
  { key := { q := 15, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 29)) },
  { key := { q := 15, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 30)) },
  { key := { q := 15, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 31)) },
  { key := { q := 15, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 32)) },
  { key := { q := 15, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 33)) },
  { key := { q := 15, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 34)) },
  { key := { q := 15, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 35)) },
  { key := { q := 15, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 36)) },
  { key := { q := 15, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 37)) },
  { key := { q := 15, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 38)) },
  { key := { q := 15, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 39)) },
  { key := { q := 15, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 40)) },
  { key := { q := 15, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 41)) },
  { key := { q := 15, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 42)) },
  { key := { q := 15, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 43)) },
  { key := { q := 15, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 44)) },
  { key := { q := 15, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 45)) },
  { key := { q := 15, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 46)) },
  { key := { q := 15, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 47)) },
  { key := { q := 15, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 28 48)) },
  { key := { q := 15, n := 29, r := 0 }
    lowerValue := 12783403948858939111232757568359375
    upperValue := 12783403948858939111232757568359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 29 0)) },
  { key := { q := 15, n := 29, r := 1 }
    lowerValue := 31408854911201324597623482968942
    upperValue := 428007302584017813205718994140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 1))
    upperTrace := (.lengthenFreeN 26 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 29, r := 2 }
    lowerValue := 159826512494641850283594733486
    upperValue := 28533820172267854213714599609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 2))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 29, r := 3 }
    lowerValue := 1264862150298527828436242006
    upperValue := 1902254678151190280914306640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 3))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 29, r := 4 }
    lowerValue := 13856973301843604950893344
    upperValue := 126816978543412685394287109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 4))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 29, r := 5 }
    lowerValue := 197299676315830111829080
    upperValue := 8454465236227512359619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 5))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 29, r := 6 }
    lowerValue := 3510504524531799180555
    upperValue := 563631015748500823974609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 6))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 29, r := 7 }
    lowerValue := 76015330610298564924
    upperValue := 37575401049900054931640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 7))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 29, r := 8 }
    lowerValue := 1965930664901215108
    upperValue := 2505026736660003662109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 8))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 29, r := 9 }
    lowerValue := 59897042824905590
    upperValue := 167001782444000244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 9))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 29, r := 10 }
    lowerValue := 2128014917061295
    upperValue := 11133452162933349609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 10))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 29, r := 11 }
    lowerValue := 87490938060806
    upperValue := 742230144195556640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 11))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 29, r := 12 }
    lowerValue := 4139308228794
    upperValue := 49482009613037109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 12))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 29, r := 13 }
    lowerValue := 224455768534
    upperValue := 3298800640869140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 13))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 29, r := 14 }
    lowerValue := 13913358475
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 14))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 29, r := 15 }
    lowerValue := 984516024
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 15))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 29, r := 16 }
    lowerValue := 79504272
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 16))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 29, r := 17 }
    lowerValue := 7333442
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 29, r := 18 }
    lowerValue := 774188
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 29, r := 19 }
    lowerValue := 93846
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 29, r := 20 }
    lowerValue := 13123
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 29, r := 21 }
    lowerValue := 2130
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 29, r := 22 }
    lowerValue := 405
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 29, r := 23 }
    lowerValue := 91
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 29, r := 24 }
    lowerValue := 25
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 29, r := 25 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 27 26)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 29, r := 26 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 28 27))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 29, r := 27 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27)) },
  { key := { q := 15, n := 29, r := 28 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 28)) },
  { key := { q := 15, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 29)) },
  { key := { q := 15, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 30)) },
  { key := { q := 15, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 31)) },
  { key := { q := 15, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 32)) },
  { key := { q := 15, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 33)) },
  { key := { q := 15, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 34)) },
  { key := { q := 15, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 35)) },
  { key := { q := 15, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 36)) },
  { key := { q := 15, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 37)) },
  { key := { q := 15, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 38)) },
  { key := { q := 15, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 39)) },
  { key := { q := 15, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 40)) },
  { key := { q := 15, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 41)) },
  { key := { q := 15, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 42)) },
  { key := { q := 15, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 43)) },
  { key := { q := 15, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 44)) },
  { key := { q := 15, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 45)) },
  { key := { q := 15, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 46)) },
  { key := { q := 15, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 47)) },
  { key := { q := 15, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 29 48)) },
  { key := { q := 15, n := 30, r := 0 }
    lowerValue := 191751059232884086668491363525390625
    upperValue := 191751059232884086668491363525390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 30 0)) },
  { key := { q := 15, n := 30, r := 1 }
    lowerValue := 455465698890461013464350032126819
    upperValue := 6420109538760267198085784912109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 1))
    upperTrace := (.lengthenFreeN 27 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 30, r := 2 }
    lowerValue := 2237964767368309037808748305055
    upperValue := 428007302584017813205718994140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 2))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 30, r := 3 }
    lowerValue := 17080489613016061688285179404
    upperValue := 28533820172267854213714599609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 30, r := 4 }
    lowerValue := 180214315274598832832237735
    upperValue := 1902254678151190280914306640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 4))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 30, r := 5 }
    lowerValue := 2467611092615925544336587
    upperValue := 126816978543412685394287109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 5))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 30, r := 6 }
    lowerValue := 42156455834207674042790
    upperValue := 8454465236227512359619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 6))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 30, r := 7 }
    lowerValue := 874978834039918856655
    upperValue := 563631015748500823974609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 7))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 30, r := 8 }
    lowerValue := 21650072914969223898
    upperValue := 37575401049900054931640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 8))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 30, r := 9 }
    lowerValue := 629812180344434970
    upperValue := 2505026736660003662109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 9))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 30, r := 10 }
    lowerValue := 21317236723710247
    upperValue := 167001782444000244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 10))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 30, r := 11 }
    lowerValue := 832932766600729
    upperValue := 11133452162933349609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 11))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 30, r := 12 }
    lowerValue := 37350334076416
    upperValue := 742230144195556640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 12))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 30, r := 13 }
    lowerValue := 1913893077257
    upperValue := 49482009613037109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 13))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 30, r := 14 }
    lowerValue := 111734787031
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 14))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) }]

end CoveringCodes.Database
