import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 134. Do not edit manually.

def precomputedTable_chunk_134 : Array AnyBoundEntry := #[
  { key := { q := 13, n := 46, r := 33 }
    lowerValue := 33738
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 33))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 36 33))) },
  { key := { q := 13, n := 46, r := 34 }
    lowerValue := 7169
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 34))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 37 34))) },
  { key := { q := 13, n := 46, r := 35 }
    lowerValue := 1691
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 35))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 38 35))) },
  { key := { q := 13, n := 46, r := 36 }
    lowerValue := 445
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 36))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 40 36))) },
  { key := { q := 13, n := 46, r := 37 }
    lowerValue := 132
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 37))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 41 37))) },
  { key := { q := 13, n := 46, r := 38 }
    lowerValue := 44
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 38))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 42 38))) },
  { key := { q := 13, n := 46, r := 39 }
    lowerValue := 17
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 39))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 43 39))) },
  { key := { q := 13, n := 46, r := 40 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 42 41)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 44 40))) },
  { key := { q := 13, n := 46, r := 41 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 43 42))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 45 41))) },
  { key := { q := 13, n := 46, r := 42 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 44 43)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 46 42)) },
  { key := { q := 13, n := 46, r := 43 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 46 43)) },
  { key := { q := 13, n := 46, r := 44 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 46 44)) },
  { key := { q := 13, n := 46, r := 45 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 46 45)) },
  { key := { q := 13, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 46 46)) },
  { key := { q := 13, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 46 47)) },
  { key := { q := 13, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 46 48)) },
  { key := { q := 13, n := 47, r := 0 }
    lowerValue := 22664052024539238871968220999332552715703774239747717
    upperValue := 22664052024539238871968220999332552715703774239747717
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 47 0)) },
  { key := { q := 13, n := 47, r := 1 }
    lowerValue := 40113366415113697118527824777579739319829688919908
    upperValue := 876852263125095723312379965836716877940291675183685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 1))
    upperTrace := (.lengthenFreeN 44 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 47, r := 2 }
    lowerValue := 145069430288481900748057153277128783489005077417
    upperValue := 50485504474663467386300620593195961721138536997376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 2))
    upperTrace := (.lengthenFreeN 41 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 47, r := 3 }
    lowerValue := 804381527693877414650741706966957744963719483
    upperValue := 3883500344204882106638509276399689363164502845952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 3))
    upperTrace := (.lengthenFreeN 40 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 47, r := 4 }
    lowerValue := 6081448311788883613959956328972129281890903
    upperValue := 298730795708067854356808405876899181781884834304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 4))
    upperTrace := (.lengthenFreeN 39 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 47, r := 5 }
    lowerValue := 58803539413557580691286799304260196282127
    upperValue := 22979291977543681104369877375146090906298833408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 5))
    upperTrace := (.lengthenFreeN 38 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 47, r := 6 }
    lowerValue := 698480730776988799885583018393665646792
    upperValue := 1767637844426437008028452105780468531253756416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 6))
    upperTrace := (.lengthenFreeN 37 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 47, r := 7 }
    lowerValue := 9914440657617782180824959484086308493
    upperValue := 135972141878956692925265546598497579327212032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 7))
    upperTrace := (.lengthenFreeN 36 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 47, r := 8 }
    lowerValue := 164833148611323741992842203038310572
    upperValue := 10459395529150514840405042046038275332862464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 8))
    upperTrace := (.lengthenFreeN 35 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 47, r := 9 }
    lowerValue := 3161631537426369003316295653855358
    upperValue := 804568886857731910800387849695251948681728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 9))
    upperTrace := (.lengthenFreeN 34 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 47, r := 10 }
    lowerValue := 69143946486287619680050655744396
    upperValue := 61889914373671685446183680745788611437056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 10))
    upperTrace := (.lengthenFreeN 33 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 47, r := 11 }
    lowerValue := 1708063655756295128303599632711
    upperValue := 4760762644128591188167975441983739341312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 11))
    upperTrace := (.lengthenFreeN 32 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 47, r := 12 }
    lowerValue := 47300773801870087161199677875
    upperValue := 74829695578286078013428929473144712489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 12))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 47, r := 13 }
    lowerValue := 1459314567124939989612229293
    upperValue := 5756130429098929077956071497934208653
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 13))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 47, r := 14 }
    lowerValue := 49901763856274603279376563
    upperValue := 442779263776840698304313192148785281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 14))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 47, r := 15 }
    lowerValue := 1883281366961840696448238
    upperValue := 34059943367449284484947168626829637
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 15))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 47, r := 16 }
    lowerValue := 78163118898669917021389
    upperValue := 2619995643649944960380551432833049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 16))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 47, r := 17 }
    lowerValue := 3557047823253392657378
    upperValue := 201538126434611150798503956371773
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 17))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 47, r := 18 }
    lowerValue := 177057052262099997806
    upperValue := 15502932802662396215269535105521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 18))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 47, r := 19 }
    lowerValue := 9620524625329254758
    upperValue := 1192533292512492016559195008117
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 19))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 47, r := 20 }
    lowerValue := 569694655552502115
    upperValue := 91733330193268616658399616009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 20))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 47, r := 21 }
    lowerValue := 36719091843647202
    upperValue := 7056410014866816666030739693
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 21))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 47, r := 22 }
    lowerValue := 2573573876555623
    upperValue := 542800770374370512771595361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 22))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 47, r := 23 }
    lowerValue := 196017827511587
    upperValue := 41753905413413116367045797
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 23))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 47, r := 24 }
    lowerValue := 16218568766464
    upperValue := 247064529073450392704413
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 24))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 47, r := 25 }
    lowerValue := 1457646134111
    upperValue := 19004963774880799438801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 25))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 47, r := 26 }
    lowerValue := 142330633363
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 26))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 47, r := 27 }
    lowerValue := 15106221307
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 27))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 47, r := 28 }
    lowerValue := 1744024506
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 28))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 47, r := 29 }
    lowerValue := 219253156
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 29))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 47, r := 30 }
    lowerValue := 30055928
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 30))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30))) },
  { key := { q := 13, n := 47, r := 31 }
    lowerValue := 4500368
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 31))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 31))) },
  { key := { q := 13, n := 47, r := 32 }
    lowerValue := 737572
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 32))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 32))) },
  { key := { q := 13, n := 47, r := 33 }
    lowerValue := 132643
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 33))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 36 33))) },
  { key := { q := 13, n := 47, r := 34 }
    lowerValue := 26253
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 34))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 37 34))) },
  { key := { q := 13, n := 47, r := 35 }
    lowerValue := 5739
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 35))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 38 35))) },
  { key := { q := 13, n := 47, r := 36 }
    lowerValue := 1391
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 36))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 40 36))) },
  { key := { q := 13, n := 47, r := 37 }
    lowerValue := 376
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 37))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 41 37))) },
  { key := { q := 13, n := 47, r := 38 }
    lowerValue := 114
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 38))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 42 38))) },
  { key := { q := 13, n := 47, r := 39 }
    lowerValue := 39
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 39))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 43 39))) },
  { key := { q := 13, n := 47, r := 40 }
    lowerValue := 16
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 40))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 44 40))) },
  { key := { q := 13, n := 47, r := 41 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 43 42)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 45 41))) },
  { key := { q := 13, n := 47, r := 42 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 44 43))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 46 42))) },
  { key := { q := 13, n := 47, r := 43 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 45 44)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 47 43)) },
  { key := { q := 13, n := 47, r := 44 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 47 44)) },
  { key := { q := 13, n := 47, r := 45 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 47 45)) },
  { key := { q := 13, n := 47, r := 46 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 47 46)) },
  { key := { q := 13, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 47 47)) },
  { key := { q := 13, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 47 48)) },
  { key := { q := 13, n := 48, r := 0 }
    lowerValue := 294632676319010105335586872991323185304149065116720321
    upperValue := 294632676319010105335586872991323185304149065116720321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 48 0)) },
  { key := { q := 13, n := 48, r := 1 }
    lowerValue := 510628555145598102834639294612345208499391793963121
    upperValue := 11399079420626244403060939555877319413223791777387905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 1))
    upperTrace := (.lengthenFreeN 45 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 48, r := 2 }
    lowerValue := 1807462632854689651096484690976100615942365544950
    upperValue := 656311558170625076021908067711547502374800980965888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 2))
    upperTrace := (.lengthenFreeN 42 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 48, r := 3 }
    lowerValue := 9804585804987188908575684222171872408770778904
    upperValue := 50485504474663467386300620593195961721138536997376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 3))
    upperTrace := (.lengthenFreeN 41 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 48, r := 4 }
    lowerValue := 72482834958681570147819304833165331656068690
    upperValue := 3883500344204882106638509276399689363164502845952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 4))
    upperTrace := (.lengthenFreeN 40 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 48, r := 5 }
    lowerValue := 684967839514385424468014000083969964535430
    upperValue := 298730795708067854356808405876899181781884834304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 5))
    upperTrace := (.lengthenFreeN 39 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 48, r := 6 }
    lowerValue := 7947434101376432897170439205203295561865
    upperValue := 22979291977543681104369877375146090906298833408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 6))
    upperTrace := (.lengthenFreeN 38 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 48, r := 7 }
    lowerValue := 110129246133943186420410408795742785190
    upperValue := 1767637844426437008028452105780468531253756416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 7))
    upperTrace := (.lengthenFreeN 37 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 48, r := 8 }
    lowerValue := 1786426746674397917280152702248468783
    upperValue := 135972141878956692925265546598497579327212032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 8))
    upperTrace := (.lengthenFreeN 36 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 48, r := 9 }
    lowerValue := 33411011194802667743240926481960187
    upperValue := 10459395529150514840405042046038275332862464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 9))
    upperTrace := (.lengthenFreeN 35 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 48, r := 10 }
    lowerValue := 712013110924410086191500524637861
    upperValue := 804568886857731910800387849695251948681728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 10))
    upperTrace := (.lengthenFreeN 34 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 48, r := 11 }
    lowerValue := 17127590801408245035543496843732
    upperValue := 61889914373671685446183680745788611437056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 11))
    upperTrace := (.lengthenFreeN 33 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 48, r := 12 }
    lowerValue := 461536236145284061621256165531
    upperValue := 972786042517719014174576083150881262357
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 12))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 48, r := 13 }
    lowerValue := 13845269573113637035705221623
    upperValue := 74829695578286078013428929473144712489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 13))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 48, r := 14 }
    lowerValue := 459974921287116278906316810
    upperValue := 5756130429098929077956071497934208653
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 14))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 48, r := 15 }
    lowerValue := 16851152992345537010036845
    upperValue := 442779263776840698304313192148785281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 15))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 48, r := 16 }
    lowerValue := 678298091786310828418223
    upperValue := 34059943367449284484947168626829637
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 16))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 48, r := 17 }
    lowerValue := 29908633686801953884747
    upperValue := 2619995643649944960380551432833049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 17))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 48, r := 18 }
    lowerValue := 1441005063491324857257
    upperValue := 201538126434611150798503956371773
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 18))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 48, r := 19 }
    lowerValue := 75704988257419010193
    upperValue := 15502932802662396215269535105521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 19))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 48, r := 20 }
    lowerValue := 4329495230843655966
    upperValue := 1192533292512492016559195008117
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 20))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 48, r := 21 }
    lowerValue := 269163931734456457
    upperValue := 91733330193268616658399616009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 21))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 48, r := 22 }
    lowerValue := 18172409621378407
    upperValue := 7056410014866816666030739693
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 22))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 48, r := 23 }
    lowerValue := 1331373364071017
    upperValue := 542800770374370512771595361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 23))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 48, r := 24 }
    lowerValue := 105797160914316
    upperValue := 3211838877954855105157369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 24))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 48, r := 25 }
    lowerValue := 9116855644278
    upperValue := 247064529073450392704413
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 25))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 48, r := 26 }
    lowerValue := 851992786726
    upperValue := 19004963774880799438801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 26))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 48, r := 27 }
    lowerValue := 86373787909
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 27))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 48, r := 28 }
    lowerValue := 9504583545
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 28))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 48, r := 29 }
    lowerValue := 1136207206
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 29))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 48, r := 30 }
    lowerValue := 147722975
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 30))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30))) },
  { key := { q := 13, n := 48, r := 31 }
    lowerValue := 20918491
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 31))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 31))) },
  { key := { q := 13, n := 48, r := 32 }
    lowerValue := 3232023
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 32))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 32))) },
  { key := { q := 13, n := 48, r := 33 }
    lowerValue := 546020
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 33))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 36 33))) },
  { key := { q := 13, n := 48, r := 34 }
    lowerValue := 101120
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 34))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 37 34))) },
  { key := { q := 13, n := 48, r := 35 }
    lowerValue := 20591
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 35))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 38 35))) },
  { key := { q := 13, n := 48, r := 36 }
    lowerValue := 4627
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 36))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 40 36))) },
  { key := { q := 13, n := 48, r := 37 }
    lowerValue := 1152
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 37))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 41 37))) },
  { key := { q := 13, n := 48, r := 38 }
    lowerValue := 320
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 38))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 42 38))) },
  { key := { q := 13, n := 48, r := 39 }
    lowerValue := 99
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 39))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 43 39))) },
  { key := { q := 13, n := 48, r := 40 }
    lowerValue := 35
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 40))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 44 40))) },
  { key := { q := 13, n := 48, r := 41 }
    lowerValue := 14
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 41))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 45 41))) },
  { key := { q := 13, n := 48, r := 42 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 44 43)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 46 42))) },
  { key := { q := 13, n := 48, r := 43 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 45 44))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 47 43))) },
  { key := { q := 13, n := 48, r := 44 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 46 45)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 48 44)) },
  { key := { q := 13, n := 48, r := 45 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 48 45)) },
  { key := { q := 13, n := 48, r := 46 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 48 46)) },
  { key := { q := 13, n := 48, r := 47 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 48 47)) },
  { key := { q := 13, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 48 48)) },
  { key := { q := 14, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 0)) },
  { key := { q := 14, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 1)) },
  { key := { q := 14, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 2)) },
  { key := { q := 14, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 3)) },
  { key := { q := 14, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 4)) },
  { key := { q := 14, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 5)) },
  { key := { q := 14, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 6)) },
  { key := { q := 14, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 7)) },
  { key := { q := 14, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 8)) },
  { key := { q := 14, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 9)) },
  { key := { q := 14, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 10)) },
  { key := { q := 14, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 11)) },
  { key := { q := 14, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 12)) },
  { key := { q := 14, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 13)) },
  { key := { q := 14, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 14)) },
  { key := { q := 14, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 15)) },
  { key := { q := 14, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 16)) },
  { key := { q := 14, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 17)) },
  { key := { q := 14, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 18)) },
  { key := { q := 14, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 19)) },
  { key := { q := 14, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 20)) },
  { key := { q := 14, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 21)) },
  { key := { q := 14, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 22)) },
  { key := { q := 14, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 23)) },
  { key := { q := 14, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 24)) },
  { key := { q := 14, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 25)) },
  { key := { q := 14, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 26)) },
  { key := { q := 14, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 27)) },
  { key := { q := 14, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 28)) },
  { key := { q := 14, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 29)) },
  { key := { q := 14, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 30)) },
  { key := { q := 14, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 31)) },
  { key := { q := 14, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 32)) },
  { key := { q := 14, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 33)) },
  { key := { q := 14, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 34)) },
  { key := { q := 14, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 35)) },
  { key := { q := 14, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 36)) },
  { key := { q := 14, n := 0, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 37))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 37)) },
  { key := { q := 14, n := 0, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 38))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 38)) },
  { key := { q := 14, n := 0, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 39))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 39)) },
  { key := { q := 14, n := 0, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 40))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 40)) },
  { key := { q := 14, n := 0, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 41))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 41)) },
  { key := { q := 14, n := 0, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 42))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 42)) },
  { key := { q := 14, n := 0, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 43))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 43)) },
  { key := { q := 14, n := 0, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 44))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 44)) },
  { key := { q := 14, n := 0, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 45))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 45)) },
  { key := { q := 14, n := 0, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 46))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 46)) },
  { key := { q := 14, n := 0, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 47))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 47)) },
  { key := { q := 14, n := 0, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 0 48))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 0 48)) },
  { key := { q := 14, n := 1, r := 0 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 1 0)) },
  { key := { q := 14, n := 1, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 1))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 1)) },
  { key := { q := 14, n := 1, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 2)) },
  { key := { q := 14, n := 1, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 3)) },
  { key := { q := 14, n := 1, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 4)) },
  { key := { q := 14, n := 1, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 5)) },
  { key := { q := 14, n := 1, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 6)) },
  { key := { q := 14, n := 1, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 7)) },
  { key := { q := 14, n := 1, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 8)) },
  { key := { q := 14, n := 1, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 9)) },
  { key := { q := 14, n := 1, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 10)) },
  { key := { q := 14, n := 1, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 11)) },
  { key := { q := 14, n := 1, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 12)) },
  { key := { q := 14, n := 1, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 13)) },
  { key := { q := 14, n := 1, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 14)) },
  { key := { q := 14, n := 1, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 15)) },
  { key := { q := 14, n := 1, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 16)) },
  { key := { q := 14, n := 1, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 17)) },
  { key := { q := 14, n := 1, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 18)) },
  { key := { q := 14, n := 1, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 19)) },
  { key := { q := 14, n := 1, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 20)) },
  { key := { q := 14, n := 1, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 21)) },
  { key := { q := 14, n := 1, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 22)) },
  { key := { q := 14, n := 1, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 23)) },
  { key := { q := 14, n := 1, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 24)) },
  { key := { q := 14, n := 1, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 25)) },
  { key := { q := 14, n := 1, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 26)) },
  { key := { q := 14, n := 1, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 27)) },
  { key := { q := 14, n := 1, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 28)) },
  { key := { q := 14, n := 1, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 29)) },
  { key := { q := 14, n := 1, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 30)) },
  { key := { q := 14, n := 1, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 31)) },
  { key := { q := 14, n := 1, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 32)) },
  { key := { q := 14, n := 1, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 33)) },
  { key := { q := 14, n := 1, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 34)) },
  { key := { q := 14, n := 1, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 35)) },
  { key := { q := 14, n := 1, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 36)) },
  { key := { q := 14, n := 1, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 37)) },
  { key := { q := 14, n := 1, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 38)) },
  { key := { q := 14, n := 1, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 39)) },
  { key := { q := 14, n := 1, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 40)) },
  { key := { q := 14, n := 1, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 41)) },
  { key := { q := 14, n := 1, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 42)) },
  { key := { q := 14, n := 1, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 43)) },
  { key := { q := 14, n := 1, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 44)) },
  { key := { q := 14, n := 1, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 45)) },
  { key := { q := 14, n := 1, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 46)) },
  { key := { q := 14, n := 1, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 47)) },
  { key := { q := 14, n := 1, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 1 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 1 48)) },
  { key := { q := 14, n := 2, r := 0 }
    lowerValue := 196
    upperValue := 196
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 2 0)) },
  { key := { q := 14, n := 2, r := 1 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 2 1))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 2 1)) },
  { key := { q := 14, n := 2, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 2)) },
  { key := { q := 14, n := 2, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 3)) },
  { key := { q := 14, n := 2, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 4)) },
  { key := { q := 14, n := 2, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 5)) },
  { key := { q := 14, n := 2, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 6)) },
  { key := { q := 14, n := 2, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 7)) },
  { key := { q := 14, n := 2, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 8)) },
  { key := { q := 14, n := 2, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 9)) },
  { key := { q := 14, n := 2, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 10)) },
  { key := { q := 14, n := 2, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 11)) },
  { key := { q := 14, n := 2, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 12)) },
  { key := { q := 14, n := 2, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 13)) },
  { key := { q := 14, n := 2, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 14)) },
  { key := { q := 14, n := 2, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 15)) },
  { key := { q := 14, n := 2, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 16)) },
  { key := { q := 14, n := 2, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 17)) },
  { key := { q := 14, n := 2, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 18)) },
  { key := { q := 14, n := 2, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 19)) },
  { key := { q := 14, n := 2, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 20)) },
  { key := { q := 14, n := 2, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 21)) },
  { key := { q := 14, n := 2, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 22)) },
  { key := { q := 14, n := 2, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 23)) },
  { key := { q := 14, n := 2, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 24)) },
  { key := { q := 14, n := 2, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 25)) },
  { key := { q := 14, n := 2, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 26)) },
  { key := { q := 14, n := 2, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 27)) },
  { key := { q := 14, n := 2, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 28)) },
  { key := { q := 14, n := 2, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 29)) },
  { key := { q := 14, n := 2, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 30)) },
  { key := { q := 14, n := 2, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 31)) },
  { key := { q := 14, n := 2, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 32)) },
  { key := { q := 14, n := 2, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 33)) },
  { key := { q := 14, n := 2, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 34)) },
  { key := { q := 14, n := 2, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 35)) },
  { key := { q := 14, n := 2, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 36)) },
  { key := { q := 14, n := 2, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 2 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 2 37)) }]

end CoveringCodes.Database
