import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 85. Do not edit manually.

def precomputedTable_chunk_85 : Array AnyBoundEntry := #[
  { key := { q := 8, n := 41, r := 33 }
    lowerValue := 8
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 38 33))) },
  { key := { q := 8, n := 41, r := 34 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 36 35))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 39 34))) },
  { key := { q := 8, n := 41, r := 35 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 37 36)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 41 35)) },
  { key := { q := 8, n := 41, r := 36 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 38 37))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 41 36)) },
  { key := { q := 8, n := 41, r := 37 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 39 38)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 41 37)) },
  { key := { q := 8, n := 41, r := 38 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 41 38)) },
  { key := { q := 8, n := 41, r := 39 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 41 39)) },
  { key := { q := 8, n := 41, r := 40 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 41 40)) },
  { key := { q := 8, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 41 41)) },
  { key := { q := 8, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 41 42)) },
  { key := { q := 8, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 41 43)) },
  { key := { q := 8, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 41 44)) },
  { key := { q := 8, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 41 45)) },
  { key := { q := 8, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 41 46)) },
  { key := { q := 8, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 41 47)) },
  { key := { q := 8, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 41 48)) },
  { key := { q := 8, n := 42, r := 0 }
    lowerValue := 85070591730234615865843651857942052864
    upperValue := 85070591730234615865843651857942052864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 42 0)) },
  { key := { q := 8, n := 42, r := 1 }
    lowerValue := 288374887221134291070656446976074756
    upperValue := 5316911983139663491615228241121378304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 1))
    upperTrace := (.lengthenFreeN 36 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 42, r := 2 }
    lowerValue := 2002414832177634306229254586619482
    upperValue := 299414001171506871715915310296989696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 2))
    upperTrace := (.lengthenFreeN 34 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 42, r := 3 }
    lowerValue := 21373854616146284855909929403693
    upperValue := 37426750146438358964489413787123712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 8, n := 42, r := 4 }
    lowerValue := 311929184399094536288477333422
    upperValue := 3696469150265516934764386546876416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 4))
    upperTrace := (.lengthenFreeN 34 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 42, r := 5 }
    lowerValue := 5838789911557527217471492332
    upperValue := 462058643783189616845548318359552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 5))
    upperTrace := (.lengthenFreeN 33 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 42, r := 6 }
    lowerValue := 134662602903629936136175189
    upperValue := 57757330472898702105693539794944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 6))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 42, r := 7 }
    lowerValue := 3723076034530704957430067
    upperValue := 5070602400912917605986812821504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 7))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 42, r := 8 }
    lowerValue := 120964327912558153557833
    upperValue := 633825300114114700748351602688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 8))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 42, r := 9 }
    lowerValue := 4550053638636631674734
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 9))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 42, r := 10 }
    lowerValue := 195860470674772477434
    upperValue := 9903520314283042199192993792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 10))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 42, r := 11 }
    lowerValue := 9560199984041141400
    upperValue := 1237940039285380274899124224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 11))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 42, r := 12 }
    lowerValue := 525266586965117849
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 12))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 42, r := 13 }
    lowerValue := 32291697645945832
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 13))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 42, r := 14 }
    lowerValue := 2210460072878747
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 14))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 42, r := 15 }
    lowerValue := 167812321635956
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 15))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 42, r := 16 }
    lowerValue := 14083264517561
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 16))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 42, r := 17 }
    lowerValue := 1303111205672
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 42, r := 18 }
    lowerValue := 132664129117
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 42, r := 19 }
    lowerValue := 14836187347
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 42, r := 20 }
    lowerValue := 1820447645
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 42, r := 21 }
    lowerValue := 244897455
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 42, r := 22 }
    lowerValue := 36104912
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 42, r := 23 }
    lowerValue := 5833191
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 42, r := 24 }
    lowerValue := 1033092
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 42, r := 25 }
    lowerValue := 200703
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 42, r := 26 }
    lowerValue := 42815
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 42, r := 27 }
    lowerValue := 10043
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 42, r := 28 }
    lowerValue := 2595
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28))) },
  { key := { q := 8, n := 42, r := 29 }
    lowerValue := 741
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 29))) },
  { key := { q := 8, n := 42, r := 30 }
    lowerValue := 234
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 30))) },
  { key := { q := 8, n := 42, r := 31 }
    lowerValue := 82
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 31))) },
  { key := { q := 8, n := 42, r := 32 }
    lowerValue := 32
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 32))) },
  { key := { q := 8, n := 42, r := 33 }
    lowerValue := 14
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 38 33))) },
  { key := { q := 8, n := 42, r := 34 }
    lowerValue := 8
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 36 35)))))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 39 34))) },
  { key := { q := 8, n := 42, r := 35 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 37 36))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 41 35))) },
  { key := { q := 8, n := 42, r := 36 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 38 37)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 42 36)) },
  { key := { q := 8, n := 42, r := 37 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 39 38))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 42 37)) },
  { key := { q := 8, n := 42, r := 38 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 40 39)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 42 38)) },
  { key := { q := 8, n := 42, r := 39 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 42 39)) },
  { key := { q := 8, n := 42, r := 40 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 42 40)) },
  { key := { q := 8, n := 42, r := 41 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 42 41)) },
  { key := { q := 8, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 42 42)) },
  { key := { q := 8, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 42 43)) },
  { key := { q := 8, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 42 44)) },
  { key := { q := 8, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 42 45)) },
  { key := { q := 8, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 42 46)) },
  { key := { q := 8, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 42 47)) },
  { key := { q := 8, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 42 48)) },
  { key := { q := 8, n := 43, r := 0 }
    lowerValue := 680564733841876926926749214863536422912
    upperValue := 680564733841876926926749214863536422912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 43 0)) },
  { key := { q := 8, n := 43, r := 1 }
    lowerValue := 2253525608747936844128308658488531202
    upperValue := 42535295865117307932921825928971026432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 1))
    upperTrace := (.lengthenFreeN 37 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 43, r := 2 }
    lowerValue := 15276767914922375966390922688804158
    upperValue := 2395312009372054973727322482375917568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 2))
    upperTrace := (.lengthenFreeN 35 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 43, r := 3 }
    lowerValue := 159102939709316286412930978303167
    upperValue := 299414001171506871715915310296989696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 8, n := 43, r := 4 }
    lowerValue := 2264134638935338635937131985828
    upperValue := 29571753202124135478115092375011328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 4))
    upperTrace := (.lengthenFreeN 35 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 43, r := 5 }
    lowerValue := 41298986172132003615255989517
    upperValue := 3696469150265516934764386546876416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 5))
    upperTrace := (.lengthenFreeN 34 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 43, r := 6 }
    lowerValue := 927552877661450836847314656
    upperValue := 462058643783189616845548318359552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 6))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 43, r := 7 }
    lowerValue := 24955012968756392221307348
    upperValue := 40564819207303340847894502572032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 7))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 43, r := 8 }
    lowerValue := 788405261418115581435255
    upperValue := 5070602400912917605986812821504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 8))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 43, r := 9 }
    lowerValue := 28813676599391755230228
    upperValue := 633825300114114700748351602688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 9))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 43, r := 10 }
    lowerValue := 1204072377087815387634
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 10))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 43, r := 11 }
    lowerValue := 57004397285311500694
    upperValue := 9903520314283042199192993792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 11))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 43, r := 12 }
    lowerValue := 3034904309530541184
    upperValue := 1237940039285380274899124224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 12))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 43, r := 13 }
    lowerValue := 180610233757186306
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 13))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 43, r := 14 }
    lowerValue := 11955135457126202
    upperValue := 2417851639229258349412352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 14))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 43, r := 15 }
    lowerValue := 876635515687464
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 15))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 43, r := 16 }
    lowerValue := 70972616688021
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 16))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 43, r := 17 }
    lowerValue := 6326921209006
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 17))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 43, r := 18 }
    lowerValue := 619694249424
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 43, r := 19 }
    lowerValue := 66573690946
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 43, r := 20 }
    lowerValue := 7834421290
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 43, r := 21 }
    lowerValue := 1009011757
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 43, r := 22 }
    lowerValue := 142145261
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 43, r := 23 }
    lowerValue := 21899078
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 43, r := 24 }
    lowerValue := 3690042
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 43, r := 25 }
    lowerValue := 680372
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 43, r := 26 }
    lowerValue := 137377
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 43, r := 27 }
    lowerValue := 30410
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 43, r := 28 }
    lowerValue := 7391
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28))) },
  { key := { q := 8, n := 43, r := 29 }
    lowerValue := 1976
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 29))) },
  { key := { q := 8, n := 43, r := 30 }
    lowerValue := 583
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 30))) },
  { key := { q := 8, n := 43, r := 31 }
    lowerValue := 190
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 31))) },
  { key := { q := 8, n := 43, r := 32 }
    lowerValue := 69
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 32))) },
  { key := { q := 8, n := 43, r := 33 }
    lowerValue := 28
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 38 33))) },
  { key := { q := 8, n := 43, r := 34 }
    lowerValue := 13
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 39 34))) },
  { key := { q := 8, n := 43, r := 35 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 37 36)))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 41 35))) },
  { key := { q := 8, n := 43, r := 36 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 38 37))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 42 36))) },
  { key := { q := 8, n := 43, r := 37 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 39 38)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 43 37)) },
  { key := { q := 8, n := 43, r := 38 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 40 39))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 43 38)) },
  { key := { q := 8, n := 43, r := 39 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 41 40)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 43 39)) },
  { key := { q := 8, n := 43, r := 40 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 43 40)) },
  { key := { q := 8, n := 43, r := 41 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 43 41)) },
  { key := { q := 8, n := 43, r := 42 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 43 42)) },
  { key := { q := 8, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 43 43)) },
  { key := { q := 8, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 43 44)) },
  { key := { q := 8, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 43 45)) },
  { key := { q := 8, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 43 46)) },
  { key := { q := 8, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 43 47)) },
  { key := { q := 8, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 43 48)) },
  { key := { q := 8, n := 44, r := 0 }
    lowerValue := 5444517870735015415413993718908291383296
    upperValue := 5444517870735015415413993718908291383296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 44 0)) },
  { key := { q := 8, n := 44, r := 1 }
    lowerValue := 17619798934417525616226516889670845901
    upperValue := 340282366920938463463374607431768211456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 1))
    upperTrace := (.lengthenFreeN 38 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 44, r := 2 }
    lowerValue := 116677407597775869862931952915763912
    upperValue := 19162496074976439789818579859007340544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 2))
    upperTrace := (.lengthenFreeN 36 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 44, r := 3 }
    lowerValue := 1186336178119804507477411034646109
    upperValue := 2395312009372054973727322482375917568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 3))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 8, n := 44, r := 4 }
    lowerValue := 16472208127619537405198566799183
    upperValue := 236574025616993083824920739000090624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 4))
    upperTrace := (.lengthenFreeN 36 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 44, r := 5 }
    lowerValue := 292982787008017694052964898196
    upperValue := 29571753202124135478115092375011328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 5))
    upperTrace := (.lengthenFreeN 35 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 44, r := 6 }
    lowerValue := 6412304760102408470655038561
    upperValue := 3696469150265516934764386546876416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 6))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 44, r := 7 }
    lowerValue := 168000702236387638821750084
    upperValue := 324518553658426726783156020576256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 7))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 44, r := 8 }
    lowerValue := 5164995864533008362438378
    upperValue := 40564819207303340847894502572032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 8))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 44, r := 9 }
    lowerValue := 183551813695839805233486
    upperValue := 5070602400912917605986812821504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 9))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 44, r := 10 }
    lowerValue := 7452571048913563605942
    upperValue := 633825300114114700748351602688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 10))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 44, r := 11 }
    lowerValue := 342522786747047754618
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 11))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 44, r := 12 }
    lowerValue := 17687484166635369142
    upperValue := 9903520314283042199192993792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 12))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 44, r := 13 }
    lowerValue := 1019981100902019174
    upperValue := 1237940039285380274899124224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 13))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 44, r := 14 }
    lowerValue := 65357578562708624
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 14))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 44, r := 15 }
    lowerValue := 4634329994673524
    upperValue := 2417851639229258349412352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 15))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 44, r := 16 }
    lowerValue := 362400645487353
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 16))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 44, r := 17 }
    lowerValue := 31166684305306
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 17))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 44, r := 18 }
    lowerValue := 2941087458865
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 44, r := 19 }
    lowerValue := 303987843328
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 44, r := 20 }
    lowerValue := 34365960598
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 44, r := 21 }
    lowerValue := 4245018982
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 44, r := 22 }
    lowerValue := 572551672
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 44, r := 23 }
    lowerValue := 84290893
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 44, r := 24 }
    lowerValue := 13544450
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 44, r := 25 }
    lowerValue := 2376156
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 44, r := 26 }
    lowerValue := 455380
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 44, r := 27 }
    lowerValue := 95421
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 44, r := 28 }
    lowerValue := 21889
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28))) },
  { key := { q := 8, n := 44, r := 29 }
    lowerValue := 5505
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 29))) },
  { key := { q := 8, n := 44, r := 30 }
    lowerValue := 1521
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 30))) },
  { key := { q := 8, n := 44, r := 31 }
    lowerValue := 463
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 31))) },
  { key := { q := 8, n := 44, r := 32 }
    lowerValue := 156
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 32))) },
  { key := { q := 8, n := 44, r := 33 }
    lowerValue := 58
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 38 33))) },
  { key := { q := 8, n := 44, r := 34 }
    lowerValue := 24
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 39 34))) },
  { key := { q := 8, n := 44, r := 35 }
    lowerValue := 11
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 35))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 41 35))) },
  { key := { q := 8, n := 44, r := 36 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 38 37)))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 42 36))) },
  { key := { q := 8, n := 44, r := 37 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 39 38))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 43 37))) },
  { key := { q := 8, n := 44, r := 38 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 40 39)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 44 38)) },
  { key := { q := 8, n := 44, r := 39 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 41 40))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 44 39)) },
  { key := { q := 8, n := 44, r := 40 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 42 41)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 44 40)) },
  { key := { q := 8, n := 44, r := 41 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 44 41)) },
  { key := { q := 8, n := 44, r := 42 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 44 42)) },
  { key := { q := 8, n := 44, r := 43 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 44 43)) },
  { key := { q := 8, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 44 44)) },
  { key := { q := 8, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 44 45)) },
  { key := { q := 8, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 44 46)) },
  { key := { q := 8, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 44 47)) },
  { key := { q := 8, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 44 48)) },
  { key := { q := 8, n := 45, r := 0 }
    lowerValue := 43556142965880123323311949751266331066368
    upperValue := 43556142965880123323311949751266331066368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 45 0)) },
  { key := { q := 8, n := 45, r := 1 }
    lowerValue := 137835895461645959883898575162235224894
    upperValue := 2722258935367507707706996859454145691648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 1))
    upperTrace := (.lengthenFreeN 39 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 45, r := 2 }
    lowerValue := 892068630768035950585998233549058516
    upperValue := 153299968599811518318548638872058724352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 2))
    upperTrace := (.lengthenFreeN 37 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 45, r := 3 }
    lowerValue := 8860085111110774565990686272174821
    upperValue := 19162496074976439789818579859007340544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 3))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 8, n := 45, r := 4 }
    lowerValue := 120104187878820288906184561845421
    upperValue := 1892592204935944670599365912000724992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 4))
    upperTrace := (.lengthenFreeN 37 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 45, r := 5 }
    lowerValue := 2084349451913397445946138098872
    upperValue := 236574025616993083824920739000090624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 5))
    upperTrace := (.lengthenFreeN 36 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 45, r := 6 }
    lowerValue := 44483403041195454926602592942
    upperValue := 29571753202124135478115092375011328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 6))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 45, r := 7 }
    lowerValue := 1135717174108028212484484683
    upperValue := 2596148429267413814265248164610048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 7))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 45, r := 8 }
    lowerValue := 34002402904179595539325013
    upperValue := 324518553658426726783156020576256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 8))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 45, r := 9 }
    lowerValue := 1175894757738290278492050
    upperValue := 40564819207303340847894502572032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 9))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 45, r := 10 }
    lowerValue := 46425726431735764767211
    upperValue := 5070602400912917605986812821504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 10))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 45, r := 11 }
    lowerValue := 2073190380310290663453
    upperValue := 633825300114114700748351602688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 11))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 45, r := 12 }
    lowerValue := 103931535603036739444
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 12))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 45, r := 13 }
    lowerValue := 5813233619048396066
    upperValue := 9903520314283042199192993792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 13))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 45, r := 14 }
    lowerValue := 360956805644173382
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 14))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 45, r := 15 }
    lowerValue := 24776697434211268
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 15))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 45, r := 16 }
    lowerValue := 1873604996148458
    upperValue := 2417851639229258349412352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 16))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 45, r := 17 }
    lowerValue := 155638443589850
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 17))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 45, r := 18 }
    lowerValue := 14169095207619
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 18))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 45, r := 19 }
    lowerValue := 1411015059426
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 45, r := 20 }
    lowerValue := 153474869789
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 45, r := 21 }
    lowerValue := 18212442662
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 45, r := 22 }
    lowerValue := 2356018760
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 45, r := 23 }
    lowerValue := 332092847
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 45, r := 24 }
    lowerValue := 50995455
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 45, r := 25 }
    lowerValue := 8531835
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 45, r := 26 }
    lowerValue := 1555843
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 45, r := 27 }
    lowerValue := 309458
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 45, r := 28 }
    lowerValue := 67202
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28))) },
  { key := { q := 8, n := 45, r := 29 }
    lowerValue := 15954
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 29))) },
  { key := { q := 8, n := 45, r := 30 }
    lowerValue := 4147
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 30))) },
  { key := { q := 8, n := 45, r := 31 }
    lowerValue := 1183
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 31))) },
  { key := { q := 8, n := 45, r := 32 }
    lowerValue := 371
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 32))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 32))) },
  { key := { q := 8, n := 45, r := 33 }
    lowerValue := 129
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 33))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 38 33))) },
  { key := { q := 8, n := 45, r := 34 }
    lowerValue := 49
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 34))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 39 34))) },
  { key := { q := 8, n := 45, r := 35 }
    lowerValue := 21
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 41 35))) },
  { key := { q := 8, n := 45, r := 36 }
    lowerValue := 10
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 42 36))) },
  { key := { q := 8, n := 45, r := 37 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 39 38)))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 43 37))) },
  { key := { q := 8, n := 45, r := 38 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 40 39))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 44 38))) },
  { key := { q := 8, n := 45, r := 39 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 41 40)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 45 39)) },
  { key := { q := 8, n := 45, r := 40 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 42 41))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 45 40)) },
  { key := { q := 8, n := 45, r := 41 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 43 42)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 45 41)) },
  { key := { q := 8, n := 45, r := 42 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 45 42)) },
  { key := { q := 8, n := 45, r := 43 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 45 43)) },
  { key := { q := 8, n := 45, r := 44 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 45 44)) },
  { key := { q := 8, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 45 45)) },
  { key := { q := 8, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 45 46)) },
  { key := { q := 8, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 45 47)) },
  { key := { q := 8, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 45 48)) },
  { key := { q := 8, n := 46, r := 0 }
    lowerValue := 348449143727040986586495598010130648530944
    upperValue := 348449143727040986586495598010130648530944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 46 0)) },
  { key := { q := 8, n := 46, r := 1 }
    lowerValue := 1078789918659569617914847052662943184307
    upperValue := 21778071482940061661655974875633165533184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 1))
    upperTrace := (.lengthenFreeN 40 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 46, r := 2 }
    lowerValue := 6827249181532211030731917355894248375
    upperValue := 1226399748798492146548389110976469794816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 2))
    upperTrace := (.lengthenFreeN 38 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 46, r := 3 }
    lowerValue := 66273080325384789275335626192306075
    upperValue := 153299968599811518318548638872058724352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 3))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 8, n := 46, r := 4 }
    lowerValue := 877562052049001831940773877875825
    upperValue := 15140737639487557364794927296005799936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 4))
    upperTrace := (.lengthenFreeN 38 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 46, r := 5 }
    lowerValue := 14868541717809787293873876878772
    upperValue := 1892592204935944670599365912000724992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 5))
    upperTrace := (.lengthenFreeN 37 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 46, r := 6 }
    lowerValue := 309613621133189746878744859853
    upperValue := 236574025616993083824920739000090624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 6))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 46, r := 7 }
    lowerValue := 7708146698137451184579720068
    upperValue := 20769187434139310514121985316880384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 7))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 46, r := 8 }
    lowerValue := 224888446209186015659527291
    upperValue := 2596148429267413814265248164610048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 8))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 46, r := 9 }
    lowerValue := 7573720382840394515992473
    upperValue := 324518553658426726783156020576256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 9))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 46, r := 10 }
    lowerValue := 290986386232518821949176
    upperValue := 40564819207303340847894502572032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 10))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 46, r := 11 }
    lowerValue := 12635698723369965036923
    upperValue := 5070602400912917605986812821504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 11))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 46, r := 12 }
    lowerValue := 615471856561321673325
    upperValue := 633825300114114700748351602688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 12))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 46, r := 13 }
    lowerValue := 33420598669509790306
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 13))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 46, r := 14 }
    lowerValue := 2012799551978975761
    upperValue := 1237940039285380274899124224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 14))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 46, r := 15 }
    lowerValue := 133883580833900972
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 15))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 46, r := 16 }
    lowerValue := 9800871299330048
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 16))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 46, r := 17 }
    lowerValue := 787303875733649
    upperValue := 2417851639229258349412352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 17))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 46, r := 18 }
    lowerValue := 69232796944237
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 18))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 46, r := 19 }
    lowerValue := 6651464663159
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 46, r := 20 }
    lowerValue := 697064954516
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 20))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 46, r := 21 }
    lowerValue := 79588060455
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 46, r := 22 }
    lowerValue := 9891227963
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 46, r := 23 }
    lowerValue := 1337273846
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 46, r := 24 }
    lowerValue := 196618007
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 24))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 46, r := 25 }
    lowerValue := 31437245
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 25))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 46, r := 26 }
    lowerValue := 5467487
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 26))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 46, r := 27 }
    lowerValue := 1034845
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 27))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 46, r := 28 }
    lowerValue := 213328
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 28))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28))) },
  { key := { q := 8, n := 46, r := 29 }
    lowerValue := 47948
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 29))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 29))) },
  { key := { q := 8, n := 46, r := 30 }
    lowerValue := 11767
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 30))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 30))) },
  { key := { q := 8, n := 46, r := 31 }
    lowerValue := 3158
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 31))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 31))) },
  { key := { q := 8, n := 46, r := 32 }
    lowerValue := 929
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 32))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 32))) },
  { key := { q := 8, n := 46, r := 33 }
    lowerValue := 300
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 33))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 38 33))) },
  { key := { q := 8, n := 46, r := 34 }
    lowerValue := 107
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 34))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 39 34))) },
  { key := { q := 8, n := 46, r := 35 }
    lowerValue := 42
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 35))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 41 35))) },
  { key := { q := 8, n := 46, r := 36 }
    lowerValue := 19
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 36))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 42 36))) },
  { key := { q := 8, n := 46, r := 37 }
    lowerValue := 9
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 46 37))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 43 37))) }]

end CoveringCodes.Database
