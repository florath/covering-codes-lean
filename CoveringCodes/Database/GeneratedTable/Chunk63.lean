import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 63. Do not edit manually.

def precomputedTable_chunk_63 : Array AnyBoundEntry := #[
  { key := { q := 6, n := 27, r := 21 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 23 22)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 27, r := 22 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 24 23))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22)) },
  { key := { q := 6, n := 27, r := 23 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 25 24)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 23)) },
  { key := { q := 6, n := 27, r := 24 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 26 25))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 24)) },
  { key := { q := 6, n := 27, r := 25 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 25)) },
  { key := { q := 6, n := 27, r := 26 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 26)) },
  { key := { q := 6, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 27)) },
  { key := { q := 6, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 28)) },
  { key := { q := 6, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 29)) },
  { key := { q := 6, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 30)) },
  { key := { q := 6, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 31)) },
  { key := { q := 6, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 32)) },
  { key := { q := 6, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 33)) },
  { key := { q := 6, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 34)) },
  { key := { q := 6, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 35)) },
  { key := { q := 6, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 36)) },
  { key := { q := 6, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 37)) },
  { key := { q := 6, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 38)) },
  { key := { q := 6, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 39)) },
  { key := { q := 6, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 40)) },
  { key := { q := 6, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 41)) },
  { key := { q := 6, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 42)) },
  { key := { q := 6, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 43)) },
  { key := { q := 6, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 44)) },
  { key := { q := 6, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 45)) },
  { key := { q := 6, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 46)) },
  { key := { q := 6, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 47)) },
  { key := { q := 6, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 27 48)) },
  { key := { q := 6, n := 28, r := 0 }
    lowerValue := 6140942214464815497216
    upperValue := 6140942214464815497216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 28 0)) },
  { key := { q := 6, n := 28, r := 1 }
    lowerValue := 43552781662871031896
    upperValue := 227442304239437611008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 1))
    upperTrace := (.lengthenFreeN 14 (@UpperTrace.alphabetExpand 3 6 2 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 6, n := 28, r := 2 }
    lowerValue := 640281744809176885
    upperValue := 18953525353286467584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 2))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 28, r := 3 }
    lowerValue := 14653004274643969
    upperValue := 2998506940656648192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 3))
    upperTrace := (.lengthenFreeN 4 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 6, n := 28, r := 4 }
    lowerValue := 464660866596117
    upperValue := 499751156776108032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 4))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 28, r := 5 }
    lowerValue := 19170018406153
    upperValue := 83291859462684672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 28, r := 6 }
    lowerValue := 989372921314
    upperValue := 13881976577114112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 6))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3)))))) },
  { key := { q := 6, n := 28, r := 7 }
    lowerValue := 62211938442
    upperValue := 2313662762852352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 7))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 6) (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 6, n := 28, r := 8 }
    lowerValue := 4677695658
    upperValue := 385610460475392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 8))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 6) (@UpperTrace.alphabetExpand 2 6 3 23 3 4096 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3)))) },
  { key := { q := 6, n := 28, r := 9 }
    lowerValue := 414848569
    upperValue := 67706637778944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 9))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 7 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 28, r := 10 }
    lowerValue := 42956202
    upperValue := 2821109907456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 10))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 28, r := 11 }
    lowerValue := 5153950
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 11))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 28, r := 12 }
    lowerValue := 712515
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 12))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 28, r := 13 }
    lowerValue := 113042
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 13))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 28, r := 14 }
    lowerValue := 20527
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 14))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 28, r := 15 }
    lowerValue := 4260
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 15))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 28, r := 16 }
    lowerValue := 1010
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 16))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 28, r := 17 }
    lowerValue := 274
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 28, r := 18 }
    lowerValue := 85
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 28, r := 19 }
    lowerValue := 31
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 28, r := 20 }
    lowerValue := 13
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 28, r := 21 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 21))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 28, r := 22 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 24 23)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 28, r := 23 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 25 24))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23)) },
  { key := { q := 6, n := 28, r := 24 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 26 25)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 24)) },
  { key := { q := 6, n := 28, r := 25 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 27 26))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 25)) },
  { key := { q := 6, n := 28, r := 26 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 26)) },
  { key := { q := 6, n := 28, r := 27 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 27)) },
  { key := { q := 6, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 28)) },
  { key := { q := 6, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 29)) },
  { key := { q := 6, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 30)) },
  { key := { q := 6, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 31)) },
  { key := { q := 6, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 32)) },
  { key := { q := 6, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 33)) },
  { key := { q := 6, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 34)) },
  { key := { q := 6, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 35)) },
  { key := { q := 6, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 36)) },
  { key := { q := 6, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 37)) },
  { key := { q := 6, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 38)) },
  { key := { q := 6, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 39)) },
  { key := { q := 6, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 40)) },
  { key := { q := 6, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 41)) },
  { key := { q := 6, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 42)) },
  { key := { q := 6, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 43)) },
  { key := { q := 6, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 44)) },
  { key := { q := 6, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 45)) },
  { key := { q := 6, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 46)) },
  { key := { q := 6, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 47)) },
  { key := { q := 6, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 28 48)) },
  { key := { q := 6, n := 29, r := 0 }
    lowerValue := 36845653286788892983296
    upperValue := 36845653286788892983296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 29 0)) },
  { key := { q := 6, n := 29, r := 1 }
    lowerValue := 252367488265677349201
    upperValue := 1364653825436625666048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 1))
    upperTrace := (.lengthenFreeN 15 (@UpperTrace.alphabetExpand 3 6 2 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 6, n := 29, r := 2 }
    lowerValue := 3578637654117025349
    upperValue := 113721152119718805504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 2))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 29, r := 3 }
    lowerValue := 78890844342503508
    upperValue := 17991041643939889152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 3))
    upperTrace := (.lengthenFreeN 5 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 6, n := 29, r := 4 }
    lowerValue := 2406416314121916
    upperValue := 2998506940656648192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 4))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 29, r := 5 }
    lowerValue := 95351113781126
    upperValue := 499751156776108032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 5))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 29, r := 6 }
    lowerValue := 4718594132282
    upperValue := 83291859462684672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 6))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 29, r := 7 }
    lowerValue := 283986144164
    upperValue := 13881976577114112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 7))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3)))))) },
  { key := { q := 6, n := 29, r := 8 }
    lowerValue := 20397693756
    upperValue := 2313662762852352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 8))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 6) (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 6, n := 29, r := 9 }
    lowerValue := 1724425080
    upperValue := 385610460475392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 9))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 6) (@UpperTrace.alphabetExpand 2 6 3 23 3 4096 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3)))) },
  { key := { q := 6, n := 29, r := 10 }
    lowerValue := 169817169
    upperValue := 16926659444736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 10))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 29, r := 11 }
    lowerValue := 19328429
    upperValue := 2821109907456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 11))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 29, r := 12 }
    lowerValue := 2527796
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 12))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 29, r := 13 }
    lowerValue := 378223
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 13))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 29, r := 14 }
    lowerValue := 64552
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 14))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 29, r := 15 }
    lowerValue := 12543
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 15))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 29, r := 16 }
    lowerValue := 2772
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 16))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 29, r := 17 }
    lowerValue := 697
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 29, r := 18 }
    lowerValue := 200
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 29, r := 19 }
    lowerValue := 65
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 29, r := 20 }
    lowerValue := 25
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 29, r := 21 }
    lowerValue := 11
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 29, r := 22 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 22))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 29, r := 23 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 25 24)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23))) },
  { key := { q := 6, n := 29, r := 24 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 26 25))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 24)) },
  { key := { q := 6, n := 29, r := 25 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 27 26)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 25)) },
  { key := { q := 6, n := 29, r := 26 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 28 27))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 26)) },
  { key := { q := 6, n := 29, r := 27 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 27)) },
  { key := { q := 6, n := 29, r := 28 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 28)) },
  { key := { q := 6, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 29)) },
  { key := { q := 6, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 30)) },
  { key := { q := 6, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 31)) },
  { key := { q := 6, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 32)) },
  { key := { q := 6, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 33)) },
  { key := { q := 6, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 34)) },
  { key := { q := 6, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 35)) },
  { key := { q := 6, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 36)) },
  { key := { q := 6, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 37)) },
  { key := { q := 6, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 38)) },
  { key := { q := 6, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 39)) },
  { key := { q := 6, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 40)) },
  { key := { q := 6, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 41)) },
  { key := { q := 6, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 42)) },
  { key := { q := 6, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 43)) },
  { key := { q := 6, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 44)) },
  { key := { q := 6, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 45)) },
  { key := { q := 6, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 46)) },
  { key := { q := 6, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 47)) },
  { key := { q := 6, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 29 48)) },
  { key := { q := 6, n := 30, r := 0 }
    lowerValue := 221073919720733357899776
    upperValue := 221073919720733357899776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 30 0)) },
  { key := { q := 6, n := 30, r := 1 }
    lowerValue := 1464065693514790449668
    upperValue := 8187922952619753996288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 1))
    upperTrace := (.lengthenFreeN 16 (@UpperTrace.alphabetExpand 3 6 2 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 6, n := 30, r := 2 }
    lowerValue := 20050237594842495729
    upperValue := 682326912718312833024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 2))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 30, r := 3 }
    lowerValue := 426350693544264623
    upperValue := 107946249863639334912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 3))
    upperTrace := (.lengthenFreeN 6 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 6, n := 30, r := 4 }
    lowerValue := 12527811635235114
    upperValue := 17991041643939889152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 4))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 30, r := 5 }
    lowerValue := 477504259367951
    upperValue := 2998506940656648192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 5))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 30, r := 6 }
    lowerValue := 22695867967011
    upperValue := 499751156776108032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 6))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 30, r := 7 }
    lowerValue := 1309775933697
    upperValue := 83291859462684672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 30, r := 8 }
    lowerValue := 90047306822
    upperValue := 13881976577114112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 8))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3)))))) },
  { key := { q := 6, n := 30, r := 9 }
    lowerValue := 7272470134
    upperValue := 2313662762852352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 9))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 6) (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 6, n := 30, r := 10 }
    lowerValue := 682733417
    upperValue := 101559956668416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 10))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 30, r := 11 }
    lowerValue := 73909198
    upperValue := 16926659444736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 11))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 30, r := 12 }
    lowerValue := 9170275
    upperValue := 2821109907456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 12))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 30, r := 13 }
    lowerValue := 1298153
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 13))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 30, r := 14 }
    lowerValue := 208977
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 14))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 30, r := 15 }
    lowerValue := 38171
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 15))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 30, r := 16 }
    lowerValue := 7901
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 16))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 30, r := 17 }
    lowerValue := 1853
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 30, r := 18 }
    lowerValue := 493
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 30, r := 19 }
    lowerValue := 149
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 30, r := 20 }
    lowerValue := 51
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 30, r := 21 }
    lowerValue := 20
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 30, r := 22 }
    lowerValue := 9
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 30, r := 23 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 25 24))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23))) },
  { key := { q := 6, n := 30, r := 24 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 26 25)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 24))) },
  { key := { q := 6, n := 30, r := 25 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 27 26))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 30 25)) },
  { key := { q := 6, n := 30, r := 26 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 28 27)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 30 26)) },
  { key := { q := 6, n := 30, r := 27 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 29 28))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 30 27)) },
  { key := { q := 6, n := 30, r := 28 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 30 28)) },
  { key := { q := 6, n := 30, r := 29 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 30 29)) },
  { key := { q := 6, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 30)) },
  { key := { q := 6, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 31)) },
  { key := { q := 6, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 32)) },
  { key := { q := 6, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 33)) },
  { key := { q := 6, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 34)) },
  { key := { q := 6, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 35)) },
  { key := { q := 6, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 36)) },
  { key := { q := 6, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 37)) },
  { key := { q := 6, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 38)) },
  { key := { q := 6, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 39)) },
  { key := { q := 6, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 40)) },
  { key := { q := 6, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 41)) },
  { key := { q := 6, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 42)) },
  { key := { q := 6, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 43)) },
  { key := { q := 6, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 44)) },
  { key := { q := 6, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 45)) },
  { key := { q := 6, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 46)) },
  { key := { q := 6, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 47)) },
  { key := { q := 6, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 30 48)) },
  { key := { q := 6, n := 31, r := 0 }
    lowerValue := 1326443518324400147398656
    upperValue := 1326443518324400147398656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 31 0)) },
  { key := { q := 6, n := 31, r := 1 }
    lowerValue := 8502843066182052226915
    upperValue := 49127537715718523977728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 1))
    upperTrace := (.lengthenFreeN 17 (@UpperTrace.alphabetExpand 3 6 2 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 6, n := 31, r := 2 }
    lowerValue := 112591759470707083219
    upperValue := 4093961476309876998144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 2))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 31, r := 3 }
    lowerValue := 2312262956064959048
    upperValue := 647677499181836009472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 3))
    upperTrace := (.lengthenFreeN 7 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 6, n := 31, r := 4 }
    lowerValue := 65538075108715579
    upperValue := 107946249863639334912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 31, r := 5 }
    lowerValue := 2406416314121916
    upperValue := 17991041643939889152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 5))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 31, r := 6 }
    lowerValue := 110027151063908
    upperValue := 2998506940656648192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 31, r := 7 }
    lowerValue := 6098839086194
    upperValue := 499751156776108032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 31, r := 8 }
    lowerValue := 402071454129
    upperValue := 83291859462684672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 31, r := 9 }
    lowerValue := 31083053106
    upperValue := 13881976577114112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 9))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3)))))) },
  { key := { q := 6, n := 31, r := 10 }
    lowerValue := 2787812816
    upperValue := 609359740010496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 10))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 31, r := 11 }
    lowerValue := 287719852
    upperValue := 101559956668416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 11))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 31, r := 12 }
    lowerValue := 33956134
    upperValue := 16926659444736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 12))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 31, r := 13 }
    lowerValue := 4560777
    upperValue := 2821109907456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 13))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 31, r := 14 }
    lowerValue := 694698
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 14))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 31, r := 15 }
    lowerValue := 119703
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 15))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 31, r := 16 }
    lowerValue := 23296
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 16))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 31, r := 17 }
    lowerValue := 5117
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 31, r := 18 }
    lowerValue := 1269
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 31, r := 19 }
    lowerValue := 355
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 31, r := 20 }
    lowerValue := 113
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 31, r := 21 }
    lowerValue := 41
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 31, r := 22 }
    lowerValue := 17
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 31, r := 23 }
    lowerValue := 8
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23))) },
  { key := { q := 6, n := 31, r := 24 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 26 25))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 24))) },
  { key := { q := 6, n := 31, r := 25 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 27 26)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 25)) },
  { key := { q := 6, n := 31, r := 26 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 28 27))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 26)) },
  { key := { q := 6, n := 31, r := 27 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 29 28)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 27)) },
  { key := { q := 6, n := 31, r := 28 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 30 29))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 28)) },
  { key := { q := 6, n := 31, r := 29 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 29)) },
  { key := { q := 6, n := 31, r := 30 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 30)) },
  { key := { q := 6, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 31)) },
  { key := { q := 6, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 32)) },
  { key := { q := 6, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 33)) },
  { key := { q := 6, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 34)) },
  { key := { q := 6, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 35)) },
  { key := { q := 6, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 36)) },
  { key := { q := 6, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 37)) },
  { key := { q := 6, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 38)) },
  { key := { q := 6, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 39)) },
  { key := { q := 6, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 40)) },
  { key := { q := 6, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 41)) },
  { key := { q := 6, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 42)) },
  { key := { q := 6, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 43)) },
  { key := { q := 6, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 44)) },
  { key := { q := 6, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 45)) },
  { key := { q := 6, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 46)) },
  { key := { q := 6, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 47)) },
  { key := { q := 6, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 31 48)) },
  { key := { q := 6, n := 32, r := 0 }
    lowerValue := 7958661109946400884391936
    upperValue := 7958661109946400884391936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 32 0)) },
  { key := { q := 6, n := 32, r := 1 }
    lowerValue := 49432677701530440275727
    upperValue := 294765226294311143866368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 1))
    upperTrace := (.lengthenFreeN 18 (@UpperTrace.alphabetExpand 3 6 2 14 1 177147 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 6, n := 32, r := 2 }
    lowerValue := 633600916324050703320
    upperValue := 24563768857859261988864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 2))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 32, r := 3 }
    lowerValue := 12581650006792073626
    upperValue := 3886064995091016056832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 3))
    upperTrace := (.lengthenFreeN 8 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 6, n := 32, r := 4 }
    lowerValue := 344418050435803281
    upperValue := 647677499181836009472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 32, r := 5 }
    lowerValue := 12198909984653598
    upperValue := 107946249863639334912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 5))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 32, r := 6 }
    lowerValue := 537324136557278
    upperValue := 17991041643939889152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 6))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 32, r := 7 }
    lowerValue := 28652069149177
    upperValue := 2998506940656648192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 32, r := 8 }
    lowerValue := 1814361615116
    upperValue := 499751156776108032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 32, r := 9 }
    lowerValue := 134506612483
    upperValue := 83291859462684672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 32, r := 10 }
    lowerValue := 11548155337
    upperValue := 3656158440062976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 10))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 32, r := 11 }
    lowerValue := 1138709255
    upperValue := 609359740010496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 11))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 32, r := 12 }
    lowerValue := 128129083
    upperValue := 101559956668416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 12))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 32, r := 13 }
    lowerValue := 16370644
    upperValue := 16926659444736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 13))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 32, r := 14 }
    lowerValue := 2366136
    upperValue := 2821109907456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 14))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 32, r := 15 }
    lowerValue := 385818
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 15))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 32, r := 16 }
    lowerValue := 70841
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 16))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 32, r := 17 }
    lowerValue := 14632
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 32, r := 18 }
    lowerValue := 3398
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 32, r := 19 }
    lowerValue := 888
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 32, r := 20 }
    lowerValue := 261
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 32, r := 21 }
    lowerValue := 87
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 32, r := 22 }
    lowerValue := 33
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 32, r := 23 }
    lowerValue := 14
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23))) },
  { key := { q := 6, n := 32, r := 24 }
    lowerValue := 7
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 24))) },
  { key := { q := 6, n := 32, r := 25 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 27 26))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 25))) }]

end CoveringCodes.Database
