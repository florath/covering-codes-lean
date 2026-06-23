import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 45. Do not edit manually.

def precomputedTable_chunk_45 : Array AnyBoundEntry := #[
  { key := { q := 4, n := 33, r := 29 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 31 30)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 29)) },
  { key := { q := 4, n := 33, r := 30 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 32 31))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 30)) },
  { key := { q := 4, n := 33, r := 31 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 31)) },
  { key := { q := 4, n := 33, r := 32 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 32)) },
  { key := { q := 4, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 33)) },
  { key := { q := 4, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 34)) },
  { key := { q := 4, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 35)) },
  { key := { q := 4, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 36)) },
  { key := { q := 4, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 37)) },
  { key := { q := 4, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 38)) },
  { key := { q := 4, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 39)) },
  { key := { q := 4, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 40)) },
  { key := { q := 4, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 41)) },
  { key := { q := 4, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 42)) },
  { key := { q := 4, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 43)) },
  { key := { q := 4, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 44)) },
  { key := { q := 4, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 45)) },
  { key := { q := 4, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 46)) },
  { key := { q := 4, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 47)) },
  { key := { q := 4, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 33 48)) },
  { key := { q := 4, n := 34, r := 0 }
    lowerValue := 295147905179352825856
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 34 0)) },
  { key := { q := 4, n := 34, r := 1 }
    lowerValue := 2865513642517988601
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 1))
    upperTrace := (.lengthenFreeN 29 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 34, r := 2 }
    lowerValue := 57288025073632148
    upperValue := 4611686018427387904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 2))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 34, r := 3 }
    lowerValue := 1770320928379036
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 34, r := 4 }
    lowerValue := 75231879777852
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 4))
    upperTrace := (.lengthenFreeN 9 (@UpperTrace.alphabetExpand 2 4 2 25 4 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4))))) },
  { key := { q := 4, n := 34, r := 5 }
    lowerValue := 4125670206769
    upperValue := 9007199254740992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 5))
    upperTrace := (.lengthenFreeN 5 (@UpperTrace.alphabetExpand 2 4 2 29 5 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))))) },
  { key := { q := 4, n := 34, r := 6 }
    lowerValue := 280565672682
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 6))
    upperTrace := (.lengthenFreeN 3 (@UpperTrace.alphabetExpand 2 4 2 31 6 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))))) },
  { key := { q := 4, n := 34, r := 7 }
    lowerValue := 23027496623
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 7))
    upperTrace := (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7)))) },
  { key := { q := 4, n := 34, r := 8 }
    lowerValue := 2236984959
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 8))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 4) (@UpperTrace.alphabetExpand 2 4 2 33 7 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7)))) },
  { key := { q := 4, n := 34, r := 9 }
    lowerValue := 253489859
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 9))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 4) (@UpperTrace.alphabetExpand 2 4 2 32 7 4096 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.primitive "lean_known_bounds_q2_n32_r7_bch31_tail" (primitiveUpper_valid 2 32 7)))) },
  { key := { q := 4, n := 34, r := 10 }
    lowerValue := 33135420
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 10))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 34, r := 11 }
    lowerValue := 4953087
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 11))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 34, r := 12 }
    lowerValue := 840862
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 12))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 34, r := 13 }
    lowerValue := 161238
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 13))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 34, r := 14 }
    lowerValue := 34772
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 14))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 34, r := 15 }
    lowerValue := 8405
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 15))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 34, r := 16 }
    lowerValue := 2271
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 16))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 34, r := 17 }
    lowerValue := 685
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 34, r := 18 }
    lowerValue := 230
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 34, r := 19 }
    lowerValue := 86
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 34, r := 20 }
    lowerValue := 36
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 34, r := 21 }
    lowerValue := 17
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 34, r := 22 }
    lowerValue := 9
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 34, r := 23 }
    lowerValue := 5
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 34, r := 24 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 26 25)))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24))) },
  { key := { q := 4, n := 34, r := 25 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 27 26))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 25)) },
  { key := { q := 4, n := 34, r := 26 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 28 27)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 26)) },
  { key := { q := 4, n := 34, r := 27 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 29 28))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 27)) },
  { key := { q := 4, n := 34, r := 28 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 30 29)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 28)) },
  { key := { q := 4, n := 34, r := 29 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 31 30))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 29)) },
  { key := { q := 4, n := 34, r := 30 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 32 31)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 30)) },
  { key := { q := 4, n := 34, r := 31 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 33 32))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 31)) },
  { key := { q := 4, n := 34, r := 32 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 32)) },
  { key := { q := 4, n := 34, r := 33 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 33)) },
  { key := { q := 4, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 34 34)) },
  { key := { q := 4, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 34 35)) },
  { key := { q := 4, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 34 36)) },
  { key := { q := 4, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 34 37)) },
  { key := { q := 4, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 34 38)) },
  { key := { q := 4, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 34 39)) },
  { key := { q := 4, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 34 40)) },
  { key := { q := 4, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 34 41)) },
  { key := { q := 4, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 34 42)) },
  { key := { q := 4, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 34 43)) },
  { key := { q := 4, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 34 44)) },
  { key := { q := 4, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 34 45)) },
  { key := { q := 4, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 34 46)) },
  { key := { q := 4, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 34 47)) },
  { key := { q := 4, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 34 48)) },
  { key := { q := 4, n := 35, r := 0 }
    lowerValue := 1180591620717411303424
    upperValue := 1180591620717411303424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 35 0)) },
  { key := { q := 4, n := 35, r := 1 }
    lowerValue := 11137656799220861354
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 1))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 35, r := 2 }
    lowerValue := 216185977058672644
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 2))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 35, r := 3 }
    lowerValue := 6480500289376270
    upperValue := 4611686018427387904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 35, r := 4 }
    lowerValue := 266900733002741
    upperValue := 288230376151711744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 4))
    upperTrace := (.lengthenFreeN 10 (@UpperTrace.alphabetExpand 2 4 2 25 4 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4))))) },
  { key := { q := 4, n := 35, r := 5 }
    lowerValue := 14171252419158
    upperValue := 36028797018963968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 5))
    upperTrace := (.lengthenFreeN 6 (@UpperTrace.alphabetExpand 2 4 2 29 5 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))))) },
  { key := { q := 4, n := 35, r := 6 }
    lowerValue := 932100555032
    upperValue := 9007199254740992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 6))
    upperTrace := (.lengthenFreeN 4 (@UpperTrace.alphabetExpand 2 4 2 31 6 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))))) },
  { key := { q := 4, n := 35, r := 7 }
    lowerValue := 73911157239
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 7))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 35, r := 8 }
    lowerValue := 6928694803
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 8))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 4) (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 35, r := 9 }
    lowerValue := 756712730
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 9))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 4) (@UpperTrace.alphabetExpand 2 4 2 33 7 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7)))) },
  { key := { q := 4, n := 35, r := 10 }
    lowerValue := 95206407
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 10))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 4) (@UpperTrace.alphabetExpand 2 4 2 32 7 4096 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.primitive "lean_known_bounds_q2_n32_r7_bch31_tail" (primitiveUpper_valid 2 32 7)))) },
  { key := { q := 4, n := 35, r := 11 }
    lowerValue := 13678400
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 11))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 35, r := 12 }
    lowerValue := 2228488
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 12))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 35, r := 13 }
    lowerValue := 409426
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 13))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 35, r := 14 }
    lowerValue := 84450
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 14))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 35, r := 15 }
    lowerValue := 19487
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 15))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 35, r := 16 }
    lowerValue := 5017
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 35, r := 17 }
    lowerValue := 1438
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 35, r := 18 }
    lowerValue := 458
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 35, r := 19 }
    lowerValue := 162
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 35, r := 20 }
    lowerValue := 64
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 35, r := 21 }
    lowerValue := 28
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 35, r := 22 }
    lowerValue := 14
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 35, r := 23 }
    lowerValue := 8
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 35, r := 24 }
    lowerValue := 5
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 24))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24))) },
  { key := { q := 4, n := 35, r := 25 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 27 26)))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 25))) },
  { key := { q := 4, n := 35, r := 26 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 28 27))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 26)) },
  { key := { q := 4, n := 35, r := 27 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 29 28)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 27)) },
  { key := { q := 4, n := 35, r := 28 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 30 29))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 28)) },
  { key := { q := 4, n := 35, r := 29 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 31 30)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 29)) },
  { key := { q := 4, n := 35, r := 30 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 32 31))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 30)) },
  { key := { q := 4, n := 35, r := 31 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 33 32)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 31)) },
  { key := { q := 4, n := 35, r := 32 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 34 33))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 32)) },
  { key := { q := 4, n := 35, r := 33 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 33)) },
  { key := { q := 4, n := 35, r := 34 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 34)) },
  { key := { q := 4, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 35 35)) },
  { key := { q := 4, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 35 36)) },
  { key := { q := 4, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 35 37)) },
  { key := { q := 4, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 35 38)) },
  { key := { q := 4, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 35 39)) },
  { key := { q := 4, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 35 40)) },
  { key := { q := 4, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 35 41)) },
  { key := { q := 4, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 35 42)) },
  { key := { q := 4, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 35 43)) },
  { key := { q := 4, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 35 44)) },
  { key := { q := 4, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 35 45)) },
  { key := { q := 4, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 35 46)) },
  { key := { q := 4, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 35 47)) },
  { key := { q := 4, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 35 48)) },
  { key := { q := 4, n := 36, r := 0 }
    lowerValue := 4722366482869645213696
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 36 0)) },
  { key := { q := 4, n := 36, r := 1 }
    lowerValue := 43324463145593075356
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 36, r := 2 }
    lowerValue := 817159799769794985
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 36, r := 3 }
    lowerValue := 23783190300463063
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 36, r := 4 }
    lowerValue := 950200344087816
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 4))
    upperTrace := (.lengthenFreeN 11 (@UpperTrace.alphabetExpand 2 4 2 25 4 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4))))) },
  { key := { q := 4, n := 36, r := 5 }
    lowerValue := 48896451553504
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 5))
    upperTrace := (.lengthenFreeN 7 (@UpperTrace.alphabetExpand 2 4 2 29 5 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))))) },
  { key := { q := 4, n := 36, r := 6 }
    lowerValue := 3113950821620
    upperValue := 36028797018963968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 6))
    upperTrace := (.lengthenFreeN 5 (@UpperTrace.alphabetExpand 2 4 2 31 6 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))))) },
  { key := { q := 4, n := 36, r := 7 }
    lowerValue := 238830296519
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 7))
    upperTrace := (.lengthenFreeN 2 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 36, r := 8 }
    lowerValue := 21631373507
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 8))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7)))))) },
  { key := { q := 4, n := 36, r := 9 }
    lowerValue := 2279868135
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 9))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 4) (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 36, r := 10 }
    lowerValue := 276472000
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 10))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 4) (@UpperTrace.alphabetExpand 2 4 2 33 7 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7)))) },
  { key := { q := 4, n := 36, r := 11 }
    lowerValue := 38234173
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 11))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 4) (@UpperTrace.alphabetExpand 2 4 2 32 7 4096 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.primitive "lean_known_bounds_q2_n32_r7_bch31_tail" (primitiveUpper_valid 2 32 7)))) },
  { key := { q := 4, n := 36, r := 12 }
    lowerValue := 5987498
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 12))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 36, r := 13 }
    lowerValue := 1055785
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 13))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 36, r := 14 }
    lowerValue := 208674
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 14))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 36, r := 15 }
    lowerValue := 46062
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 15))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 36, r := 16 }
    lowerValue := 11322
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 36, r := 17 }
    lowerValue := 3092
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 36, r := 18 }
    lowerValue := 937
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 36, r := 19 }
    lowerValue := 315
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 36, r := 20 }
    lowerValue := 117
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 36, r := 21 }
    lowerValue := 48
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 36, r := 22 }
    lowerValue := 22
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 36, r := 23 }
    lowerValue := 11
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 36, r := 24 }
    lowerValue := 6
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24))) },
  { key := { q := 4, n := 36, r := 25 }
    lowerValue := 4
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 25))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 25))) },
  { key := { q := 4, n := 36, r := 26 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 28 27)))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 26))) },
  { key := { q := 4, n := 36, r := 27 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 29 28))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 36 27)) },
  { key := { q := 4, n := 36, r := 28 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 30 29)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 36 28)) },
  { key := { q := 4, n := 36, r := 29 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 31 30))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 36 29)) },
  { key := { q := 4, n := 36, r := 30 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 32 31)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 36 30)) },
  { key := { q := 4, n := 36, r := 31 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 33 32))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 36 31)) },
  { key := { q := 4, n := 36, r := 32 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 34 33)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 36 32)) },
  { key := { q := 4, n := 36, r := 33 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 35 34))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 36 33)) },
  { key := { q := 4, n := 36, r := 34 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 36 34)) },
  { key := { q := 4, n := 36, r := 35 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 36 35)) },
  { key := { q := 4, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 36 36)) },
  { key := { q := 4, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 36 37)) },
  { key := { q := 4, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 36 38)) },
  { key := { q := 4, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 36 39)) },
  { key := { q := 4, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 36 40)) },
  { key := { q := 4, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 36 41)) },
  { key := { q := 4, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 36 42)) },
  { key := { q := 4, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 36 43)) },
  { key := { q := 4, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 36 44)) },
  { key := { q := 4, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 36 45)) },
  { key := { q := 4, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 36 46)) },
  { key := { q := 4, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 36 47)) },
  { key := { q := 4, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 36 48)) },
  { key := { q := 4, n := 37, r := 0 }
    lowerValue := 18889465931478580854784
    upperValue := 18889465931478580854784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 37 0)) },
  { key := { q := 4, n := 37, r := 1 }
    lowerValue := 168655945816773043347
    upperValue := 1180591620717411303424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 1))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 37, r := 2 }
    lowerValue := 3093590882980442329
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 37, r := 3 }
    lowerValue := 87493357595687650
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 37, r := 4 }
    lowerValue := 3394003553559049
    upperValue := 4611686018427387904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 4))
    upperTrace := (.lengthenFreeN 12 (@UpperTrace.alphabetExpand 2 4 2 25 4 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4))))) },
  { key := { q := 4, n := 37, r := 5 }
    lowerValue := 169429707084786
    upperValue := 576460752303423488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 5))
    upperTrace := (.lengthenFreeN 8 (@UpperTrace.alphabetExpand 2 4 2 29 5 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))))) },
  { key := { q := 4, n := 37, r := 6 }
    lowerValue := 10457800793190
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 6))
    upperTrace := (.lengthenFreeN 6 (@UpperTrace.alphabetExpand 2 4 2 31 6 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))))) },
  { key := { q := 4, n := 37, r := 7 }
    lowerValue := 776626670393
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 7))
    upperTrace := (.lengthenFreeN 3 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 37, r := 8 }
    lowerValue := 68038353968
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 37, r := 9 }
    lowerValue := 6928694803
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 9))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7)))))) },
  { key := { q := 4, n := 37, r := 10 }
    lowerValue := 810887234
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 10))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 4) (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 37, r := 11 }
    lowerValue := 108091686
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 11))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 4) (@UpperTrace.alphabetExpand 2 4 2 33 7 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7)))) },
  { key := { q := 4, n := 37, r := 12 }
    lowerValue := 16294705
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 12))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 37, r := 13 }
    lowerValue := 2762037
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 13))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 37, r := 14 }
    lowerValue := 523995
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 14))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 37, r := 15 }
    lowerValue := 110844
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 15))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 37, r := 16 }
    lowerValue := 26067
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 37, r := 17 }
    lowerValue := 6798
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 37, r := 18 }
    lowerValue := 1963
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 37, r := 19 }
    lowerValue := 627
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 37, r := 20 }
    lowerValue := 221
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 37, r := 21 }
    lowerValue := 86
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 37, r := 22 }
    lowerValue := 37
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 37, r := 23 }
    lowerValue := 18
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 37, r := 24 }
    lowerValue := 10
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24))) },
  { key := { q := 4, n := 37, r := 25 }
    lowerValue := 6
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 25))) },
  { key := { q := 4, n := 37, r := 26 }
    lowerValue := 4
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 26))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 26))) },
  { key := { q := 4, n := 37, r := 27 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 29 28)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 27)) },
  { key := { q := 4, n := 37, r := 28 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 30 29))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 28)) },
  { key := { q := 4, n := 37, r := 29 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 31 30)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 29)) },
  { key := { q := 4, n := 37, r := 30 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 32 31))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 30)) },
  { key := { q := 4, n := 37, r := 31 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 33 32)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 31)) },
  { key := { q := 4, n := 37, r := 32 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 34 33))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 32)) },
  { key := { q := 4, n := 37, r := 33 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 35 34)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 33)) },
  { key := { q := 4, n := 37, r := 34 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 36 35))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 34)) },
  { key := { q := 4, n := 37, r := 35 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 35)) },
  { key := { q := 4, n := 37, r := 36 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 36)) },
  { key := { q := 4, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 37 37)) },
  { key := { q := 4, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 37 38)) },
  { key := { q := 4, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 37 39)) },
  { key := { q := 4, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 37 40)) },
  { key := { q := 4, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 37 41)) },
  { key := { q := 4, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 37 42)) },
  { key := { q := 4, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 37 43)) },
  { key := { q := 4, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 37 44)) },
  { key := { q := 4, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 37 45)) },
  { key := { q := 4, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 37 46)) },
  { key := { q := 4, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 37 47)) },
  { key := { q := 4, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 37 48)) },
  { key := { q := 4, n := 38, r := 0 }
    lowerValue := 75557863725914323419136
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 38 0)) },
  { key := { q := 4, n := 38, r := 1 }
    lowerValue := 657024901964472377558
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 38, r := 2 }
    lowerValue := 11728945005575026921
    upperValue := 1180591620717411303424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 38, r := 3 }
    lowerValue := 322601824510551562
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 38, r := 4 }
    lowerValue := 12160804587423758
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 4))
    upperTrace := (.lengthenFreeN 13 (@UpperTrace.alphabetExpand 2 4 2 25 4 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4))))) },
  { key := { q := 4, n := 38, r := 5 }
    lowerValue := 589443258970039
    upperValue := 2305843009213693952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 5))
    upperTrace := (.lengthenFreeN 9 (@UpperTrace.alphabetExpand 2 4 2 29 5 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))))) },
  { key := { q := 4, n := 38, r := 6 }
    lowerValue := 35295511705326
    upperValue := 576460752303423488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 6))
    upperTrace := (.lengthenFreeN 7 (@UpperTrace.alphabetExpand 2 4 2 31 6 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))))) },
  { key := { q := 4, n := 38, r := 7 }
    lowerValue := 2540509771521
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 7))
    upperTrace := (.lengthenFreeN 4 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 38, r := 8 }
    lowerValue := 215511988776
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 38, r := 9 }
    lowerValue := 21229157118
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 38, r := 10 }
    lowerValue := 2400673519
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 10))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7)))))) },
  { key := { q := 4, n := 38, r := 11 }
    lowerValue := 308855108
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 11))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 4) (@UpperTrace.alphabetExpand 2 4 2 34 7 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 38, r := 12 }
    lowerValue := 44881367
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 12))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 38, r := 13 }
    lowerValue := 7323854
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 13))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 38, r := 14 }
    lowerValue := 1335751
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 14))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 38, r := 15 }
    lowerValue := 271243
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 15))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 38, r := 16 }
    lowerValue := 61135
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 16))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 38, r := 17 }
    lowerValue := 15256
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 38, r := 18 }
    lowerValue := 4207
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 38, r := 19 }
    lowerValue := 1280
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 38, r := 20 }
    lowerValue := 430
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 38, r := 21 }
    lowerValue := 159
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 38, r := 22 }
    lowerValue := 65
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 38, r := 23 }
    lowerValue := 29
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 38, r := 24 }
    lowerValue := 15
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24))) },
  { key := { q := 4, n := 38, r := 25 }
    lowerValue := 8
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 25))) },
  { key := { q := 4, n := 38, r := 26 }
    lowerValue := 5
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 26))) },
  { key := { q := 4, n := 38, r := 27 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 29 28))))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 27))) },
  { key := { q := 4, n := 38, r := 28 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 30 29)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 28)) },
  { key := { q := 4, n := 38, r := 29 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 31 30))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 29)) },
  { key := { q := 4, n := 38, r := 30 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 32 31)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 30)) },
  { key := { q := 4, n := 38, r := 31 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 33 32))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 31)) },
  { key := { q := 4, n := 38, r := 32 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 34 33)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 32)) },
  { key := { q := 4, n := 38, r := 33 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 35 34))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 33)) }]

end CoveringCodes.Database
