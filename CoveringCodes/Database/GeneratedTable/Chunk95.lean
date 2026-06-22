import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 95. Do not edit manually.

def precomputedTable_chunk_95 : Array AnyBoundEntry := #[
  { key := { q := 9, n := 43, r := 34 }
    lowerValue := 23
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 39 34))) },
  { key := { q := 9, n := 43, r := 35 }
    lowerValue := 11
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 35))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 40 35))) },
  { key := { q := 9, n := 43, r := 36 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 38 37))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 41 36))) },
  { key := { q := 9, n := 43, r := 37 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 39 38)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 42 37))) },
  { key := { q := 9, n := 43, r := 38 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 40 39))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 43 38)) },
  { key := { q := 9, n := 43, r := 39 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 41 40)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 43 39)) },
  { key := { q := 9, n := 43, r := 40 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 43 40)) },
  { key := { q := 9, n := 43, r := 41 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 43 41)) },
  { key := { q := 9, n := 43, r := 42 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 43 42)) },
  { key := { q := 9, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 43 43)) },
  { key := { q := 9, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 43 44)) },
  { key := { q := 9, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 43 45)) },
  { key := { q := 9, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 43 46)) },
  { key := { q := 9, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 43 47)) },
  { key := { q := 9, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 43 48)) },
  { key := { q := 9, n := 44, r := 0 }
    lowerValue := 969773729787523602876821942164080815560161
    upperValue := 969773729787523602876821942164080815560161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 44 0)) },
  { key := { q := 9, n := 44, r := 1 }
    lowerValue := 2747234362004316155458419099614959817451
    upperValue := 54541458053893645703634704566155436814769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 1))
    upperTrace := (.lengthenFreeN 41 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 44, r := 2 }
    lowerValue := 15924819445744841336631064619999028123
    upperValue := 6060162005988182855959411618461715201641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 2))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 44, r := 3 }
    lowerValue := 141741966476418733726282379652224490
    upperValue := 673351333998686983995490179829079466849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 3))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 44, r := 4 }
    lowerValue := 1722884649773860294791740360631557
    upperValue := 16423203268260658146231467800709255289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 4))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 44, r := 5 }
    lowerValue := 26826985105274551977045129302937
    upperValue := 1824800363140073127359051977856583921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 5))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 44, r := 6 }
    lowerValue := 514022341121387842494090850348
    upperValue := 202755595904452569706561330872953769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 6))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 44, r := 7 }
    lowerValue := 11790462703599937949946878845
    upperValue := 22528399544939174411840147874772641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 7))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 44, r := 8 }
    lowerValue := 317363334679558703474670933
    upperValue := 2503155504993241601315571986085849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 8))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 44, r := 9 }
    lowerValue := 9874816169706369944699041
    upperValue := 278128389443693511257285776231761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 9))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 44, r := 10 }
    lowerValue := 351057454483437534104268
    upperValue := 30903154382632612361920641803529
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 10))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 44, r := 11 }
    lowerValue := 14128084586439385945324
    upperValue := 3433683820292512484657849089281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 11))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 44, r := 12 }
    lowerValue := 638857102689315615851
    upperValue := 381520424476945831628649898809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 12))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 44, r := 13 }
    lowerValue := 32262508386342506963
    upperValue := 42391158275216203514294433201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 13))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 44, r := 14 }
    lowerValue := 1810495900741264018
    upperValue := 4710128697246244834921603689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 14))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 44, r := 15 }
    lowerValue := 112438371871860539
    upperValue := 523347633027360537213511521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 15))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 44, r := 16 }
    lowerValue := 7701523506476466
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 16))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 44, r := 17 }
    lowerValue := 580198691515154
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 17))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 44, r := 18 }
    lowerValue := 47966268274129
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 44, r := 19 }
    lowerValue := 4343855464896
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 44, r := 20 }
    lowerValue := 430323563080
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 44, r := 21 }
    lowerValue := 46586329523
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 44, r := 22 }
    lowerValue := 5507830998
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 44, r := 23 }
    lowerValue := 710920043
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 44, r := 24 }
    lowerValue := 100179263
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 44, r := 25 }
    lowerValue := 15416596
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 44, r := 26 }
    lowerValue := 2592555
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 44, r := 27 }
    lowerValue := 476885
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 44, r := 28 }
    lowerValue := 96075
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) },
  { key := { q := 9, n := 44, r := 29 }
    lowerValue := 21234
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29))) },
  { key := { q := 9, n := 44, r := 30 }
    lowerValue := 5159
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 30))) },
  { key := { q := 9, n := 44, r := 31 }
    lowerValue := 1382
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 31))) },
  { key := { q := 9, n := 44, r := 32 }
    lowerValue := 409
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 32))) },
  { key := { q := 9, n := 44, r := 33 }
    lowerValue := 135
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 38 33))) },
  { key := { q := 9, n := 44, r := 34 }
    lowerValue := 49
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 39 34))) },
  { key := { q := 9, n := 44, r := 35 }
    lowerValue := 20
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 40 35))) },
  { key := { q := 9, n := 44, r := 36 }
    lowerValue := 10
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 41 36))) },
  { key := { q := 9, n := 44, r := 37 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 39 38))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 42 37))) },
  { key := { q := 9, n := 44, r := 38 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 40 39)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 43 38))) },
  { key := { q := 9, n := 44, r := 39 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 41 40))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 44 39)) },
  { key := { q := 9, n := 44, r := 40 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 42 41)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 44 40)) },
  { key := { q := 9, n := 44, r := 41 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 44 41)) },
  { key := { q := 9, n := 44, r := 42 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 44 42)) },
  { key := { q := 9, n := 44, r := 43 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 44 43)) },
  { key := { q := 9, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 44 44)) },
  { key := { q := 9, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 44 45)) },
  { key := { q := 9, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 44 46)) },
  { key := { q := 9, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 44 47)) },
  { key := { q := 9, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 44 48)) },
  { key := { q := 9, n := 45, r := 0 }
    lowerValue := 8727963568087712425891397479476727340041449
    upperValue := 8727963568087712425891397479476727340041449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 45 0)) },
  { key := { q := 9, n := 45, r := 1 }
    lowerValue := 24177184399134937467843206314339964930863
    upperValue := 490873122485042811332712341095398931332921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 1))
    upperTrace := (.lengthenFreeN 42 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 45, r := 2 }
    lowerValue := 136971541063192863041876264959381166963
    upperValue := 54541458053893645703634704566155436814769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 2))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 45, r := 3 }
    lowerValue := 1190880389849545992133361351632606865
    upperValue := 6060162005988182855959411618461715201641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 3))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 45, r := 4 }
    lowerValue := 14131778860240614237630388778139308
    upperValue := 147808829414345923316083210206383297601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 4))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 45, r := 5 }
    lowerValue := 214698370898530410235933535012832
    upperValue := 16423203268260658146231467800709255289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 5))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 45, r := 6 }
    lowerValue := 4011324542132777462135454412187
    upperValue := 1824800363140073127359051977856583921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 6))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 45, r := 7 }
    lowerValue := 89661224604493960733614626373
    upperValue := 202755595904452569706561330872953769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 7))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 45, r := 8 }
    lowerValue := 2350190308711912057558238395
    upperValue := 22528399544939174411840147874772641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 8))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 45, r := 9 }
    lowerValue := 71160078352146722226985764
    upperValue := 2503155504993241601315571986085849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 9))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 45, r := 10 }
    lowerValue := 2459904754144814276258156
    upperValue := 278128389443693511257285776231761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 10))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 45, r := 11 }
    lowerValue := 96185398459030549353090
    upperValue := 30903154382632612361920641803529
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 11))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 45, r := 12 }
    lowerValue := 4222292845873341784208
    upperValue := 3433683820292512484657849089281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 12))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 45, r := 13 }
    lowerValue := 206810536721818607624
    upperValue := 381520424476945831628649898809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 13))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 45, r := 14 }
    lowerValue := 11245772990784234101
    upperValue := 42391158275216203514294433201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 14))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 45, r := 15 }
    lowerValue := 676059394127421117
    upperValue := 4710128697246244834921603689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 15))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 45, r := 16 }
    lowerValue := 44777338719435538
    upperValue := 58149737003040059690390169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 16))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 45, r := 17 }
    lowerValue := 3258150891466397
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 17))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 45, r := 18 }
    lowerValue := 259842516384445
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 18))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 45, r := 19 }
    lowerValue := 22670361476246
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 45, r := 20 }
    lowerValue := 2160597355640
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 45, r := 21 }
    lowerValue := 224684392834
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 45, r := 22 }
    lowerValue := 25475264388
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 45, r := 23 }
    lowerValue := 3147837850
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 45, r := 24 }
    lowerValue := 423826002
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 45, r := 25 }
    lowerValue := 62188191
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 45, r := 26 }
    lowerValue := 9948695
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 45, r := 27 }
    lowerValue := 1736545
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 45, r := 28 }
    lowerValue := 331075
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 28))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) },
  { key := { q := 9, n := 45, r := 29 }
    lowerValue := 69038
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 29))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29))) },
  { key := { q := 9, n := 45, r := 30 }
    lowerValue := 15774
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 30))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 30))) },
  { key := { q := 9, n := 45, r := 31 }
    lowerValue := 3957
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 31))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 31))) },
  { key := { q := 9, n := 45, r := 32 }
    lowerValue := 1093
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 32))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 32))) },
  { key := { q := 9, n := 45, r := 33 }
    lowerValue := 333
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 33))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 38 33))) },
  { key := { q := 9, n := 45, r := 34 }
    lowerValue := 113
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 34))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 39 34))) },
  { key := { q := 9, n := 45, r := 35 }
    lowerValue := 43
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 35))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 40 35))) },
  { key := { q := 9, n := 45, r := 36 }
    lowerValue := 18
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 36))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 41 36))) },
  { key := { q := 9, n := 45, r := 37 }
    lowerValue := 9
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 37))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 42 37))) },
  { key := { q := 9, n := 45, r := 38 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 40 39))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 43 38))) },
  { key := { q := 9, n := 45, r := 39 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 41 40)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 44 39))) },
  { key := { q := 9, n := 45, r := 40 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 42 41))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 45 40)) },
  { key := { q := 9, n := 45, r := 41 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 43 42)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 45 41)) },
  { key := { q := 9, n := 45, r := 42 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 45 42)) },
  { key := { q := 9, n := 45, r := 43 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 45 43)) },
  { key := { q := 9, n := 45, r := 44 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 45 44)) },
  { key := { q := 9, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 45 45)) },
  { key := { q := 9, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 45 46)) },
  { key := { q := 9, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 45 47)) },
  { key := { q := 9, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 45 48)) },
  { key := { q := 9, n := 46, r := 0 }
    lowerValue := 78551672112789411833022577315290546060373041
    upperValue := 78551672112789411833022577315290546060373041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 46 0)) },
  { key := { q := 9, n := 46, r := 1 }
    lowerValue := 212877160197261278680277987304310422927841
    upperValue := 4417858102365385301994411069858590381996289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 1))
    upperTrace := (.lengthenFreeN 43 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 46, r := 2 }
    lowerValue := 1179295172015634701512146666595963699506
    upperValue := 490873122485042811332712341095398931332921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 2))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 46, r := 3 }
    lowerValue := 10020919370476335229807457945921170284
    upperValue := 54541458053893645703634704566155436814769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 3))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 46, r := 4 }
    lowerValue := 116158680394720667430379429088572407
    upperValue := 1330279464729113309844748891857449678409
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 4))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 46, r := 5 }
    lowerValue := 1722884649773860294791740360631557
    upperValue := 147808829414345923316083210206383297601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 5))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 46, r := 6 }
    lowerValue := 31407496396187889163366044296037
    upperValue := 16423203268260658146231467800709255289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 6))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 46, r := 7 }
    lowerValue := 684543547975012597512143651841
    upperValue := 1824800363140073127359051977856583921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 7))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 46, r := 8 }
    lowerValue := 17485159848452876624929775379
    upperValue := 202755595904452569706561330872953769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 8))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 46, r := 9 }
    lowerValue := 515558322666015989118172072
    upperValue := 22528399544939174411840147874772641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 9))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 46, r := 10 }
    lowerValue := 17342965558123900727278856
    upperValue := 2503155504993241601315571986085849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 10))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 46, r := 11 }
    lowerValue := 659401195800580159623757
    upperValue := 278128389443693511257285776231761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 11))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 46, r := 12 }
    lowerValue := 28124046319679674512502
    upperValue := 30903154382632612361920641803529
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 12))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 46, r := 13 }
    lowerValue := 1337286009000626765850
    upperValue := 3433683820292512484657849089281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 13))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 46, r := 14 }
    lowerValue := 70530124758344673900
    upperValue := 381520424476945831628649898809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 14))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 46, r := 15 }
    lowerValue := 4108579005246498566
    upperValue := 42391158275216203514294433201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 15))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 46, r := 16 }
    lowerValue := 263419735315738795
    upperValue := 523347633027360537213511521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 16))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 46, r := 17 }
    lowerValue := 18534369690136864
    upperValue := 58149737003040059690390169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 17))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 46, r := 18 }
    lowerValue := 1427695470154179
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 18))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 46, r := 19 }
    lowerValue := 120162883263281
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 46, r := 20 }
    lowerValue := 11033216351314
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 20))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 46, r := 21 }
    lowerValue := 1103838433217
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 21))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 46, r := 22 }
    lowerValue := 120225603016
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 22))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 46, r := 23 }
    lowerValue := 14247078067
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 23))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 46, r := 24 }
    lowerValue := 1836402720
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 24))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 46, r := 25 }
    lowerValue := 257467310
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 25))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 46, r := 26 }
    lowerValue := 39274301
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 26))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 46, r := 27 }
    lowerValue := 6521826
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 27))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 46, r := 28 }
    lowerValue := 1179970
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 28))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) },
  { key := { q := 9, n := 46, r := 29 }
    lowerValue := 232868
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 29))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29))) },
  { key := { q := 9, n := 46, r := 30 }
    lowerValue := 50202
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 30))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 30))) },
  { key := { q := 9, n := 46, r := 31 }
    lowerValue := 11844
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 31))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 31))) },
  { key := { q := 9, n := 46, r := 32 }
    lowerValue := 3064
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 32))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 32))) },
  { key := { q := 9, n := 46, r := 33 }
    lowerValue := 872
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 33))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 38 33))) },
  { key := { q := 9, n := 46, r := 34 }
    lowerValue := 274
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 34))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 39 34))) },
  { key := { q := 9, n := 46, r := 35 }
    lowerValue := 95
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 35))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 40 35))) },
  { key := { q := 9, n := 46, r := 36 }
    lowerValue := 37
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 36))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 41 36))) },
  { key := { q := 9, n := 46, r := 37 }
    lowerValue := 16
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 37))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 42 37))) },
  { key := { q := 9, n := 46, r := 38 }
    lowerValue := 9
    upperValue := 6561
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 40 39)))))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 43 38))) },
  { key := { q := 9, n := 46, r := 39 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 41 40))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 44 39))) },
  { key := { q := 9, n := 46, r := 40 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 42 41)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 46 40)) },
  { key := { q := 9, n := 46, r := 41 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 43 42))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 46 41)) },
  { key := { q := 9, n := 46, r := 42 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 44 43)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 46 42)) },
  { key := { q := 9, n := 46, r := 43 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 46 43)) },
  { key := { q := 9, n := 46, r := 44 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 46 44)) },
  { key := { q := 9, n := 46, r := 45 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 46 45)) },
  { key := { q := 9, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 46 46)) },
  { key := { q := 9, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 46 47)) },
  { key := { q := 9, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 46 48)) },
  { key := { q := 9, n := 47, r := 0 }
    lowerValue := 706965049015104706497203195837614914543357369
    upperValue := 706965049015104706497203195837614914543357369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 47 0)) },
  { key := { q := 9, n := 47, r := 1 }
    lowerValue := 1875238856803991263918310864290755741494317
    upperValue := 39760722921288467717949699628727313437966601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 1))
    upperTrace := (.lengthenFreeN 44 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 47, r := 2 }
    lowerValue := 10163238725939890261744414195276303022432
    upperValue := 4417858102365385301994411069858590381996289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 2))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 47, r := 3 }
    lowerValue := 84447606988295927464782973354640376307
    upperValue := 490873122485042811332712341095398931332921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 3))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 47, r := 4 }
    lowerValue := 956709615883879496660503860909455305
    upperValue := 11972515182562019788602740026717047105681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 4))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 47, r := 5 }
    lowerValue := 13861225982129730813700623690434056
    upperValue := 1330279464729113309844748891857449678409
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 5))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 47, r := 6 }
    lowerValue := 246690863320165684438760762360330
    upperValue := 147808829414345923316083210206383297601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 6))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 47, r := 7 }
    lowerValue := 5246150239996561515770158030299
    upperValue := 16423203268260658146231467800709255289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 7))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 47, r := 8 }
    lowerValue := 130665861506311616915759041623
    upperValue := 1824800363140073127359051977856583921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 8))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 47, r := 9 }
    lowerValue := 3754418310319768872306463419
    upperValue := 202755595904452569706561330872953769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 9))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 47, r := 10 }
    lowerValue := 122988751833593431201556778
    upperValue := 22528399544939174411840147874772641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 10))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 47, r := 11 }
    lowerValue := 4550488688107279404973783
    upperValue := 2503155504993241601315571986085849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 11))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 47, r := 12 }
    lowerValue := 188722842764284713337632
    upperValue := 278128389443693511257285776231761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 12))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 47, r := 13 }
    lowerValue := 8718925542268250518341
    upperValue := 30903154382632612361920641803529
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 13))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 47, r := 14 }
    lowerValue := 446415190694972909842
    upperValue := 3433683820292512484657849089281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 14))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 47, r := 15 }
    lowerValue := 25222811077047433964
    upperValue := 381520424476945831628649898809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 15))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 47, r := 16 }
    lowerValue := 1567024782045880265
    upperValue := 4710128697246244834921603689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 16))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 47, r := 17 }
    lowerValue := 106731686336297156
    upperValue := 523347633027360537213511521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 17))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 47, r := 18 }
    lowerValue := 7950108489376677
    upperValue := 58149737003040059690390169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 18))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 47, r := 19 }
    lowerValue := 646297606970384
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 19))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 47, r := 20 }
    lowerValue := 57247647349172
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 20))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 47, r := 21 }
    lowerValue := 5518043427104
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 21))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 47, r := 22 }
    lowerValue := 578215414080
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 22))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 47, r := 23 }
    lowerValue := 65822482250
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 23))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 47, r := 24 }
    lowerValue := 8136979629
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 24))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 47, r := 25 }
    lowerValue := 1092189116
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 25))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 47, r := 26 }
    lowerValue := 159196662
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 26))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 47, r := 27 }
    lowerValue := 25208189
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 27))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 47, r := 28 }
    lowerValue := 4339170
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 28))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) },
  { key := { q := 9, n := 47, r := 29 }
    lowerValue := 812706
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 29))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29))) },
  { key := { q := 9, n := 47, r := 30 }
    lowerValue := 165826
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 30))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 30))) },
  { key := { q := 9, n := 47, r := 31 }
    lowerValue := 36917
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 31))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 31))) },
  { key := { q := 9, n := 47, r := 32 }
    lowerValue := 8984
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 32))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 32))) },
  { key := { q := 9, n := 47, r := 33 }
    lowerValue := 2395
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 33))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 38 33))) },
  { key := { q := 9, n := 47, r := 34 }
    lowerValue := 701
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 34))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 39 34))) },
  { key := { q := 9, n := 47, r := 35 }
    lowerValue := 227
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 35))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 40 35))) },
  { key := { q := 9, n := 47, r := 36 }
    lowerValue := 81
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 36))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 41 36))) },
  { key := { q := 9, n := 47, r := 37 }
    lowerValue := 32
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 37))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 42 37))) },
  { key := { q := 9, n := 47, r := 38 }
    lowerValue := 14
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 38))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 43 38))) },
  { key := { q := 9, n := 47, r := 39 }
    lowerValue := 9
    upperValue := 6561
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 41 40)))))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 44 39))) },
  { key := { q := 9, n := 47, r := 40 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 42 41))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 46 40))) },
  { key := { q := 9, n := 47, r := 41 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 43 42)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 47 41)) },
  { key := { q := 9, n := 47, r := 42 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 44 43))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 47 42)) },
  { key := { q := 9, n := 47, r := 43 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 45 44)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 47 43)) },
  { key := { q := 9, n := 47, r := 44 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 47 44)) },
  { key := { q := 9, n := 47, r := 45 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 47 45)) },
  { key := { q := 9, n := 47, r := 46 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 47 46)) },
  { key := { q := 9, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 47 47)) },
  { key := { q := 9, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 47 48)) },
  { key := { q := 9, n := 48, r := 0 }
    lowerValue := 6362685441135942358474828762538534230890216321
    upperValue := 6362685441135942358474828762538534230890216321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 48 0)) },
  { key := { q := 9, n := 48, r := 1 }
    lowerValue := 16526455691262187944090464318281907093221342
    upperValue := 357846506291596209461547296658545820941699409
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 1))
    upperTrace := (.lengthenFreeN 45 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 48, r := 2 }
    lowerValue := 87668068963114242232040849890992108118140
    upperValue := 39760722921288467717949699628727313437966601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 2))
    upperTrace := (.lengthenFreeN 43 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 48, r := 3 }
    lowerValue := 712656082941447458753656982615118378206
    upperValue := 4417858102365385301994411069858590381996289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 3))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 48, r := 4 }
    lowerValue := 7894857790092638878620490390025161958
    upperValue := 107752636643058178097424660240453423951129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 4))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 48, r := 5 }
    lowerValue := 111793347777556110200018814053999709
    upperValue := 11972515182562019788602740026717047105681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 5))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))) },
  { key := { q := 9, n := 48, r := 6 }
    lowerValue := 1943506188836483522025026155445018
    upperValue := 1330279464729113309844748891857449678409
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 6))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 48, r := 7 }
    lowerValue := 40350562439659621599912256080044
    upperValue := 147808829414345923316083210206383297601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 7))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 48, r := 8 }
    lowerValue := 980601937640501581484487700362
    upperValue := 16423203268260658146231467800709255289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 8))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 48, r := 9 }
    lowerValue := 27474396627204114881954157755
    upperValue := 1824800363140073127359051977856583921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 9))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 48, r := 10 }
    lowerValue := 877052139825457708346033512
    upperValue := 202755595904452569706561330872953769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 10))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 48, r := 11 }
    lowerValue := 31600766770268492916866372
    upperValue := 22528399544939174411840147874772641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 11))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 48, r := 12 }
    lowerValue := 1275360442130291124382136
    upperValue := 2503155504993241601315571986085849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 12))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 48, r := 13 }
    lowerValue := 57294465091581285034758
    upperValue := 278128389443693511257285776231761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 13))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 48, r := 14 }
    lowerValue := 2850255742145403380398
    upperValue := 30903154382632612361920641803529
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 14))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 48, r := 15 }
    lowerValue := 156339057336757464221
    upperValue := 3433683820292512484657849089281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 15))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5))))) },
  { key := { q := 9, n := 48, r := 16 }
    lowerValue := 9420875614990205902
    upperValue := 42391158275216203514294433201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 16))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 48, r := 17 }
    lowerValue := 621782926724923497
    upperValue := 4710128697246244834921603689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 17))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 48, r := 18 }
    lowerValue := 44834391195600845
    upperValue := 523347633027360537213511521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 18))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 48, r := 19 }
    lowerValue := 3524504582878358
    upperValue := 58149737003040059690390169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 19))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 48, r := 20 }
    lowerValue := 301546277689087
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 20))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 48, r := 21 }
    lowerValue := 28040231816247
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 21))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 48, r := 22 }
    lowerValue := 2830857670802
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 22))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 48, r := 23 }
    lowerValue := 310044922462
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 23))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 48, r := 24 }
    lowerValue := 36819642973
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 24))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 48, r := 25 }
    lowerValue := 4739940179
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 25))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 48, r := 26 }
    lowerValue := 661459386
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 26))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 48, r := 27 }
    lowerValue := 100086787
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 27))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 48, r := 28 }
    lowerValue := 16428873
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 28))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) },
  { key := { q := 9, n := 48, r := 29 }
    lowerValue := 2927660
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 29))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29))) },
  { key := { q := 9, n := 48, r := 30 }
    lowerValue := 566961
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 30))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 30))) },
  { key := { q := 9, n := 48, r := 31 }
    lowerValue := 119471
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 31))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 31))) },
  { key := { q := 9, n := 48, r := 32 }
    lowerValue := 27437
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 32))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 32))) },
  { key := { q := 9, n := 48, r := 33 }
    lowerValue := 6880
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 33))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 38 33))) },
  { key := { q := 9, n := 48, r := 34 }
    lowerValue := 1888
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 34))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 39 34))) },
  { key := { q := 9, n := 48, r := 35 }
    lowerValue := 569
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 35))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 40 35))) },
  { key := { q := 9, n := 48, r := 36 }
    lowerValue := 189
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 36))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 41 36))) },
  { key := { q := 9, n := 48, r := 37 }
    lowerValue := 69
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 37))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 42 37))) },
  { key := { q := 9, n := 48, r := 38 }
    lowerValue := 28
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 48 38))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 43 38))) }]

end CoveringCodes.Database
