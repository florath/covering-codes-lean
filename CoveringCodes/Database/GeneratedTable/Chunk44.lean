import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 44. Do not edit manually.

def precomputedTable_chunk_44 : Array AnyBoundEntry := #[
  { key := { q := 4, n := 28, r := 24 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 26 25)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 28 24)) },
  { key := { q := 4, n := 28, r := 25 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 27 26))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 28 25)) },
  { key := { q := 4, n := 28, r := 26 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 28 26)) },
  { key := { q := 4, n := 28, r := 27 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 28 27)) },
  { key := { q := 4, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 28)) },
  { key := { q := 4, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 29)) },
  { key := { q := 4, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 30)) },
  { key := { q := 4, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 31)) },
  { key := { q := 4, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 32)) },
  { key := { q := 4, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 33)) },
  { key := { q := 4, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 34)) },
  { key := { q := 4, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 35)) },
  { key := { q := 4, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 36)) },
  { key := { q := 4, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 37)) },
  { key := { q := 4, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 38)) },
  { key := { q := 4, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 39)) },
  { key := { q := 4, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 40)) },
  { key := { q := 4, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 41)) },
  { key := { q := 4, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 42)) },
  { key := { q := 4, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 43)) },
  { key := { q := 4, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 44)) },
  { key := { q := 4, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 45)) },
  { key := { q := 4, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 46)) },
  { key := { q := 4, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 47)) },
  { key := { q := 4, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 28 48)) },
  { key := { q := 4, n := 29, r := 0 }
    lowerValue := 288230376151711744
    upperValue := 288230376151711744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 29 0)) },
  { key := { q := 4, n := 29, r := 1 }
    lowerValue := 3275345183542179
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 1))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 29, r := 2 }
    lowerValue := 77025755251661
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 2))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 29, r := 3 }
    lowerValue := 2814749767107
    upperValue := 140737488355328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 3))
    upperTrace := (.lengthenFreeN 5 (@UpperTrace.alphabetExpand 2 4 2 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 4, n := 29, r := 4 }
    lowerValue := 142249514568
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 4))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 4, n := 29, r := 5 }
    lowerValue := 9332768208
    upperValue := 8796093022208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 5))
    upperTrace := (@UpperTrace.alphabetExpand 2 4 2 29 5 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5)))) },
  { key := { q := 4, n := 29, r := 6 }
    lowerValue := 764185574
    upperValue := 2199023255552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 6))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 4) (@UpperTrace.alphabetExpand 2 4 2 28 5 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5)))) },
  { key := { q := 4, n := 29, r := 7 }
    lowerValue := 76038211
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 7))
    upperTrace := (.lengthenFreeN 12 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 29, r := 8 }
    lowerValue := 9020911
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 8))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 29, r := 9 }
    lowerValue := 1258227
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 9))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 29, r := 10 }
    lowerValue := 204154
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 10))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 29, r := 11 }
    lowerValue := 38224
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 11))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 29, r := 12 }
    lowerValue := 8207
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 12))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 29, r := 13 }
    lowerValue := 2012
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 13))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 29, r := 14 }
    lowerValue := 561
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 14))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 29, r := 15 }
    lowerValue := 178
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 15))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 29, r := 16 }
    lowerValue := 64
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 16))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 29, r := 17 }
    lowerValue := 26
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 29, r := 18 }
    lowerValue := 12
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 29, r := 19 }
    lowerValue := 7
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 29, r := 20 }
    lowerValue := 4
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 20))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 29, r := 21 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 23 22)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21)) },
  { key := { q := 4, n := 29, r := 22 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 24 23))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 22)) },
  { key := { q := 4, n := 29, r := 23 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 25 24)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 23)) },
  { key := { q := 4, n := 29, r := 24 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 26 25))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 24)) },
  { key := { q := 4, n := 29, r := 25 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 27 26)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 25)) },
  { key := { q := 4, n := 29, r := 26 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 28 27))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 26)) },
  { key := { q := 4, n := 29, r := 27 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 27)) },
  { key := { q := 4, n := 29, r := 28 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 28)) },
  { key := { q := 4, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 29)) },
  { key := { q := 4, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 30)) },
  { key := { q := 4, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 31)) },
  { key := { q := 4, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 32)) },
  { key := { q := 4, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 33)) },
  { key := { q := 4, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 34)) },
  { key := { q := 4, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 35)) },
  { key := { q := 4, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 36)) },
  { key := { q := 4, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 37)) },
  { key := { q := 4, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 38)) },
  { key := { q := 4, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 39)) },
  { key := { q := 4, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 40)) },
  { key := { q := 4, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 41)) },
  { key := { q := 4, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 42)) },
  { key := { q := 4, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 43)) },
  { key := { q := 4, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 44)) },
  { key := { q := 4, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 45)) },
  { key := { q := 4, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 46)) },
  { key := { q := 4, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 47)) },
  { key := { q := 4, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 29 48)) },
  { key := { q := 4, n := 30, r := 0 }
    lowerValue := 1152921504606846976
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 30 0)) },
  { key := { q := 4, n := 30, r := 1 }
    lowerValue := 12669467083591726
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 1))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 30, r := 2 }
    lowerValue := 287798678134510
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 2))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 30, r := 3 }
    lowerValue := 10146634613618
    upperValue := 562949953421312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 3))
    upperTrace := (.lengthenFreeN 6 (@UpperTrace.alphabetExpand 2 4 2 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 4, n := 30, r := 4 }
    lowerValue := 494088535126
    upperValue := 140737488355328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 4))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 4, n := 30, r := 5 }
    lowerValue := 31191747498
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 5))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 29 5 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))))) },
  { key := { q := 4, n := 30, r := 6 }
    lowerValue := 2453941501
    upperValue := 8796093022208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 6))
    upperTrace := (@UpperTrace.alphabetExpand 2 4 2 30 6 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))) },
  { key := { q := 4, n := 30, r := 7 }
    lowerValue := 234232759
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 7))
    upperTrace := (.lengthenFreeN 13 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 30, r := 8 }
    lowerValue := 26612129
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 8))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 30, r := 9 }
    lowerValue := 3548207
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 9))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 30, r := 10 }
    lowerValue := 549257
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 10))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 30, r := 11 }
    lowerValue := 97904
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 11))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 30, r := 12 }
    lowerValue := 19967
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 12))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 30, r := 13 }
    lowerValue := 4637
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 13))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 30, r := 14 }
    lowerValue := 1222
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 14))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 30, r := 15 }
    lowerValue := 364
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 15))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 30, r := 16 }
    lowerValue := 123
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 16))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 30, r := 17 }
    lowerValue := 47
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 30, r := 18 }
    lowerValue := 20
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 30, r := 19 }
    lowerValue := 10
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 30, r := 20 }
    lowerValue := 6
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 30, r := 21 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 21))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 30, r := 22 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 24 23)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22)) },
  { key := { q := 4, n := 30, r := 23 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 25 24))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 23)) },
  { key := { q := 4, n := 30, r := 24 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 26 25)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 24)) },
  { key := { q := 4, n := 30, r := 25 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 27 26))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 25)) },
  { key := { q := 4, n := 30, r := 26 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 28 27)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 26)) },
  { key := { q := 4, n := 30, r := 27 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 29 28))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 27)) },
  { key := { q := 4, n := 30, r := 28 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 28)) },
  { key := { q := 4, n := 30, r := 29 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 29)) },
  { key := { q := 4, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 30)) },
  { key := { q := 4, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 31)) },
  { key := { q := 4, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 32)) },
  { key := { q := 4, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 33)) },
  { key := { q := 4, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 34)) },
  { key := { q := 4, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 35)) },
  { key := { q := 4, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 36)) },
  { key := { q := 4, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 37)) },
  { key := { q := 4, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 38)) },
  { key := { q := 4, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 39)) },
  { key := { q := 4, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 40)) },
  { key := { q := 4, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 41)) },
  { key := { q := 4, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 42)) },
  { key := { q := 4, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 43)) },
  { key := { q := 4, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 44)) },
  { key := { q := 4, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 45)) },
  { key := { q := 4, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 46)) },
  { key := { q := 4, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 47)) },
  { key := { q := 4, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 30 48)) },
  { key := { q := 4, n := 31, r := 0 }
    lowerValue := 4611686018427387904
    upperValue := 4611686018427387904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 31 0)) },
  { key := { q := 4, n := 31, r := 1 }
    lowerValue := 49060489557738170
    upperValue := 288230376151711744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 1))
    upperTrace := (.lengthenFreeN 26 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 31, r := 2 }
    lowerValue := 1077748543684831
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 2))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 31, r := 3 }
    lowerValue := 36704387144849
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 3))
    upperTrace := (.lengthenFreeN 7 (@UpperTrace.alphabetExpand 2 4 2 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 4, n := 31, r := 4 }
    lowerValue := 1724440226776
    upperValue := 562949953421312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 4, n := 31, r := 5 }
    lowerValue := 104900015391
    upperValue := 140737488355328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 5))
    upperTrace := (.lengthenFreeN 2 (@UpperTrace.alphabetExpand 2 4 2 29 5 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))))) },
  { key := { q := 4, n := 31, r := 6 }
    lowerValue := 7941440410
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 6))
    upperTrace := (@UpperTrace.alphabetExpand 2 4 2 31 6 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))) },
  { key := { q := 4, n := 31, r := 7 }
    lowerValue := 728361205
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 7))
    upperTrace := (.lengthenFreeN 14 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 31, r := 8 }
    lowerValue := 79389300
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 8))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 31, r := 9 }
    lowerValue := 10137796
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 9))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 31, r := 10 }
    lowerValue := 1500296
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 10))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 31, r := 11 }
    lowerValue := 255166
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 11))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 31, r := 12 }
    lowerValue := 49551
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 12))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 31, r := 13 }
    lowerValue := 10931
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 13))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 31, r := 14 }
    lowerValue := 2729
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 14))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 31, r := 15 }
    lowerValue := 769
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 15))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 31, r := 16 }
    lowerValue := 244
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 16))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 31, r := 17 }
    lowerValue := 87
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 31, r := 18 }
    lowerValue := 35
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 31, r := 19 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 31, r := 20 }
    lowerValue := 8
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 31, r := 21 }
    lowerValue := 5
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 21))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 31, r := 22 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 24 23))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 31, r := 23 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 25 24)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23)) },
  { key := { q := 4, n := 31, r := 24 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 26 25))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 24)) },
  { key := { q := 4, n := 31, r := 25 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 27 26)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 25)) },
  { key := { q := 4, n := 31, r := 26 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 28 27))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 26)) },
  { key := { q := 4, n := 31, r := 27 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 29 28)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 27)) },
  { key := { q := 4, n := 31, r := 28 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 30 29))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 28)) },
  { key := { q := 4, n := 31, r := 29 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 29)) },
  { key := { q := 4, n := 31, r := 30 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 30)) },
  { key := { q := 4, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 31)) },
  { key := { q := 4, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 32)) },
  { key := { q := 4, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 33)) },
  { key := { q := 4, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 34)) },
  { key := { q := 4, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 35)) },
  { key := { q := 4, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 36)) },
  { key := { q := 4, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 37)) },
  { key := { q := 4, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 38)) },
  { key := { q := 4, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 39)) },
  { key := { q := 4, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 40)) },
  { key := { q := 4, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 41)) },
  { key := { q := 4, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 42)) },
  { key := { q := 4, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 43)) },
  { key := { q := 4, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 44)) },
  { key := { q := 4, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 45)) },
  { key := { q := 4, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 46)) },
  { key := { q := 4, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 47)) },
  { key := { q := 4, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 31 48)) },
  { key := { q := 4, n := 32, r := 0 }
    lowerValue := 18446744073709551616
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 32 0)) },
  { key := { q := 4, n := 32, r := 1 }
    lowerValue := 190172619316593316
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 1))
    upperTrace := (.lengthenFreeN 27 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 32, r := 2 }
    lowerValue := 4044451671499573
    upperValue := 288230376151711744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 2))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 32, r := 3 }
    lowerValue := 133207761885816
    upperValue := 9007199254740992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 3))
    upperTrace := (.lengthenFreeN 8 (@UpperTrace.alphabetExpand 2 4 2 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 4, n := 32, r := 4 }
    lowerValue := 6045652924076
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 4, n := 32, r := 5 }
    lowerValue := 354843281219
    upperValue := 562949953421312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 5))
    upperTrace := (.lengthenFreeN 3 (@UpperTrace.alphabetExpand 2 4 2 29 5 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))))) },
  { key := { q := 4, n := 32, r := 6 }
    lowerValue := 25886549290
    upperValue := 140737488355328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 6))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 31 6 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))))) },
  { key := { q := 4, n := 32, r := 7 }
    lowerValue := 2284786800
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 7))
    upperTrace := (@UpperTrace.alphabetExpand 2 4 2 32 7 4096 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.primitive "lean_known_bounds_q2_n32_r7_bch31_tail" (primitiveUpper_valid 2 32 7))) },
  { key := { q := 4, n := 32, r := 8 }
    lowerValue := 239306134
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 8))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 32, r := 9 }
    lowerValue := 29319228
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 9))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 32, r := 10 }
    lowerValue := 4156028
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 10))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 32, r := 11 }
    lowerValue := 675833
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 11))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 32, r := 12 }
    lowerValue := 125241
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 12))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 32, r := 13 }
    lowerValue := 26311
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 13))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 32, r := 14 }
    lowerValue := 6241
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 14))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 32, r := 15 }
    lowerValue := 1666
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 15))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 32, r := 16 }
    lowerValue := 500
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 16))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 32, r := 17 }
    lowerValue := 168
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 32, r := 18 }
    lowerValue := 64
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 32, r := 19 }
    lowerValue := 27
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 32, r := 20 }
    lowerValue := 13
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 32, r := 21 }
    lowerValue := 7
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 32, r := 22 }
    lowerValue := 4
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 22))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 32, r := 23 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 25 24))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 32, r := 24 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 26 25)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 32 24)) },
  { key := { q := 4, n := 32, r := 25 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 27 26))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 32 25)) },
  { key := { q := 4, n := 32, r := 26 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 28 27)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 32 26)) },
  { key := { q := 4, n := 32, r := 27 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 29 28))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 32 27)) },
  { key := { q := 4, n := 32, r := 28 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 30 29)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 32 28)) },
  { key := { q := 4, n := 32, r := 29 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 31 30))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 32 29)) },
  { key := { q := 4, n := 32, r := 30 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 32 30)) },
  { key := { q := 4, n := 32, r := 31 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 32 31)) },
  { key := { q := 4, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 32)) },
  { key := { q := 4, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 33)) },
  { key := { q := 4, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 34)) },
  { key := { q := 4, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 35)) },
  { key := { q := 4, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 36)) },
  { key := { q := 4, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 37)) },
  { key := { q := 4, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 38)) },
  { key := { q := 4, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 39)) },
  { key := { q := 4, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 40)) },
  { key := { q := 4, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 41)) },
  { key := { q := 4, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 42)) },
  { key := { q := 4, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 43)) },
  { key := { q := 4, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 44)) },
  { key := { q := 4, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 45)) },
  { key := { q := 4, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 46)) },
  { key := { q := 4, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 47)) },
  { key := { q := 4, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 32 48)) },
  { key := { q := 4, n := 33, r := 0 }
    lowerValue := 73786976294838206464
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 33 0)) },
  { key := { q := 4, n := 33, r := 1 }
    lowerValue := 737869762948382065
    upperValue := 4611686018427387904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 1))
    upperTrace := (.lengthenFreeN 28 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 33, r := 2 }
    lowerValue := 15207538395473662
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 2))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 33, r := 3 }
    lowerValue := 484917433130295
    upperValue := 36028797018963968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 3))
    upperTrace := (.lengthenFreeN 9 (@UpperTrace.alphabetExpand 2 4 2 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 4, n := 33, r := 4 }
    lowerValue := 21284598277443
    upperValue := 9007199254740992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 4 2 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 4, n := 33, r := 5 }
    lowerValue := 1206865922167
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 5))
    upperTrace := (.lengthenFreeN 4 (@UpperTrace.alphabetExpand 2 4 2 29 5 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))))) },
  { key := { q := 4, n := 33, r := 6 }
    lowerValue := 84953580396
    upperValue := 562949953421312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 6))
    upperTrace := (.lengthenFreeN 2 (@UpperTrace.alphabetExpand 2 4 2 31 6 16384 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))))) },
  { key := { q := 4, n := 33, r := 7 }
    lowerValue := 7225852510
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 7))
    upperTrace := (@UpperTrace.alphabetExpand 2 4 2 33 7 8192 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))) },
  { key := { q := 4, n := 33, r := 8 }
    lowerValue := 728361205
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 8))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 4) (@UpperTrace.alphabetExpand 2 4 2 32 7 4096 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.primitive "lean_known_bounds_q2_n32_r7_bch31_tail" (primitiveUpper_valid 2 32 7)))) },
  { key := { q := 4, n := 33, r := 9 }
    lowerValue := 85756759
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 9))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 33, r := 10 }
    lowerValue := 11663974
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 10))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 33, r := 11 }
    lowerValue := 1816943
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 11))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))))) },
  { key := { q := 4, n := 33, r := 12 }
    lowerValue := 321968
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 12))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 33, r := 13 }
    lowerValue := 64557
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 13))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 33, r := 14 }
    lowerValue := 14585
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 14))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 33, r := 15 }
    lowerValue := 3701
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 15))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 33, r := 16 }
    lowerValue := 1052
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 16))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 33, r := 17 }
    lowerValue := 335
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 33, r := 18 }
    lowerValue := 119
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 33, r := 19 }
    lowerValue := 47
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 33, r := 20 }
    lowerValue := 21
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 33, r := 21 }
    lowerValue := 11
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 33, r := 22 }
    lowerValue := 6
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 33, r := 23 }
    lowerValue := 4
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 33 23))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 33, r := 24 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 26 25))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24)) },
  { key := { q := 4, n := 33, r := 25 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 27 26)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 25)) },
  { key := { q := 4, n := 33, r := 26 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 28 27))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 26)) },
  { key := { q := 4, n := 33, r := 27 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 29 28)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 27)) },
  { key := { q := 4, n := 33, r := 28 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 30 29))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 28)) }]

end CoveringCodes.Database
