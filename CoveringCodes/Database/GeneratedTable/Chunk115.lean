import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 115. Do not edit manually.

def precomputedTable_chunk_115 : Array AnyBoundEntry := #[
  { key := { q := 11, n := 47, r := 36 }
    lowerValue := 361
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 36))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 40 36))) },
  { key := { q := 11, n := 47, r := 37 }
    lowerValue := 116
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 37))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 41 37))) },
  { key := { q := 11, n := 47, r := 38 }
    lowerValue := 42
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 38))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 42 38))) },
  { key := { q := 11, n := 47, r := 39 }
    lowerValue := 17
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 39))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 43 39))) },
  { key := { q := 11, n := 47, r := 40 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 42 41))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 45 40))) },
  { key := { q := 11, n := 47, r := 41 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 43 42)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 46 41))) },
  { key := { q := 11, n := 47, r := 42 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 44 43))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 47 42)) },
  { key := { q := 11, n := 47, r := 43 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 45 44)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 47 43)) },
  { key := { q := 11, n := 47, r := 44 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 47 44)) },
  { key := { q := 11, n := 47, r := 45 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 47 45)) },
  { key := { q := 11, n := 47, r := 46 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 47 46)) },
  { key := { q := 11, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 47 47)) },
  { key := { q := 11, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 47 48)) },
  { key := { q := 11, n := 48, r := 0 }
    lowerValue := 97017233784872162402203715694511008214034825609281
    upperValue := 97017233784872162402203715694511008214034825609281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 48 0)) },
  { key := { q := 11, n := 48, r := 1 }
    lowerValue := 201699030737779963414144939073827459904438306881
    upperValue := 4446319504791286180717074874053472202145848506511
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 1))
    upperTrace := (.lengthenFreeN 45 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 48, r := 2 }
    lowerValue := 856429884842755293493204647685940344930172100
    upperValue := 404210864071935107337915897641224745649622591501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 2))
    upperTrace := (.lengthenFreeN 43 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 48, r := 3 }
    lowerValue := 5572730647800570420007794445647181420877452
    upperValue := 36746442188357737030719627058293158695420235591
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 3))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 48, r := 4 }
    lowerValue := 49417672748294308008726103661136373883124
    upperValue := 3340585653487067002792693368935741699583657781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 4))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 48, r := 5 }
    lowerValue := 560166360569721802391171889157825144465
    upperValue := 119484434699984512767547899932127870029817864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 5))
    upperTrace := (.lengthenFreeN 40 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 11, n := 48, r := 6 }
    lowerValue := 7795864107264919760149086644570148375
    upperValue := 10862221336362228433413445448375260911801624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 6))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 48, r := 7 }
    lowerValue := 129574787657368697632457364004527705
    upperValue := 987474666942020766673949586215932810163784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 7))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 48, r := 8 }
    lowerValue := 2520999750270761102758151330604241
    upperValue := 89770424267456433333995416928721164560344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 8))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 48, r := 9 }
    lowerValue := 56550351915893215781092814321181
    upperValue := 8160947660677857575817765175338287687304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 9))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 48, r := 10 }
    lowerValue := 1445370383228228354055083899728
    upperValue := 340039485861577398992406882305761986971
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 10))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 48, r := 11 }
    lowerValue := 41698379470710890180932943030
    upperValue := 30912680532870672635673352936887453361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 11))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 48, r := 12 }
    lowerValue := 1347551842848404484160710470
    upperValue := 2810243684806424785061213903353404851
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 12))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 48, r := 13 }
    lowerValue := 48477647669199375785459326
    upperValue := 255476698618765889551019445759400441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 13))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 48, r := 14 }
    lowerValue := 1931331537899864500761742
    upperValue := 23225154419887808141001767796309131
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 14))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 48, r := 15 }
    lowerValue := 84842843993820240612137
    upperValue := 2111377674535255285545615254209921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 15))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 48, r := 16 }
    lowerValue := 4094939440223751037405
    upperValue := 191943424957750480504146841291811
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 16))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 48, r := 17 }
    lowerValue := 216491507948442658517
    upperValue := 17449402268886407318558803753801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 17))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 48, r := 18 }
    lowerValue := 12505490434645761485
    upperValue := 1586309297171491574414436704891
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 18))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 48, r := 19 }
    lowerValue := 787628103493340885
    upperValue := 144209936106499234037676064081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 19))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 48, r := 20 }
    lowerValue := 53996124351455625
    upperValue := 1191817653772720942460132761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 20))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 48, r := 21 }
    lowerValue := 4023777509306965
    upperValue := 108347059433883722041830251
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 21))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 48, r := 22 }
    lowerValue := 325596635189391
    upperValue := 9849732675807611094711841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 22))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 48, r := 23 }
    lowerValue := 28587135421467
    upperValue := 895430243255237372246531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 23))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 48, r := 24 }
    lowerValue := 2722042171733
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 24))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 48, r := 25 }
    lowerValue := 281031519804
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 25))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 48, r := 26 }
    lowerValue := 31460449808
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 26))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 48, r := 27 }
    lowerValue := 3819873402
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 27))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 48, r := 28 }
    lowerValue := 503319372
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 28))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 48, r := 29 }
    lowerValue := 72027902
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 29))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 48, r := 30 }
    lowerValue := 11207086
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 30))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 30))) },
  { key := { q := 11, n := 48, r := 31 }
    lowerValue := 1898540
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 31))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 31))) },
  { key := { q := 11, n := 48, r := 32 }
    lowerValue := 350768
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 32))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 32))) },
  { key := { q := 11, n := 48, r := 33 }
    lowerValue := 70824
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 33))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 37 33))) },
  { key := { q := 11, n := 48, r := 34 }
    lowerValue := 15666
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 34))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 38 34))) },
  { key := { q := 11, n := 48, r := 35 }
    lowerValue := 3807
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 35))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 39 35))) },
  { key := { q := 11, n := 48, r := 36 }
    lowerValue := 1020
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 36))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 40 36))) },
  { key := { q := 11, n := 48, r := 37 }
    lowerValue := 303
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 37))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 41 37))) },
  { key := { q := 11, n := 48, r := 38 }
    lowerValue := 100
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 38))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 42 38))) },
  { key := { q := 11, n := 48, r := 39 }
    lowerValue := 37
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 39))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 43 39))) },
  { key := { q := 11, n := 48, r := 40 }
    lowerValue := 16
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 40))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 45 40))) },
  { key := { q := 11, n := 48, r := 41 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 43 42))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 46 41))) },
  { key := { q := 11, n := 48, r := 42 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 44 43)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 47 42))) },
  { key := { q := 11, n := 48, r := 43 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 45 44))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 48 43)) },
  { key := { q := 11, n := 48, r := 44 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 46 45)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 48 44)) },
  { key := { q := 11, n := 48, r := 45 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 48 45)) },
  { key := { q := 11, n := 48, r := 46 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 48 46)) },
  { key := { q := 11, n := 48, r := 47 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 48 47)) },
  { key := { q := 11, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 48 48)) },
  { key := { q := 12, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 0)) },
  { key := { q := 12, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 1)) },
  { key := { q := 12, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 2)) },
  { key := { q := 12, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 3)) },
  { key := { q := 12, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 4)) },
  { key := { q := 12, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 5)) },
  { key := { q := 12, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 6)) },
  { key := { q := 12, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 7)) },
  { key := { q := 12, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 8)) },
  { key := { q := 12, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 9)) },
  { key := { q := 12, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 10)) },
  { key := { q := 12, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 11)) },
  { key := { q := 12, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 12)) },
  { key := { q := 12, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 13)) },
  { key := { q := 12, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 14)) },
  { key := { q := 12, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 15)) },
  { key := { q := 12, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 16)) },
  { key := { q := 12, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 17)) },
  { key := { q := 12, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 18)) },
  { key := { q := 12, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 19)) },
  { key := { q := 12, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 20)) },
  { key := { q := 12, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 21)) },
  { key := { q := 12, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 22)) },
  { key := { q := 12, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 23)) },
  { key := { q := 12, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 24)) },
  { key := { q := 12, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 25)) },
  { key := { q := 12, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 26)) },
  { key := { q := 12, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 27)) },
  { key := { q := 12, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 28)) },
  { key := { q := 12, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 29)) },
  { key := { q := 12, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 30)) },
  { key := { q := 12, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 31)) },
  { key := { q := 12, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 32)) },
  { key := { q := 12, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 33)) },
  { key := { q := 12, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 34)) },
  { key := { q := 12, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 35)) },
  { key := { q := 12, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 36)) },
  { key := { q := 12, n := 0, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 37))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 37)) },
  { key := { q := 12, n := 0, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 38))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 38)) },
  { key := { q := 12, n := 0, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 39))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 39)) },
  { key := { q := 12, n := 0, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 40))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 40)) },
  { key := { q := 12, n := 0, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 41))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 41)) },
  { key := { q := 12, n := 0, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 42))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 42)) },
  { key := { q := 12, n := 0, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 43))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 43)) },
  { key := { q := 12, n := 0, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 44))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 44)) },
  { key := { q := 12, n := 0, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 45))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 45)) },
  { key := { q := 12, n := 0, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 46))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 46)) },
  { key := { q := 12, n := 0, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 47))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 47)) },
  { key := { q := 12, n := 0, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 0 48))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 0 48)) },
  { key := { q := 12, n := 1, r := 0 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 1 0)) },
  { key := { q := 12, n := 1, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 1))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 1)) },
  { key := { q := 12, n := 1, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 2)) },
  { key := { q := 12, n := 1, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 3)) },
  { key := { q := 12, n := 1, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 4)) },
  { key := { q := 12, n := 1, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 5)) },
  { key := { q := 12, n := 1, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 6)) },
  { key := { q := 12, n := 1, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 7)) },
  { key := { q := 12, n := 1, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 8)) },
  { key := { q := 12, n := 1, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 9)) },
  { key := { q := 12, n := 1, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 10)) },
  { key := { q := 12, n := 1, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 11)) },
  { key := { q := 12, n := 1, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 12)) },
  { key := { q := 12, n := 1, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 13)) },
  { key := { q := 12, n := 1, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 14)) },
  { key := { q := 12, n := 1, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 15)) },
  { key := { q := 12, n := 1, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 16)) },
  { key := { q := 12, n := 1, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 17)) },
  { key := { q := 12, n := 1, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 18)) },
  { key := { q := 12, n := 1, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 19)) },
  { key := { q := 12, n := 1, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 20)) },
  { key := { q := 12, n := 1, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 21)) },
  { key := { q := 12, n := 1, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 22)) },
  { key := { q := 12, n := 1, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 23)) },
  { key := { q := 12, n := 1, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 24)) },
  { key := { q := 12, n := 1, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 25)) },
  { key := { q := 12, n := 1, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 26)) },
  { key := { q := 12, n := 1, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 27)) },
  { key := { q := 12, n := 1, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 28)) },
  { key := { q := 12, n := 1, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 29)) },
  { key := { q := 12, n := 1, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 30)) },
  { key := { q := 12, n := 1, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 31)) },
  { key := { q := 12, n := 1, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 32)) },
  { key := { q := 12, n := 1, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 33)) },
  { key := { q := 12, n := 1, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 34)) },
  { key := { q := 12, n := 1, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 35)) },
  { key := { q := 12, n := 1, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 36)) },
  { key := { q := 12, n := 1, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 37)) },
  { key := { q := 12, n := 1, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 38)) },
  { key := { q := 12, n := 1, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 39)) },
  { key := { q := 12, n := 1, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 40)) },
  { key := { q := 12, n := 1, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 41)) },
  { key := { q := 12, n := 1, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 42)) },
  { key := { q := 12, n := 1, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 43)) },
  { key := { q := 12, n := 1, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 44)) },
  { key := { q := 12, n := 1, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 45)) },
  { key := { q := 12, n := 1, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 46)) },
  { key := { q := 12, n := 1, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 47)) },
  { key := { q := 12, n := 1, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 1 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 1 48)) },
  { key := { q := 12, n := 2, r := 0 }
    lowerValue := 144
    upperValue := 144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 2 0)) },
  { key := { q := 12, n := 2, r := 1 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 2 1))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 2 1)) },
  { key := { q := 12, n := 2, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 2)) },
  { key := { q := 12, n := 2, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 3)) },
  { key := { q := 12, n := 2, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 4)) },
  { key := { q := 12, n := 2, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 5)) },
  { key := { q := 12, n := 2, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 6)) },
  { key := { q := 12, n := 2, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 7)) },
  { key := { q := 12, n := 2, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 8)) },
  { key := { q := 12, n := 2, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 9)) },
  { key := { q := 12, n := 2, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 10)) },
  { key := { q := 12, n := 2, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 11)) },
  { key := { q := 12, n := 2, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 12)) },
  { key := { q := 12, n := 2, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 13)) },
  { key := { q := 12, n := 2, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 14)) },
  { key := { q := 12, n := 2, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 15)) },
  { key := { q := 12, n := 2, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 16)) },
  { key := { q := 12, n := 2, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 17)) },
  { key := { q := 12, n := 2, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 18)) },
  { key := { q := 12, n := 2, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 19)) },
  { key := { q := 12, n := 2, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 20)) },
  { key := { q := 12, n := 2, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 21)) },
  { key := { q := 12, n := 2, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 22)) },
  { key := { q := 12, n := 2, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 23)) },
  { key := { q := 12, n := 2, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 24)) },
  { key := { q := 12, n := 2, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 25)) },
  { key := { q := 12, n := 2, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 26)) },
  { key := { q := 12, n := 2, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 27)) },
  { key := { q := 12, n := 2, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 28)) },
  { key := { q := 12, n := 2, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 29)) },
  { key := { q := 12, n := 2, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 30)) },
  { key := { q := 12, n := 2, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 31)) },
  { key := { q := 12, n := 2, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 32)) },
  { key := { q := 12, n := 2, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 33)) },
  { key := { q := 12, n := 2, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 34)) },
  { key := { q := 12, n := 2, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 35)) },
  { key := { q := 12, n := 2, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 36)) },
  { key := { q := 12, n := 2, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 37)) },
  { key := { q := 12, n := 2, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 38)) },
  { key := { q := 12, n := 2, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 39)) },
  { key := { q := 12, n := 2, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 40)) },
  { key := { q := 12, n := 2, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 41)) },
  { key := { q := 12, n := 2, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 42)) },
  { key := { q := 12, n := 2, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 43)) },
  { key := { q := 12, n := 2, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 44)) },
  { key := { q := 12, n := 2, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 45)) },
  { key := { q := 12, n := 2, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 46)) },
  { key := { q := 12, n := 2, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 47)) },
  { key := { q := 12, n := 2, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 2 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 2 48)) },
  { key := { q := 12, n := 3, r := 0 }
    lowerValue := 1728
    upperValue := 1728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 3 0)) },
  { key := { q := 12, n := 3, r := 1 }
    lowerValue := 72
    upperValue := 72
    lowerTrace := (.primitive "lean_qary_three_one_half_square_lower" (primitiveLower_valid 12 3 1))
    upperTrace := (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1)) },
  { key := { q := 12, n := 3, r := 2 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 3 2))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 3 2)) },
  { key := { q := 12, n := 3, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 3)) },
  { key := { q := 12, n := 3, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 4)) },
  { key := { q := 12, n := 3, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 5)) },
  { key := { q := 12, n := 3, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 6)) },
  { key := { q := 12, n := 3, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 7)) },
  { key := { q := 12, n := 3, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 8)) },
  { key := { q := 12, n := 3, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 9)) },
  { key := { q := 12, n := 3, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 10)) },
  { key := { q := 12, n := 3, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 11)) },
  { key := { q := 12, n := 3, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 12)) },
  { key := { q := 12, n := 3, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 13)) },
  { key := { q := 12, n := 3, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 14)) },
  { key := { q := 12, n := 3, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 15)) },
  { key := { q := 12, n := 3, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 16)) },
  { key := { q := 12, n := 3, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 17)) },
  { key := { q := 12, n := 3, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 18)) },
  { key := { q := 12, n := 3, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 19)) },
  { key := { q := 12, n := 3, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 20)) },
  { key := { q := 12, n := 3, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 21)) },
  { key := { q := 12, n := 3, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 22)) },
  { key := { q := 12, n := 3, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 23)) },
  { key := { q := 12, n := 3, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 24)) },
  { key := { q := 12, n := 3, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 25)) },
  { key := { q := 12, n := 3, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 26)) },
  { key := { q := 12, n := 3, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 27)) },
  { key := { q := 12, n := 3, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 28)) },
  { key := { q := 12, n := 3, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 29)) },
  { key := { q := 12, n := 3, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 30)) },
  { key := { q := 12, n := 3, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 31)) },
  { key := { q := 12, n := 3, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 32)) },
  { key := { q := 12, n := 3, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 33)) },
  { key := { q := 12, n := 3, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 34)) },
  { key := { q := 12, n := 3, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 35)) },
  { key := { q := 12, n := 3, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 36)) },
  { key := { q := 12, n := 3, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 37)) },
  { key := { q := 12, n := 3, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 38)) },
  { key := { q := 12, n := 3, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 39)) },
  { key := { q := 12, n := 3, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 40)) }]

end CoveringCodes.Database
