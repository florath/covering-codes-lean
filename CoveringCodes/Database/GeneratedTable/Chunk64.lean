import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 64. Do not edit manually.

def precomputedTable_chunk_64 : Array AnyBoundEntry := #[
  { key := { q := 6, n := 32, r := 26 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 28 27)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 26)) },
  { key := { q := 6, n := 32, r := 27 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 29 28))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 27)) },
  { key := { q := 6, n := 32, r := 28 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 30 29)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 28)) },
  { key := { q := 6, n := 32, r := 29 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 31 30))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 29)) },
  { key := { q := 6, n := 32, r := 30 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 30)) },
  { key := { q := 6, n := 32, r := 31 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 31)) },
  { key := { q := 6, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 32)) },
  { key := { q := 6, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 33)) },
  { key := { q := 6, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 34)) },
  { key := { q := 6, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 35)) },
  { key := { q := 6, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 36)) },
  { key := { q := 6, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 37)) },
  { key := { q := 6, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 38)) },
  { key := { q := 6, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 39)) },
  { key := { q := 6, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 40)) },
  { key := { q := 6, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 41)) },
  { key := { q := 6, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 42)) },
  { key := { q := 6, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 43)) },
  { key := { q := 6, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 44)) },
  { key := { q := 6, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 45)) },
  { key := { q := 6, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 46)) },
  { key := { q := 6, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 47)) },
  { key := { q := 6, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 32 48)) },
  { key := { q := 6, n := 33, r := 0 }
    lowerValue := 47751966659678405306351616
    upperValue := 47751966659678405306351616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 33 0)) },
  { key := { q := 6, n := 33, r := 1 }
    lowerValue := 287662449757098827146697
    upperValue := 1492248958114950165823488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 1))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 32 1 134217728 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))) },
  { key := { q := 6, n := 33, r := 2 }
    lowerValue := 3572644520400898197393
    upperValue := 147382613147155571933184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 2))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 33, r := 3 }
    lowerValue := 68671701894654621173
    upperValue := 23316389970546096340992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 3))
    upperTrace := (.lengthenFreeN 9 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 6, n := 33, r := 4 }
    lowerValue := 1817712271678225013
    upperValue := 3886064995091016056832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 33, r := 5 }
    lowerValue := 62181463387694178
    upperValue := 647677499181836009472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 5))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 33, r := 6 }
    lowerValue := 2642069908376833
    upperValue := 107946249863639334912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 33, r := 7 }
    lowerValue := 135725530479872
    upperValue := 17991041643939889152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 33, r := 8 }
    lowerValue := 8268272237477
    upperValue := 2998506940656648192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 33, r := 9 }
    lowerValue := 588791242845
    upperValue := 499751156776108032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 33, r := 10 }
    lowerValue := 48478263184
    upperValue := 21936950640377856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 10))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 33, r := 11 }
    lowerValue := 4576111448
    upperValue := 3656158440062976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 11))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 33, r := 12 }
    lowerValue := 491982093
    upperValue := 609359740010496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 12))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 33, r := 13 }
    lowerValue := 59935211
    upperValue := 101559956668416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 13))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 33, r := 14 }
    lowerValue := 8241139
    upperValue := 16926659444736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 14))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 33, r := 15 }
    lowerValue := 1275226
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 15))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 33, r := 16 }
    lowerValue := 221602
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 33, r := 17 }
    lowerValue := 43188
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 33, r := 18 }
    lowerValue := 9434
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 33, r := 19 }
    lowerValue := 2310
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 33, r := 20 }
    lowerValue := 634
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 33, r := 21 }
    lowerValue := 196
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 33, r := 22 }
    lowerValue := 68
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 33, r := 23 }
    lowerValue := 27
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23))) },
  { key := { q := 6, n := 33, r := 24 }
    lowerValue := 12
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 24))) },
  { key := { q := 6, n := 33, r := 25 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 25))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 25))) },
  { key := { q := 6, n := 33, r := 26 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 28 27))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 26))) },
  { key := { q := 6, n := 33, r := 27 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 29 28)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 27)) },
  { key := { q := 6, n := 33, r := 28 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 30 29))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 28)) },
  { key := { q := 6, n := 33, r := 29 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 31 30)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 29)) },
  { key := { q := 6, n := 33, r := 30 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 32 31))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 30)) },
  { key := { q := 6, n := 33, r := 31 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 31)) },
  { key := { q := 6, n := 33, r := 32 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 32)) },
  { key := { q := 6, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 33)) },
  { key := { q := 6, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 34)) },
  { key := { q := 6, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 35)) },
  { key := { q := 6, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 36)) },
  { key := { q := 6, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 37)) },
  { key := { q := 6, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 38)) },
  { key := { q := 6, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 39)) },
  { key := { q := 6, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 40)) },
  { key := { q := 6, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 41)) },
  { key := { q := 6, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 42)) },
  { key := { q := 6, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 43)) },
  { key := { q := 6, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 44)) },
  { key := { q := 6, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 45)) },
  { key := { q := 6, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 46)) },
  { key := { q := 6, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 47)) },
  { key := { q := 6, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 33 48)) },
  { key := { q := 6, n := 34, r := 0 }
    lowerValue := 286511799958070431838109696
    upperValue := 286511799958070431838109696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 34 0)) },
  { key := { q := 6, n := 34, r := 1 }
    lowerValue := 1675507602093979133556198
    upperValue := 8953493748689700994940928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 1))
    upperTrace := (.lengthenFreeN 2 (@UpperTrace.alphabetExpand 2 6 3 32 1 134217728 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))) },
  { key := { q := 6, n := 34, r := 2 }
    lowerValue := 20182572552695860230918
    upperValue := 884295678882933431599104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 2))
    upperTrace := (.lengthenFreeN 26 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 34, r := 3 }
    lowerValue := 375903048504676529185
    upperValue := 139898339823276578045952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 3))
    upperTrace := (.lengthenFreeN 10 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 6, n := 34, r := 4 }
    lowerValue := 9631556532523953917
    upperValue := 23316389970546096340992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 34, r := 5 }
    lowerValue := 318595233291565197
    upperValue := 3886064995091016056832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 34, r := 6 }
    lowerValue := 13074717284932762
    upperValue := 647677499181836009472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 34, r := 7 }
    lowerValue := 647929538868693
    upperValue := 107946249863639334912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 34, r := 8 }
    lowerValue := 38026836920784
    upperValue := 17991041643939889152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 34, r := 9 }
    lowerValue := 2605166122606
    upperValue := 2998506940656648192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 34, r := 10 }
    lowerValue := 206045542198
    upperValue := 131621703842267136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 10))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 34, r := 11 }
    lowerValue := 18652937407
    upperValue := 21936950640377856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 11))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 34, r := 12 }
    lowerValue := 1919861747
    upperValue := 3656158440062976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 12))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 34, r := 13 }
    lowerValue := 223483208
    upperValue := 609359740010496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 13))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 34, r := 14 }
    lowerValue := 29301757
    upperValue := 101559956668416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 14))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 34, r := 15 }
    lowerValue := 4313793
    upperValue := 2821109907456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 15))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 34, r := 16 }
    lowerValue := 711450
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 34, r := 17 }
    lowerValue := 131240
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 34, r := 18 }
    lowerValue := 27054
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 34, r := 19 }
    lowerValue := 6230
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 34, r := 20 }
    lowerValue := 1603
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 34, r := 21 }
    lowerValue := 462
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 34, r := 22 }
    lowerValue := 149
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 34, r := 23 }
    lowerValue := 54
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23))) },
  { key := { q := 6, n := 34, r := 24 }
    lowerValue := 22
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 24))) },
  { key := { q := 6, n := 34, r := 25 }
    lowerValue := 10
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 25))) },
  { key := { q := 6, n := 34, r := 26 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 26))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 26))) },
  { key := { q := 6, n := 34, r := 27 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 29 28))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 27))) },
  { key := { q := 6, n := 34, r := 28 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 30 29)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 34 28)) },
  { key := { q := 6, n := 34, r := 29 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 31 30))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 34 29)) },
  { key := { q := 6, n := 34, r := 30 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 32 31)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 34 30)) },
  { key := { q := 6, n := 34, r := 31 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 33 32))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 34 31)) },
  { key := { q := 6, n := 34, r := 32 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 34 32)) },
  { key := { q := 6, n := 34, r := 33 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 34 33)) },
  { key := { q := 6, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 34 34)) },
  { key := { q := 6, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 34 35)) },
  { key := { q := 6, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 34 36)) },
  { key := { q := 6, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 34 37)) },
  { key := { q := 6, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 34 38)) },
  { key := { q := 6, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 34 39)) },
  { key := { q := 6, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 34 40)) },
  { key := { q := 6, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 34 41)) },
  { key := { q := 6, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 34 42)) },
  { key := { q := 6, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 34 43)) },
  { key := { q := 6, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 34 44)) },
  { key := { q := 6, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 34 45)) },
  { key := { q := 6, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 34 46)) },
  { key := { q := 6, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 34 47)) },
  { key := { q := 6, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 34 48)) },
  { key := { q := 6, n := 35, r := 0 }
    lowerValue := 1719070799748422591028658176
    upperValue := 1719070799748422591028658176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 35 0)) },
  { key := { q := 6, n := 35, r := 1 }
    lowerValue := 9767447725843310176299195
    upperValue := 53720962492138205969645568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 1))
    upperTrace := (.lengthenFreeN 3 (@UpperTrace.alphabetExpand 2 6 3 32 1 134217728 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))) },
  { key := { q := 6, n := 35, r := 2 }
    lowerValue := 114216384276687435454698
    upperValue := 5305774073297600589594624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 2))
    upperTrace := (.lengthenFreeN 27 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 35, r := 3 }
    lowerValue := 2063274505924825716330
    upperValue := 839390038939659468275712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 3))
    upperTrace := (.lengthenFreeN 11 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 6, n := 35, r := 4 }
    lowerValue := 51226586324251431039
    upperValue := 139898339823276578045952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 35, r := 5 }
    lowerValue := 1640282806990475072
    upperValue := 23316389970546096340992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 35, r := 6 }
    lowerValue := 65091888555319853
    upperValue := 3886064995091016056832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 35, r := 7 }
    lowerValue := 3115596182392447
    upperValue := 647677499181836009472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 35, r := 8 }
    lowerValue := 176397404306860
    upperValue := 107946249863639334912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 35, r := 9 }
    lowerValue := 11642826760845
    upperValue := 17991041643939889152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 35, r := 10 }
    lowerValue := 885928002552
    upperValue := 789730223053602816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 10))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 35, r := 11 }
    lowerValue := 77044234900
    upperValue := 131621703842267136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 11))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 35, r := 12 }
    lowerValue := 7605284369
    upperValue := 21936950640377856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 12))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 35, r := 13 }
    lowerValue := 847581732
    upperValue := 3656158440062976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 13))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 35, r := 14 }
    lowerValue := 106193390
    upperValue := 609359740010496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 14))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 35, r := 15 }
    lowerValue := 14908581
    upperValue := 16926659444736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 15))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 35, r := 16 }
    lowerValue := 2339498
    upperValue := 2821109907456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 35, r := 17 }
    lowerValue := 409626
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 35, r := 18 }
    lowerValue := 79934
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 35, r := 19 }
    lowerValue := 17375
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 35, r := 20 }
    lowerValue := 4207
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 35, r := 21 }
    lowerValue := 1135
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 35, r := 22 }
    lowerValue := 342
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 35, r := 23 }
    lowerValue := 115
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23))) },
  { key := { q := 6, n := 35, r := 24 }
    lowerValue := 44
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 24))) },
  { key := { q := 6, n := 35, r := 25 }
    lowerValue := 19
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 25))) },
  { key := { q := 6, n := 35, r := 26 }
    lowerValue := 9
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 26))) },
  { key := { q := 6, n := 35, r := 27 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 29 28)))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 27))) },
  { key := { q := 6, n := 35, r := 28 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 30 29))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 34 28))) },
  { key := { q := 6, n := 35, r := 29 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 31 30)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 35 29)) },
  { key := { q := 6, n := 35, r := 30 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 32 31))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 35 30)) },
  { key := { q := 6, n := 35, r := 31 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 33 32)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 35 31)) },
  { key := { q := 6, n := 35, r := 32 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 34 33))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 35 32)) },
  { key := { q := 6, n := 35, r := 33 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 35 33)) },
  { key := { q := 6, n := 35, r := 34 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 35 34)) },
  { key := { q := 6, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 35 35)) },
  { key := { q := 6, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 35 36)) },
  { key := { q := 6, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 35 37)) },
  { key := { q := 6, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 35 38)) },
  { key := { q := 6, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 35 39)) },
  { key := { q := 6, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 35 40)) },
  { key := { q := 6, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 35 41)) },
  { key := { q := 6, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 35 42)) },
  { key := { q := 6, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 35 43)) },
  { key := { q := 6, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 35 44)) },
  { key := { q := 6, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 35 45)) },
  { key := { q := 6, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 35 46)) },
  { key := { q := 6, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 35 47)) },
  { key := { q := 6, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 35 48)) },
  { key := { q := 6, n := 36, r := 0 }
    lowerValue := 10314424798490535546171949056
    upperValue := 10314424798490535546171949056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 36 0)) },
  { key := { q := 6, n := 36, r := 1 }
    lowerValue := 56985772367351025116972095
    upperValue := 322325774952829235817873408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 1))
    upperTrace := (.lengthenFreeN 4 (@UpperTrace.alphabetExpand 2 6 3 32 1 134217728 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))) },
  { key := { q := 6, n := 36, r := 2 }
    lowerValue := 647443650649082640523003
    upperValue := 31834644439785603537567744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 2))
    upperTrace := (.lengthenFreeN 28 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 36, r := 3 }
    lowerValue := 11354109226226907212735
    upperValue := 5036340233637956809654272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 3))
    upperTrace := (.lengthenFreeN 12 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 6, n := 36, r := 4 }
    lowerValue := 273417704567359764978
    upperValue := 839390038939659468275712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 4))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 36, r := 5 }
    lowerValue := 8483484717702061610
    upperValue := 139898339823276578045952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 5))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 36, r := 6 }
    lowerValue := 325889436474642275
    upperValue := 23316389970546096340992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 6))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 36, r := 7 }
    lowerValue := 15083701572363670
    upperValue := 3886064995091016056832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 7))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 36, r := 8 }
    lowerValue := 824873006624418
    upperValue := 647677499181836009472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 8))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 36, r := 9 }
    lowerValue := 52523361023319
    upperValue := 107946249863639334912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 9))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 36, r := 10 }
    lowerValue := 3850574924776
    upperValue := 4738381338321616896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 10))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 36, r := 11 }
    lowerValue := 322176089314
    upperValue := 789730223053602816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 11))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 36, r := 12 }
    lowerValue := 30552184127
    upperValue := 131621703842267136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 12))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 36, r := 13 }
    lowerValue := 3265724073
    upperValue := 21936950640377856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 13))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 36, r := 14 }
    lowerValue := 391749287
    upperValue := 3656158440062976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 14))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 36, r := 15 }
    lowerValue := 52558102
    upperValue := 101559956668416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 15))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 36, r := 16 }
    lowerValue := 7865556
    upperValue := 16926659444736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 16))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 36, r := 17 }
    lowerValue := 1310483
    upperValue := 2821109907456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 36, r := 18 }
    lowerValue := 242752
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 36, r := 19 }
    lowerValue := 49956
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 36, r := 20 }
    lowerValue := 11418
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 36, r := 21 }
    lowerValue := 2899
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 36, r := 22 }
    lowerValue := 818
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 36, r := 23 }
    lowerValue := 257
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23))) },
  { key := { q := 6, n := 36, r := 24 }
    lowerValue := 90
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 24))) },
  { key := { q := 6, n := 36, r := 25 }
    lowerValue := 36
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 25))) },
  { key := { q := 6, n := 36, r := 26 }
    lowerValue := 16
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 26))) },
  { key := { q := 6, n := 36, r := 27 }
    lowerValue := 8
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 27))) },
  { key := { q := 6, n := 36, r := 28 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 30 29)))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 34 28))) },
  { key := { q := 6, n := 36, r := 29 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 31 30))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 35 29))) },
  { key := { q := 6, n := 36, r := 30 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 32 31)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 36 30)) },
  { key := { q := 6, n := 36, r := 31 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 33 32))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 36 31)) },
  { key := { q := 6, n := 36, r := 32 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 34 33)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 36 32)) },
  { key := { q := 6, n := 36, r := 33 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 35 34))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 36 33)) },
  { key := { q := 6, n := 36, r := 34 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 36 34)) },
  { key := { q := 6, n := 36, r := 35 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 36 35)) },
  { key := { q := 6, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 36 36)) },
  { key := { q := 6, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 36 37)) },
  { key := { q := 6, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 36 38)) },
  { key := { q := 6, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 36 39)) },
  { key := { q := 6, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 36 40)) },
  { key := { q := 6, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 36 41)) },
  { key := { q := 6, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 36 42)) },
  { key := { q := 6, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 36 43)) },
  { key := { q := 6, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 36 44)) },
  { key := { q := 6, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 36 45)) },
  { key := { q := 6, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 36 46)) },
  { key := { q := 6, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 36 47)) },
  { key := { q := 6, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 36 48)) },
  { key := { q := 6, n := 37, r := 0 }
    lowerValue := 61886548790943213277031694336
    upperValue := 61886548790943213277031694336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 37 0)) },
  { key := { q := 6, n := 37, r := 1 }
    lowerValue := 332723380596468888586191906
    upperValue := 1933954649716975414907240448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 1))
    upperTrace := (.lengthenFreeN 5 (@UpperTrace.alphabetExpand 2 6 3 32 1 134217728 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))) },
  { key := { q := 6, n := 37, r := 2 }
    lowerValue := 3675846328756427493290075
    upperValue := 191007866638713621225406464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 2))
    upperTrace := (.lengthenFreeN 29 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 37, r := 3 }
    lowerValue := 62632755439246394824977
    upperValue := 30218041401827740857925632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 3))
    upperTrace := (.lengthenFreeN 13 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 6, n := 37, r := 4 }
    lowerValue := 1464208580015445748782
    upperValue := 5036340233637956809654272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 4))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 37, r := 5 }
    lowerValue := 44064792889693574354
    upperValue := 839390038939659468275712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 5))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 37, r := 6 }
    lowerValue := 1640282806990475072
    upperValue := 139898339823276578045952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 6))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 37, r := 7 }
    lowerValue := 73493970025890653
    upperValue := 23316389970546096340992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 7))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 37, r := 8 }
    lowerValue := 3886535336190780
    upperValue := 3886064995091016056832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 8))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 37, r := 9 }
    lowerValue := 239037288943224
    upperValue := 647677499181836009472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 9))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 2 6 3 24 3 8192 (by decide : 0 < 2) (by decide : 0 < 3) (by decide : 6 ≤ 3 * 2) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 6, n := 37, r := 10 }
    lowerValue := 16906303466408
    upperValue := 28430288029929701376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 10))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 37, r := 11 }
    lowerValue := 1362892950531
    upperValue := 4738381338321616896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 11))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 37, r := 12 }
    lowerValue := 124351436030
    upperValue := 789730223053602816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 12))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 37, r := 13 }
    lowerValue := 12769619156
    upperValue := 131621703842267136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 13))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 37, r := 14 }
    lowerValue := 1469253286
    upperValue := 21936950640377856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 14))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 37, r := 15 }
    lowerValue := 188739621
    upperValue := 609359740010496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 15))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 37, r := 16 }
    lowerValue := 26994269
    upperValue := 101559956668416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 16))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 37, r := 17 }
    lowerValue := 4289511
    upperValue := 16926659444736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 37, r := 18 }
    lowerValue := 756161
    upperValue := 2821109907456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 37, r := 19 }
    lowerValue := 147729
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 37, r := 20 }
    lowerValue := 31970
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 37, r := 21 }
    lowerValue := 7664
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 37, r := 22 }
    lowerValue := 2036
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 37, r := 23 }
    lowerValue := 600
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23))) },
  { key := { q := 6, n := 37, r := 24 }
    lowerValue := 197
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 24))) },
  { key := { q := 6, n := 37, r := 25 }
    lowerValue := 72
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 25))) },
  { key := { q := 6, n := 37, r := 26 }
    lowerValue := 29
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 26))) },
  { key := { q := 6, n := 37, r := 27 }
    lowerValue := 14
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 27))) },
  { key := { q := 6, n := 37, r := 28 }
    lowerValue := 7
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 37 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 34 28))) },
  { key := { q := 6, n := 37, r := 29 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 31 30)))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 35 29))) },
  { key := { q := 6, n := 37, r := 30 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 32 31))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 37 30)) }]

end CoveringCodes.Database
