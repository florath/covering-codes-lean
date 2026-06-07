import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 142. Do not edit manually.

def precomputedTable_chunk_142 : Array AnyBoundEntry := #[
  { key := { q := 14, n := 38, r := 24 }
    lowerValue := 5978745
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 38, r := 25 }
    lowerValue := 808353
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 38, r := 26 }
    lowerValue := 122086
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 38, r := 27 }
    lowerValue := 20675
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 38, r := 28 }
    lowerValue := 3944
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 38, r := 29 }
    lowerValue := 853
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 38, r := 30 }
    lowerValue := 211
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30))) },
  { key := { q := 14, n := 38, r := 31 }
    lowerValue := 60
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 31))) },
  { key := { q := 14, n := 38, r := 32 }
    lowerValue := 20
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 32))) },
  { key := { q := 14, n := 38, r := 33 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 35 34))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 36 33))) },
  { key := { q := 14, n := 38, r := 34 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 36 35)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 37 34))) },
  { key := { q := 14, n := 38, r := 35 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 37 36))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 38 35)) },
  { key := { q := 14, n := 38, r := 36 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 38 36)) },
  { key := { q := 14, n := 38, r := 37 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 38 37)) },
  { key := { q := 14, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 38 38)) },
  { key := { q := 14, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 38 39)) },
  { key := { q := 14, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 38 40)) },
  { key := { q := 14, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 38 41)) },
  { key := { q := 14, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 38 42)) },
  { key := { q := 14, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 38 43)) },
  { key := { q := 14, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 38 44)) },
  { key := { q := 14, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 38 45)) },
  { key := { q := 14, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 38 46)) },
  { key := { q := 14, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 38 47)) },
  { key := { q := 14, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 38 48)) },
  { key := { q := 14, n := 39, r := 0 }
    lowerValue := 500026926136478545004035990584179037499817984
    upperValue := 500026926136478545004035990584179037499817984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 39 0)) },
  { key := { q := 14, n := 39, r := 1 }
    lowerValue := 984304972709603435047314942094840624999642
    upperValue := 17858104504874233750144142520863537053564928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 1))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 39, r := 2 }
    lowerValue := 3976768382707385614449493709760683311196
    upperValue := 1275578893205302410724581608633109789540352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 2))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 39, r := 3 }
    lowerValue := 24748760457593725685851994077652431163
    upperValue := 91112778086093029337470114902364984967168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 2 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 39, r := 4 }
    lowerValue := 211037484863335267981712258009949814
    upperValue := 6508055577578073524105008207311784640512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 4))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 3 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 39, r := 5 }
    lowerValue := 2313398077863431493862363210594384
    upperValue := 464861112684148108864643443379413188608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 5))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 4 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 39, r := 6 }
    lowerValue := 31321761451177485427553504287869
    upperValue := 33204365191724864918903103098529513472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 6))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 5 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 39, r := 7 }
    lowerValue := 509661989830463822349523009387
    upperValue := 2371740370837490351350221649894965248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 7))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 6 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 39, r := 8 }
    lowerValue := 9772276419060686891969900711
    upperValue := 169410026488392167953587260706783232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 8))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 7 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 39, r := 9 }
    lowerValue := 217552290928671780480753181
    upperValue := 12100716177742297710970518621913088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 9))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 8 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 39, r := 10 }
    lowerValue := 5559479312537402606079271
    upperValue := 864336869838735550783608472993792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 10))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 9 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 39, r := 11 }
    lowerValue := 161627342201230227963835
    upperValue := 61738347845623967913114890928128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 11))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 10 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 39, r := 12 }
    lowerValue := 5307702305086584024410
    upperValue := 4409881988973140565222492209152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 12))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 11 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 39, r := 13 }
    lowerValue := 195759786683766366432
    upperValue := 44998795805848373114515226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 13))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 39, r := 14 }
    lowerValue := 8071764596757126313
    upperValue := 3214199700417740936751087616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 14))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 39, r := 15 }
    lowerValue := 370718734017736996
    upperValue := 229585692886981495482220544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 15))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 39, r := 16 }
    lowerValue := 18909969208069737
    upperValue := 16398978063355821105872896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 16))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 39, r := 17 }
    lowerValue := 1068898635008441
    upperValue := 1171355575953987221848064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 17))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 39, r := 18 }
    lowerValue := 66844772407086
    upperValue := 83668255425284801560576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 39, r := 19 }
    lowerValue := 4619581640406
    upperValue := 5976303958948914397184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 39, r := 20 }
    lowerValue := 352597244926
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 39, r := 21 }
    lowerValue := 29719534230
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 39, r := 22 }
    lowerValue := 2767220267
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 39, r := 23 }
    lowerValue := 284868736
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 39, r := 24 }
    lowerValue := 32465578
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 39, r := 25 }
    lowerValue := 4103822
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 39, r := 26 }
    lowerValue := 576772
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 39, r := 27 }
    lowerValue := 90410
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 39, r := 28 }
    lowerValue := 15867
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 39, r := 29 }
    lowerValue := 3133
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 39, r := 30 }
    lowerValue := 700
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30))) },
  { key := { q := 14, n := 39, r := 31 }
    lowerValue := 178
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 31))) },
  { key := { q := 14, n := 39, r := 32 }
    lowerValue := 52
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 32))) },
  { key := { q := 14, n := 39, r := 33 }
    lowerValue := 18
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 36 33))) },
  { key := { q := 14, n := 39, r := 34 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 36 35))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 37 34))) },
  { key := { q := 14, n := 39, r := 35 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 37 36)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 38 35))) },
  { key := { q := 14, n := 39, r := 36 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 39 36)) },
  { key := { q := 14, n := 39, r := 37 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 39 37)) },
  { key := { q := 14, n := 39, r := 38 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 39 38)) },
  { key := { q := 14, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 39 39)) },
  { key := { q := 14, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 39 40)) },
  { key := { q := 14, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 39 41)) },
  { key := { q := 14, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 39 42)) },
  { key := { q := 14, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 39 43)) },
  { key := { q := 14, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 39 44)) },
  { key := { q := 14, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 39 45)) },
  { key := { q := 14, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 39 46)) },
  { key := { q := 14, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 39 47)) },
  { key := { q := 14, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 39 48)) },
  { key := { q := 14, n := 40, r := 0 }
    lowerValue := 7000376965910699630056503868178506524997451776
    upperValue := 7000376965910699630056503868178506524997451776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 40 0)) },
  { key := { q := 14, n := 40, r := 1 }
    lowerValue := 13436424118830517524100775178845501967365551
    upperValue := 250013463068239272502017995292089518749908992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 1))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 40, r := 2 }
    lowerValue := 52896509516406099621859468102693092276751
    upperValue := 17858104504874233750144142520863537053564928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 2))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 40, r := 3 }
    lowerValue := 320549146485896740381055808593125869758
    upperValue := 1275578893205302410724581608633109789540352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 3))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 2 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 40, r := 4 }
    lowerValue := 2659688901487160850819416098858067614
    upperValue := 91112778086093029337470114902364984967168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 4))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 3 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 40, r := 5 }
    lowerValue := 28347828426411343320249944553701093
    upperValue := 6508055577578073524105008207311784640512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 5))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 4 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 40, r := 6 }
    lowerValue := 372874708375739448372676897650940
    upperValue := 464861112684148108864643443379413188608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 6))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 5 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 40, r := 7 }
    lowerValue := 5889450929447948308332061315173
    upperValue := 33204365191724864918903103098529513472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 7))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 6 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 40, r := 8 }
    lowerValue := 109514114084262368599414736332
    upperValue := 2371740370837490351350221649894965248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 8))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 7 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 40, r := 9 }
    lowerValue := 2362115723483978511750413809
    upperValue := 169410026488392167953587260706783232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 9))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 8 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 40, r := 10 }
    lowerValue := 58423717604381088991352917
    upperValue := 12100716177742297710970518621913088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 10))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 9 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 40, r := 11 }
    lowerValue := 1642147747090863177901204
    upperValue := 864336869838735550783608472993792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 11))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 10 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 40, r := 12 }
    lowerValue := 52076091897740578498821
    upperValue := 61738347845623967913114890928128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 12))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 11 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 40, r := 13 }
    lowerValue := 1852446745061618096539
    upperValue := 629983141281877223603213172736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 13))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 40, r := 14 }
    lowerValue := 73569377884550605444
    upperValue := 44998795805848373114515226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 14))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 40, r := 15 }
    lowerValue := 3249756381275347982
    upperValue := 3214199700417740936751087616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 15))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 40, r := 16 }
    lowerValue := 159182844983521448
    upperValue := 229585692886981495482220544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 16))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 40, r := 17 }
    lowerValue := 8625945567988957
    upperValue := 16398978063355821105872896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 17))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 40, r := 18 }
    lowerValue := 516184518479730
    upperValue := 1171355575953987221848064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 40, r := 19 }
    lowerValue := 34067384280221
    upperValue := 83668255425284801560576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 40, r := 20 }
    lowerValue := 2477786346685
    upperValue := 5976303958948914397184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 40, r := 21 }
    lowerValue := 198533224468
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 40, r := 22 }
    lowerValue := 17526372581
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 40, r := 23 }
    lowerValue := 1705602341
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 40, r := 24 }
    lowerValue := 183157592
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 40, r := 25 }
    lowerValue := 21735776
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 40, r := 26 }
    lowerValue := 2856229
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 40, r := 27 }
    lowerValue := 416666
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 40, r := 28 }
    lowerValue := 67694
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 40, r := 29 }
    lowerValue := 12296
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 40, r := 30 }
    lowerValue := 2509
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30))) },
  { key := { q := 14, n := 40, r := 31 }
    lowerValue := 579
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 31))) },
  { key := { q := 14, n := 40, r := 32 }
    lowerValue := 152
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 32))) },
  { key := { q := 14, n := 40, r := 33 }
    lowerValue := 46
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 36 33))) },
  { key := { q := 14, n := 40, r := 34 }
    lowerValue := 16
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 34))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 37 34))) },
  { key := { q := 14, n := 40, r := 35 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 37 36))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 38 35))) },
  { key := { q := 14, n := 40, r := 36 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 38 37)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 39 36))) },
  { key := { q := 14, n := 40, r := 37 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 40 37)) },
  { key := { q := 14, n := 40, r := 38 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 40 38)) },
  { key := { q := 14, n := 40, r := 39 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 40 39)) },
  { key := { q := 14, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 40 40)) },
  { key := { q := 14, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 40 41)) },
  { key := { q := 14, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 40 42)) },
  { key := { q := 14, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 40 43)) },
  { key := { q := 14, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 40 44)) },
  { key := { q := 14, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 40 45)) },
  { key := { q := 14, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 40 46)) },
  { key := { q := 14, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 40 47)) },
  { key := { q := 14, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 40 48)) },
  { key := { q := 14, n := 41, r := 0 }
    lowerValue := 98005277522749794820791054154499091349964324864
    upperValue := 98005277522749794820791054154499091349964324864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 41 0)) },
  { key := { q := 14, n := 41, r := 1 }
    lowerValue := 183530482252340439739309090176964590543004354
    upperValue := 3500188482955349815028251934089253262498725888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 1))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 41, r := 2 }
    lowerValue := 704496150802577704765811163179112751771672
    upperValue := 250013463068239272502017995292089518749908992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 2))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 41, r := 3 }
    lowerValue := 4159969442117430751944916742461717453196
    upperValue := 17858104504874233750144142520863537053564928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 3))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 2 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 41, r := 4 }
    lowerValue := 33610279949059393239729450853916219412
    upperValue := 1275578893205302410724581608633109789540352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 4))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 3 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 41, r := 5 }
    lowerValue := 348572071010710937447355139997893923
    upperValue := 91112778086093029337470114902364984967168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 5))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 4 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 41, r := 6 }
    lowerValue := 4457952873668609074164698715588503
    upperValue := 6508055577578073524105008207311784640512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 6))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 5 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 41, r := 7 }
    lowerValue := 68406346487649519407518729239663
    upperValue := 464861112684148108864643443379413188608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 7))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 6 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 41, r := 8 }
    lowerValue := 1234722555933009891940460172226
    upperValue := 33204365191724864918903103098529513472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 8))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 7 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 41, r := 9 }
    lowerValue := 25827616244322226915262046008
    upperValue := 2371740370837490351350221649894965248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 9))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 8 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 41, r := 10 }
    lowerValue := 618924673597029418893234823
    upperValue := 169410026488392167953587260706783232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 10))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 9 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 41, r := 11 }
    lowerValue := 16837629209014638752078339
    upperValue := 12100716177742297710970518621913088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 11))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 10 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 41, r := 12 }
    lowerValue := 516240717079452411630319
    upperValue := 864336869838735550783608472993792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 12))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 11 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 41, r := 13 }
    lowerValue := 17733611672936105377932
    upperValue := 8819763977946281130444984418304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 13))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 41, r := 14 }
    lowerValue := 679270119891438878491
    upperValue := 629983141281877223603213172736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 14))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 41, r := 15 }
    lowerValue := 28900580921666420534
    upperValue := 44998795805848373114515226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 15))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 41, r := 16 }
    lowerValue := 1361551972743572571
    upperValue := 3214199700417740936751087616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 16))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 41, r := 17 }
    lowerValue := 70851489215367190
    upperValue := 229585692886981495482220544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 41, r := 18 }
    lowerValue := 4064600570997429
    upperValue := 16398978063355821105872896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 41, r := 19 }
    lowerValue := 256699953008619
    upperValue := 1171355575953987221848064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 41, r := 20 }
    lowerValue := 17830244964422
    upperValue := 83668255425284801560576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 41, r := 21 }
    lowerValue := 1361396389527
    upperValue := 5976303958948914397184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 41, r := 22 }
    lowerValue := 114251116131
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 41, r := 23 }
    lowerValue := 10541831512
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 41, r := 24 }
    lowerValue := 1070195670
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 41, r := 25 }
    lowerValue := 119674252
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 41, r := 26 }
    lowerValue := 14764751
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 41, r := 27 }
    lowerValue := 2013966
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 41, r := 28 }
    lowerValue := 304530
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 41, r := 29 }
    lowerValue := 51213
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 41, r := 30 }
    lowerValue := 9617
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30))) },
  { key := { q := 14, n := 41, r := 31 }
    lowerValue := 2026
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 31))) },
  { key := { q := 14, n := 41, r := 32 }
    lowerValue := 482
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 32))) },
  { key := { q := 14, n := 41, r := 33 }
    lowerValue := 131
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 36 33))) },
  { key := { q := 14, n := 41, r := 34 }
    lowerValue := 41
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 37 34))) },
  { key := { q := 14, n := 41, r := 35 }
    lowerValue := 15
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 35))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 38 35))) },
  { key := { q := 14, n := 41, r := 36 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 38 37))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 39 36))) },
  { key := { q := 14, n := 41, r := 37 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 39 38)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 40 37))) },
  { key := { q := 14, n := 41, r := 38 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 41 38)) },
  { key := { q := 14, n := 41, r := 39 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 41 39)) },
  { key := { q := 14, n := 41, r := 40 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 41 40)) },
  { key := { q := 14, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 41 41)) },
  { key := { q := 14, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 41 42)) },
  { key := { q := 14, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 41 43)) },
  { key := { q := 14, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 41 44)) },
  { key := { q := 14, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 41 45)) },
  { key := { q := 14, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 41 46)) },
  { key := { q := 14, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 41 47)) },
  { key := { q := 14, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 41 48)) },
  { key := { q := 14, n := 42, r := 0 }
    lowerValue := 1372073885318497127491074758162987278899500548096
    upperValue := 1372073885318497127491074758162987278899500548096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 42 0)) },
  { key := { q := 14, n := 42, r := 1 }
    lowerValue := 2508361764750451787003792976531969431260512886
    upperValue := 49002638761374897410395527077249545674982162432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 1))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 42, r := 2 }
    lowerValue := 9394163097157919753321155982383382256802190
    upperValue := 3500188482955349815028251934089253262498725888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 2))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 42, r := 3 }
    lowerValue := 54087616483886271673738468690277686279212
    upperValue := 250013463068239272502017995292089518749908992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 3))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 42, r := 4 }
    lowerValue := 425818924332800356384504825623585628807
    upperValue := 17858104504874233750144142520863537053564928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 4))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 3 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 42, r := 5 }
    lowerValue := 4300238214154962638302262139731539707
    upperValue := 1275578893205302410724581608633109789540352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 5))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 4 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 42, r := 6 }
    lowerValue := 53514114974036113766246425963674202
    upperValue := 91112778086093029337470114902364984967168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 6))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 5 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 42, r := 7 }
    lowerValue := 798418521500625590551431333427155
    upperValue := 6508055577578073524105008207311784640512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 7))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 6 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 42, r := 8 }
    lowerValue := 14000848586229238454156647110712
    upperValue := 464861112684148108864643443379413188608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 8))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 7 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 42, r := 9 }
    lowerValue := 284281696869357326092089469250
    upperValue := 33204365191724864918903103098529513472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 9))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 8 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 42, r := 10 }
    lowerValue := 6606756910872352561876851870
    upperValue := 2371740370837490351350221649894965248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 10))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 9 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 42, r := 11 }
    lowerValue := 174140279127137331690222306
    upperValue := 169410026488392167953587260706783232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 11))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 10 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 42, r := 12 }
    lowerValue := 5167651479990859809596711
    upperValue := 12100716177742297710970518621913088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 12))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 11 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 42, r := 13 }
    lowerValue := 171627217899328953498265
    upperValue := 123476695691247935826229781856256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 13))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 42, r := 14 }
    lowerValue := 6348516527751746518912
    upperValue := 8819763977946281130444984418304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 14))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 42, r := 15 }
    lowerValue := 260515669927235157515
    upperValue := 629983141281877223603213172736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 15))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 42, r := 16 }
    lowerValue := 11821589221338948528
    upperValue := 44998795805848373114515226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 16))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 42, r := 17 }
    lowerValue := 591667031901971299
    upperValue := 3214199700417740936751087616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 17))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 42, r := 18 }
    lowerValue := 32595357627140376
    upperValue := 229585692886981495482220544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 42, r := 19 }
    lowerValue := 1973514049037158
    upperValue := 16398978063355821105872896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 42, r := 20 }
    lowerValue := 131175481696385
    upperValue := 1171355575953987221848064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 42, r := 21 }
    lowerValue := 9565205709380
    upperValue := 83668255425284801560576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 42, r := 22 }
    lowerValue := 764957567862
    upperValue := 5976303958948914397184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 42, r := 23 }
    lowerValue := 67099740178
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 42, r := 24 }
    lowerValue := 6458783457
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 42, r := 25 }
    lowerValue := 682815992
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 42, r := 26 }
    lowerValue := 79384390
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 42, r := 27 }
    lowerValue := 10166969
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 42, r := 28 }
    lowerValue := 1437566
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 42, r := 29 }
    lowerValue := 225025
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 42, r := 30 }
    lowerValue := 39125
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30))) },
  { key := { q := 14, n := 42, r := 31 }
    lowerValue := 7587
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 31))) },
  { key := { q := 14, n := 42, r := 32 }
    lowerValue := 1649
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 32))) },
  { key := { q := 14, n := 42, r := 33 }
    lowerValue := 404
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 36 33))) },
  { key := { q := 14, n := 42, r := 34 }
    lowerValue := 113
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 37 34))) },
  { key := { q := 14, n := 42, r := 35 }
    lowerValue := 36
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 38 35))) },
  { key := { q := 14, n := 42, r := 36 }
    lowerValue := 14
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 39 36))) },
  { key := { q := 14, n := 42, r := 37 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 39 38))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 40 37))) },
  { key := { q := 14, n := 42, r := 38 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 40 39)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 41 38))) },
  { key := { q := 14, n := 42, r := 39 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 42 39)) },
  { key := { q := 14, n := 42, r := 40 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 42 40)) },
  { key := { q := 14, n := 42, r := 41 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 42 41)) },
  { key := { q := 14, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 42 42)) },
  { key := { q := 14, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 42 43)) },
  { key := { q := 14, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 42 44)) },
  { key := { q := 14, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 42 45)) },
  { key := { q := 14, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 42 46)) },
  { key := { q := 14, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 42 47)) },
  { key := { q := 14, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 42 48)) },
  { key := { q := 14, n := 43, r := 0 }
    lowerValue := 19209034394458959784875046614281821904593007673344
    upperValue := 19209034394458959784875046614281821904593007673344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 43 0)) },
  { key := { q := 14, n := 43, r := 1 }
    lowerValue := 34301847132962428187276868954074681972487513703
    upperValue := 686036942659248563745537379081493639449750274048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 1))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))) },
  { key := { q := 14, n := 43, r := 2 }
    lowerValue := 125412356411361192586360290495223004332480285
    upperValue := 49002638761374897410395527077249545674982162432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 2))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 1 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 43, r := 3 }
    lowerValue := 704496150802577704765811163179112751771672
    upperValue := 3500188482955349815028251934089253262498725888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 3))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 2 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 43, r := 4 }
    lowerValue := 5407980306199426119996261277334502745703
    upperValue := 250013463068239272502017995292089518749908992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 4))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 3 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 43, r := 5 }
    lowerValue := 53216830924055354237237635266491801222
    upperValue := 17858104504874233750144142520863537053564928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 5))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 4 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 43, r := 6 }
    lowerValue := 644871633041474967227424863258539488
    upperValue := 1275578893205302410724581608633109789540352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 6))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 5 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 43, r := 7 }
    lowerValue := 9362027840571391346310814961532682
    upperValue := 91112778086093029337470114902364984967168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 7))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 6 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 43, r := 8 }
    lowerValue := 159623417198427413062580040443149
    upperValue := 6508055577578073524105008207311784640512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 8))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 7 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 43, r := 9 }
    lowerValue := 3148789669783346439212030174299
    upperValue := 464861112684148108864643443379413188608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 9))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 8 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 43, r := 10 }
    lowerValue := 71033724572846861501606144281
    upperValue := 33204365191724864918903103098529513472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 10))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 9 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 43, r := 11 }
    lowerValue := 1815781371288312156917280020
    upperValue := 2371740370837490351350221649894965248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 11))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 10 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 43, r := 12 }
    lowerValue := 52206866124534205686660913
    upperValue := 169410026488392167953587260706783232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 12))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 11 (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 14 3 1))))) },
  { key := { q := 14, n := 43, r := 13 }
    lowerValue := 1678208106232403621397027
    upperValue := 1728673739677471101567216945987584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 13))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 43, r := 14 }
    lowerValue := 60018174709665364045348
    upperValue := 123476695691247935826229781856256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 14))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 43, r := 15 }
    lowerValue := 2378418971998144734105
    upperValue := 8819763977946281130444984418304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 15))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 43, r := 16 }
    lowerValue := 104095391957624777535
    upperValue := 629983141281877223603213172736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 16))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 43, r := 17 }
    lowerValue := 5018239971456878402
    upperValue := 44998795805848373114515226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 17))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 43, r := 18 }
    lowerValue := 265901716082856455
    upperValue := 3214199700417740936751087616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 43, r := 19 }
    lowerValue := 15460385649020995
    upperValue := 229585692886981495482220544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 43, r := 20 }
    lowerValue := 985179352956292
    upperValue := 16398978063355821105872896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 43, r := 21 }
    lowerValue := 68745575981990
    upperValue := 1171355575953987221848064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 43, r := 22 }
    lowerValue := 5250614411550
    upperValue := 83668255425284801560576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 43, r := 23 }
    lowerValue := 438904576346
    upperValue := 5976303958948914397184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 43, r := 24 }
    lowerValue := 40164173418
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 43, r := 25 }
    lowerValue := 4026128022
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 43, r := 26 }
    lowerValue := 442537470
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 43, r := 27 }
    lowerValue := 53411082
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 43, r := 28 }
    lowerValue := 7091225
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 43 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) }]

end CoveringCodes.Database
