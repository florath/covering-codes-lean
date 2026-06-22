import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 182. Do not edit manually.

def precomputedTable_chunk_182 : Array AnyBoundEntry := #[
  { key := { q := 18, n := 46, r := 28 }
    lowerValue := 63214579740
    upperValue := 2185911559738696531968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 28))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 46, r := 29 }
    lowerValue := 5938914147
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 29))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 46, r := 30 }
    lowerValue := 610478341
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 30))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 46, r := 31 }
    lowerValue := 68807469
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 31))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31))) },
  { key := { q := 18, n := 46, r := 32 }
    lowerValue := 8525709
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 32))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 32))) },
  { key := { q := 18, n := 46, r := 33 }
    lowerValue := 1164955
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 33))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 35 33))) },
  { key := { q := 18, n := 46, r := 34 }
    lowerValue := 176193
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 34))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 37 34))) },
  { key := { q := 18, n := 46, r := 35 }
    lowerValue := 29627
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 35))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 38 35))) },
  { key := { q := 18, n := 46, r := 36 }
    lowerValue := 5568
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 36))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 39 36))) },
  { key := { q := 18, n := 46, r := 37 }
    lowerValue := 1177
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 37))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 40 37))) },
  { key := { q := 18, n := 46, r := 38 }
    lowerValue := 282
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 38))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 41 38))) },
  { key := { q := 18, n := 46, r := 39 }
    lowerValue := 78
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 39))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 42 39))) },
  { key := { q := 18, n := 46, r := 40 }
    lowerValue := 25
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 40))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 43 40))) },
  { key := { q := 18, n := 46, r := 41 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 43 42))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 44 41))) },
  { key := { q := 18, n := 46, r := 42 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 44 43)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 45 42))) },
  { key := { q := 18, n := 46, r := 43 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 46 43)) },
  { key := { q := 18, n := 46, r := 44 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 46 44)) },
  { key := { q := 18, n := 46, r := 45 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 46 45)) },
  { key := { q := 18, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 46 46)) },
  { key := { q := 18, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 46 47)) },
  { key := { q := 18, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 46 48)) },
  { key := { q := 18, n := 47, r := 0 }
    lowerValue := 99496485353387187385832781957996196154754815554211159212032
    upperValue := 99496485353387187385832781957996196154754815554211159212032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 47 0)) },
  { key := { q := 18, n := 47, r := 1 }
    lowerValue := 124370606691733984232290977447495245193443519442763949016
    upperValue := 2763791259816310760717577276611005448743189320950309978112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 1))
    upperTrace := (.lengthenFreeN 44 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 47, r := 2 }
    lowerValue := 317668027909118790921821473706043556075192014131813452
    upperValue := 136483519003274605467534680326469404876206880046928887808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 2))
    upperTrace := (.lengthenFreeN 38 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 18, n := 47, r := 3 }
    lowerValue := 1244055895435136202623087386648077891437507421514570
    upperValue := 7582417722404144748196371129248300270900382224829382656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 3))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 47, r := 4 }
    lowerValue := 6643196385778971055985173831151009742457154731885
    upperValue := 421245429022452486010909507180461126161132345823854592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 4))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 47, r := 5 }
    lowerValue := 45371043418833746075671364439485101824600066967
    upperValue := 23402523834580693667272750398914507008951796990214144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 5))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 47, r := 6 }
    lowerValue := 380670226696520036981396236804921955980885885
    upperValue := 1300140213032260759292930577717472611608433166123008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 6))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 47, r := 7 }
    lowerValue := 3816778235358411463436349031745924377939021
    upperValue := 72230011835125597738496143206526256200468509229056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 7))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 47, r := 8 }
    lowerValue := 44825356270584838937093112969333005923625
    upperValue := 4012778435284755429916452400362569788914917179392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 8))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 47, r := 9 }
    lowerValue := 607377274545818379983262165882262135698
    upperValue := 222932135293597523884247355575698321606384287744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 9))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 47, r := 10 }
    lowerValue := 9384013689164324218754902124131357191
    upperValue := 12385118627422084660235964198649906755910238208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 10))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 47, r := 11 }
    lowerValue := 163774571812860817895070190001898372
    upperValue := 688062145967893592235331344369439264217235456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 11))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 47, r := 12 }
    lowerValue := 3204359644303113578971743144913594
    upperValue := 38225674775994088457518408020524403567624192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 12))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 47, r := 13 }
    lowerValue := 69851742913958121517431019316743
    upperValue := 2123648598666338247639911556695800198201344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 13))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 47, r := 14 }
    lowerValue := 1687822009074710434708881907114
    upperValue := 117980477703685458202217308705322233233408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 14))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 47, r := 15 }
    lowerValue := 45013019997598692485326530993
    upperValue := 6554470983538081011234294928073457401856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 15))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 47, r := 16 }
    lowerValue := 1320291491051983612742416775
    upperValue := 364137276863226722846349718226303188992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 16))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 47, r := 17 }
    lowerValue := 42465761849005164480438883
    upperValue := 2528731089327963353099650821015994368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 17))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 47, r := 18 }
    lowerValue := 1494114733774624900828011
    upperValue := 140485060518220186283313934500888576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 18))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 47, r := 19 }
    lowerValue := 57389939215946560398455
    upperValue := 7804725584345565904628551916716032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 19))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 47, r := 20 }
    lowerValue := 2402677585892748230633
    upperValue := 433595865796975883590475106484224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 20))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 47, r := 21 }
    lowerValue := 109500926641461852119
    upperValue := 24088659210943104643915283693568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 21))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 47, r := 22 }
    lowerValue := 5427481204745595010
    upperValue := 1338258845052394702439737982976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 22))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 47, r := 23 }
    lowerValue := 292391537758596398
    upperValue := 74347713614021927913318776832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 23))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 47, r := 24 }
    lowerValue := 17114765117287035
    upperValue := 4130428534112329328517709824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 24))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 47, r := 25 }
    lowerValue := 1088411692317021
    upperValue := 229468251895129407139872768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 25))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 47, r := 26 }
    lowerValue := 75219397674493
    upperValue := 12748236216396078174437376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 26))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 47, r := 27 }
    lowerValue := 5652005693434
    upperValue := 708235345355337676357632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 27))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 47, r := 28 }
    lowerValue := 462126127635
    upperValue := 39346408075296537575424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 28))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 47, r := 29 }
    lowerValue := 41161085451
    upperValue := 2185911559738696531968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 29))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 47, r := 30 }
    lowerValue := 3999523714
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 30))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 47, r := 31 }
    lowerValue := 424725421
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 31))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31))) },
  { key := { q := 18, n := 47, r := 32 }
    lowerValue := 49401894
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 32))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 32))) },
  { key := { q := 18, n := 47, r := 33 }
    lowerValue := 6310538
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 33))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 35 33))) },
  { key := { q := 18, n := 47, r := 34 }
    lowerValue := 888080
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 34))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 37 34))) },
  { key := { q := 18, n := 47, r := 35 }
    lowerValue := 138208
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 35))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 38 35))) },
  { key := { q := 18, n := 47, r := 36 }
    lowerValue := 23892
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 36))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 39 36))) },
  { key := { q := 18, n := 47, r := 37 }
    lowerValue := 4612
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 37))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 40 37))) },
  { key := { q := 18, n := 47, r := 38 }
    lowerValue := 1001
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 38))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 41 38))) },
  { key := { q := 18, n := 47, r := 39 }
    lowerValue := 246
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 39))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 42 39))) },
  { key := { q := 18, n := 47, r := 40 }
    lowerValue := 69
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 40))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 43 40))) },
  { key := { q := 18, n := 47, r := 41 }
    lowerValue := 23
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 41))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 44 41))) },
  { key := { q := 18, n := 47, r := 42 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 44 43))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 45 42))) },
  { key := { q := 18, n := 47, r := 43 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 45 44)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 46 43))) },
  { key := { q := 18, n := 47, r := 44 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 47 44)) },
  { key := { q := 18, n := 47, r := 45 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 47 45)) },
  { key := { q := 18, n := 47, r := 46 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 47 46)) },
  { key := { q := 18, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 47 47)) },
  { key := { q := 18, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 47 48)) },
  { key := { q := 18, n := 48, r := 0 }
    lowerValue := 1790936736360969372944990075243931530785586679975800865816576
    upperValue := 1790936736360969372944990075243931530785586679975800865816576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 48 0)) },
  { key := { q := 18, n := 48, r := 1 }
    lowerValue := 2192089028593597763702558231632719131928502668269034107487
    upperValue := 49748242676693593692916390978998098077377407777105579606016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 1))
    upperTrace := (.lengthenFreeN 45 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 48, r := 2 }
    lowerValue := 5480071651518071328956638511313738393941374564273936354
    upperValue := 2456703342058942898415624245876449287771723840844719980544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 2))
    upperTrace := (.lengthenFreeN 39 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 18, n := 48, r := 3 }
    lowerValue := 20995235042936530509985123515180079781494444852318168
    upperValue := 136483519003274605467534680326469404876206880046928887808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 3))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 48, r := 4 }
    lowerValue := 109625798021356132013197844777118917442087146113837
    upperValue := 7582417722404144748196371129248300270900382224829382656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 4))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 48, r := 5 }
    lowerValue := 731722235122207622483277488552158435049926770143
    upperValue := 421245429022452486010909507180461126161132345823854592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 5))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 48, r := 6 }
    lowerValue := 5996733820046592429927275494663560764873656192
    upperValue := 23402523834580693667272750398914507008951796990214144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 6))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 48, r := 7 }
    lowerValue := 58697090691508192886021619432474819461232918
    upperValue := 1300140213032260759292930577717472611608433166123008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 7))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 48, r := 8 }
    lowerValue := 672574855020102579195339695266849116724432
    upperValue := 72230011835125597738496143206526256200468509229056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 8))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 48, r := 9 }
    lowerValue := 8885936670535245394630437194262249560034
    upperValue := 4012778435284755429916452400362569788914917179392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 9))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 48, r := 10 }
    lowerValue := 133775880975461084911331220579839724010
    upperValue := 222932135293597523884247355575698321606384287744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 10))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 48, r := 11 }
    lowerValue := 2273431821638099013559373578498640872
    upperValue := 12385118627422084660235964198649906755910238208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 11))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 48, r := 12 }
    lowerValue := 43282126914478578868679813952666446
    upperValue := 688062145967893592235331344369439264217235456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 12))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 48, r := 13 }
    lowerValue := 917370071668390387223331578967361
    upperValue := 38225674775994088457518408020524403567624192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 13))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 48, r := 14 }
    lowerValue := 21534909493464142572551620604605
    upperValue := 2123648598666338247639911556695800198201344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 14))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 48, r := 15 }
    lowerValue := 557483578829619960469360004570
    upperValue := 117980477703685458202217308705322233233408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 15))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 48, r := 16 }
    lowerValue := 15857954907929528899121306004
    upperValue := 6554470983538081011234294928073457401856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 16))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 48, r := 17 }
    lowerValue := 494175225885257743551147412
    upperValue := 45517159607903340355793714778287898624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 17))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 48, r := 18 }
    lowerValue := 16828482737108969352435148
    upperValue := 2528731089327963353099650821015994368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 18))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 48, r := 19 }
    lowerValue := 624942890744095792038965
    upperValue := 140485060518220186283313934500888576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 19))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 48, r := 20 }
    lowerValue := 25265941820399678909903
    upperValue := 7804725584345565904628551916716032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 20))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 48, r := 21 }
    lowerValue := 1110577598412091581931
    upperValue := 433595865796975883590475106484224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 21))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 48, r := 22 }
    lowerValue := 53019558616377557598
    upperValue := 24088659210943104643915283693568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 22))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 48, r := 23 }
    lowerValue := 2747135511749284863
    upperValue := 1338258845052394702439737982976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 23))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 48, r := 24 }
    lowerValue := 154413261382459799
    upperValue := 74347713614021927913318776832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 24))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 48, r := 25 }
    lowerValue := 9413909009989586
    upperValue := 4130428534112329328517709824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 25))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 48, r := 26 }
    lowerValue := 622545852843106
    upperValue := 229468251895129407139872768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 26))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 48, r := 27 }
    lowerValue := 44672342350208
    upperValue := 12748236216396078174437376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 27))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 48, r := 28 }
    lowerValue := 3480484859631
    upperValue := 708235345355337676357632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 28))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 48, r := 29 }
    lowerValue := 294689278182
    upperValue := 39346408075296537575424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 29))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 48, r := 30 }
    lowerValue := 27147632975
    upperValue := 2185911559738696531968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 30))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 48, r := 31 }
    lowerValue := 2725221198
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 31))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31))) },
  { key := { q := 18, n := 48, r := 32 }
    lowerValue := 298665967
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 32))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 32))) },
  { key := { q := 18, n := 48, r := 33 }
    lowerValue := 35815090
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 33))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 35 33))) },
  { key := { q := 18, n := 48, r := 34 }
    lowerValue := 4712126
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 34))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 37 34))) },
  { key := { q := 18, n := 48, r := 35 }
    lowerValue := 682389
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 35))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 38 35))) },
  { key := { q := 18, n := 48, r := 36 }
    lowerValue := 109185
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 36))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 39 36))) },
  { key := { q := 18, n := 48, r := 37 }
    lowerValue := 19389
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 37))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 40 37))) },
  { key := { q := 18, n := 48, r := 38 }
    lowerValue := 3842
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 38))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 41 38))) },
  { key := { q := 18, n := 48, r := 39 }
    lowerValue := 855
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 39))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 42 39))) },
  { key := { q := 18, n := 48, r := 40 }
    lowerValue := 216
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 40))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 43 40))) },
  { key := { q := 18, n := 48, r := 41 }
    lowerValue := 62
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 41))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 44 41))) },
  { key := { q := 18, n := 48, r := 42 }
    lowerValue := 21
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 42))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 45 42))) },
  { key := { q := 18, n := 48, r := 43 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 45 44))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 46 43))) },
  { key := { q := 18, n := 48, r := 44 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 46 45)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 47 44))) },
  { key := { q := 18, n := 48, r := 45 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 48 45)) },
  { key := { q := 18, n := 48, r := 46 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 48 46)) },
  { key := { q := 18, n := 48, r := 47 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 48 47)) },
  { key := { q := 18, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 48 48)) },
  { key := { q := 19, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 0)) },
  { key := { q := 19, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 1)) },
  { key := { q := 19, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 2)) },
  { key := { q := 19, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 3)) },
  { key := { q := 19, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 4)) },
  { key := { q := 19, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 5)) },
  { key := { q := 19, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 6)) },
  { key := { q := 19, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 7)) },
  { key := { q := 19, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 8)) },
  { key := { q := 19, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 9)) },
  { key := { q := 19, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 10)) },
  { key := { q := 19, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 11)) },
  { key := { q := 19, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 12)) },
  { key := { q := 19, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 13)) },
  { key := { q := 19, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 14)) },
  { key := { q := 19, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 15)) },
  { key := { q := 19, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 16)) },
  { key := { q := 19, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 17)) },
  { key := { q := 19, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 18)) },
  { key := { q := 19, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 19)) },
  { key := { q := 19, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 20)) },
  { key := { q := 19, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 21)) },
  { key := { q := 19, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 22)) },
  { key := { q := 19, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 23)) },
  { key := { q := 19, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 24)) },
  { key := { q := 19, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 25)) },
  { key := { q := 19, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 26)) },
  { key := { q := 19, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 27)) },
  { key := { q := 19, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 28)) },
  { key := { q := 19, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 29)) },
  { key := { q := 19, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 30)) },
  { key := { q := 19, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 31)) },
  { key := { q := 19, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 32)) },
  { key := { q := 19, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 33)) },
  { key := { q := 19, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 34)) },
  { key := { q := 19, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 35)) },
  { key := { q := 19, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 36)) },
  { key := { q := 19, n := 0, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 37))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 37)) },
  { key := { q := 19, n := 0, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 38))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 38)) },
  { key := { q := 19, n := 0, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 39))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 39)) },
  { key := { q := 19, n := 0, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 40))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 40)) },
  { key := { q := 19, n := 0, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 41))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 41)) },
  { key := { q := 19, n := 0, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 42))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 42)) },
  { key := { q := 19, n := 0, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 43))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 43)) },
  { key := { q := 19, n := 0, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 44))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 44)) },
  { key := { q := 19, n := 0, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 45))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 45)) },
  { key := { q := 19, n := 0, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 46))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 46)) },
  { key := { q := 19, n := 0, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 47))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 47)) },
  { key := { q := 19, n := 0, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 0 48))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 0 48)) },
  { key := { q := 19, n := 1, r := 0 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 1 0)) },
  { key := { q := 19, n := 1, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 1))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 1)) },
  { key := { q := 19, n := 1, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 2)) },
  { key := { q := 19, n := 1, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 3)) },
  { key := { q := 19, n := 1, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 4)) },
  { key := { q := 19, n := 1, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 5)) },
  { key := { q := 19, n := 1, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 6)) },
  { key := { q := 19, n := 1, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 7)) },
  { key := { q := 19, n := 1, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 8)) },
  { key := { q := 19, n := 1, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 9)) },
  { key := { q := 19, n := 1, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 10)) },
  { key := { q := 19, n := 1, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 11)) },
  { key := { q := 19, n := 1, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 12)) },
  { key := { q := 19, n := 1, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 13)) },
  { key := { q := 19, n := 1, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 14)) },
  { key := { q := 19, n := 1, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 15)) },
  { key := { q := 19, n := 1, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 16)) },
  { key := { q := 19, n := 1, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 17)) },
  { key := { q := 19, n := 1, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 18)) },
  { key := { q := 19, n := 1, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 19)) },
  { key := { q := 19, n := 1, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 20)) },
  { key := { q := 19, n := 1, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 21)) },
  { key := { q := 19, n := 1, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 22)) },
  { key := { q := 19, n := 1, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 23)) },
  { key := { q := 19, n := 1, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 24)) },
  { key := { q := 19, n := 1, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 25)) },
  { key := { q := 19, n := 1, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 26)) },
  { key := { q := 19, n := 1, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 27)) },
  { key := { q := 19, n := 1, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 28)) },
  { key := { q := 19, n := 1, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 29)) },
  { key := { q := 19, n := 1, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 30)) },
  { key := { q := 19, n := 1, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 31)) },
  { key := { q := 19, n := 1, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 32)) },
  { key := { q := 19, n := 1, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 33)) },
  { key := { q := 19, n := 1, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 34)) },
  { key := { q := 19, n := 1, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 35)) },
  { key := { q := 19, n := 1, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 36)) },
  { key := { q := 19, n := 1, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 37)) },
  { key := { q := 19, n := 1, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 38)) },
  { key := { q := 19, n := 1, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 39)) },
  { key := { q := 19, n := 1, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 40)) },
  { key := { q := 19, n := 1, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 41)) },
  { key := { q := 19, n := 1, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 42)) },
  { key := { q := 19, n := 1, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 43)) },
  { key := { q := 19, n := 1, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 44)) },
  { key := { q := 19, n := 1, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 45)) },
  { key := { q := 19, n := 1, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 46)) },
  { key := { q := 19, n := 1, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 47)) },
  { key := { q := 19, n := 1, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 1 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 1 48)) },
  { key := { q := 19, n := 2, r := 0 }
    lowerValue := 361
    upperValue := 361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 2 0)) },
  { key := { q := 19, n := 2, r := 1 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 2 1))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 2 1)) },
  { key := { q := 19, n := 2, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 2)) },
  { key := { q := 19, n := 2, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 3)) },
  { key := { q := 19, n := 2, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 4)) },
  { key := { q := 19, n := 2, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 5)) },
  { key := { q := 19, n := 2, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 6)) },
  { key := { q := 19, n := 2, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 7)) },
  { key := { q := 19, n := 2, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 8)) },
  { key := { q := 19, n := 2, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 9)) },
  { key := { q := 19, n := 2, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 10)) },
  { key := { q := 19, n := 2, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 11)) },
  { key := { q := 19, n := 2, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 12)) },
  { key := { q := 19, n := 2, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 13)) },
  { key := { q := 19, n := 2, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 14)) },
  { key := { q := 19, n := 2, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 15)) },
  { key := { q := 19, n := 2, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 16)) },
  { key := { q := 19, n := 2, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 17)) },
  { key := { q := 19, n := 2, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 18)) },
  { key := { q := 19, n := 2, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 19)) },
  { key := { q := 19, n := 2, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 20)) },
  { key := { q := 19, n := 2, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 21)) },
  { key := { q := 19, n := 2, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 22)) },
  { key := { q := 19, n := 2, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 23)) },
  { key := { q := 19, n := 2, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 24)) },
  { key := { q := 19, n := 2, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 25)) },
  { key := { q := 19, n := 2, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 26)) },
  { key := { q := 19, n := 2, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 27)) },
  { key := { q := 19, n := 2, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 28)) },
  { key := { q := 19, n := 2, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 29)) },
  { key := { q := 19, n := 2, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 30)) },
  { key := { q := 19, n := 2, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 31)) },
  { key := { q := 19, n := 2, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 2 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 2 32)) }]

end CoveringCodes.Database
