import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 94. Do not edit manually.

def precomputedTable_chunk_94 : Array AnyBoundEntry := #[
  { key := { q := 9, n := 38, r := 29 }
    lowerValue := 48
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29))) },
  { key := { q := 9, n := 38, r := 30 }
    lowerValue := 19
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 30))) },
  { key := { q := 9, n := 38, r := 31 }
    lowerValue := 9
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 31))) },
  { key := { q := 9, n := 38, r := 32 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 34 33)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 32))) },
  { key := { q := 9, n := 38, r := 33 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 35 34))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 38 33)) },
  { key := { q := 9, n := 38, r := 34 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 36 35)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 38 34)) },
  { key := { q := 9, n := 38, r := 35 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 37 36))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 38 35)) },
  { key := { q := 9, n := 38, r := 36 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 38 36)) },
  { key := { q := 9, n := 38, r := 37 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 38 37)) },
  { key := { q := 9, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 38 38)) },
  { key := { q := 9, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 38 39)) },
  { key := { q := 9, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 38 40)) },
  { key := { q := 9, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 38 41)) },
  { key := { q := 9, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 38 42)) },
  { key := { q := 9, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 38 43)) },
  { key := { q := 9, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 38 44)) },
  { key := { q := 9, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 38 45)) },
  { key := { q := 9, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 38 46)) },
  { key := { q := 9, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 38 47)) },
  { key := { q := 9, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 38 48)) },
  { key := { q := 9, n := 39, r := 0 }
    lowerValue := 16423203268260658146231467800709255289
    upperValue := 16423203268260658146231467800709255289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 39 0)) },
  { key := { q := 9, n := 39, r := 1 }
    lowerValue := 52470297981663444556650056871275577
    upperValue := 923664381342506150885446062865678281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 1))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 39, r := 2 }
    lowerValue := 344035093706363159524718097088407
    upperValue := 22528399544939174411840147874772641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 2))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 39, r := 3 }
    lowerValue := 3474409421864974681367928443815
    upperValue := 2503155504993241601315571986085849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 39, r := 4 }
    lowerValue := 48073493079256513879098999557
    upperValue := 278128389443693511257285776231761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 4))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 39, r := 5 }
    lowerValue := 855017471124531213415471213
    upperValue := 30903154382632612361920641803529
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 5))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 39, r := 6 }
    lowerValue := 18780427153440866873724934
    upperValue := 3433683820292512484657849089281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 6))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 39, r := 7 }
    lowerValue := 495710296216839108040140
    upperValue := 381520424476945831628649898809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 7))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 39, r := 8 }
    lowerValue := 15416102336357193080539
    upperValue := 42391158275216203514294433201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 8))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 39, r := 9 }
    lowerValue := 556566021762331823342
    upperValue := 4710128697246244834921603689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 9))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 39, r := 10 }
    lowerValue := 23061939686468536997
    upperValue := 523347633027360537213511521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 10))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 39, r := 11 }
    lowerValue := 1086956572082993745
    upperValue := 58149737003040059690390169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 11))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 39, r := 12 }
    lowerValue := 57857251808978689
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 12))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 39, r := 13 }
    lowerValue := 3458093134258748
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 13))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 39, r := 14 }
    lowerValue := 231014811111077
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 14))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 12 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 39, r := 15 }
    lowerValue := 17185262200316
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 15))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 13 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 39, r := 16 }
    lowerValue := 1419411347111
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 16))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 39, r := 17 }
    lowerValue := 129868988936
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 17))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 39, r := 18 }
    lowerValue := 13140431219
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 39, r := 19 }
    lowerValue := 1468624433
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 39, r := 20 }
    lowerValue := 181179920
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 39, r := 21 }
    lowerValue := 24666598
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 39, r := 22 }
    lowerValue := 3706850
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 39, r := 23 }
    lowerValue := 615302
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 39, r := 24 }
    lowerValue := 112940
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 39, r := 25 }
    lowerValue := 22961
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 39, r := 26 }
    lowerValue := 5181
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 39, r := 27 }
    lowerValue := 1301
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 39, r := 28 }
    lowerValue := 365
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) },
  { key := { q := 9, n := 39, r := 29 }
    lowerValue := 115
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29))) },
  { key := { q := 9, n := 39, r := 30 }
    lowerValue := 41
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 30))) },
  { key := { q := 9, n := 39, r := 31 }
    lowerValue := 17
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 31))) },
  { key := { q := 9, n := 39, r := 32 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 34 33))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 32))) },
  { key := { q := 9, n := 39, r := 33 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 35 34)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 38 33))) },
  { key := { q := 9, n := 39, r := 34 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 36 35))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 39 34)) },
  { key := { q := 9, n := 39, r := 35 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 37 36)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 39 35)) },
  { key := { q := 9, n := 39, r := 36 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 39 36)) },
  { key := { q := 9, n := 39, r := 37 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 39 37)) },
  { key := { q := 9, n := 39, r := 38 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 39 38)) },
  { key := { q := 9, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 39 39)) },
  { key := { q := 9, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 39 40)) },
  { key := { q := 9, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 39 41)) },
  { key := { q := 9, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 39 42)) },
  { key := { q := 9, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 39 43)) },
  { key := { q := 9, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 39 44)) },
  { key := { q := 9, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 39 45)) },
  { key := { q := 9, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 39 46)) },
  { key := { q := 9, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 39 47)) },
  { key := { q := 9, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 39 48)) },
  { key := { q := 9, n := 40, r := 0 }
    lowerValue := 147808829414345923316083210206383297601
    upperValue := 147808829414345923316083210206383297601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 40 0)) },
  { key := { q := 9, n := 40, r := 1 }
    lowerValue := 460463643035345555501816854225493139
    upperValue := 8312979432082555357969014565791104529
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 1))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 40, r := 2 }
    lowerValue := 2941996166763120226828351549658313
    upperValue := 202755595904452569706561330872953769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 2))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 40, r := 3 }
    lowerValue := 28932195521874099875114182409216
    upperValue := 22528399544939174411840147874772641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 40, r := 4 }
    lowerValue := 389542368885455542405156757986
    upperValue := 2503155504993241601315571986085849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 40, r := 5 }
    lowerValue := 6736634768801450930125334128
    upperValue := 278128389443693511257285776231761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 40, r := 6 }
    lowerValue := 143762024024701538899978522
    upperValue := 30903154382632612361920641803529
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 40, r := 7 }
    lowerValue := 3683568826591185733106433
    upperValue := 3433683820292512484657849089281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 40, r := 8 }
    lowerValue := 111103295809082714772806
    upperValue := 381520424476945831628649898809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 8))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 40, r := 9 }
    lowerValue := 3886564234772420994303
    upperValue := 42391158275216203514294433201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 9))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 40, r := 10 }
    lowerValue := 155883718300996230266
    upperValue := 4710128697246244834921603689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 10))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 40, r := 11 }
    lowerValue := 7104000211836089127
    upperValue := 523347633027360537213511521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 11))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 40, r := 12 }
    lowerValue := 365201673657011379
    upperValue := 58149737003040059690390169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 12))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 40, r := 13 }
    lowerValue := 21055189926070258
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 13))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 40, r := 14 }
    lowerValue := 1354984893284946
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 14))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 12 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 40, r := 15 }
    lowerValue := 96962688329285
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 15))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 13 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 40, r := 16 }
    lowerValue := 7692093622265
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 16))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 40, r := 17 }
    lowerValue := 674854557395
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 17))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 40, r := 18 }
    lowerValue := 65358744030
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 40, r := 19 }
    lowerValue := 6978273437
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 40, r := 20 }
    lowerValue := 820669965
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 40, r := 21 }
    lowerValue := 106262827
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 40, r := 22 }
    lowerValue := 15149065
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 40, r := 23 }
    lowerValue := 2378822
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 40, r := 24 }
    lowerValue := 411786
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 40, r := 25 }
    lowerValue := 78680
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 40, r := 26 }
    lowerValue := 16622
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 40, r := 27 }
    lowerValue := 3892
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 40, r := 28 }
    lowerValue := 1013
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) },
  { key := { q := 9, n := 40, r := 29 }
    lowerValue := 294
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29))) },
  { key := { q := 9, n := 40, r := 30 }
    lowerValue := 96
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 30))) },
  { key := { q := 9, n := 40, r := 31 }
    lowerValue := 35
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 31))) },
  { key := { q := 9, n := 40, r := 32 }
    lowerValue := 15
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 32))) },
  { key := { q := 9, n := 40, r := 33 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 35 34))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 38 33))) },
  { key := { q := 9, n := 40, r := 34 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 36 35)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 39 34))) },
  { key := { q := 9, n := 40, r := 35 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 37 36))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 40 35)) },
  { key := { q := 9, n := 40, r := 36 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 38 37)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 40 36)) },
  { key := { q := 9, n := 40, r := 37 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 40 37)) },
  { key := { q := 9, n := 40, r := 38 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 40 38)) },
  { key := { q := 9, n := 40, r := 39 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 40 39)) },
  { key := { q := 9, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 40 40)) },
  { key := { q := 9, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 40 41)) },
  { key := { q := 9, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 40 42)) },
  { key := { q := 9, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 40 43)) },
  { key := { q := 9, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 40 44)) },
  { key := { q := 9, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 40 45)) },
  { key := { q := 9, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 40 46)) },
  { key := { q := 9, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 40 47)) },
  { key := { q := 9, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 40 48)) },
  { key := { q := 9, n := 41, r := 0 }
    lowerValue := 1330279464729113309844748891857449678409
    upperValue := 1330279464729113309844748891857449678409
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 41 0)) },
  { key := { q := 9, n := 41, r := 1 }
    lowerValue := 4043402628355967507126896327834193552
    upperValue := 74816814888742998221721131092119940761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 1))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 41, r := 2 }
    lowerValue := 25190393014999589271615612714829853
    upperValue := 1824800363140073127359051977856583921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 2))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 41, r := 3 }
    lowerValue := 241398091745958349584011279062616
    upperValue := 202755595904452569706561330872953769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 41, r := 4 }
    lowerValue := 3164976043176643275003481734040
    upperValue := 22528399544939174411840147874772641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 41, r := 5 }
    lowerValue := 53261060100784050242068358186
    upperValue := 2503155504993241601315571986085849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 41, r := 6 }
    lowerValue := 1105179102521144090659125147
    upperValue := 278128389443693511257285776231761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 41, r := 7 }
    lowerValue := 27512555455528519370905604
    upperValue := 30903154382632612361920641803529
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 7))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 41, r := 8 }
    lowerValue := 805553670940851552027678
    upperValue := 3433683820292512484657849089281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 8))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 41, r := 9 }
    lowerValue := 27330558272143147397642
    upperValue := 381520424476945831628649898809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 9))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 41, r := 10 }
    lowerValue := 1062145992288716319816
    upperValue := 42391158275216203514294433201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 10))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 41, r := 11 }
    lowerValue := 46853997018607030191
    upperValue := 4710128697246244834921603689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 11))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 41, r := 12 }
    lowerValue := 2328988113072406214
    upperValue := 523347633027360537213511521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 12))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 41, r := 13 }
    lowerValue := 129683122169985529
    upperValue := 58149737003040059690390169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 13))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 41, r := 14 }
    lowerValue := 8050309528823929
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 14))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 12 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 41, r := 15 }
    lowerValue := 554960505277135
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 15))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 13 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 41, r := 16 }
    lowerValue := 42351031666055
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 16))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 41, r := 17 }
    lowerValue := 3568837327941
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 17))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 41, r := 18 }
    lowerValue := 331435829588
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 41, r := 19 }
    lowerValue := 33872368738
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 41, r := 20 }
    lowerValue := 3805606231
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 41, r := 21 }
    lowerValue := 469758961
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 41, r := 22 }
    lowerValue := 63696204
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 41, r := 23 }
    lowerValue := 9489051
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 41, r := 24 }
    lowerValue := 1554014
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 41, r := 25 }
    lowerValue := 280048
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 41, r := 26 }
    lowerValue := 55611
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 41, r := 27 }
    lowerValue := 12191
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 41, r := 28 }
    lowerValue := 2957
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) },
  { key := { q := 9, n := 41, r := 29 }
    lowerValue := 796
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29))) },
  { key := { q := 9, n := 41, r := 30 }
    lowerValue := 239
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 30))) },
  { key := { q := 9, n := 41, r := 31 }
    lowerValue := 80
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 31))) },
  { key := { q := 9, n := 41, r := 32 }
    lowerValue := 30
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 32))) },
  { key := { q := 9, n := 41, r := 33 }
    lowerValue := 13
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 38 33))) },
  { key := { q := 9, n := 41, r := 34 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 36 35))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 39 34))) },
  { key := { q := 9, n := 41, r := 35 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 37 36)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 40 35))) },
  { key := { q := 9, n := 41, r := 36 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 38 37))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 41 36)) },
  { key := { q := 9, n := 41, r := 37 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 39 38)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 41 37)) },
  { key := { q := 9, n := 41, r := 38 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 41 38)) },
  { key := { q := 9, n := 41, r := 39 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 41 39)) },
  { key := { q := 9, n := 41, r := 40 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 41 40)) },
  { key := { q := 9, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 41 41)) },
  { key := { q := 9, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 41 42)) },
  { key := { q := 9, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 41 43)) },
  { key := { q := 9, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 41 44)) },
  { key := { q := 9, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 41 45)) },
  { key := { q := 9, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 41 46)) },
  { key := { q := 9, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 41 47)) },
  { key := { q := 9, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 41 48)) },
  { key := { q := 9, n := 42, r := 0 }
    lowerValue := 11972515182562019788602740026717047105681
    upperValue := 11972515182562019788602740026717047105681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 42 0)) },
  { key := { q := 9, n := 42, r := 1 }
    lowerValue := 35526751283566824298524451117854739186
    upperValue := 673351333998686983995490179829079466849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 1))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 42, r := 2 }
    lowerValue := 215950563347739394826982558516568012
    upperValue := 16423203268260658146231467800709255289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 2))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 42, r := 3 }
    lowerValue := 2017884643139853139747455046056429
    upperValue := 1824800363140073127359051977856583921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 42, r := 4 }
    lowerValue := 25780694107313455636825694153632
    upperValue := 202755595904452569706561330872953769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 4))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 42, r := 5 }
    lowerValue := 422473559900249151956692122389
    upperValue := 22528399544939174411840147874772641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 5))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 42, r := 6 }
    lowerValue := 8530528655071770839613181425
    upperValue := 2503155504993241601315571986085849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 6))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 42, r := 7 }
    lowerValue := 206489802781193952441708252
    upperValue := 278128389443693511257285776231761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 7))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 42, r := 8 }
    lowerValue := 5874065716872901671276565
    upperValue := 30903154382632612361920641803529
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 8))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 42, r := 9 }
    lowerValue := 193464600963301433303195
    upperValue := 3433683820292512484657849089281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 9))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 42, r := 10 }
    lowerValue := 7292156495985128558443
    upperValue := 381520424476945831628649898809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 10))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 42, r := 11 }
    lowerValue := 311690280743261309807
    upperValue := 42391158275216203514294433201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 11))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 42, r := 12 }
    lowerValue := 14997145799539848481
    upperValue := 4710128697246244834921603689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 12))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 42, r := 13 }
    lowerValue := 807459357662120093
    upperValue := 523347633027360537213511521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 13))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 42, r := 14 }
    lowerValue := 48411131710049219
    upperValue := 58149737003040059690390169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 14))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 12 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 42, r := 15 }
    lowerValue := 3219251824677271
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 15))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 13 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 42, r := 16 }
    lowerValue := 236670108856383
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 16))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 42, r := 17 }
    lowerValue := 19185645803335
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 42, r := 18 }
    lowerValue := 1711416496079
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 42, r := 19 }
    lowerValue := 167722727154
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 42, r := 20 }
    lowerValue := 18037845903
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 42, r := 21 }
    lowerValue := 2127200395
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 42, r := 22 }
    lowerValue := 274981007
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 42, r := 23 }
    lowerValue := 38964277
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 42, r := 24 }
    lowerValue := 6054197
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 42, r := 25 }
    lowerValue := 1032255
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 42, r := 26 }
    lowerValue := 193346
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 42, r := 27 }
    lowerValue := 39843
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 42, r := 28 }
    lowerValue := 9050
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) },
  { key := { q := 9, n := 42, r := 29 }
    lowerValue := 2272
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29))) },
  { key := { q := 9, n := 42, r := 30 }
    lowerValue := 632
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 30))) },
  { key := { q := 9, n := 42, r := 31 }
    lowerValue := 196
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 31))) },
  { key := { q := 9, n := 42, r := 32 }
    lowerValue := 68
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 32))) },
  { key := { q := 9, n := 42, r := 33 }
    lowerValue := 26
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 38 33))) },
  { key := { q := 9, n := 42, r := 34 }
    lowerValue := 12
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 34))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 39 34))) },
  { key := { q := 9, n := 42, r := 35 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 37 36))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 40 35))) },
  { key := { q := 9, n := 42, r := 36 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 38 37)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 41 36))) },
  { key := { q := 9, n := 42, r := 37 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 39 38))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 42 37)) },
  { key := { q := 9, n := 42, r := 38 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 40 39)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 42 38)) },
  { key := { q := 9, n := 42, r := 39 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 42 39)) },
  { key := { q := 9, n := 42, r := 40 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 42 40)) },
  { key := { q := 9, n := 42, r := 41 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 42 41)) },
  { key := { q := 9, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 42 42)) },
  { key := { q := 9, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 42 43)) },
  { key := { q := 9, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 42 44)) },
  { key := { q := 9, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 42 45)) },
  { key := { q := 9, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 42 46)) },
  { key := { q := 9, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 42 47)) },
  { key := { q := 9, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 42 48)) },
  { key := { q := 9, n := 43, r := 0 }
    lowerValue := 107752636643058178097424660240453423951129
    upperValue := 107752636643058178097424660240453423951129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 43 0)) },
  { key := { q := 9, n := 43, r := 1 }
    lowerValue := 312326483023357037963549739827401228844
    upperValue := 6060162005988182855959411618461715201641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 1))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 43, r := 2 }
    lowerValue := 1853426159641161017896084425416747063
    upperValue := 147808829414345923316083210206383297601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 2))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 9, n := 43, r := 3 }
    lowerValue := 16897791429282658569530657526837573
    upperValue := 16423203268260658146231467800709255289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 43, r := 4 }
    lowerValue := 210510248635665039001055337250771
    upperValue := 1824800363140073127359051977856583921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 4))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 43, r := 5 }
    lowerValue := 3361568322990445426758128973276
    upperValue := 202755595904452569706561330872953769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 5))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 43, r := 6 }
    lowerValue := 66097675683294225317552436365
    upperValue := 22528399544939174411840147874772641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 6))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 43, r := 7 }
    lowerValue := 1556915002460912974026885124
    upperValue := 2503155504993241601315571986085849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 7))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 43, r := 8 }
    lowerValue := 43065771513579263689024156
    upperValue := 278128389443693511257285776231761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 8))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 43, r := 9 }
    lowerValue := 1378080533301932913890073
    upperValue := 30903154382632612361920641803529
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 9))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 43, r := 10 }
    lowerValue := 50424439582616850565109
    upperValue := 3433683820292512484657849089281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 10))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 43, r := 11 }
    lowerValue := 2090406735044684205630
    upperValue := 381520424476945831628649898809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 11))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 43, r := 12 }
    lowerValue := 97459703158603809164
    upperValue := 42391158275216203514294433201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 12))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 43, r := 13 }
    lowerValue := 5079329931925900086
    upperValue := 4710128697246244834921603689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 13))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 43, r := 14 }
    lowerValue := 294463828943963152
    upperValue := 523347633027360537213511521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 14))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 12 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 43, r := 15 }
    lowerValue := 18912234205208918
    upperValue := 58149737003040059690390169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 15))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 13 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 9, n := 43, r := 16 }
    lowerValue := 1341213685918309
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 16))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 43, r := 17 }
    lowerValue := 104742963931856
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 17))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 43, r := 18 }
    lowerValue := 8988407586956
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 43, r := 19 }
    lowerValue := 846126164455
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 43, r := 20 }
    lowerValue := 87262774523
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 43, r := 21 }
    lowerValue := 9850993941
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 43, r := 22 }
    lowerValue := 1216639337
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 43, r := 23 }
    lowerValue := 164361190
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 43, r := 24 }
    lowerValue := 24292091
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 43, r := 25 }
    lowerValue := 3929873
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 43, r := 26 }
    lowerValue := 696481
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 43, r := 27 }
    lowerValue := 135388
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 43, r := 28 }
    lowerValue := 28912
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28))) },
  { key := { q := 9, n := 43, r := 29 }
    lowerValue := 6796
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 33 29))) },
  { key := { q := 9, n := 43, r := 30 }
    lowerValue := 1763
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 34 30))) },
  { key := { q := 9, n := 43, r := 31 }
    lowerValue := 506
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 35 31))) },
  { key := { q := 9, n := 43, r := 32 }
    lowerValue := 162
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 37 32))) },
  { key := { q := 9, n := 43, r := 33 }
    lowerValue := 58
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 43 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 38 33))) }]

end CoveringCodes.Database
