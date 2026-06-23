import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 47. Do not edit manually.

def precomputedTable_chunk_47 : Array AnyBoundEntry := #[
  { key := { q := 4, n := 43, r := 39 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 41 40)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 39)) },
  { key := { q := 4, n := 43, r := 40 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 40)) },
  { key := { q := 4, n := 43, r := 41 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 41)) },
  { key := { q := 4, n := 43, r := 42 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 42)) },
  { key := { q := 4, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 43 43)) },
  { key := { q := 4, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 43 44)) },
  { key := { q := 4, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 43 45)) },
  { key := { q := 4, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 43 46)) },
  { key := { q := 4, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 43 47)) },
  { key := { q := 4, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 43 48)) },
  { key := { q := 4, n := 44, r := 0 }
    lowerValue := 309485009821345068724781056
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 44 0)) },
  { key := { q := 4, n := 44, r := 1 }
    lowerValue := 2326954961062744877629933
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 1))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 44, r := 2 }
    lowerValue := 35791026925100620877158
    upperValue := 4835703278458516698824704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 2))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 44, r := 3 }
    lowerValue := 845044875070228319863
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 3))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 44, r := 4 }
    lowerValue := 27238444999469732770
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 4))
    upperTrace := (.lengthenFreeN 19 (@UpperTrace.alphabetExpand 2 4 2 25 4 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4))))) },
  { key := { q := 4, n := 44, r := 5 }
    lowerValue := 1124328816102683654
    upperValue := 9444732965739290427392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 5))
    upperTrace := (.lengthenFreeN 15 (@UpperTrace.alphabetExpand 2 4 2 29 5 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))))) },
  { key := { q := 4, n := 44, r := 6 }
    lowerValue := 57086747929137141
    upperValue := 2361183241434822606848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 6))
    upperTrace := (.lengthenFreeN 13 (@UpperTrace.alphabetExpand 2 4 2 31 6 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))))) },
  { key := { q := 4, n := 44, r := 7 }
    lowerValue := 3468458849825656
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 7))
    upperTrace := (.lengthenFreeN 10 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 44, r := 8 }
    lowerValue := 247182300846870
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 8))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 44, r := 9 }
    lowerValue := 20352914459374
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 9))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 44, r := 10 }
    lowerValue := 1913689269321
    upperValue := 4611686018427387904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 10))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 44, r := 11 }
    lowerValue := 203565424444
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 11))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 44, r := 12 }
    lowerValue := 24313808414
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 12))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 44, r := 13 }
    lowerValue := 3240718284
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 13))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 44, r := 14 }
    lowerValue := 479577128
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 14))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 44, r := 15 }
    lowerValue := 78463676
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 15))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 44, r := 16 }
    lowerValue := 14143028
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 16))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 44, r := 17 }
    lowerValue := 2800305
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 17))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 44, r := 18 }
    lowerValue := 607573
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 44, r := 19 }
    lowerValue := 144161
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 44, r := 20 }
    lowerValue := 37346
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 44, r := 21 }
    lowerValue := 10549
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 44, r := 22 }
    lowerValue := 3246
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 44, r := 23 }
    lowerValue := 1087
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 44, r := 24 }
    lowerValue := 396
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24))) },
  { key := { q := 4, n := 44, r := 25 }
    lowerValue := 157
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 25))) },
  { key := { q := 4, n := 44, r := 26 }
    lowerValue := 68
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 26))) },
  { key := { q := 4, n := 44, r := 27 }
    lowerValue := 32
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 27))) },
  { key := { q := 4, n := 44, r := 28 }
    lowerValue := 16
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 28))) },
  { key := { q := 4, n := 44, r := 29 }
    lowerValue := 9
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 29))) },
  { key := { q := 4, n := 44, r := 30 }
    lowerValue := 6
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 30))) },
  { key := { q := 4, n := 44, r := 31 }
    lowerValue := 4
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 31))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 31))) },
  { key := { q := 4, n := 44, r := 32 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 34 33)))))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 32))) },
  { key := { q := 4, n := 44, r := 33 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 35 34))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 44 33)) },
  { key := { q := 4, n := 44, r := 34 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 36 35)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 44 34)) },
  { key := { q := 4, n := 44, r := 35 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 37 36))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 44 35)) },
  { key := { q := 4, n := 44, r := 36 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 38 37)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 44 36)) },
  { key := { q := 4, n := 44, r := 37 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 39 38))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 44 37)) },
  { key := { q := 4, n := 44, r := 38 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 40 39)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 44 38)) },
  { key := { q := 4, n := 44, r := 39 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 41 40))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 44 39)) },
  { key := { q := 4, n := 44, r := 40 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 42 41)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 44 40)) },
  { key := { q := 4, n := 44, r := 41 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 44 41)) },
  { key := { q := 4, n := 44, r := 42 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 44 42)) },
  { key := { q := 4, n := 44, r := 43 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 44 43)) },
  { key := { q := 4, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 44 44)) },
  { key := { q := 4, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 44 45)) },
  { key := { q := 4, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 44 46)) },
  { key := { q := 4, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 44 47)) },
  { key := { q := 4, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 44 48)) },
  { key := { q := 4, n := 45, r := 0 }
    lowerValue := 1237940039285380274899124224
    upperValue := 1237940039285380274899124224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 45 0)) },
  { key := { q := 4, n := 45, r := 1 }
    lowerValue := 9102500288863090256611208
    upperValue := 77371252455336267181195264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 1))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 45, r := 2 }
    lowerValue := 136849440557747100917436
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 2))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 45, r := 3 }
    lowerValue := 3156593058436468001355
    upperValue := 4835703278458516698824704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 3))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 45, r := 4 }
    lowerValue := 99346985775228537215
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 4))
    upperTrace := (.lengthenFreeN 20 (@UpperTrace.alphabetExpand 2 4 2 25 4 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4))))) },
  { key := { q := 4, n := 45, r := 5 }
    lowerValue := 4001768904009233100
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 5))
    upperTrace := (.lengthenFreeN 16 (@UpperTrace.alphabetExpand 2 4 2 29 5 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))))) },
  { key := { q := 4, n := 45, r := 6 }
    lowerValue := 198162450429347856
    upperValue := 9444732965739290427392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 6))
    upperTrace := (.lengthenFreeN 14 (@UpperTrace.alphabetExpand 2 4 2 31 6 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))))) },
  { key := { q := 4, n := 45, r := 7 }
    lowerValue := 11734882408410325
    upperValue := 1180591620717411303424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 7))
    upperTrace := (.lengthenFreeN 11 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 45, r := 8 }
    lowerValue := 814575265994083
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 8))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 45, r := 9 }
    lowerValue := 65285014040317
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 9))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 45, r := 10 }
    lowerValue := 5970595611090
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 10))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 45, r := 11 }
    lowerValue := 617276500409
    upperValue := 4611686018427387904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 11))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 45, r := 12 }
    lowerValue := 71599683483
    upperValue := 288230376151711744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 12))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 45, r := 13 }
    lowerValue := 9260111471
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 13))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 45, r := 14 }
    lowerValue := 1328510382
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 14))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 45, r := 15 }
    lowerValue := 210523414
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 15))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 45, r := 16 }
    lowerValue := 36717300
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 16))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 45, r := 17 }
    lowerValue := 7027127
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 45, r := 18 }
    lowerValue := 1472101
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 45, r := 19 }
    lowerValue := 336860
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 45, r := 20 }
    lowerValue := 84056
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 45, r := 21 }
    lowerValue := 22840
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 45, r := 22 }
    lowerValue := 6751
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 45, r := 23 }
    lowerValue := 2169
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 45, r := 24 }
    lowerValue := 757
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24))) },
  { key := { q := 4, n := 45, r := 25 }
    lowerValue := 287
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 25))) },
  { key := { q := 4, n := 45, r := 26 }
    lowerValue := 118
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 26))) },
  { key := { q := 4, n := 45, r := 27 }
    lowerValue := 53
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 27))) },
  { key := { q := 4, n := 45, r := 28 }
    lowerValue := 26
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 28))) },
  { key := { q := 4, n := 45, r := 29 }
    lowerValue := 14
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 29))) },
  { key := { q := 4, n := 45, r := 30 }
    lowerValue := 8
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 30))) },
  { key := { q := 4, n := 45, r := 31 }
    lowerValue := 5
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 31))) },
  { key := { q := 4, n := 45, r := 32 }
    lowerValue := 4
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 32))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 32))) },
  { key := { q := 4, n := 45, r := 33 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 35 34)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 45 33)) },
  { key := { q := 4, n := 45, r := 34 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 36 35))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 45 34)) },
  { key := { q := 4, n := 45, r := 35 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 37 36)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 45 35)) },
  { key := { q := 4, n := 45, r := 36 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 38 37))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 45 36)) },
  { key := { q := 4, n := 45, r := 37 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 39 38)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 45 37)) },
  { key := { q := 4, n := 45, r := 38 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 40 39))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 45 38)) },
  { key := { q := 4, n := 45, r := 39 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 41 40)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 45 39)) },
  { key := { q := 4, n := 45, r := 40 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 42 41))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 45 40)) },
  { key := { q := 4, n := 45, r := 41 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 43 42)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 45 41)) },
  { key := { q := 4, n := 45, r := 42 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 45 42)) },
  { key := { q := 4, n := 45, r := 43 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 45 43)) },
  { key := { q := 4, n := 45, r := 44 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 45 44)) },
  { key := { q := 4, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 45 45)) },
  { key := { q := 4, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 45 46)) },
  { key := { q := 4, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 45 47)) },
  { key := { q := 4, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 45 48)) },
  { key := { q := 4, n := 46, r := 0 }
    lowerValue := 4951760157141521099596496896
    upperValue := 4951760157141521099596496896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 46 0)) },
  { key := { q := 4, n := 46, r := 1 }
    lowerValue := 35624173792385043881989187
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 1))
    upperTrace := (.lengthenFreeN 41 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 46, r := 2 }
    lowerValue := 523774080509998000803522
    upperValue := 77371252455336267181195264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 2))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 46, r := 3 }
    lowerValue := 11809193485410744930045
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 3))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 46, r := 4 }
    lowerValue := 363104171664896479838
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 4))
    upperTrace := (.lengthenFreeN 21 (@UpperTrace.alphabetExpand 2 4 2 25 4 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4))))) },
  { key := { q := 4, n := 46, r := 5 }
    lowerValue := 14281292984708205424
    upperValue := 151115727451828646838272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 5))
    upperTrace := (.lengthenFreeN 17 (@UpperTrace.alphabetExpand 2 4 2 29 5 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))))) },
  { key := { q := 4, n := 46, r := 6 }
    lowerValue := 690127171352978163
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 6))
    upperTrace := (.lengthenFreeN 15 (@UpperTrace.alphabetExpand 2 4 2 31 6 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))))) },
  { key := { q := 4, n := 46, r := 7 }
    lowerValue := 39858456087804216
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 7))
    upperTrace := (.lengthenFreeN 12 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 46, r := 8 }
    lowerValue := 2696723069033072
    upperValue := 1180591620717411303424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 8))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 46, r := 9 }
    lowerValue := 210522417034482
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 9))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 46, r := 10 }
    lowerValue := 18740644553933
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 10))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 46, r := 11 }
    lowerValue := 1884586077208
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 11))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 46, r := 12 }
    lowerValue := 212465332049
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 12))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 46, r := 13 }
    lowerValue := 26686292250
    upperValue := 288230376151711744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 13))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 46, r := 14 }
    lowerValue := 3715079617
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 14))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 46, r := 15 }
    lowerValue := 570757217
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 15))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 46, r := 16 }
    lowerValue := 96419662
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 16))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 46, r := 17 }
    lowerValue := 17856263
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 17))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 46, r := 18 }
    lowerValue := 3615922
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 46, r := 19 }
    lowerValue := 798961
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 46, r := 20 }
    lowerValue := 192284
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 46, r := 21 }
    lowerValue := 50331
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 46, r := 22 }
    lowerValue := 14312
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 46, r := 23 }
    lowerValue := 4417
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 46, r := 24 }
    lowerValue := 1479
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24))) },
  { key := { q := 4, n := 46, r := 25 }
    lowerValue := 537
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 25))) },
  { key := { q := 4, n := 46, r := 26 }
    lowerValue := 211
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 26))) },
  { key := { q := 4, n := 46, r := 27 }
    lowerValue := 90
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 27))) },
  { key := { q := 4, n := 46, r := 28 }
    lowerValue := 42
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 28))) },
  { key := { q := 4, n := 46, r := 29 }
    lowerValue := 21
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 29))) },
  { key := { q := 4, n := 46, r := 30 }
    lowerValue := 12
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 30))) },
  { key := { q := 4, n := 46, r := 31 }
    lowerValue := 7
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 31))) },
  { key := { q := 4, n := 46, r := 32 }
    lowerValue := 5
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 32))) },
  { key := { q := 4, n := 46, r := 33 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 35 34))))))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 45 33))) },
  { key := { q := 4, n := 46, r := 34 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 36 35)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 46 34)) },
  { key := { q := 4, n := 46, r := 35 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 37 36))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 46 35)) },
  { key := { q := 4, n := 46, r := 36 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 38 37)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 46 36)) },
  { key := { q := 4, n := 46, r := 37 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 39 38))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 46 37)) },
  { key := { q := 4, n := 46, r := 38 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 40 39)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 46 38)) },
  { key := { q := 4, n := 46, r := 39 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 41 40))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 46 39)) },
  { key := { q := 4, n := 46, r := 40 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 42 41)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 46 40)) },
  { key := { q := 4, n := 46, r := 41 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 43 42))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 46 41)) },
  { key := { q := 4, n := 46, r := 42 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 44 43)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 46 42)) },
  { key := { q := 4, n := 46, r := 43 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 46 43)) },
  { key := { q := 4, n := 46, r := 44 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 46 44)) },
  { key := { q := 4, n := 46, r := 45 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 46 45)) },
  { key := { q := 4, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 46 46)) },
  { key := { q := 4, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 46 47)) },
  { key := { q := 4, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 46 48)) },
  { key := { q := 4, n := 47, r := 0 }
    lowerValue := 19807040628566084398385987584
    upperValue := 19807040628566084398385987584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 47 0)) },
  { key := { q := 4, n := 47, r := 1 }
    lowerValue := 139486201609620312664690054
    upperValue := 1237940039285380274899124224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 1))
    upperTrace := (.lengthenFreeN 42 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 47, r := 2 }
    lowerValue := 2006589061753225042891905
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 2))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 47, r := 3 }
    lowerValue := 44244142255930816926496
    upperValue := 77371252455336267181195264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 3))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 47, r := 4 }
    lowerValue := 1329756304618776184849
    upperValue := 4835703278458516698824704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 4))
    upperTrace := (.lengthenFreeN 22 (@UpperTrace.alphabetExpand 2 4 2 25 4 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4))))) },
  { key := { q := 4, n := 47, r := 5 }
    lowerValue := 51096164167890636774
    upperValue := 604462909807314587353088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 5))
    upperTrace := (.lengthenFreeN 18 (@UpperTrace.alphabetExpand 2 4 2 29 5 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))))) },
  { key := { q := 4, n := 47, r := 6 }
    lowerValue := 2410984472946279908
    upperValue := 151115727451828646838272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 6))
    upperTrace := (.lengthenFreeN 16 (@UpperTrace.alphabetExpand 2 4 2 31 6 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))))) },
  { key := { q := 4, n := 47, r := 7 }
    lowerValue := 135888933076115961
    upperValue := 18889465931478580854784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 7))
    upperTrace := (.lengthenFreeN 13 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 47, r := 8 }
    lowerValue := 8966865462101026
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 8))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 47, r := 9 }
    lowerValue := 682297040171905
    upperValue := 1180591620717411303424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 9))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 47, r := 10 }
    lowerValue := 59162651849676
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 10))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 47, r := 11 }
    lowerValue := 5791223194061
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 11))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 47, r := 12 }
    lowerValue := 635070662713
    upperValue := 4611686018427387904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 12))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 47, r := 13 }
    lowerValue := 77530840504
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 13))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 47, r := 14 }
    lowerValue := 10482441234
    upperValue := 288230376151711744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 14))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 47, r := 15 }
    lowerValue := 1562757521
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 15))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 47, r := 16 }
    lowerValue := 255958981
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 16))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 47, r := 17 }
    lowerValue := 45915398
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 17))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 47, r := 18 }
    lowerValue := 8997601
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 47, r := 19 }
    lowerValue := 1921885
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 47, r := 20 }
    lowerValue := 446651
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 47, r := 21 }
    lowerValue := 112770
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 47, r := 22 }
    lowerValue := 30894
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 47, r := 23 }
    lowerValue := 9174
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 47, r := 24 }
    lowerValue := 2951
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24))) },
  { key := { q := 4, n := 47, r := 25 }
    lowerValue := 1028
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 25))) },
  { key := { q := 4, n := 47, r := 26 }
    lowerValue := 387
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 26))) },
  { key := { q := 4, n := 47, r := 27 }
    lowerValue := 158
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 27))) },
  { key := { q := 4, n := 47, r := 28 }
    lowerValue := 70
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 28))) },
  { key := { q := 4, n := 47, r := 29 }
    lowerValue := 34
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 29))) },
  { key := { q := 4, n := 47, r := 30 }
    lowerValue := 18
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 30))) },
  { key := { q := 4, n := 47, r := 31 }
    lowerValue := 10
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 31))) },
  { key := { q := 4, n := 47, r := 32 }
    lowerValue := 6
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 32))) },
  { key := { q := 4, n := 47, r := 33 }
    lowerValue := 4
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 33))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 45 33))) },
  { key := { q := 4, n := 47, r := 34 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 36 35))))))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 46 34))) },
  { key := { q := 4, n := 47, r := 35 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 37 36)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 47 35)) },
  { key := { q := 4, n := 47, r := 36 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 38 37))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 47 36)) },
  { key := { q := 4, n := 47, r := 37 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 39 38)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 47 37)) },
  { key := { q := 4, n := 47, r := 38 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 40 39))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 47 38)) },
  { key := { q := 4, n := 47, r := 39 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 41 40)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 47 39)) },
  { key := { q := 4, n := 47, r := 40 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 42 41))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 47 40)) },
  { key := { q := 4, n := 47, r := 41 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 43 42)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 47 41)) },
  { key := { q := 4, n := 47, r := 42 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 44 43))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 47 42)) },
  { key := { q := 4, n := 47, r := 43 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 45 44)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 47 43)) },
  { key := { q := 4, n := 47, r := 44 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 47 44)) },
  { key := { q := 4, n := 47, r := 45 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 47 45)) },
  { key := { q := 4, n := 47, r := 46 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 47 46)) },
  { key := { q := 4, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 47 47)) },
  { key := { q := 4, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 47 48)) },
  { key := { q := 4, n := 48, r := 0 }
    lowerValue := 79228162514264337593543950336
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 48 0)) },
  { key := { q := 4, n := 48, r := 1 }
    lowerValue := 546401120788029914438234141
    upperValue := 4951760157141521099596496896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 1))
    upperTrace := (.lengthenFreeN 43 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 48, r := 2 }
    lowerValue := 7694295670026642477764782
    upperValue := 1237940039285380274899124224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 2))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 48, r := 3 }
    lowerValue := 165996204635481516635716
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 3))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 48, r := 4 }
    lowerValue := 4879101492546055099441
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 4))
    upperTrace := (.lengthenFreeN 23 (@UpperTrace.alphabetExpand 2 4 2 25 4 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4))))) },
  { key := { q := 4, n := 48, r := 5 }
    lowerValue := 183259323186792824559
    upperValue := 2417851639229258349412352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 5))
    upperTrace := (.lengthenFreeN 19 (@UpperTrace.alphabetExpand 2 4 2 29 5 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))))) },
  { key := { q := 4, n := 48, r := 6 }
    lowerValue := 8448065976840764983
    upperValue := 604462909807314587353088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 6))
    upperTrace := (.lengthenFreeN 17 (@UpperTrace.alphabetExpand 2 4 2 31 6 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))))) },
  { key := { q := 4, n := 48, r := 7 }
    lowerValue := 464940251284060045
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 7))
    upperTrace := (.lengthenFreeN 14 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 48, r := 8 }
    lowerValue := 29940446039885621
    upperValue := 18889465931478580854784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 8))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 48, r := 9 }
    lowerValue := 2221972391896691
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 9))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 48, r := 10 }
    lowerValue := 187798123701413
    upperValue := 1180591620717411303424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 10))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 48, r := 11 }
    lowerValue := 17906484931813
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 11))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 48, r := 12 }
    lowerValue := 1911449061651
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 12))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 48, r := 13 }
    lowerValue := 226989288723
    upperValue := 4611686018427387904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 13))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 48, r := 14 }
    lowerValue := 29830287024
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 14))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 48, r := 15 }
    lowerValue := 4319246700
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 15))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 48, r := 16 }
    lowerValue := 686511469
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 16))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 48, r := 17 }
    lowerValue := 119403647
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 17))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 48, r := 18 }
    lowerValue := 22665677
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 48, r := 19 }
    lowerValue := 4685241
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 48, r := 20 }
    lowerValue := 1052673
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 48, r := 21 }
    lowerValue := 256669
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 48, r := 22 }
    lowerValue := 67829
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 48, r := 23 }
    lowerValue := 19407
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 48, r := 24 }
    lowerValue := 6007
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24))) },
  { key := { q := 4, n := 48, r := 25 }
    lowerValue := 2010
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 25))) },
  { key := { q := 4, n := 48, r := 26 }
    lowerValue := 727
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 26))) },
  { key := { q := 4, n := 48, r := 27 }
    lowerValue := 284
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 27))) },
  { key := { q := 4, n := 48, r := 28 }
    lowerValue := 120
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 28))) },
  { key := { q := 4, n := 48, r := 29 }
    lowerValue := 55
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 29))) },
  { key := { q := 4, n := 48, r := 30 }
    lowerValue := 27
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 30))) },
  { key := { q := 4, n := 48, r := 31 }
    lowerValue := 15
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 31))) },
  { key := { q := 4, n := 48, r := 32 }
    lowerValue := 9
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 32))) },
  { key := { q := 4, n := 48, r := 33 }
    lowerValue := 6
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 45 33))) },
  { key := { q := 4, n := 48, r := 34 }
    lowerValue := 4
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 34))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 46 34))) },
  { key := { q := 4, n := 48, r := 35 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 37 36))))))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 47 35))) },
  { key := { q := 4, n := 48, r := 36 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 38 37)))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 48 36)) },
  { key := { q := 4, n := 48, r := 37 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 39 38))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 48 37)) },
  { key := { q := 4, n := 48, r := 38 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 40 39)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 48 38)) },
  { key := { q := 4, n := 48, r := 39 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 41 40))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 48 39)) },
  { key := { q := 4, n := 48, r := 40 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 42 41)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 48 40)) },
  { key := { q := 4, n := 48, r := 41 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 43 42))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 48 41)) },
  { key := { q := 4, n := 48, r := 42 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 44 43)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 48 42)) },
  { key := { q := 4, n := 48, r := 43 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 45 44))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 48 43)) }]

end CoveringCodes.Database
