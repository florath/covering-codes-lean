import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 124. Do not edit manually.

def precomputedTable_chunk_124 : Array AnyBoundEntry := #[
  { key := { q := 12, n := 44, r := 32 }
    lowerValue := 5353
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 32))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 32))) },
  { key := { q := 12, n := 44, r := 33 }
    lowerValue := 1297
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 33))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 37 33))) },
  { key := { q := 12, n := 44, r := 34 }
    lowerValue := 351
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 34))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 38 34))) },
  { key := { q := 12, n := 44, r := 35 }
    lowerValue := 107
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 35))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 39 35))) },
  { key := { q := 12, n := 44, r := 36 }
    lowerValue := 37
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 36))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 40 36))) },
  { key := { q := 12, n := 44, r := 37 }
    lowerValue := 15
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 37))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 41 37))) },
  { key := { q := 12, n := 44, r := 38 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 40 39)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 42 38))) },
  { key := { q := 12, n := 44, r := 39 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 41 40))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 43 39))) },
  { key := { q := 12, n := 44, r := 40 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 42 41)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 44 40)) },
  { key := { q := 12, n := 44, r := 41 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 44 41)) },
  { key := { q := 12, n := 44, r := 42 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 44 42)) },
  { key := { q := 12, n := 44, r := 43 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 44 43)) },
  { key := { q := 12, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 44 44)) },
  { key := { q := 12, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 44 45)) },
  { key := { q := 12, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 44 46)) },
  { key := { q := 12, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 44 47)) },
  { key := { q := 12, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 44 48)) },
  { key := { q := 12, n := 45, r := 0 }
    lowerValue := 3657261988008837196714082302655030834027437228032
    upperValue := 3657261988008837196714082302655030834027437228032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 45 0)) },
  { key := { q := 12, n := 45, r := 1 }
    lowerValue := 7373512072598462090149359481159336358926284734
    upperValue := 135454147704031007285706751950186327186201378816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 1))
    upperTrace := (.lengthenFreeN 31 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 12, n := 45, r := 2 }
    lowerValue := 30404718653948399620189234845742903031337290
    upperValue := 11287845642002583940475562662515527265516781568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))))) },
  { key := { q := 12, n := 45, r := 3 }
    lowerValue := 192414801020879545531334181503608470507531
    upperValue := 940653803500215328372963555209627272126398464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))))) },
  { key := { q := 12, n := 45, r := 4 }
    lowerValue := 1662057156767294014416919102537845700900
    upperValue := 78387816958351277364413629600802272677199872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 4))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))))) },
  { key := { q := 12, n := 45, r := 5 }
    lowerValue := 18381345939484499827131841368201631161
    upperValue := 2245484339952770966168098764606315102732288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 5))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 45, r := 6 }
    lowerValue := 250010448172153825792777353925385306
    upperValue := 187123694996064247180674897050526258561024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 6))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 45, r := 7 }
    lowerValue := 4068376061806596862570433747559974
    upperValue := 15593641249672020598389574754210521546752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 7))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 45, r := 8 }
    lowerValue := 77641142464663403477048577058190
    upperValue := 1299470104139335049865797896184210128896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 8))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 45, r := 9 }
    lowerValue := 1711695642988195791482532372355
    upperValue := 108289175344944587488816491348684177408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 9))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 45, r := 10 }
    lowerValue := 43086490083634847206804441345
    upperValue := 9024097945412048957401374279057014784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 10))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 45, r := 11 }
    lowerValue := 1226871687063219368543330204
    upperValue := 410186270246002225336426103593500672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 11))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 45, r := 12 }
    lowerValue := 39223234391822538831968759
    upperValue := 34182189187166852111368841966125056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 12))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 45, r := 13 }
    lowerValue := 1399311905200083089701795
    upperValue := 2848515765597237675947403497177088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 13))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 45, r := 14 }
    lowerValue := 55427357109828613544598
    upperValue := 237376313799769806328950291431424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 14))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 45, r := 15 }
    lowerValue := 2427526236401566846479
    upperValue := 19781359483314150527412524285952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 15))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 45, r := 16 }
    lowerValue := 117149010586190415180
    upperValue := 1648446623609512543951043690496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 16))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 45, r := 17 }
    lowerValue := 6211787175254404756
    upperValue := 137370551967459378662586974208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 17))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 45, r := 18 }
    lowerValue := 361070642446660298
    upperValue := 11447545997288281555215581184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 18))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 45, r := 19 }
    lowerValue := 22964536097216582
    upperValue := 953962166440690129601298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 45, r := 20 }
    lowerValue := 1595811972769693
    upperValue := 79496847203390844133441536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 20))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 45, r := 21 }
    lowerValue := 121030121663803
    upperValue := 6624737266949237011120128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 21))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 45, r := 22 }
    lowerValue := 10010852290940
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 45, r := 23 }
    lowerValue := 902679691304
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 45, r := 24 }
    lowerValue := 88723139411
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 24))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 45, r := 25 }
    lowerValue := 9507599199
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 25))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 45, r := 26 }
    lowerValue := 1111376318
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 26))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 45, r := 27 }
    lowerValue := 141831380
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 27))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 45, r := 28 }
    lowerValue := 19784016
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 28))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 45, r := 29 }
    lowerValue := 3021011
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 29))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 45, r := 30 }
    lowerValue := 505962
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 30))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30))) },
  { key := { q := 12, n := 45, r := 31 }
    lowerValue := 93160
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 31))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 31))) },
  { key := { q := 12, n := 45, r := 32 }
    lowerValue := 18911
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 32))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 32))) },
  { key := { q := 12, n := 45, r := 33 }
    lowerValue := 4246
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 33))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 37 33))) },
  { key := { q := 12, n := 45, r := 34 }
    lowerValue := 1059
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 34))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 38 34))) },
  { key := { q := 12, n := 45, r := 35 }
    lowerValue := 295
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 35))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 39 35))) },
  { key := { q := 12, n := 45, r := 36 }
    lowerValue := 92
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 36))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 40 36))) },
  { key := { q := 12, n := 45, r := 37 }
    lowerValue := 33
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 37))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 41 37))) },
  { key := { q := 12, n := 45, r := 38 }
    lowerValue := 13
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 38))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 42 38))) },
  { key := { q := 12, n := 45, r := 39 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 41 40)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 43 39))) },
  { key := { q := 12, n := 45, r := 40 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 42 41))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 44 40))) },
  { key := { q := 12, n := 45, r := 41 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 43 42)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 45 41)) },
  { key := { q := 12, n := 45, r := 42 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 45 42)) },
  { key := { q := 12, n := 45, r := 43 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 45 43)) },
  { key := { q := 12, n := 45, r := 44 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 45 44)) },
  { key := { q := 12, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 45 45)) },
  { key := { q := 12, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 45 46)) },
  { key := { q := 12, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 45 47)) },
  { key := { q := 12, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 45 48)) },
  { key := { q := 12, n := 46, r := 0 }
    lowerValue := 43887143856106046360568987631860370008329246736384
    upperValue := 43887143856106046360568987631860370008329246736384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 46 0)) },
  { key := { q := 12, n := 46, r := 1 }
    lowerValue := 86562413917368927732877687636805463527276620782
    upperValue := 1625449772448372087428481023402235926234416545792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 1))
    upperTrace := (.lengthenFreeN 32 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 12, n := 46, r := 2 }
    lowerValue := 349025336451671250342518709992368262063027841
    upperValue := 135454147704031007285706751950186327186201378816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))))) },
  { key := { q := 12, n := 46, r := 3 }
    lowerValue := 2158703824568349008961539695822838910683719
    upperValue := 11287845642002583940475562662515527265516781568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))))) },
  { key := { q := 12, n := 46, r := 4 }
    lowerValue := 18214046416680305517790416848806168587506
    upperValue := 940653803500215328372963555209627272126398464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 4))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))))) },
  { key := { q := 12, n := 46, r := 5 }
    lowerValue := 196652694104469604812031613481504901114
    upperValue := 26945812079433251594017185175275781232787456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 5))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 46, r := 6 }
    lowerValue := 2609679604119000812763213920786408898
    upperValue := 2245484339952770966168098764606315102732288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 6))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 46, r := 7 }
    lowerValue := 41408370321724854207398309414721903
    upperValue := 187123694996064247180674897050526258561024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 7))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 46, r := 8 }
    lowerValue := 770042731083313726071277258489437
    upperValue := 15593641249672020598389574754210521546752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 8))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 46, r := 9 }
    lowerValue := 16531351299397670264366920560061
    upperValue := 1299470104139335049865797896184210128896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 9))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 46, r := 10 }
    lowerValue := 404919675704106642380428454317
    upperValue := 108289175344944587488816491348684177408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 10))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 46, r := 11 }
    lowerValue := 11210954998022101533842647749
    upperValue := 4922235242952026704037113243122008064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 11))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 46, r := 12 }
    lowerValue := 348219872556022754559428539
    upperValue := 410186270246002225336426103593500672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 12))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 46, r := 13 }
    lowerValue := 12059295843604400972220696
    upperValue := 34182189187166852111368841966125056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 13))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 46, r := 14 }
    lowerValue := 463273261700269405663700
    upperValue := 2848515765597237675947403497177088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 14))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 46, r := 15 }
    lowerValue := 19659241429796574266208
    upperValue := 237376313799769806328950291431424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 15))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 46, r := 16 }
    lowerValue := 918308857968517534475
    upperValue := 19781359483314150527412524285952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 16))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 46, r := 17 }
    lowerValue := 47080651815748960950
    upperValue := 1648446623609512543951043690496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 17))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 46, r := 18 }
    lowerValue := 2642957533658504539
    upperValue := 137370551967459378662586974208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 18))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 46, r := 19 }
    lowerValue := 162139470324098472
    upperValue := 11447545997288281555215581184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 19))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 46, r := 20 }
    lowerValue := 10853445446958024
    upperValue := 953962166440690129601298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 20))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 46, r := 21 }
    lowerValue := 791794442669090
    upperValue := 79496847203390844133441536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 21))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 46, r := 22 }
    lowerValue := 62900314497831
    upperValue := 552061438912436417593344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 22))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 46, r := 23 }
    lowerValue := 5438180946642
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 23))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 46, r := 24 }
    lowerValue := 511575324477
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 24))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 46, r := 25 }
    lowerValue := 52365111959
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 25))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 46, r := 26 }
    lowerValue := 5834434806
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 26))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 46, r := 27 }
    lowerValue := 708037141
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 27))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 46, r := 28 }
    lowerValue := 93674811
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 28))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 46, r := 29 }
    lowerValue := 13528451
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 29))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 46, r := 30 }
    lowerValue := 2136144
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 30))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30))) },
  { key := { q := 12, n := 46, r := 31 }
    lowerValue := 369514
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 31))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 31))) },
  { key := { q := 12, n := 46, r := 32 }
    lowerValue := 70193
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 32))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 32))) },
  { key := { q := 12, n := 46, r := 33 }
    lowerValue := 14684
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 33))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 37 33))) },
  { key := { q := 12, n := 46, r := 34 }
    lowerValue := 3395
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 34))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 38 34))) },
  { key := { q := 12, n := 46, r := 35 }
    lowerValue := 871
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 35))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 39 35))) },
  { key := { q := 12, n := 46, r := 36 }
    lowerValue := 249
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 36))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 40 36))) },
  { key := { q := 12, n := 46, r := 37 }
    lowerValue := 80
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 37))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 41 37))) },
  { key := { q := 12, n := 46, r := 38 }
    lowerValue := 29
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 38))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 42 38))) },
  { key := { q := 12, n := 46, r := 39 }
    lowerValue := 12
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 39))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 43 39))) },
  { key := { q := 12, n := 46, r := 40 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 42 41)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 44 40))) },
  { key := { q := 12, n := 46, r := 41 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 43 42))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 45 41))) },
  { key := { q := 12, n := 46, r := 42 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 44 43)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 46 42)) },
  { key := { q := 12, n := 46, r := 43 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 46 43)) },
  { key := { q := 12, n := 46, r := 44 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 46 44)) },
  { key := { q := 12, n := 46, r := 45 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 46 45)) },
  { key := { q := 12, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 46 46)) },
  { key := { q := 12, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 46 47)) },
  { key := { q := 12, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 46 48)) },
  { key := { q := 12, n := 47, r := 0 }
    lowerValue := 526645726273272556326827851582324440099950960836608
    upperValue := 526645726273272556326827851582324440099950960836608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 47 0)) },
  { key := { q := 12, n := 47, r := 1 }
    lowerValue := 1016690591261143931132872300351977683590638920534
    upperValue := 19505397269380465049141772280826831114812998549504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 1))
    upperTrace := (.lengthenFreeN 33 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 12, n := 47, r := 2 }
    lowerValue := 4010430526224480511782970107770577297268110181
    upperValue := 1625449772448372087428481023402235926234416545792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))))) },
  { key := { q := 12, n := 47, r := 3 }
    lowerValue := 24254317099608361160596238336617211687445044
    upperValue := 135454147704031007285706751950186327186201378816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))))) },
  { key := { q := 12, n := 47, r := 4 }
    lowerValue := 200005558529891622941106448737552083693921
    upperValue := 11287845642002583940475562662515527265516781568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))))) },
  { key := { q := 12, n := 47, r := 5 }
    lowerValue := 2109320251504476664820262803342712421899
    upperValue := 323349744953199019128206222103309374793449472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 5))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 47, r := 6 }
    lowerValue := 27327072182736847689884490417139613266
    upperValue := 26945812079433251594017185175275781232787456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 6))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 47, r := 7 }
    lowerValue := 423059811974955930997955467685450717
    upperValue := 2245484339952770966168098764606315102732288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 7))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 47, r := 8 }
    lowerValue := 7671280488427726918173817878412912
    upperValue := 187123694996064247180674897050526258561024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 8))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 47, r := 9 }
    lowerValue := 160479203194763583081182549705049
    upperValue := 15593641249672020598389574754210521546752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 9))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 47, r := 10 }
    lowerValue := 3827717061659745106991801597358
    upperValue := 1299470104139335049865797896184210128896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 10))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 47, r := 11 }
    lowerValue := 103124368682485354267544713796
    upperValue := 59066822915424320448445358917464096768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 11))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 47, r := 12 }
    lowerValue := 3114511287701669556594456720
    upperValue := 4922235242952026704037113243122008064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 12))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 47, r := 13 }
    lowerValue := 104791762152860028803189038
    upperValue := 410186270246002225336426103593500672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 13))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 47, r := 14 }
    lowerValue := 3907887655751730619793681
    upperValue := 34182189187166852111368841966125056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 14))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 47, r := 15 }
    lowerValue := 160834736142540528652329
    upperValue := 2848515765597237675947403497177088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 15))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 47, r := 16 }
    lowerValue := 7279382257752142632594
    upperValue := 237376313799769806328950291431424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 16))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 47, r := 17 }
    lowerValue := 361242438443121946610
    upperValue := 19781359483314150527412524285952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 17))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 47, r := 18 }
    lowerValue := 19607662726500447063
    upperValue := 1648446623609512543951043690496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 18))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 47, r := 19 }
    lowerValue := 1161717485376949614
    upperValue := 137370551967459378662586974208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 19))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 47, r := 20 }
    lowerValue := 75009626003628688
    upperValue := 11447545997288281555215581184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 20))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 47, r := 21 }
    lowerValue := 5271349070638976
    upperValue := 953962166440690129601298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 21))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 47, r := 22 }
    lowerValue := 402810728972604
    upperValue := 6624737266949237011120128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 22))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 47, r := 23 }
    lowerValue := 33448087543939
    upperValue := 552061438912436417593344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 23))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 47, r := 24 }
    lowerValue := 3016984454277
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 24))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 47, r := 25 }
    lowerValue := 295574554545
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 25))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 47, r := 26 }
    lowerValue := 31458104154
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 26))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 47, r := 27 }
    lowerValue := 3638884861
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 27))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 47, r := 28 }
    lowerValue := 457820666
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 28))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 47, r := 29 }
    lowerValue := 62713682
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 29))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 47, r := 30 }
    lowerValue := 9365967
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 30))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30))) },
  { key := { q := 12, n := 47, r := 31 }
    lowerValue := 1527549
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 31))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 31))) },
  { key := { q := 12, n := 47, r := 32 }
    lowerValue := 272632
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 32))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 32))) },
  { key := { q := 12, n := 47, r := 33 }
    lowerValue := 53378
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 33))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 37 33))) },
  { key := { q := 12, n := 47, r := 34 }
    lowerValue := 11498
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 34))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 38 34))) },
  { key := { q := 12, n := 47, r := 35 }
    lowerValue := 2734
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 35))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 39 35))) },
  { key := { q := 12, n := 47, r := 36 }
    lowerValue := 721
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 36))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 40 36))) },
  { key := { q := 12, n := 47, r := 37 }
    lowerValue := 212
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 37))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 41 37))) },
  { key := { q := 12, n := 47, r := 38 }
    lowerValue := 70
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 38))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 42 38))) },
  { key := { q := 12, n := 47, r := 39 }
    lowerValue := 26
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 39))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 43 39))) },
  { key := { q := 12, n := 47, r := 40 }
    lowerValue := 12
    upperValue := 20736
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 42 41))))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 44 40))) },
  { key := { q := 12, n := 47, r := 41 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 43 42)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 45 41))) },
  { key := { q := 12, n := 47, r := 42 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 44 43))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 46 42))) },
  { key := { q := 12, n := 47, r := 43 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 45 44)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 47 43)) },
  { key := { q := 12, n := 47, r := 44 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 47 44)) },
  { key := { q := 12, n := 47, r := 45 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 47 45)) },
  { key := { q := 12, n := 47, r := 46 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 47 46)) },
  { key := { q := 12, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 47 47)) },
  { key := { q := 12, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 47 48)) },
  { key := { q := 12, n := 48, r := 0 }
    lowerValue := 6319748715279270675921934218987893281199411530039296
    upperValue := 6319748715279270675921934218987893281199411530039296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 48 0)) },
  { key := { q := 12, n := 48, r := 1 }
    lowerValue := 11946594924913555152971520262737038338751250529375
    upperValue := 234064767232565580589701267369921973377755982594048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 1))
    upperTrace := (.lengthenFreeN 34 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 12, n := 48, r := 2 }
    lowerValue := 46123829271398955428318633592823469213305002519
    upperValue := 19505397269380465049141772280826831114812998549504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 2))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))))) },
  { key := { q := 12, n := 48, r := 3 }
    lowerValue := 272897082026031818729798140062823806933502896
    upperValue := 1625449772448372087428481023402235926234416545792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))))) },
  { key := { q := 12, n := 48, r := 4 }
    lowerValue := 2200466717589953067210658646647917645754225
    upperValue := 135454147704031007285706751950186327186201378816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 12 4 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 4) (by decide : 12 ≤ 4 * 3) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))))) },
  { key := { q := 12, n := 48, r := 5 }
    lowerValue := 22680672092348188022501363583405218677007
    upperValue := 3880196939438388229538474665239712497521393664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 5))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 48, r := 6 }
    lowerValue := 287021611593750921992627198424900014434
    upperValue := 323349744953199019128206222103309374793449472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 6))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 48, r := 7 }
    lowerValue := 4337982020326773583882088708982487694
    upperValue := 26945812079433251594017185175275781232787456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 7))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 48, r := 8 }
    lowerValue := 76747254181312117409413121424582601
    upperValue := 2245484339952770966168098764606315102732288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 8))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 48, r := 9 }
    lowerValue := 1565505302778965668582602813517986
    upperValue := 187123694996064247180674897050526258561024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 9))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 48, r := 10 }
    lowerValue := 36386015197719348843369306049854
    upperValue := 15593641249672020598389574754210521546752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 10))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 48, r := 11 }
    lowerValue := 954592828196052842695794761100
    upperValue := 708801874985091845381344307009569161216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 11))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 48, r := 12 }
    lowerValue := 28054098907076257350998538986
    upperValue := 59066822915424320448445358917464096768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 12))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 48, r := 13 }
    lowerValue := 917810869089486855312482027
    upperValue := 4922235242952026704037113243122008064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 13))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 48, r := 14 }
    lowerValue := 33253635191384131742280469
    upperValue := 410186270246002225336426103593500672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 14))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 48, r := 15 }
    lowerValue := 1328553159918439184250552
    upperValue := 34182189187166852111368841966125056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 15))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 48, r := 16 }
    lowerValue := 58318253186053857730865
    upperValue := 2848515765597237675947403497177088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 16))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 48, r := 17 }
    lowerValue := 2804169904504053009999
    upperValue := 237376313799769806328950291431424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 17))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 48, r := 18 }
    lowerValue := 147327961345315453484
    upperValue := 19781359483314150527412524285952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 18))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 48, r := 19 }
    lowerValue := 8440007746638474925
    upperValue := 1648446623609512543951043690496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 19))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 48, r := 20 }
    lowerValue := 526307443451455347
    upperValue := 137370551967459378662586974208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 20))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 48, r := 21 }
    lowerValue := 35676845950145882
    upperValue := 11447545997288281555215581184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 21))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 48, r := 22 }
    lowerValue := 2626218316516915
    upperValue := 79496847203390844133441536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 22))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 48, r := 23 }
    lowerValue := 209771189940228
    upperValue := 6624737266949237011120128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 23))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 48, r := 24 }
    lowerValue := 18172879694377
    upperValue := 552061438912436417593344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 24))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 48, r := 25 }
    lowerValue := 1707148390933
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 25))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 48, r := 26 }
    lowerValue := 173903053228
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 26))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 48, r := 27 }
    lowerValue := 19215960434
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 27))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 48, r := 28 }
    lowerValue := 2304516731
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 28))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 48, r := 29 }
    lowerValue := 300207451
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 29))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 48, r := 30 }
    lowerValue := 42527574
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 30))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30))) },
  { key := { q := 12, n := 48, r := 31 }
    lowerValue := 6560572
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 31))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 31))) },
  { key := { q := 12, n := 48, r := 32 }
    lowerValue := 1104055
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 32))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 32))) },
  { key := { q := 12, n := 48, r := 33 }
    lowerValue := 203108
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 33))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 37 33))) },
  { key := { q := 12, n := 48, r := 34 }
    lowerValue := 40948
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 34))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 38 34))) },
  { key := { q := 12, n := 48, r := 35 }
    lowerValue := 9074
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 35))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 39 35))) },
  { key := { q := 12, n := 48, r := 36 }
    lowerValue := 2218
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 36))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 40 36))) },
  { key := { q := 12, n := 48, r := 37 }
    lowerValue := 600
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 37))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 41 37))) },
  { key := { q := 12, n := 48, r := 38 }
    lowerValue := 181
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 38))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 42 38))) },
  { key := { q := 12, n := 48, r := 39 }
    lowerValue := 61
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 39))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 43 39))) },
  { key := { q := 12, n := 48, r := 40 }
    lowerValue := 23
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 40))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 44 40))) },
  { key := { q := 12, n := 48, r := 41 }
    lowerValue := 12
    upperValue := 20736
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 43 42))))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 45 41))) },
  { key := { q := 12, n := 48, r := 42 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 44 43)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 46 42))) },
  { key := { q := 12, n := 48, r := 43 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 45 44))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 47 43))) },
  { key := { q := 12, n := 48, r := 44 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 46 45)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 48 44)) },
  { key := { q := 12, n := 48, r := 45 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 48 45)) },
  { key := { q := 12, n := 48, r := 46 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 48 46)) },
  { key := { q := 12, n := 48, r := 47 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 48 47)) },
  { key := { q := 12, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 48 48)) },
  { key := { q := 13, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 0)) },
  { key := { q := 13, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 1)) },
  { key := { q := 13, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 2)) },
  { key := { q := 13, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 3)) },
  { key := { q := 13, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 4)) },
  { key := { q := 13, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 5)) },
  { key := { q := 13, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 6)) },
  { key := { q := 13, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 7)) },
  { key := { q := 13, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 8)) },
  { key := { q := 13, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 9)) },
  { key := { q := 13, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 10)) },
  { key := { q := 13, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 11)) },
  { key := { q := 13, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 12)) },
  { key := { q := 13, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 13)) },
  { key := { q := 13, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 14)) },
  { key := { q := 13, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 15)) },
  { key := { q := 13, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 16)) },
  { key := { q := 13, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 17)) },
  { key := { q := 13, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 18)) },
  { key := { q := 13, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 19)) },
  { key := { q := 13, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 20)) },
  { key := { q := 13, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 21)) },
  { key := { q := 13, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 22)) },
  { key := { q := 13, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 23)) },
  { key := { q := 13, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 24)) },
  { key := { q := 13, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 25)) },
  { key := { q := 13, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 26)) },
  { key := { q := 13, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 27)) },
  { key := { q := 13, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 28)) },
  { key := { q := 13, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 29)) },
  { key := { q := 13, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 30)) },
  { key := { q := 13, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 31)) },
  { key := { q := 13, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 32)) },
  { key := { q := 13, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 33)) },
  { key := { q := 13, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 34)) },
  { key := { q := 13, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 35)) },
  { key := { q := 13, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 0 36)) }]

end CoveringCodes.Database
