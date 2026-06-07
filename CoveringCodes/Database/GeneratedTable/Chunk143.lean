import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 143. Do not edit manually.

def precomputedTable_chunk_143 : Array AnyBoundEntry := #[
  { key := { q := 14, n := 43, r := 29 }
    lowerValue := 1038035
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 43, r := 30 }
    lowerValue := 168005
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30))) },
  { key := { q := 14, n := 43, r := 31 }
    lowerValue := 30167
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 31))) },
  { key := { q := 14, n := 43, r := 32 }
    lowerValue := 6034
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 32))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 32))) },
  { key := { q := 14, n := 43, r := 33 }
    lowerValue := 1351
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 33))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 36 33))) },
  { key := { q := 14, n := 43, r := 34 }
    lowerValue := 341
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 34))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 37 34))) },
  { key := { q := 14, n := 43, r := 35 }
    lowerValue := 98
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 35))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 38 35))) },
  { key := { q := 14, n := 43, r := 36 }
    lowerValue := 32
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 36))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 39 36))) },
  { key := { q := 14, n := 43, r := 37 }
    lowerValue := 14
    upperValue := 38416
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 39 38)))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 40 37))) },
  { key := { q := 14, n := 43, r := 38 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 40 39))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 41 38))) },
  { key := { q := 14, n := 43, r := 39 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 41 40)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 43 39)) },
  { key := { q := 14, n := 43, r := 40 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 43 40)) },
  { key := { q := 14, n := 43, r := 41 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 43 41)) },
  { key := { q := 14, n := 43, r := 42 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 43 42)) },
  { key := { q := 14, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 43 43)) },
  { key := { q := 14, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 43 44)) },
  { key := { q := 14, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 43 45)) },
  { key := { q := 14, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 43 46)) },
  { key := { q := 14, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 43 47)) },
  { key := { q := 14, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 43 48)) },
  { key := { q := 14, n := 44, r := 0 }
    lowerValue := 268926481522425436988250652599945506664302107426816
    upperValue := 268926481522425436988250652599945506664302107426816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 44 0)) },
  { key := { q := 14, n := 44, r := 1 }
    lowerValue := 469330683285210186715969725305315020356548180501
    upperValue := 9604517197229479892437523307140910952296503836672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 1))
    upperTrace := (.lengthenFreeN 41 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 44, r := 2 }
    lowerValue := 1676107883116701695813886533247399494314646628
    upperValue := 686036942659248563745537379081493639449750274048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 2))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 1 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 44, r := 3 }
    lowerValue := 9191706182921736073219159337351292707678766
    upperValue := 49002638761374897410395527077249545674982162432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 3))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 2 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 44, r := 4 }
    lowerValue := 68841798624144015856195845625769599432992
    upperValue := 3500188482955349815028251934089253262498725888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 4))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 3 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 44, r := 5 }
    lowerValue := 660536184694096578246768264349373911245
    upperValue := 250013463068239272502017995292089518749908992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 5))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 4 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 44, r := 6 }
    lowerValue := 7799530528638248804210177491719405706
    upperValue := 17858104504874233750144142520863537053564928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 6))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 5 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 44, r := 7 }
    lowerValue := 110259213158388530257019795634452715
    upperValue := 1275578893205302410724581608633109789540352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 7))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 6 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 44, r := 8 }
    lowerValue := 1829268367127397216374338770233964
    upperValue := 91112778086093029337470114902364984967168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 8))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 7 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 44, r := 9 }
    lowerValue := 35085606484248507125932815696095
    upperValue := 6508055577578073524105008207311784640512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 9))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 8 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 44, r := 10 }
    lowerValue := 768960761863622777360717007892
    upperValue := 464861112684148108864643443379413188608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 10))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 9 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 44, r := 11 }
    lowerValue := 19080360498679464326822491604
    upperValue := 33204365191724864918903103098529513472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 11))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 10 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 44, r := 12 }
    lowerValue := 532035756616270779017343100
    upperValue := 2371740370837490351350221649894965248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 12))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 11 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 44, r := 13 }
    lowerValue := 16570340745373366557795292
    upperValue := 24201432355484595421941037243826176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 13))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 44, r := 14 }
    lowerValue := 573582967910984434986039
    upperValue := 1728673739677471101567216945987584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 14))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 44, r := 15 }
    lowerValue := 21976351326833251654072
    upperValue := 123476695691247935826229781856256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 15))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 44, r := 16 }
    lowerValue := 928850762935714346951
    upperValue := 8819763977946281130444984418304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 16))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 44, r := 17 }
    lowerValue := 43188748139417575298
    upperValue := 629983141281877223603213172736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 17))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 44, r := 18 }
    lowerValue := 2204260038380543427
    upperValue := 44998795805848373114515226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 18))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 44, r := 19 }
    lowerValue := 123270162581913632
    upperValue := 3214199700417740936751087616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 44, r := 20 }
    lowerValue := 7543500468431042
    upperValue := 229585692886981495482220544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 44, r := 21 }
    lowerValue := 504650763481120
    upperValue := 16398978063355821105872896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 44, r := 22 }
    lowerValue := 36885107546344
    upperValue := 1171355575953987221848064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 44, r := 23 }
    lowerValue := 2944702508014
    upperValue := 83668255425284801560576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 44, r := 24 }
    lowerValue := 256800605085
    upperValue := 5976303958948914397184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 24))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 44, r := 25 }
    lowerValue := 24473422002
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 25))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 44, r := 26 }
    lowerValue := 2550739486
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 44, r := 27 }
    lowerValue := 291067855
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 44, r := 28 }
    lowerValue := 36419018
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 28))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 44, r := 29 }
    lowerValue := 5006060
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 29))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 44, r := 30 }
    lowerValue := 757745
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 30))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30))) },
  { key := { q := 14, n := 44, r := 31 }
    lowerValue := 126665
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 31))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 31))) },
  { key := { q := 14, n := 44, r := 32 }
    lowerValue := 23464
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 32))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 32))) },
  { key := { q := 14, n := 44, r := 33 }
    lowerValue := 4837
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 33))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 36 33))) },
  { key := { q := 14, n := 44, r := 34 }
    lowerValue := 1115
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 34))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 37 34))) },
  { key := { q := 14, n := 44, r := 35 }
    lowerValue := 289
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 35))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 38 35))) },
  { key := { q := 14, n := 44, r := 36 }
    lowerValue := 85
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 36))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 39 36))) },
  { key := { q := 14, n := 44, r := 37 }
    lowerValue := 29
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 37))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 40 37))) },
  { key := { q := 14, n := 44, r := 38 }
    lowerValue := 14
    upperValue := 38416
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 40 39)))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 41 38))) },
  { key := { q := 14, n := 44, r := 39 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 41 40))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 43 39))) },
  { key := { q := 14, n := 44, r := 40 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 42 41)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 44 40)) },
  { key := { q := 14, n := 44, r := 41 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 44 41)) },
  { key := { q := 14, n := 44, r := 42 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 44 42)) },
  { key := { q := 14, n := 44, r := 43 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 44 43)) },
  { key := { q := 14, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 44 44)) },
  { key := { q := 14, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 44 45)) },
  { key := { q := 14, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 44 46)) },
  { key := { q := 14, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 44 47)) },
  { key := { q := 14, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 44 48)) },
  { key := { q := 14, n := 45, r := 0 }
    lowerValue := 3764970741313956117835509136399237093300229503975424
    upperValue := 3764970741313956117835509136399237093300229503975424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 45 0)) },
  { key := { q := 14, n := 45, r := 1 }
    lowerValue := 6424864746269549689139094089418493333276842156955
    upperValue := 134463240761212718494125326299972753332151053713408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 1))
    upperTrace := (.lengthenFreeN 42 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 45, r := 2 }
    lowerValue := 22424421911861843747531264213556231794088182590
    upperValue := 9604517197229479892437523307140910952296503836672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 2))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 1 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 45, r := 3 }
    lowerValue := 120120332517166688622500022377945374823981013
    upperValue := 686036942659248563745537379081493639449750274048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 3))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 2 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 45, r := 4 }
    lowerValue := 878272824655893833849723347870252735298741
    upperValue := 49002638761374897410395527077249545674982162432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 4))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 3 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 45, r := 5 }
    lowerValue := 8221943783485381831403935533940037490745
    upperValue := 3500188482955349815028251934089253262498725888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 5))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 4 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 45, r := 6 }
    lowerValue := 94662504702277910865008972048077499878
    upperValue := 250013463068239272502017995292089518749908992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 6))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 5 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 45, r := 7 }
    lowerValue := 1303986937635347970569728335685264239
    upperValue := 17858104504874233750144142520863537053564928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 7))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 6 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 45, r := 8 }
    lowerValue := 21066233591466704433033715407086291
    upperValue := 1275578893205302410724581608633109789540352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 8))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 7 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 45, r := 9 }
    lowerValue := 393165849507293778350588492342999
    upperValue := 91112778086093029337470114902364984967168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 9))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 8 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 45, r := 10 }
    lowerValue := 8378323014113537436294539862901
    upperValue := 6508055577578073524105008207311784640512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 10))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 9 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 45, r := 11 }
    lowerValue := 201974020860687470599561035082
    upperValue := 464861112684148108864643443379413188608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 11))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 10 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 45, r := 12 }
    lowerValue := 5466824300747074883611163059
    upperValue := 33204365191724864918903103098529513472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 12))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 11 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 45, r := 13 }
    lowerValue := 165126981199799352827787572
    upperValue := 338820052976784335907174521413566464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 13))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 45, r := 14 }
    lowerValue := 5538059678758864990534558
    upperValue := 24201432355484595421941037243826176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 14))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 45, r := 15 }
    lowerValue := 205374928331656615921277
    upperValue := 1728673739677471101567216945987584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 15))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 45, r := 16 }
    lowerValue := 8392559935165581656822
    upperValue := 123476695691247935826229781856256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 16))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 45, r := 17 }
    lowerValue := 376850923736580521773
    upperValue := 8819763977946281130444984418304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 17))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 45, r := 18 }
    lowerValue := 18551122660953198237
    upperValue := 629983141281877223603213172736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 18))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 45, r := 19 }
    lowerValue := 999290935842258270
    upperValue := 44998795805848373114515226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 45, r := 20 }
    lowerValue := 58817629741566361
    upperValue := 3214199700417740936751087616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 20))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 45, r := 21 }
    lowerValue := 3778773075245975
    upperValue := 229585692886981495482220544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 21))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 45, r := 22 }
    lowerValue := 264792431283553
    upperValue := 16398978063355821105872896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 22))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 45, r := 23 }
    lowerValue := 20230084127607
    upperValue := 1171355575953987221848064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 23))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 45, r := 24 }
    lowerValue := 1684964734272
    upperValue := 83668255425284801560576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 24))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 45, r := 25 }
    lowerValue := 153032915891
    upperValue := 5976303958948914397184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 25))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 45, r := 26 }
    lowerValue := 15164124692
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 26))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 45, r := 27 }
    lowerValue := 1640845569
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 27))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 45, r := 28 }
    lowerValue := 194117393
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 28))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 45, r := 29 }
    lowerValue := 25147551
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 29))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 45, r := 30 }
    lowerValue := 3574567
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 30))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30))) },
  { key := { q := 14, n := 45, r := 31 }
    lowerValue := 558859
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 31))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 31))) },
  { key := { q := 14, n := 45, r := 32 }
    lowerValue := 96384
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 32))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 32))) },
  { key := { q := 14, n := 45, r := 33 }
    lowerValue := 18401
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 33))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 36 33))) },
  { key := { q := 14, n := 45, r := 34 }
    lowerValue := 3905
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 34))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 37 34))) },
  { key := { q := 14, n := 45, r := 35 }
    lowerValue := 926
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 35))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 38 35))) },
  { key := { q := 14, n := 45, r := 36 }
    lowerValue := 247
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 36))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 39 36))) },
  { key := { q := 14, n := 45, r := 37 }
    lowerValue := 75
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 37))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 40 37))) },
  { key := { q := 14, n := 45, r := 38 }
    lowerValue := 26
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 38))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 41 38))) },
  { key := { q := 14, n := 45, r := 39 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 41 40)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 43 39))) },
  { key := { q := 14, n := 45, r := 40 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 42 41))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 44 40))) },
  { key := { q := 14, n := 45, r := 41 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 43 42)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 45 41)) },
  { key := { q := 14, n := 45, r := 42 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 45 42)) },
  { key := { q := 14, n := 45, r := 43 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 45 43)) },
  { key := { q := 14, n := 45, r := 44 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 45 44)) },
  { key := { q := 14, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 45 45)) },
  { key := { q := 14, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 45 46)) },
  { key := { q := 14, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 45 47)) },
  { key := { q := 14, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 45 48)) },
  { key := { q := 14, n := 46, r := 0 }
    lowerValue := 52709590378395385649697127909589319306203213055655936
    upperValue := 52709590378395385649697127909589319306203213055655936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 46 0)) },
  { key := { q := 14, n := 46, r := 1 }
    lowerValue := 87995977259424683889310731067761801846749938323299
    upperValue := 1882485370656978058917754568199618546650114751987712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 1))
    upperTrace := (.lengthenFreeN 43 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 46, r := 2 }
    lowerValue := 300315589516479515307594425000793778879196035961
    upperValue := 134463240761212718494125326299972753332151053713408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 2))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 1 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 46, r := 3 }
    lowerValue := 1572201612349737718274706289206968880492576087
    upperValue := 9604517197229479892437523307140910952296503836672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 3))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 2 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 46, r := 4 }
    lowerValue := 11228536911937379904024279215338544855335348
    upperValue := 686036942659248563745537379081493639449750274048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 4))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 3 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 46, r := 5 }
    lowerValue := 102618592593796286775911214706605356064014
    upperValue := 49002638761374897410395527077249545674982162432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 5))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 4 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 46, r := 6 }
    lowerValue := 1152739713118156003080031265784461728937
    upperValue := 3500188482955349815028251934089253262498725888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 6))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 5 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 46, r := 7 }
    lowerValue := 15483148972736821503793876115228761277
    upperValue := 250013463068239272502017995292089518749908992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 7))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 6 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 46, r := 8 }
    lowerValue := 243737872251559307120261648304378774
    upperValue := 17858104504874233750144142520863537053564928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 8))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 7 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 46, r := 9 }
    lowerValue := 4429598687235218237103448633037328
    upperValue := 1275578893205302410724581608633109789540352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 9))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 8 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 46, r := 10 }
    lowerValue := 91851129137284289982599953414783
    upperValue := 91112778086093029337470114902364984967168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 10))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 9 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 46, r := 11 }
    lowerValue := 2152933651489413987175839573324
    upperValue := 6508055577578073524105008207311784640512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 11))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 10 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 46, r := 12 }
    lowerValue := 56614546784483675806379911342
    upperValue := 464861112684148108864643443379413188608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 12))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 11 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 46, r := 13 }
    lowerValue := 1659962450250281253137834049
    upperValue := 4743480741674980702700443299789930496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 13))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 46, r := 14 }
    lowerValue := 53992359162264640852222037
    upperValue := 338820052976784335907174521413566464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 14))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 46, r := 15 }
    lowerValue := 1939988921131939914703557
    upperValue := 24201432355484595421941037243826176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 15))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 46, r := 16 }
    lowerValue := 76732501515900417988671
    upperValue := 1728673739677471101567216945987584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 16))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 46, r := 17 }
    lowerValue := 3331302657009057979995
    upperValue := 123476695691247935826229781856256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 17))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 46, r := 18 }
    lowerValue := 158368366251497212572
    upperValue := 8819763977946281130444984418304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 18))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 46, r := 19 }
    lowerValue := 8228151203020559070
    upperValue := 629983141281877223603213172736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 19))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 46, r := 20 }
    lowerValue := 466496713354849407
    upperValue := 44998795805848373114515226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 20))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 46, r := 21 }
    lowerValue := 28826850450348463
    upperValue := 3214199700417740936751087616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 21))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 46, r := 22 }
    lowerValue := 1939914452503168
    upperValue := 229585692886981495482220544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 22))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 46, r := 23 }
    lowerValue := 142093909174707
    upperValue := 16398978063355821105872896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 23))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 46, r := 24 }
    lowerValue := 11326021981807
    upperValue := 1171355575953987221848064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 24))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 46, r := 25 }
    lowerValue := 982467385300
    upperValue := 83668255425284801560576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 25))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 46, r := 26 }
    lowerValue := 92780262067
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 26))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 46, r := 27 }
    lowerValue := 9545052683
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 27))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 46, r := 28 }
    lowerValue := 1070805787
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 28))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 46, r := 29 }
    lowerValue := 131165863
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 29))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 46, r := 30 }
    lowerValue := 17572418
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 30))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30))) },
  { key := { q := 14, n := 46, r := 31 }
    lowerValue := 2580091
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 31))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 31))) },
  { key := { q := 14, n := 46, r := 32 }
    lowerValue := 416209
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 32))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 32))) },
  { key := { q := 14, n := 46, r := 33 }
    lowerValue := 73987
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 33))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 36 33))) },
  { key := { q := 14, n := 46, r := 34 }
    lowerValue := 14545
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 34))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 37 34))) },
  { key := { q := 14, n := 46, r := 35 }
    lowerValue := 3175
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 35))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 38 35))) },
  { key := { q := 14, n := 46, r := 36 }
    lowerValue := 774
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 36))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 39 36))) },
  { key := { q := 14, n := 46, r := 37 }
    lowerValue := 212
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 37))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 40 37))) },
  { key := { q := 14, n := 46, r := 38 }
    lowerValue := 66
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 38))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 41 38))) },
  { key := { q := 14, n := 46, r := 39 }
    lowerValue := 23
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 39))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 43 39))) },
  { key := { q := 14, n := 46, r := 40 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 42 41)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 44 40))) },
  { key := { q := 14, n := 46, r := 41 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 43 42))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 45 41))) },
  { key := { q := 14, n := 46, r := 42 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 44 43)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 46 42)) },
  { key := { q := 14, n := 46, r := 43 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 46 43)) },
  { key := { q := 14, n := 46, r := 44 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 46 44)) },
  { key := { q := 14, n := 46, r := 45 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 46 45)) },
  { key := { q := 14, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 46 46)) },
  { key := { q := 14, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 46 47)) },
  { key := { q := 14, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 46 48)) },
  { key := { q := 14, n := 47, r := 0 }
    lowerValue := 737934265297535399095759790734250470286844982779183104
    upperValue := 737934265297535399095759790734250470286844982779183104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 47 0)) },
  { key := { q := 14, n := 47, r := 1 }
    lowerValue := 1205774943296626469110718612310866781514452586240496
    upperValue := 26354795189197692824848563954794659653101606527827968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 1))
    upperTrace := (.lengthenFreeN 44 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 47, r := 2 }
    lowerValue := 4025805998317169023059120194293814383374040418652
    upperValue := 1882485370656978058917754568199618546650114751987712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 2))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 1 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 47, r := 3 }
    lowerValue := 20608281795868889019034359320650602493691432435
    upperValue := 134463240761212718494125326299972753332151053713408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 3))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 2 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 47, r := 4 }
    lowerValue := 143844299951674360379808945035015878969990768
    upperValue := 9604517197229479892437523307140910952296503836672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 4))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 3 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 47, r := 5 }
    lowerValue := 1284098882928564092013732367985795050129116
    upperValue := 686036942659248563745537379081493639449750274048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 5))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 4 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 47, r := 6 }
    lowerValue := 14081939701075897728472170755043778779967
    upperValue := 49002638761374897410395527077249545674982162432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 6))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 5 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 47, r := 7 }
    lowerValue := 184541181047406549452178419410984027501
    upperValue := 3500188482955349815028251934089253262498725888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 7))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 6 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 47, r := 8 }
    lowerValue := 2832637238816480384215107628555465879
    upperValue := 250013463068239272502017995292089518749908992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 8))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 7 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 47, r := 9 }
    lowerValue := 50163016836749490788403767270879560
    upperValue := 17858104504874233750144142520863537053564928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 9))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 8 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 47, r := 10 }
    lowerValue := 1012879079690995757156280318556230
    upperValue := 1275578893205302410724581608633109789540352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 10))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 9 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 47, r := 11 }
    lowerValue := 23101705261135826933289881943519
    upperValue := 91112778086093029337470114902364984967168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 11))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 10 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 47, r := 12 }
    lowerValue := 590677987282145787672486834584
    upperValue := 6508055577578073524105008207311784640512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 12))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 11 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 47, r := 13 }
    lowerValue := 16825988164880367975188350976
    upperValue := 66408730383449729837806206197059026944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 13))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 47, r := 14 }
    lowerValue := 531256038104848463737819230
    upperValue := 4743480741674980702700443299789930496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 14))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 47, r := 15 }
    lowerValue := 18512600586565171207110597
    upperValue := 338820052976784335907174521413566464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 15))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 47, r := 16 }
    lowerValue := 709458629052089126142905
    upperValue := 24201432355484595421941037243826176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 16))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 47, r := 17 }
    lowerValue := 29812441011505068733840
    upperValue := 1728673739677471101567216945987584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 17))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 47, r := 18 }
    lowerValue := 1370296133544258714340
    upperValue := 123476695691247935826229781856256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 18))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 47, r := 19 }
    lowerValue := 68755158656240940677
    upperValue := 8819763977946281130444984418304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 19))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 47, r := 20 }
    lowerValue := 3759822917740683640
    upperValue := 629983141281877223603213172736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 20))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 47, r := 21 }
    lowerValue := 223795281677752282
    upperValue := 44998795805848373114515226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 21))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 47, r := 22 }
    lowerValue := 14485929093995945
    upperValue := 3214199700417740936751087616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 22))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 47, r := 23 }
    lowerValue := 1019002521787801
    upperValue := 229585692886981495482220544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 23))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 47, r := 24 }
    lowerValue := 77872503431300
    upperValue := 16398978063355821105872896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 24))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 47, r := 25 }
    lowerValue := 6464587408204
    upperValue := 1171355575953987221848064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 25))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 47, r := 26 }
    lowerValue := 583086835396
    upperValue := 5976303958948914397184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 26))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 47, r := 27 }
    lowerValue := 57170316621
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 27))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 47, r := 28 }
    lowerValue := 6097990535
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 28))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 47, r := 29 }
    lowerValue := 708346982
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 29))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 47, r := 30 }
    lowerValue := 89732936
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 30))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30))) },
  { key := { q := 14, n := 47, r := 31 }
    lowerValue := 12418184
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 31))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 31))) },
  { key := { q := 14, n := 47, r := 32 }
    lowerValue := 1881412
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 32))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 32))) },
  { key := { q := 14, n := 47, r := 33 }
    lowerValue := 312848
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 33))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 36 33))) },
  { key := { q := 14, n := 47, r := 34 }
    lowerValue := 57269
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 34))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 37 34))) },
  { key := { q := 14, n := 47, r := 35 }
    lowerValue := 11582
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 35))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 38 35))) },
  { key := { q := 14, n := 47, r := 36 }
    lowerValue := 2599
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 36))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 39 36))) },
  { key := { q := 14, n := 47, r := 37 }
    lowerValue := 651
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 37))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 40 37))) },
  { key := { q := 14, n := 47, r := 38 }
    lowerValue := 183
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 38))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 41 38))) },
  { key := { q := 14, n := 47, r := 39 }
    lowerValue := 58
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 39))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 43 39))) },
  { key := { q := 14, n := 47, r := 40 }
    lowerValue := 21
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 40))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 44 40))) },
  { key := { q := 14, n := 47, r := 41 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 43 42)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 45 41))) },
  { key := { q := 14, n := 47, r := 42 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 44 43))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 46 42))) },
  { key := { q := 14, n := 47, r := 43 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 45 44)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 47 43)) },
  { key := { q := 14, n := 47, r := 44 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 47 44)) },
  { key := { q := 14, n := 47, r := 45 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 47 45)) },
  { key := { q := 14, n := 47, r := 46 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 47 46)) },
  { key := { q := 14, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 47 47)) },
  { key := { q := 14, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 47 48)) },
  { key := { q := 14, n := 48, r := 0 }
    lowerValue := 10331079714165495587340637070279506584015829758908563456
    upperValue := 10331079714165495587340637070279506584015829758908563456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 48 0)) },
  { key := { q := 14, n := 48, r := 1 }
    lowerValue := 16529727542664792939745019312447210534425327614253702
    upperValue := 368967132648767699547879895367125235143422491389591552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 1))
    upperTrace := (.lengthenFreeN 45 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 48, r := 2 }
    lowerValue := 54016740376380972133520012706878736903830080775651
    upperValue := 26354795189197692824848563954794659653101606527827968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 2))
    upperTrace := (.lengthenFreeN 43 (.lengthenDummyN 1 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 48, r := 3 }
    lowerValue := 270513898710582070336282160925109719732529509024
    upperValue := 1882485370656978058917754568199618546650114751987712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 3))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 2 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 48, r := 4 }
    lowerValue := 1846289633144363128410615613227720912116433884
    upperValue := 134463240761212718494125326299972753332151053713408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 4))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 3 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 48, r := 5 }
    lowerValue := 16108030162829796730032757890802612713105190
    upperValue := 9604517197229479892437523307140910952296503836672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 5))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 4 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 48, r := 6 }
    lowerValue := 172548144219090080948531032369894476230329
    upperValue := 686036942659248563745537379081493639449750274048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 6))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 5 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 48, r := 7 }
    lowerValue := 2207501003643029719772851169126453056020
    upperValue := 49002638761374897410395527077249545674982162432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 7))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 6 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 48, r := 8 }
    lowerValue := 33059967580738070050370870059452070326
    upperValue := 3500188482955349815028251934089253262498725888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 8))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 7 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 48, r := 9 }
    lowerValue := 570860786742165318577145689980906368
    upperValue := 250013463068239272502017995292089518749908992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 9))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 8 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 48, r := 10 }
    lowerValue := 11231990964587389595105265406078679
    upperValue := 17858104504874233750144142520863537053564928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 10))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 9 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 48, r := 11 }
    lowerValue := 249458547177144120213739995825984
    upperValue := 1275578893205302410724581608633109789540352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 11))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 10 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 48, r := 12 }
    lowerValue := 6206502305417817524834569099977
    upperValue := 91112778086093029337470114902364984967168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 12))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 11 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 48, r := 13 }
    lowerValue := 171904682092554729687655489396
    upperValue := 929722225368296217729286886758826377216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 13))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 48, r := 14 }
    lowerValue := 5273177124973703087119947522
    upperValue := 66408730383449729837806206197059026944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 14))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 48, r := 15 }
    lowerValue := 178372187939615530768342330
    upperValue := 4743480741674980702700443299789930496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 15))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 48, r := 16 }
    lowerValue := 6629573043663857772658392
    upperValue := 338820052976784335907174521413566464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 16))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 48, r := 17 }
    lowerValue := 269921798723759878979031
    upperValue := 24201432355484595421941037243826176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 17))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 48, r := 18 }
    lowerValue := 12008623978830416732165
    upperValue := 1728673739677471101567216945987584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 18))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 48, r := 19 }
    lowerValue := 582572017705004263516
    upperValue := 123476695691247935826229781856256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 19))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 48, r := 20 }
    lowerValue := 30766073376176124635
    upperValue := 8819763977946281130444984418304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 20))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 48, r := 21 }
    lowerValue := 1766343289866984473
    upperValue := 629983141281877223603213172736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 21))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 48, r := 22 }
    lowerValue := 110131023875170744
    upperValue := 44998795805848373114515226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 22))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 48, r := 23 }
    lowerValue := 7451666244517343
    upperValue := 3214199700417740936751087616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 23))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 48, r := 24 }
    lowerValue := 546894716028553
    upperValue := 229585692886981495482220544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 24))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 48, r := 25 }
    lowerValue := 43528487012700
    upperValue := 16398978063355821105872896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 25))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 48, r := 26 }
    lowerValue := 3757414559863
    upperValue := 83668255425284801560576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 26))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 48, r := 27 }
    lowerValue := 351876114875
    upperValue := 5976303958948914397184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 27))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 48, r := 28 }
    lowerValue := 35770937309
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 28))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 48, r := 29 }
    lowerValue := 3950798650
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 29))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 48, r := 30 }
    lowerValue := 474628276
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 30))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30))) },
  { key := { q := 14, n := 48, r := 31 }
    lowerValue := 62111411
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 31))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 31))) },
  { key := { q := 14, n := 48, r := 32 }
    lowerValue := 8869922
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 32))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 32))) },
  { key := { q := 14, n := 48, r := 33 }
    lowerValue := 1385295
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 48 33))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 36 33))) }]

end CoveringCodes.Database
