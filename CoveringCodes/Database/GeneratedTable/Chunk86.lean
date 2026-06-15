import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 86. Do not edit manually.

def precomputedTable_chunk_86 : Array AnyBoundEntry := #[
  { key := { q := 8, n := 46, r := 38 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 40 39)))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 44 38))) },
  { key := { q := 8, n := 46, r := 39 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 41 40))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 45 39))) },
  { key := { q := 8, n := 46, r := 40 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 42 41)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 46 40)) },
  { key := { q := 8, n := 46, r := 41 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 43 42))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 46 41)) },
  { key := { q := 8, n := 46, r := 42 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 44 43)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 46 42)) },
  { key := { q := 8, n := 46, r := 43 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 46 43)) },
  { key := { q := 8, n := 46, r := 44 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 46 44)) },
  { key := { q := 8, n := 46, r := 45 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 46 45)) },
  { key := { q := 8, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 46 46)) },
  { key := { q := 8, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 46 47)) },
  { key := { q := 8, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 46 48)) },
  { key := { q := 8, n := 47, r := 0 }
    lowerValue := 2787593149816327892691964784081045188247552
    upperValue := 2787593149816327892691964784081045188247552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 47 0)) },
  { key := { q := 8, n := 47, r := 1 }
    lowerValue := 8447251969140387553612014497215288449236
    upperValue := 174224571863520493293247799005065324265472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 1))
    upperTrace := (.lengthenFreeN 41 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 47, r := 2 }
    lowerValue := 52301040353783896371263340476951634895
    upperValue := 15652988878363169319315231941861337726976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 2))
    upperTrace := (.lengthenFreeN 43 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))) },
  { key := { q := 8, n := 47, r := 3 }
    lowerValue := 496450811394590655512577423094288342
    upperValue := 1956623609795396164914403992732667215872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 3))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 8, n := 47, r := 4 }
    lowerValue := 6424958966895792122306472139594994
    upperValue := 244577951224424520614300499091583401984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 4))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 8, n := 47, r := 5 }
    lowerValue := 106336689371021678805721872546553
    upperValue := 30572243903053065076787562386447925248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 5))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 8, n := 47, r := 6 }
    lowerValue := 2161797168853327648018442533364
    upperValue := 3821530487881633134598445298305990656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 6))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 4 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 8, n := 47, r := 7 }
    lowerValue := 52513528788581312934946535923
    upperValue := 166153499473114484112975882535043072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 7))
    upperTrace := (.lengthenFreeN 38 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 47, r := 8 }
    lowerValue := 1493992516487546109536904871
    upperValue := 20769187434139310514121985316880384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 8))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 47, r := 9 }
    lowerValue := 49031009631505492107076467
    upperValue := 2596148429267413814265248164610048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 9))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 47, r := 10 }
    lowerValue := 1834510870799748058160659
    upperValue := 324518553658426726783156020576256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 10))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 47, r := 11 }
    lowerValue := 77521661033310719623889
    upperValue := 40564819207303340847894502572032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 11))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 47, r := 12 }
    lowerValue := 3671820662465644890895
    upperValue := 5070602400912917605986812821504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 12))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 47, r := 13 }
    lowerValue := 193727801372804764611
    upperValue := 633825300114114700748351602688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 13))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 47, r := 14 }
    lowerValue := 11327078792024053911
    upperValue := 9903520314283042199192993792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 14))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 47, r := 15 }
    lowerValue := 730799231676805799
    upperValue := 1237940039285380274899124224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 15))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 47, r := 16 }
    lowerValue := 51841683795647863
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 16))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 47, r := 17 }
    lowerValue := 4031486285777283
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 17))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 47, r := 18 }
    lowerValue := 342830824527499
    upperValue := 2417851639229258349412352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 18))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 47, r := 19 }
    lowerValue := 31815346710448
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 19))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 47, r := 20 }
    lowerValue := 3216744666584
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 20))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 47, r := 21 }
    lowerValue := 353875754989
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 21))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 47, r := 22 }
    lowerValue := 42316271518
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 22))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 47, r := 23 }
    lowerValue := 5496439191
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 23))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 47, r := 24 }
    lowerValue := 775153680
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 24))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 47, r := 25 }
    lowerValue := 118674233
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 25))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 47, r := 26 }
    lowerValue := 19725558
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 26))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 47, r := 27 }
    lowerValue := 3560898
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 27))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 47, r := 28 }
    lowerValue := 698573
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 28))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28))) },
  { key := { q := 8, n := 47, r := 29 }
    lowerValue := 149061
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 29))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 29))) },
  { key := { q := 8, n := 47, r := 30 }
    lowerValue := 34635
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 30))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 30))) },
  { key := { q := 8, n := 47, r := 31 }
    lowerValue := 8776
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 31))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 31))) },
  { key := { q := 8, n := 47, r := 32 }
    lowerValue := 2429
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 32))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 32))) },
  { key := { q := 8, n := 47, r := 33 }
    lowerValue := 736
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 33))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 38 33))) },
  { key := { q := 8, n := 47, r := 34 }
    lowerValue := 245
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 34))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 39 34))) },
  { key := { q := 8, n := 47, r := 35 }
    lowerValue := 90
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 35))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 41 35))) },
  { key := { q := 8, n := 47, r := 36 }
    lowerValue := 37
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 36))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 42 36))) },
  { key := { q := 8, n := 47, r := 37 }
    lowerValue := 17
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 37))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 43 37))) },
  { key := { q := 8, n := 47, r := 38 }
    lowerValue := 8
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 38))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 44 38))) },
  { key := { q := 8, n := 47, r := 39 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 41 40)))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 45 39))) },
  { key := { q := 8, n := 47, r := 40 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 42 41))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 46 40))) },
  { key := { q := 8, n := 47, r := 41 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 43 42)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 47 41)) },
  { key := { q := 8, n := 47, r := 42 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 44 43))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 47 42)) },
  { key := { q := 8, n := 47, r := 43 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 45 44)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 47 43)) },
  { key := { q := 8, n := 47, r := 44 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 47 44)) },
  { key := { q := 8, n := 47, r := 45 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 47 45)) },
  { key := { q := 8, n := 47, r := 46 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 47 46)) },
  { key := { q := 8, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 47 47)) },
  { key := { q := 8, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 47 48)) },
  { key := { q := 8, n := 48, r := 0 }
    lowerValue := 22300745198530623141535718272648361505980416
    upperValue := 22300745198530623141535718272648361505980416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 48 0)) },
  { key := { q := 8, n := 48, r := 1 }
    lowerValue := 66174318096530038995654950363941725537034
    upperValue := 1393796574908163946345982392040522594123776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 1))
    upperTrace := (.lengthenFreeN 42 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 48, r := 2 }
    lowerValue := 401027624998302849206706077660960662950
    upperValue := 125223911026905354554521855534890701815808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 2))
    upperTrace := (.lengthenFreeN 44 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))) },
  { key := { q := 8, n := 48, r := 3 }
    lowerValue := 3724154139848607862768623742684638229
    upperValue := 15652988878363169319315231941861337726976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 3))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 8, n := 48, r := 4 }
    lowerValue := 47130043929482866138715772239048778
    upperValue := 1956623609795396164914403992732667215872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 4))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 8, n := 48, r := 5 }
    lowerValue := 762369950672004104534299606732975
    upperValue := 244577951224424520614300499091583401984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 5))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 8, n := 48, r := 6 }
    lowerValue := 15139852565078175269975054360657
    upperValue := 30572243903053065076787562386447925248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 6))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 4 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 8, n := 48, r := 7 }
    lowerValue := 359054203316923244485269947181
    upperValue := 1329227995784915872903807060280344576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 7))
    upperTrace := (.lengthenFreeN 39 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 48, r := 8 }
    lowerValue := 9967029328792117820624282013
    upperValue := 166153499473114484112975882535043072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 8))
    upperTrace := (.lengthenFreeN 38 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 48, r := 9 }
    lowerValue := 318970517493066988807886988
    upperValue := 20769187434139310514121985316880384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 9))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 48, r := 10 }
    lowerValue := 11630083872299734193078533
    upperValue := 2596148429267413814265248164610048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 10))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 48, r := 11 }
    lowerValue := 478601963494687817824825
    upperValue := 324518553658426726783156020576256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 11))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 48, r := 12 }
    lowerValue := 22060336209960621971640
    upperValue := 40564819207303340847894502572032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 12))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 48, r := 13 }
    lowerValue := 1131815005595511522568
    upperValue := 5070602400912917605986812821504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 13))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 48, r := 14 }
    lowerValue := 64299797706196983538
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 14))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 48, r := 15 }
    lowerValue := 4027481551230324286
    upperValue := 9903520314283042199192993792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 15))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 48, r := 16 }
    lowerValue := 277122968404284971
    upperValue := 1237940039285380274899124224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 16))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 48, r := 17 }
    lowerValue := 20883695942185177
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 17))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 48, r := 18 }
    lowerValue := 1719238505762969
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 18))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 48, r := 19 }
    lowerValue := 154292396900530
    upperValue := 2417851639229258349412352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 19))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 48, r := 20 }
    lowerValue := 15068952837226
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 20))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 48, r := 21 }
    lowerValue := 1599371896557
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 21))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 48, r := 22 }
    lowerValue := 184278613294
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 22))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 48, r := 23 }
    lowerValue := 23031062124
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 23))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 48, r := 24 }
    lowerValue := 3120589047
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 24))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 48, r := 25 }
    lowerValue := 458271608
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 25))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 48, r := 26 }
    lowerValue := 72939025
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 26))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 48, r := 27 }
    lowerValue := 12584599
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 27))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 48, r := 28 }
    lowerValue := 2354821
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 28))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28))) },
  { key := { q := 8, n := 48, r := 29 }
    lowerValue := 478209
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 29))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 29))) },
  { key := { q := 8, n := 48, r := 30 }
    lowerValue := 105495
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 30))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 30))) },
  { key := { q := 8, n := 48, r := 31 }
    lowerValue := 25312
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 31))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 31))) },
  { key := { q := 8, n := 48, r := 32 }
    lowerValue := 6615
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 32))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 32))) },
  { key := { q := 8, n := 48, r := 33 }
    lowerValue := 1887
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 33))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 38 33))) },
  { key := { q := 8, n := 48, r := 34 }
    lowerValue := 589
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 34))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 39 34))) },
  { key := { q := 8, n := 48, r := 35 }
    lowerValue := 201
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 35))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 41 35))) },
  { key := { q := 8, n := 48, r := 36 }
    lowerValue := 76
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 36))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 42 36))) },
  { key := { q := 8, n := 48, r := 37 }
    lowerValue := 32
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 37))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 43 37))) },
  { key := { q := 8, n := 48, r := 38 }
    lowerValue := 15
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 38))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 44 38))) },
  { key := { q := 8, n := 48, r := 39 }
    lowerValue := 8
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 39))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 45 39))) },
  { key := { q := 8, n := 48, r := 40 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 42 41)))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 46 40))) },
  { key := { q := 8, n := 48, r := 41 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 43 42))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 47 41))) },
  { key := { q := 8, n := 48, r := 42 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 44 43)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 48 42)) },
  { key := { q := 8, n := 48, r := 43 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 45 44))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 48 43)) },
  { key := { q := 8, n := 48, r := 44 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 46 45)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 48 44)) },
  { key := { q := 8, n := 48, r := 45 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 48 45)) },
  { key := { q := 8, n := 48, r := 46 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 48 46)) },
  { key := { q := 8, n := 48, r := 47 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 48 47)) },
  { key := { q := 8, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 48 48)) },
  { key := { q := 9, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 0)) },
  { key := { q := 9, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 1)) },
  { key := { q := 9, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 2)) },
  { key := { q := 9, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 3)) },
  { key := { q := 9, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 4)) },
  { key := { q := 9, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 5)) },
  { key := { q := 9, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 6)) },
  { key := { q := 9, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 7)) },
  { key := { q := 9, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 8)) },
  { key := { q := 9, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 9)) },
  { key := { q := 9, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 10)) },
  { key := { q := 9, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 11)) },
  { key := { q := 9, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 12)) },
  { key := { q := 9, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 13)) },
  { key := { q := 9, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 14)) },
  { key := { q := 9, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 15)) },
  { key := { q := 9, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 16)) },
  { key := { q := 9, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 17)) },
  { key := { q := 9, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 18)) },
  { key := { q := 9, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 19)) },
  { key := { q := 9, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 20)) },
  { key := { q := 9, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 21)) },
  { key := { q := 9, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 22)) },
  { key := { q := 9, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 23)) },
  { key := { q := 9, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 24)) },
  { key := { q := 9, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 25)) },
  { key := { q := 9, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 26)) },
  { key := { q := 9, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 27)) },
  { key := { q := 9, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 28)) },
  { key := { q := 9, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 29)) },
  { key := { q := 9, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 30)) },
  { key := { q := 9, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 31)) },
  { key := { q := 9, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 32)) },
  { key := { q := 9, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 33)) },
  { key := { q := 9, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 34)) },
  { key := { q := 9, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 35)) },
  { key := { q := 9, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 36)) },
  { key := { q := 9, n := 0, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 37))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 37)) },
  { key := { q := 9, n := 0, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 38))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 38)) },
  { key := { q := 9, n := 0, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 39))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 39)) },
  { key := { q := 9, n := 0, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 40))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 40)) },
  { key := { q := 9, n := 0, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 41))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 41)) },
  { key := { q := 9, n := 0, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 42))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 42)) },
  { key := { q := 9, n := 0, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 43))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 43)) },
  { key := { q := 9, n := 0, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 44))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 44)) },
  { key := { q := 9, n := 0, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 45))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 45)) },
  { key := { q := 9, n := 0, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 46))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 46)) },
  { key := { q := 9, n := 0, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 47))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 47)) },
  { key := { q := 9, n := 0, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 0 48))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 0 48)) },
  { key := { q := 9, n := 1, r := 0 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 1 0)) },
  { key := { q := 9, n := 1, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 1))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 1)) },
  { key := { q := 9, n := 1, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 2)) },
  { key := { q := 9, n := 1, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 3)) },
  { key := { q := 9, n := 1, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 4)) },
  { key := { q := 9, n := 1, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 5)) },
  { key := { q := 9, n := 1, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 6)) },
  { key := { q := 9, n := 1, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 7)) },
  { key := { q := 9, n := 1, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 8)) },
  { key := { q := 9, n := 1, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 9)) },
  { key := { q := 9, n := 1, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 10)) },
  { key := { q := 9, n := 1, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 11)) },
  { key := { q := 9, n := 1, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 12)) },
  { key := { q := 9, n := 1, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 13)) },
  { key := { q := 9, n := 1, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 14)) },
  { key := { q := 9, n := 1, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 15)) },
  { key := { q := 9, n := 1, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 16)) },
  { key := { q := 9, n := 1, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 17)) },
  { key := { q := 9, n := 1, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 18)) },
  { key := { q := 9, n := 1, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 19)) },
  { key := { q := 9, n := 1, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 20)) },
  { key := { q := 9, n := 1, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 21)) },
  { key := { q := 9, n := 1, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 22)) },
  { key := { q := 9, n := 1, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 23)) },
  { key := { q := 9, n := 1, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 24)) },
  { key := { q := 9, n := 1, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 25)) },
  { key := { q := 9, n := 1, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 26)) },
  { key := { q := 9, n := 1, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 27)) },
  { key := { q := 9, n := 1, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 28)) },
  { key := { q := 9, n := 1, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 29)) },
  { key := { q := 9, n := 1, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 30)) },
  { key := { q := 9, n := 1, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 31)) },
  { key := { q := 9, n := 1, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 32)) },
  { key := { q := 9, n := 1, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 33)) },
  { key := { q := 9, n := 1, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 34)) },
  { key := { q := 9, n := 1, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 35)) },
  { key := { q := 9, n := 1, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 36)) },
  { key := { q := 9, n := 1, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 37)) },
  { key := { q := 9, n := 1, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 38)) },
  { key := { q := 9, n := 1, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 39)) },
  { key := { q := 9, n := 1, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 40)) },
  { key := { q := 9, n := 1, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 41)) },
  { key := { q := 9, n := 1, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 42)) },
  { key := { q := 9, n := 1, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 43)) },
  { key := { q := 9, n := 1, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 44)) },
  { key := { q := 9, n := 1, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 45)) },
  { key := { q := 9, n := 1, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 46)) },
  { key := { q := 9, n := 1, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 47)) },
  { key := { q := 9, n := 1, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 1 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 1 48)) },
  { key := { q := 9, n := 2, r := 0 }
    lowerValue := 81
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 2 0)) },
  { key := { q := 9, n := 2, r := 1 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 2 1))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 2 1)) },
  { key := { q := 9, n := 2, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 2)) },
  { key := { q := 9, n := 2, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 3)) },
  { key := { q := 9, n := 2, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 4)) },
  { key := { q := 9, n := 2, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 5)) },
  { key := { q := 9, n := 2, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 6)) },
  { key := { q := 9, n := 2, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 7)) },
  { key := { q := 9, n := 2, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 8)) },
  { key := { q := 9, n := 2, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 9)) },
  { key := { q := 9, n := 2, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 10)) },
  { key := { q := 9, n := 2, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 11)) },
  { key := { q := 9, n := 2, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 12)) },
  { key := { q := 9, n := 2, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 13)) },
  { key := { q := 9, n := 2, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 14)) },
  { key := { q := 9, n := 2, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 15)) },
  { key := { q := 9, n := 2, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 16)) },
  { key := { q := 9, n := 2, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 17)) },
  { key := { q := 9, n := 2, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 18)) },
  { key := { q := 9, n := 2, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 19)) },
  { key := { q := 9, n := 2, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 20)) },
  { key := { q := 9, n := 2, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 21)) },
  { key := { q := 9, n := 2, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 22)) },
  { key := { q := 9, n := 2, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 23)) },
  { key := { q := 9, n := 2, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 24)) },
  { key := { q := 9, n := 2, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 25)) },
  { key := { q := 9, n := 2, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 26)) },
  { key := { q := 9, n := 2, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 27)) },
  { key := { q := 9, n := 2, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 28)) },
  { key := { q := 9, n := 2, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 29)) },
  { key := { q := 9, n := 2, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 30)) },
  { key := { q := 9, n := 2, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 31)) },
  { key := { q := 9, n := 2, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 32)) },
  { key := { q := 9, n := 2, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 33)) },
  { key := { q := 9, n := 2, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 34)) },
  { key := { q := 9, n := 2, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 35)) },
  { key := { q := 9, n := 2, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 36)) },
  { key := { q := 9, n := 2, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 37)) },
  { key := { q := 9, n := 2, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 38)) },
  { key := { q := 9, n := 2, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 39)) },
  { key := { q := 9, n := 2, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 40)) },
  { key := { q := 9, n := 2, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 41)) },
  { key := { q := 9, n := 2, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 2 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 2 42)) }]

end CoveringCodes.Database
