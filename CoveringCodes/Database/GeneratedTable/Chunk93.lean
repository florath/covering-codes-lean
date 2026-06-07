import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 93. Do not edit manually.

def precomputedTable_chunk_93 : Array AnyBoundEntry := #[
  { key := { q := 9, n := 33, r := 24 }
    lowerValue := 122
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 33, r := 25 }
    lowerValue := 40
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 33, r := 26 }
    lowerValue := 15
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 33, r := 27 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 29 28)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 33, r := 28 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 30 29))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) },
  { key := { q := 9, n := 33, r := 29 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 31 30)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29)) },
  { key := { q := 9, n := 33, r := 30 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 32 31))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 30)) },
  { key := { q := 9, n := 33, r := 31 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 31)) },
  { key := { q := 9, n := 33, r := 32 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 32)) },
  { key := { q := 9, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 33)) },
  { key := { q := 9, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 34)) },
  { key := { q := 9, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 35)) },
  { key := { q := 9, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 36)) },
  { key := { q := 9, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 37)) },
  { key := { q := 9, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 38)) },
  { key := { q := 9, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 39)) },
  { key := { q := 9, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 40)) },
  { key := { q := 9, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 41)) },
  { key := { q := 9, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 42)) },
  { key := { q := 9, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 43)) },
  { key := { q := 9, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 44)) },
  { key := { q := 9, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 45)) },
  { key := { q := 9, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 46)) },
  { key := { q := 9, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 47)) },
  { key := { q := 9, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 33 48)) },
  { key := { q := 9, n := 34, r := 0 }
    lowerValue := 278128389443693511257285776231761
    upperValue := 278128389443693511257285776231761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 34 0)) },
  { key := { q := 9, n := 34, r := 1 }
    lowerValue := 1018785309317558649294087092425
    upperValue := 15642337403554779096774645851169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 34, r := 2 }
    lowerValue := 7687989314860090976512308269
    upperValue := 1738037489283864344086071761241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 34, r := 3 }
    lowerValue := 89719269429914503217688401
    upperValue := 193115276587096038231785751249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 34, r := 4 }
    lowerValue := 1440661117759318398560498
    upperValue := 21457252954121782025753972361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 4))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 34, r := 5 }
    lowerValue := 29871111820460974216554
    upperValue := 2384139217124642447305996929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 5))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 34, r := 6 }
    lowerValue := 768587620634496147146
    upperValue := 264904357458293605256221881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 6))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 34, r := 7 }
    lowerValue := 23886512724027119740
    upperValue := 29433817495365956139580209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 7))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 34, r := 8 }
    lowerValue := 879445405352154601
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 8))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 10 8))) },
  { key := { q := 9, n := 34, r := 9 }
    lowerValue := 37808998606658532
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 9))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 11 9))) },
  { key := { q := 9, n := 34, r := 10 }
    lowerValue := 1877293604311641
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 10))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 12 10))) },
  { key := { q := 9, n := 34, r := 11 }
    lowerValue := 106737841288729
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 11))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 13 11))) },
  { key := { q := 9, n := 34, r := 12 }
    lowerValue := 6903450073349
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 12))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 14 12))) },
  { key := { q := 9, n := 34, r := 13 }
    lowerValue := 505272018003
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 13))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 15 13))) },
  { key := { q := 9, n := 34, r := 14 }
    lowerValue := 41683245810
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 14))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 16 14))) },
  { key := { q := 9, n := 34, r := 15 }
    lowerValue := 3864317752
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 15))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 17 15))) },
  { key := { q := 9, n := 34, r := 16 }
    lowerValue := 401726049
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 34, r := 17 }
    lowerValue := 46766688
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 34, r := 18 }
    lowerValue := 6092602
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 34, r := 19 }
    lowerValue := 888240
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 34, r := 20 }
    lowerValue := 145013
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 34, r := 21 }
    lowerValue := 26547
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 34, r := 22 }
    lowerValue := 5461
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 34, r := 23 }
    lowerValue := 1266
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 34, r := 24 }
    lowerValue := 332
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 34, r := 25 }
    lowerValue := 99
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 34, r := 26 }
    lowerValue := 34
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 34, r := 27 }
    lowerValue := 14
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 34, r := 28 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 30 29)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) },
  { key := { q := 9, n := 34, r := 29 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 31 30))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29))) },
  { key := { q := 9, n := 34, r := 30 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 32 31)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 30)) },
  { key := { q := 9, n := 34, r := 31 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 33 32))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 31)) },
  { key := { q := 9, n := 34, r := 32 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 32)) },
  { key := { q := 9, n := 34, r := 33 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 33)) },
  { key := { q := 9, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 34 34)) },
  { key := { q := 9, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 34 35)) },
  { key := { q := 9, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 34 36)) },
  { key := { q := 9, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 34 37)) },
  { key := { q := 9, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 34 38)) },
  { key := { q := 9, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 34 39)) },
  { key := { q := 9, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 34 40)) },
  { key := { q := 9, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 34 41)) },
  { key := { q := 9, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 34 42)) },
  { key := { q := 9, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 34 43)) },
  { key := { q := 9, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 34 44)) },
  { key := { q := 9, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 34 45)) },
  { key := { q := 9, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 34 46)) },
  { key := { q := 9, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 34 47)) },
  { key := { q := 9, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 34 48)) },
  { key := { q := 9, n := 35, r := 0 }
    lowerValue := 2503155504993241601315571986085849
    upperValue := 2503155504993241601315571986085849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 35 0)) },
  { key := { q := 9, n := 35, r := 1 }
    lowerValue := 8908026708161002139913067566142
    upperValue := 140781036631993011870971812660521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 1))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 35, r := 2 }
    lowerValue := 65252613461412413683573733378
    upperValue := 15642337403554779096774645851169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 35, r := 3 }
    lowerValue := 738524448713280488592400837
    upperValue := 1738037489283864344086071761241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 35, r := 4 }
    lowerValue := 11489956453352412979489563
    upperValue := 193115276587096038231785751249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 4))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 35, r := 5 }
    lowerValue := 230590868973665242937719
    upperValue := 21457252954121782025753972361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 5))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 35, r := 6 }
    lowerValue := 5736484586092095315464
    upperValue := 2384139217124642447305996929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 6))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 35, r := 7 }
    lowerValue := 172171921482855479564
    upperValue := 264904357458293605256221881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 7))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 35, r := 8 }
    lowerValue := 6114141721532576371
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 8))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 10 8))) },
  { key := { q := 9, n := 35, r := 9 }
    lowerValue := 253197518217008482
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 9))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 11 9))) },
  { key := { q := 9, n := 35, r := 10 }
    lowerValue := 12092360346863629
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 10))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 12 10))) },
  { key := { q := 9, n := 35, r := 11 }
    lowerValue := 660298338220416
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 11))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 13 11))) },
  { key := { q := 9, n := 35, r := 12 }
    lowerValue := 40945365552489
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 12))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 14 12))) },
  { key := { q := 9, n := 35, r := 13 }
    lowerValue := 2868093677257
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 13))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 15 13))) },
  { key := { q := 9, n := 35, r := 14 }
    lowerValue := 225997156505
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 14))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 16 14))) },
  { key := { q := 9, n := 35, r := 15 }
    lowerValue := 19968869631
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 15))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 17 15))) },
  { key := { q := 9, n := 35, r := 16 }
    lowerValue := 1973908579
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 16))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 35, r := 17 }
    lowerValue := 217934509
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 35, r := 18 }
    lowerValue := 26850008
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 35, r := 19 }
    lowerValue := 3690203
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 35, r := 20 }
    lowerValue := 565948
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 35, r := 21 }
    lowerValue := 96944
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 35, r := 22 }
    lowerValue := 18576
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 35, r := 23 }
    lowerValue := 3991
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 35, r := 24 }
    lowerValue := 964
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 35, r := 25 }
    lowerValue := 263
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 35, r := 26 }
    lowerValue := 82
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 35, r := 27 }
    lowerValue := 29
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 35, r := 28 }
    lowerValue := 12
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) },
  { key := { q := 9, n := 35, r := 29 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 31 30)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29))) },
  { key := { q := 9, n := 35, r := 30 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 32 31))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 30))) },
  { key := { q := 9, n := 35, r := 31 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 33 32)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 31)) },
  { key := { q := 9, n := 35, r := 32 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 34 33))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 32)) },
  { key := { q := 9, n := 35, r := 33 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 33)) },
  { key := { q := 9, n := 35, r := 34 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 34)) },
  { key := { q := 9, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 35 35)) },
  { key := { q := 9, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 35 36)) },
  { key := { q := 9, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 35 37)) },
  { key := { q := 9, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 35 38)) },
  { key := { q := 9, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 35 39)) },
  { key := { q := 9, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 35 40)) },
  { key := { q := 9, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 35 41)) },
  { key := { q := 9, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 35 42)) },
  { key := { q := 9, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 35 43)) },
  { key := { q := 9, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 35 44)) },
  { key := { q := 9, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 35 45)) },
  { key := { q := 9, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 35 46)) },
  { key := { q := 9, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 35 47)) },
  { key := { q := 9, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 35 48)) },
  { key := { q := 9, n := 36, r := 0 }
    lowerValue := 22528399544939174411840147874772641
    upperValue := 22528399544939174411840147874772641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 36 0)) },
  { key := { q := 9, n := 36, r := 1 }
    lowerValue := 77952939601865655404291169116861
    upperValue := 1267029329687937106838746313944689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 36, r := 2 }
    lowerValue := 554763711121652205467757095097
    upperValue := 140781036631993011870971812660521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 36, r := 3 }
    lowerValue := 6094869623273281502566533049
    upperValue := 15642337403554779096774645851169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 36, r := 4 }
    lowerValue := 91963473240147596355880344
    upperValue := 1738037489283864344086071761241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 36, r := 5 }
    lowerValue := 1788217287426442510538499
    upperValue := 193115276587096038231785751249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 36, r := 6 }
    lowerValue := 43058848614682432093514
    upperValue := 21457252954121782025753972361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 36, r := 7 }
    lowerValue := 1249526166699194846811
    upperValue := 2384139217124642447305996929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 36, r := 8 }
    lowerValue := 42852972331396780161
    upperValue := 58149737003040059690390169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 8))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 10 8))) },
  { key := { q := 9, n := 36, r := 9 }
    lowerValue := 1711700942178176564
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 9))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 11 9))) },
  { key := { q := 9, n := 36, r := 10 }
    lowerValue := 78745167935647739
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 10))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 12 10))) },
  { key := { q := 9, n := 36, r := 11 }
    lowerValue := 4135950224892832
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 11))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 13 11))) },
  { key := { q := 9, n := 36, r := 12 }
    lowerValue := 246315369061914
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 12))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 14 12))) },
  { key := { q := 9, n := 36, r := 13 }
    lowerValue := 16542720215385
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 13))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 15 13))) },
  { key := { q := 9, n := 36, r := 14 }
    lowerValue := 1247549326999
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 14))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 16 14))) },
  { key := { q := 9, n := 36, r := 15 }
    lowerValue := 105291946661
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 15))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 17 15))) },
  { key := { q := 9, n := 36, r := 16 }
    lowerValue := 9920277855
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 16))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 36, r := 17 }
    lowerValue := 1041497055
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 36, r := 18 }
    lowerValue := 121700212
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 36, r := 19 }
    lowerValue := 15818909
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 36, r := 20 }
    lowerValue := 2287253
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 36, r := 21 }
    lowerValue := 368085
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 36, r := 22 }
    lowerValue := 66004
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 36, r := 23 }
    lowerValue := 13211
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 36, r := 24 }
    lowerValue := 2958
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 36, r := 25 }
    lowerValue := 744
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 36, r := 26 }
    lowerValue := 211
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 36, r := 27 }
    lowerValue := 68
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 36, r := 28 }
    lowerValue := 25
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) },
  { key := { q := 9, n := 36, r := 29 }
    lowerValue := 11
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29))) },
  { key := { q := 9, n := 36, r := 30 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 32 31)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 30))) },
  { key := { q := 9, n := 36, r := 31 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 33 32))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 31))) },
  { key := { q := 9, n := 36, r := 32 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 34 33)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 36 32)) },
  { key := { q := 9, n := 36, r := 33 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 35 34))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 36 33)) },
  { key := { q := 9, n := 36, r := 34 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 36 34)) },
  { key := { q := 9, n := 36, r := 35 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 36 35)) },
  { key := { q := 9, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 36 36)) },
  { key := { q := 9, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 36 37)) },
  { key := { q := 9, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 36 38)) },
  { key := { q := 9, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 36 39)) },
  { key := { q := 9, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 36 40)) },
  { key := { q := 9, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 36 41)) },
  { key := { q := 9, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 36 42)) },
  { key := { q := 9, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 36 43)) },
  { key := { q := 9, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 36 44)) },
  { key := { q := 9, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 36 45)) },
  { key := { q := 9, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 36 46)) },
  { key := { q := 9, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 36 47)) },
  { key := { q := 9, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 36 48)) },
  { key := { q := 9, n := 37, r := 0 }
    lowerValue := 202755595904452569706561330872953769
    upperValue := 202755595904452569706561330872953769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 37 0)) },
  { key := { q := 9, n := 37, r := 1 }
    lowerValue := 682678774089065891267883268932505
    upperValue := 11403263967191433961548716825502201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 1))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 37, r := 2 }
    lowerValue := 4723925255806075573881347845413
    upperValue := 1267029329687937106838746313944689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 2))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 37, r := 3 }
    lowerValue := 50422153180251317892161326262
    upperValue := 140781036631993011870971812660521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 37, r := 4 }
    lowerValue := 738524448713280488592400837
    upperValue := 15642337403554779096774645851169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 37, r := 5 }
    lowerValue := 13927421051649959481734707
    upperValue := 1738037489283864344086071761241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 37, r := 6 }
    lowerValue := 324936030220170422740101
    upperValue := 193115276587096038231785751249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 37, r := 7 }
    lowerValue := 9126904035048755376667
    upperValue := 21457252954121782025753972361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 7))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 37, r := 8 }
    lowerValue := 302642766213186403605
    upperValue := 523347633027360537213511521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 8))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 10 8))) },
  { key := { q := 9, n := 37, r := 9 }
    lowerValue := 11674680583061677670
    upperValue := 58149737003040059690390169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 9))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 11 9))) },
  { key := { q := 9, n := 37, r := 10 }
    lowerValue := 518048059600187472
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 10))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 12 10))) },
  { key := { q := 9, n := 37, r := 11 }
    lowerValue := 26210339440266288
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 11))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 13 11))) },
  { key := { q := 9, n := 37, r := 12 }
    lowerValue := 1501477643191303
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 12))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 14 12))) },
  { key := { q := 9, n := 37, r := 13 }
    lowerValue := 96848925148295
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 13))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 15 13))) },
  { key := { q := 9, n := 37, r := 14 }
    lowerValue := 7002975948479
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 14))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 16 14))) },
  { key := { q := 9, n := 37, r := 15 }
    lowerValue := 565682863489
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 15))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 17 15))) },
  { key := { q := 9, n := 37, r := 16 }
    lowerValue := 50909916228
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 16))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 37, r := 17 }
    lowerValue := 5094574074
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 17))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 37, r := 18 }
    lowerValue := 566103130
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 37, r := 19 }
    lowerValue := 69794069
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 37, r := 20 }
    lowerValue := 9544721
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 37, r := 21 }
    lowerValue := 1448247
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 37, r := 22 }
    lowerValue := 244003
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 37, r := 23 }
    lowerValue := 45708
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 37, r := 24 }
    lowerValue := 9538
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 37, r := 25 }
    lowerValue := 2223
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 37, r := 26 }
    lowerValue := 580
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 37, r := 27 }
    lowerValue := 171
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 37, r := 28 }
    lowerValue := 57
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) },
  { key := { q := 9, n := 37, r := 29 }
    lowerValue := 22
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29))) },
  { key := { q := 9, n := 37, r := 30 }
    lowerValue := 10
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 30))) },
  { key := { q := 9, n := 37, r := 31 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 33 32)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 31))) },
  { key := { q := 9, n := 37, r := 32 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 34 33))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 32)) },
  { key := { q := 9, n := 37, r := 33 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 35 34)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 33)) },
  { key := { q := 9, n := 37, r := 34 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 36 35))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 34)) },
  { key := { q := 9, n := 37, r := 35 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 35)) },
  { key := { q := 9, n := 37, r := 36 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 36)) },
  { key := { q := 9, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 37 37)) },
  { key := { q := 9, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 37 38)) },
  { key := { q := 9, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 37 39)) },
  { key := { q := 9, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 37 40)) },
  { key := { q := 9, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 37 41)) },
  { key := { q := 9, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 37 42)) },
  { key := { q := 9, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 37 43)) },
  { key := { q := 9, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 37 44)) },
  { key := { q := 9, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 37 45)) },
  { key := { q := 9, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 37 46)) },
  { key := { q := 9, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 37 47)) },
  { key := { q := 9, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 37 48)) },
  { key := { q := 9, n := 38, r := 0 }
    lowerValue := 1824800363140073127359051977856583921
    upperValue := 1824800363140073127359051977856583921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 38 0)) },
  { key := { q := 9, n := 38, r := 1 }
    lowerValue := 5982952010295321729046072058546177
    upperValue := 102629375704722905653938451429519809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 1))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 38, r := 2 }
    lowerValue := 40285236619203769065480097530887
    upperValue := 11403263967191433961548716825502201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 2))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 38, r := 3 }
    lowerValue := 418097889403432335392673981055
    upperValue := 1267029329687937106838746313944689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 38, r := 4 }
    lowerValue := 5949580345971070638732779474
    upperValue := 140781036631993011870971812660521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 4))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 38, r := 5 }
    lowerValue := 108915044409026060183321297
    upperValue := 15642337403554779096774645851169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 5))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 38, r := 6 }
    lowerValue := 2464446766570514472608205
    upperValue := 1738037489283864344086071761241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 6))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 38, r := 7 }
    lowerValue := 67070875766112662615918
    upperValue := 193115276587096038231785751249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 7))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 38, r := 8 }
    lowerValue := 2152721161874059031082
    upperValue := 4710128697246244834921603689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 8))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 10 8))) },
  { key := { q := 9, n := 38, r := 9 }
    lowerValue := 80293156511422854905
    upperValue := 523347633027360537213511521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 9))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 11 9))) },
  { key := { q := 9, n := 38, r := 10 }
    lowerValue := 3440937273889344798
    upperValue := 58149737003040059690390169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 10))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 12 10))) },
  { key := { q := 9, n := 38, r := 11 }
    lowerValue := 167924655070262430
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 11))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 13 11))) },
  { key := { q := 9, n := 38, r := 12 }
    lowerValue := 9266565332304929
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 12))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 14 12))) },
  { key := { q := 9, n := 38, r := 13 }
    lowerValue := 574953328178860
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 13))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 15 13))) },
  { key := { q := 9, n := 38, r := 14 }
    lowerValue := 39929136686410
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 14))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 16 14))) },
  { key := { q := 9, n := 38, r := 15 }
    lowerValue := 3092627877153
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 15))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 17 15))) },
  { key := { q := 9, n := 38, r := 16 }
    lowerValue := 266392472912
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 16))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 38, r := 17 }
    lowerValue := 25464906255
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 17))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 38, r := 18 }
    lowerValue := 2697226693
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 38, r := 19 }
    lowerValue := 316238134
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 38, r := 20 }
    lowerValue := 41022297
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 38, r := 21 }
    lowerValue := 5887549
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 38, r := 22 }
    lowerValue := 935334
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 38, r := 23 }
    lowerValue := 164640
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 38, r := 24 }
    lowerValue := 32157
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 38, r := 25 }
    lowerValue := 6984
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 38, r := 26 }
    lowerValue := 1691
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 38, r := 27 }
    lowerValue := 458
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 38, r := 28 }
    lowerValue := 139
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) }]

end CoveringCodes.Database
