import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 151. Do not edit manually.

def precomputedTable_chunk_151 : Array AnyBoundEntry := #[
  { key := { q := 15, n := 35, r := 20 }
    lowerValue := 488467027
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 35, r := 21 }
    lowerValue := 48285977
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 35, r := 22 }
    lowerValue := 5348227
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 35, r := 23 }
    lowerValue := 665486
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 35, r := 24 }
    lowerValue := 93350
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 35, r := 25 }
    lowerValue := 14827
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 35, r := 26 }
    lowerValue := 2682
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 35, r := 27 }
    lowerValue := 557
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 35, r := 28 }
    lowerValue := 134
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 35, r := 29 }
    lowerValue := 38
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) },
  { key := { q := 15, n := 35, r := 30 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 32 31))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30))) },
  { key := { q := 15, n := 35, r := 31 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 33 32)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 31))) },
  { key := { q := 15, n := 35, r := 32 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 34 33))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 32)) },
  { key := { q := 15, n := 35, r := 33 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 33)) },
  { key := { q := 15, n := 35, r := 34 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 34)) },
  { key := { q := 15, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 35 35)) },
  { key := { q := 15, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 35 36)) },
  { key := { q := 15, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 35 37)) },
  { key := { q := 15, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 35 38)) },
  { key := { q := 15, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 35 39)) },
  { key := { q := 15, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 35 40)) },
  { key := { q := 15, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 35 41)) },
  { key := { q := 15, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 35 42)) },
  { key := { q := 15, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 35 43)) },
  { key := { q := 15, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 35 44)) },
  { key := { q := 15, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 35 45)) },
  { key := { q := 15, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 35 46)) },
  { key := { q := 15, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 35 47)) },
  { key := { q := 15, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 35 48)) },
  { key := { q := 15, n := 36, r := 0 }
    lowerValue := 2184164409074570299708284437656402587890625
    upperValue := 2184164409074570299708284437656402587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 36 0)) },
  { key := { q := 15, n := 36, r := 1 }
    lowerValue := 4325078037771426336056008787438420966121
    upperValue := 73129060214941168553195893764495849609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 36, r := 2 }
    lowerValue := 17616360116744527964739964009004335911
    upperValue := 4875270680996077903546392917633056640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 36, r := 3 }
    lowerValue := 110780500400791853565100299153632853
    upperValue := 325018045399738526903092861175537109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 36, r := 4 }
    lowerValue := 956871218048663161597385641563989
    upperValue := 21667869693315901793539524078369140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 36, r := 5 }
    lowerValue := 10652488209173516091847688954847
    upperValue := 1444524646221060119569301605224609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 36, r := 6 }
    lowerValue := 146873999247862950849732323487
    upperValue := 96301643081404007971286773681640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 36, r := 7 }
    lowerValue := 2440872953141184031436234736
    upperValue := 6420109538760267198085784912109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 36, r := 8 }
    lowerValue := 47948069699651689838852059
    upperValue := 428007302584017813205718994140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 8))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 36, r := 9 }
    lowerValue := 1097210886252204074241364
    upperValue := 28533820172267854213714599609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 9))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 36, r := 10 }
    lowerValue := 28923436914138255018227
    upperValue := 1902254678151190280914306640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 10))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 36, r := 11 }
    lowerValue := 870699956467041212908
    upperValue := 126816978543412685394287109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 11))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 36, r := 12 }
    lowerValue := 29728243416112599846
    upperValue := 8454465236227512359619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 12))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 36, r := 13 }
    lowerValue := 1144992980024406975
    upperValue := 563631015748500823974609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 13))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 36, r := 14 }
    lowerValue := 49536457257362884
    upperValue := 4987885095119476318359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 14))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 36, r := 15 }
    lowerValue := 2399442229697729
    upperValue := 332525673007965087890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 15))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 36, r := 16 }
    lowerValue := 129805153752855
    upperValue := 22168378200531005859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 16))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 36, r := 17 }
    lowerValue := 7829227205714
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 17))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 36, r := 18 }
    lowerValue := 525929670906
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 36, r := 19 }
    lowerValue := 39330069304
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 36, r := 20 }
    lowerValue := 3274751089
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 36, r := 21 }
    lowerValue := 303821825
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 36, r := 22 }
    lowerValue := 31452007
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 36, r := 23 }
    lowerValue := 3640465
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 36, r := 24 }
    lowerValue := 472445
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 36, r := 25 }
    lowerValue := 68992
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 36, r := 26 }
    lowerValue := 11389
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 36, r := 27 }
    lowerValue := 2137
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 36, r := 28 }
    lowerValue := 459
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 36, r := 29 }
    lowerValue := 114
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) },
  { key := { q := 15, n := 36, r := 30 }
    lowerValue := 33
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30))) },
  { key := { q := 15, n := 36, r := 31 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 33 32))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 31))) },
  { key := { q := 15, n := 36, r := 32 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 34 33)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 32))) },
  { key := { q := 15, n := 36, r := 33 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 35 34))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 36 33)) },
  { key := { q := 15, n := 36, r := 34 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 36 34)) },
  { key := { q := 15, n := 36, r := 35 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 36 35)) },
  { key := { q := 15, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 36 36)) },
  { key := { q := 15, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 36 37)) },
  { key := { q := 15, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 36 38)) },
  { key := { q := 15, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 36 39)) },
  { key := { q := 15, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 36 40)) },
  { key := { q := 15, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 36 41)) },
  { key := { q := 15, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 36 42)) },
  { key := { q := 15, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 36 43)) },
  { key := { q := 15, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 36 44)) },
  { key := { q := 15, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 36 45)) },
  { key := { q := 15, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 36 46)) },
  { key := { q := 15, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 36 47)) },
  { key := { q := 15, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 36 48)) },
  { key := { q := 15, n := 37, r := 0 }
    lowerValue := 32762466136118554495624266564846038818359375
    upperValue := 32762466136118554495624266564846038818359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 37 0)) },
  { key := { q := 15, n := 37, r := 1 }
    lowerValue := 63126138990594517332609376810878687511290
    upperValue := 1096935903224117528297938406467437744140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 1))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 37, r := 2 }
    lowerValue := 249990203625337106524926683948312073697
    upperValue := 73129060214941168553195893764495849609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 2))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 37, r := 3 }
    lowerValue := 1527249925758145104188702164389647779
    upperValue := 4875270680996077903546392917633056640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 37, r := 4 }
    lowerValue := 12804657539825073167969707900884442
    upperValue := 325018045399738526903092861175537109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 37, r := 5 }
    lowerValue := 138241459084112313561348768857146
    upperValue := 21667869693315901793539524078369140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 37, r := 6 }
    lowerValue := 1846652961501446714229446177881
    upperValue := 1444524646221060119569301605224609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 37, r := 7 }
    lowerValue := 29702423870974719844704356521
    upperValue := 96301643081404007971286773681640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 7))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 37, r := 8 }
    lowerValue := 564088971842698673641587736
    upperValue := 6420109538760267198085784912109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 8))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 37, r := 9 }
    lowerValue := 12464845206462759601223766
    upperValue := 428007302584017813205718994140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 9))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 37, r := 10 }
    lowerValue := 316899199597196682988150
    upperValue := 28533820172267854213714599609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 10))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 37, r := 11 }
    lowerValue := 9188148705464216747272
    upperValue := 1902254678151190280914306640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 11))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 37, r := 12 }
    lowerValue := 301707282889456282419
    upperValue := 126816978543412685394287109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 12))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 37, r := 13 }
    lowerValue := 11158220001619356760
    upperValue := 8454465236227512359619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 13))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 37, r := 14 }
    lowerValue := 462758701303698405
    upperValue := 74818276426792144775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 14))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 37, r := 15 }
    lowerValue := 21447455775372859
    upperValue := 4987885095119476318359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 15))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 37, r := 16 }
    lowerValue := 1107947821385485
    upperValue := 332525673007965087890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 16))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 37, r := 17 }
    lowerValue := 63672505831502
    upperValue := 22168378200531005859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 17))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 37, r := 18 }
    lowerValue := 4065518498417
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 37, r := 19 }
    lowerValue := 288210088985
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 37, r := 20 }
    lowerValue := 22681618656
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 37, r := 21 }
    lowerValue := 1982412859
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 37, r := 22 }
    lowerValue := 192618566
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 37, r := 23 }
    lowerValue := 20838750
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 37, r := 24 }
    lowerValue := 2515803
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 37, r := 25 }
    lowerValue := 339923
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 37, r := 26 }
    lowerValue := 51594
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 37, r := 27 }
    lowerValue := 8838
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 37, r := 28 }
    lowerValue := 1719
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 37, r := 29 }
    lowerValue := 382
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) },
  { key := { q := 15, n := 37, r := 30 }
    lowerValue := 98
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30))) },
  { key := { q := 15, n := 37, r := 31 }
    lowerValue := 30
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 31))) },
  { key := { q := 15, n := 37, r := 32 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 34 33))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 32))) },
  { key := { q := 15, n := 37, r := 33 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 35 34)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 36 33))) },
  { key := { q := 15, n := 37, r := 34 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 36 35))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 37 34)) },
  { key := { q := 15, n := 37, r := 35 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 37 35)) },
  { key := { q := 15, n := 37, r := 36 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 37 36)) },
  { key := { q := 15, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 37 37)) },
  { key := { q := 15, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 37 38)) },
  { key := { q := 15, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 37 39)) },
  { key := { q := 15, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 37 40)) },
  { key := { q := 15, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 37 41)) },
  { key := { q := 15, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 37 42)) },
  { key := { q := 15, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 37 43)) },
  { key := { q := 15, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 37 44)) },
  { key := { q := 15, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 37 45)) },
  { key := { q := 15, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 37 46)) },
  { key := { q := 15, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 37 47)) },
  { key := { q := 15, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 37 48)) },
  { key := { q := 15, n := 38, r := 0 }
    lowerValue := 491436992041778317434363998472690582275390625
    upperValue := 491436992041778317434363998472690582275390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 38 0)) },
  { key := { q := 15, n := 38, r := 1 }
    lowerValue := 922020622967689150908750466177655876689289
    upperValue := 16454038548361762924469076097011566162109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 1))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 38, r := 2 }
    lowerValue := 3552873331177321718570311076934742969437
    upperValue := 1096935903224117528297938406467437744140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 2))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 38, r := 3 }
    lowerValue := 21103758219197534276934585570293890110
    upperValue := 73129060214941168553195893764495849609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 38, r := 4 }
    lowerValue := 171893397704411364417062238217606563
    upperValue := 4875270680996077903546392917633056640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 4))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 38, r := 5 }
    lowerValue := 1801353441565542051541766143492498
    upperValue := 325018045399738526903092861175537109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 5))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 38, r := 6 }
    lowerValue := 23335685541013013134382742218288
    upperValue := 21667869693315901793539524078369140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 6))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 38, r := 7 }
    lowerValue := 363648972571764305626547307969
    upperValue := 1444524646221060119569301605224609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 7))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 38, r := 8 }
    lowerValue := 6684158388532342703333912669
    upperValue := 96301643081404007971286773681640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 8))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 38, r := 9 }
    lowerValue := 142796753349726379019304370
    upperValue := 6420109538760267198085784912109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 9))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 38, r := 10 }
    lowerValue := 3505707979132305496481104
    upperValue := 428007302584017813205718994140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 10))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 38, r := 11 }
    lowerValue := 98030284996123355637949
    upperValue := 28533820172267854213714599609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 11))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 38, r := 12 }
    lowerValue := 3100343992609460494867
    upperValue := 1902254678151190280914306640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 12))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 38, r := 13 }
    lowerValue := 110275775259005295099
    upperValue := 126816978543412685394287109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 13))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 38, r := 14 }
    lowerValue := 4391571447042710850
    upperValue := 1122274146401882171630859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 14))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 38, r := 15 }
    lowerValue := 195111989655633852
    upperValue := 74818276426792144775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 15))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 38, r := 16 }
    lowerValue := 9644270083960842
    upperValue := 4987885095119476318359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 16))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 38, r := 17 }
    lowerValue := 529262201559650
    upperValue := 332525673007965087890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 17))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 38, r := 18 }
    lowerValue := 32199467845525
    upperValue := 22168378200531005859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 38, r := 19 }
    lowerValue := 2169735086398
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 38, r := 20 }
    lowerValue := 161874741699
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 38, r := 21 }
    lowerValue := 13372849326
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 38, r := 22 }
    lowerValue := 1224119198
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 38, r := 23 }
    lowerValue := 124305928
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 38, r := 24 }
    lowerValue := 14027701
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 38, r := 25 }
    lowerValue := 1763322
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 38, r := 26 }
    lowerValue := 247655
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 38, r := 27 }
    lowerValue := 39012
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 38, r := 28 }
    lowerValue := 6925
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 38, r := 29 }
    lowerValue := 1394
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) },
  { key := { q := 15, n := 38, r := 30 }
    lowerValue := 320
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30))) },
  { key := { q := 15, n := 38, r := 31 }
    lowerValue := 85
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 31))) },
  { key := { q := 15, n := 38, r := 32 }
    lowerValue := 26
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 32))) },
  { key := { q := 15, n := 38, r := 33 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 35 34))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 36 33))) },
  { key := { q := 15, n := 38, r := 34 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 36 35)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 37 34))) },
  { key := { q := 15, n := 38, r := 35 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 37 36))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 38 35)) },
  { key := { q := 15, n := 38, r := 36 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 38 36)) },
  { key := { q := 15, n := 38, r := 37 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 38 37)) },
  { key := { q := 15, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 38 38)) },
  { key := { q := 15, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 38 39)) },
  { key := { q := 15, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 38 40)) },
  { key := { q := 15, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 38 41)) },
  { key := { q := 15, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 38 42)) },
  { key := { q := 15, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 38 43)) },
  { key := { q := 15, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 38 44)) },
  { key := { q := 15, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 38 45)) },
  { key := { q := 15, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 38 46)) },
  { key := { q := 15, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 38 47)) },
  { key := { q := 15, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 38 48)) },
  { key := { q := 15, n := 39, r := 0 }
    lowerValue := 7371554880626674761515459977090358734130859375
    upperValue := 7371554880626674761515459977090358734130859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 39 0)) },
  { key := { q := 15, n := 39, r := 1 }
    lowerValue := 13476334333869606510997184601627712493840694
    upperValue := 246810578225426443867036141455173492431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 1))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 39, r := 2 }
    lowerValue := 50565257133044832123879052956039858791018
    upperValue := 16454038548361762924469076097011566162109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 2))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 39, r := 3 }
    lowerValue := 292252972377796914717893633440007301776
    upperValue := 1096935903224117528297938406467437744140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 39, r := 4 }
    lowerValue := 2314476197857571052823697781967098295
    upperValue := 73129060214941168553195893764495849609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 4))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 39, r := 5 }
    lowerValue := 23563270134976727627532387933999598
    upperValue := 4875270680996077903546392917633056640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 5))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 39, r := 6 }
    lowerValue := 296297719235336111083731165577349
    upperValue := 325018045399738526903092861175537109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 6))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 39, r := 7 }
    lowerValue := 4477820233807430234748226658124
    upperValue := 21667869693315901793539524078369140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 7))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 39, r := 8 }
    lowerValue := 79742217335229814712044100193
    upperValue := 1444524646221060119569301605224609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 8))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 39, r := 9 }
    lowerValue := 1648810984682060977050368211
    upperValue := 96301643081404007971286773681640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 9))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 39, r := 10 }
    lowerValue := 39134804442903589421183395
    upperValue := 6420109538760267198085784912109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 10))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 39, r := 11 }
    lowerValue := 1056753551828805098542852
    upperValue := 428007302584017813205718994140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 11))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 39, r := 12 }
    lowerValue := 32233257861377133106725
    upperValue := 28533820172267854213714599609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 12))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 39, r := 13 }
    lowerValue := 1104256321612526474406
    upperValue := 1902254678151190280914306640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 13))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 39, r := 14 }
    lowerValue := 42293626399316604348
    upperValue := 16834112196028232574462890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 14))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 39, r := 15 }
    lowerValue := 1804362247584021284
    upperValue := 1122274146401882171630859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 15))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 39, r := 16 }
    lowerValue := 85498256656159534
    upperValue := 74818276426792144775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 16))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 39, r := 17 }
    lowerValue := 4489590686342376
    upperValue := 4987885095119476318359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 17))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 39, r := 18 }
    lowerValue := 260831773174092
    upperValue := 332525673007965087890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 39, r := 19 }
    lowerValue := 16747135680671
    upperValue := 22168378200531005859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 39, r := 20 }
    lowerValue := 1187646890634
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 39, r := 21 }
    lowerValue := 93014601071
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 39, r := 22 }
    lowerValue := 8048025375
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 39, r := 23 }
    lowerValue := 769962693
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 39, r := 24 }
    lowerValue := 81560355
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 39, r := 25 }
    lowerValue := 9583827
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 39, r := 26 }
    lowerValue := 1252355
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 39, r := 27 }
    lowerValue := 182562
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 39, r := 28 }
    lowerValue := 29805
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 39, r := 29 }
    lowerValue := 5476
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) },
  { key := { q := 15, n := 39, r := 30 }
    lowerValue := 1139
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30))) },
  { key := { q := 15, n := 39, r := 31 }
    lowerValue := 270
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 31))) },
  { key := { q := 15, n := 39, r := 32 }
    lowerValue := 74
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 32))) },
  { key := { q := 15, n := 39, r := 33 }
    lowerValue := 24
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 36 33))) },
  { key := { q := 15, n := 39, r := 34 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 36 35))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 37 34))) },
  { key := { q := 15, n := 39, r := 35 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 37 36)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 38 35))) },
  { key := { q := 15, n := 39, r := 36 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 39 36)) },
  { key := { q := 15, n := 39, r := 37 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 39 37)) },
  { key := { q := 15, n := 39, r := 38 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 39 38)) },
  { key := { q := 15, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 39 39)) },
  { key := { q := 15, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 39 40)) },
  { key := { q := 15, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 39 41)) },
  { key := { q := 15, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 39 42)) },
  { key := { q := 15, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 39 43)) },
  { key := { q := 15, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 39 44)) },
  { key := { q := 15, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 39 45)) },
  { key := { q := 15, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 39 46)) },
  { key := { q := 15, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 39 47)) },
  { key := { q := 15, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 39 48)) },
  { key := { q := 15, n := 40, r := 0 }
    lowerValue := 110573323209400121422731899656355381011962890625
    upperValue := 110573323209400121422731899656355381011962890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 40 0)) },
  { key := { q := 15, n := 40, r := 1 }
    lowerValue := 197100397877718576511108555537175367222750251
    upperValue := 3702158673381396658005542121827602386474609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 1))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 40, r := 2 }
    lowerValue := 720624365126661853238260306282906009553920
    upperValue := 246810578225426443867036141455173492431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 2))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 40, r := 3 }
    lowerValue := 4055629043908599330187783869687219827229
    upperValue := 16454038548361762924469076097011566162109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 3))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 40, r := 4 }
    lowerValue := 31252154595115157443610660396020398001
    upperValue := 1096935903224117528297938406467437744140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 4))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 40, r := 5 }
    lowerValue := 309356065596045248140589979747423557
    upperValue := 73129060214941168553195893764495849609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 5))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 40, r := 6 }
    lowerValue := 3779166826666299279087784040029143
    upperValue := 4875270680996077903546392917633056640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 6))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 40, r := 7 }
    lowerValue := 55437961847304917553115814723196
    upperValue := 325018045399738526903092861175537109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 7))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 40, r := 8 }
    lowerValue := 957430717102950162085366460592
    upperValue := 21667869693315901793539524078369140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 8))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 40, r := 9 }
    lowerValue := 19180031161333683491833302900
    upperValue := 1444524646221060119569301605224609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 9))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 40, r := 10 }
    lowerValue := 440610554092336880299622384
    upperValue := 96301643081404007971286773681640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 10))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 40, r := 11 }
    lowerValue := 11502782918355803312951853
    upperValue := 6420109538760267198085784912109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 11))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 40, r := 12 }
    lowerValue := 338814757062270711837511
    upperValue := 428007302584017813205718994140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 12))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 40, r := 13 }
    lowerValue := 11194691072106487994716
    upperValue := 28533820172267854213714599609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 13))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 40, r := 14 }
    lowerValue := 412967846619609664448
    upperValue := 252511682940423488616943359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 14))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 40, r := 15 }
    lowerValue := 16944718546509259722
    upperValue := 16834112196028232574462890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 15))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 40, r := 16 }
    lowerValue := 771005305279289171
    upperValue := 1122274146401882171630859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 16))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 40, r := 17 }
    lowerValue := 38811490418753271
    upperValue := 74818276426792144775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 17))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 40, r := 18 }
    lowerValue := 2157586335625652
    upperValue := 4987885095119476318359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 40, r := 19 }
    lowerValue := 132291294279187
    upperValue := 332525673007965087890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 40, r := 20 }
    lowerValue := 8939400029093
    upperValue := 22168378200531005859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 40, r := 21 }
    lowerValue := 665512644243
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 40, r := 22 }
    lowerValue := 54591493043
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 40, r := 23 }
    lowerValue := 4936936617
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 40, r := 24 }
    lowerValue := 492715076
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) }]

end CoveringCodes.Database
