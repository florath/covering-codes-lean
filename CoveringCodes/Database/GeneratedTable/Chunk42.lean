import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 42. Do not edit manually.

def precomputedTable_chunk_42 : Array AnyBoundEntry := #[
  { key := { q := 4, n := 18, r := 14 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 16 15)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 14)) },
  { key := { q := 4, n := 18, r := 15 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 17 16))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 15)) },
  { key := { q := 4, n := 18, r := 16 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 18 17)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 16)) },
  { key := { q := 4, n := 18, r := 17 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 17)) },
  { key := { q := 4, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 18)) },
  { key := { q := 4, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 19)) },
  { key := { q := 4, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 20)) },
  { key := { q := 4, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 21)) },
  { key := { q := 4, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 22)) },
  { key := { q := 4, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 23)) },
  { key := { q := 4, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 24)) },
  { key := { q := 4, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 25)) },
  { key := { q := 4, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 26)) },
  { key := { q := 4, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 27)) },
  { key := { q := 4, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 28)) },
  { key := { q := 4, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 29)) },
  { key := { q := 4, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 30)) },
  { key := { q := 4, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 31)) },
  { key := { q := 4, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 32)) },
  { key := { q := 4, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 33)) },
  { key := { q := 4, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 34)) },
  { key := { q := 4, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 35)) },
  { key := { q := 4, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 36)) },
  { key := { q := 4, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 37)) },
  { key := { q := 4, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 38)) },
  { key := { q := 4, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 39)) },
  { key := { q := 4, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 40)) },
  { key := { q := 4, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 41)) },
  { key := { q := 4, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 42)) },
  { key := { q := 4, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 43)) },
  { key := { q := 4, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 44)) },
  { key := { q := 4, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 45)) },
  { key := { q := 4, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 46)) },
  { key := { q := 4, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 47)) },
  { key := { q := 4, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 18 48)) },
  { key := { q := 4, n := 19, r := 0 }
    lowerValue := 274877906944
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 19 0)) },
  { key := { q := 4, n := 19, r := 1 }
    lowerValue := 4739274258
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 1))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 19, r := 2 }
    lowerValue := 172121420
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 2))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 19, r := 3 }
    lowerValue := 9901942
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 19, r := 4 }
    lowerValue := 804405
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 4))
    upperTrace := (.lengthenFreeN 7 (@UpperTrace.blockGroup 2 2 12 4 4096 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4)))) },
  { key := { q := 4, n := 19, r := 5 }
    lowerValue := 86786
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 5))
    upperTrace := (.lengthenFreeN 5 (@UpperTrace.blockGroup 2 2 14 5 8192 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5)))) },
  { key := { q := 4, n := 19, r := 6 }
    lowerValue := 11980
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 6))
    upperTrace := (.lengthenFreeN 4 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))) },
  { key := { q := 4, n := 19, r := 7 }
    lowerValue := 2065
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))))) },
  { key := { q := 4, n := 19, r := 8 }
    lowerValue := 437
    upperValue := 131072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))))) },
  { key := { q := 4, n := 19, r := 9 }
    lowerValue := 113
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 9))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 19, r := 10 }
    lowerValue := 35
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 10))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 19, r := 11 }
    lowerValue := 13
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 11))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 19, r := 12 }
    lowerValue := 6
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 12))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 19, r := 13 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 13))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 19, r := 14 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 16 15))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14)) },
  { key := { q := 4, n := 19, r := 15 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 17 16)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 15)) },
  { key := { q := 4, n := 19, r := 16 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 18 17))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 16)) },
  { key := { q := 4, n := 19, r := 17 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 19 18)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 17)) },
  { key := { q := 4, n := 19, r := 18 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 18)) },
  { key := { q := 4, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 19)) },
  { key := { q := 4, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 20)) },
  { key := { q := 4, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 21)) },
  { key := { q := 4, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 22)) },
  { key := { q := 4, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 23)) },
  { key := { q := 4, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 24)) },
  { key := { q := 4, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 25)) },
  { key := { q := 4, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 26)) },
  { key := { q := 4, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 27)) },
  { key := { q := 4, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 28)) },
  { key := { q := 4, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 29)) },
  { key := { q := 4, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 30)) },
  { key := { q := 4, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 31)) },
  { key := { q := 4, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 32)) },
  { key := { q := 4, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 33)) },
  { key := { q := 4, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 34)) },
  { key := { q := 4, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 35)) },
  { key := { q := 4, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 36)) },
  { key := { q := 4, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 37)) },
  { key := { q := 4, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 38)) },
  { key := { q := 4, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 39)) },
  { key := { q := 4, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 40)) },
  { key := { q := 4, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 41)) },
  { key := { q := 4, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 42)) },
  { key := { q := 4, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 43)) },
  { key := { q := 4, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 44)) },
  { key := { q := 4, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 45)) },
  { key := { q := 4, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 46)) },
  { key := { q := 4, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 47)) },
  { key := { q := 4, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 19 48)) },
  { key := { q := 4, n := 20, r := 0 }
    lowerValue := 1099511627776
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 20 0)) },
  { key := { q := 4, n := 20, r := 1 }
    lowerValue := 18024780784
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 1))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 20, r := 2 }
    lowerValue := 620842252
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 2))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 20, r := 3 }
    lowerValue := 33778122
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 3))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 20, r := 4 }
    lowerValue := 2587111
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 4))
    upperTrace := (.lengthenFreeN 8 (@UpperTrace.blockGroup 2 2 12 4 4096 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4)))) },
  { key := { q := 4, n := 20, r := 5 }
    lowerValue := 262259
    upperValue := 33554432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 5))
    upperTrace := (.lengthenFreeN 6 (@UpperTrace.blockGroup 2 2 14 5 8192 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5)))) },
  { key := { q := 4, n := 20, r := 6 }
    lowerValue := 33885
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 6))
    upperTrace := (.lengthenFreeN 5 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))) },
  { key := { q := 4, n := 20, r := 7 }
    lowerValue := 5444
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))))) },
  { key := { q := 4, n := 20, r := 8 }
    lowerValue := 1070
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))))) },
  { key := { q := 4, n := 20, r := 9 }
    lowerValue := 254
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 9))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 20, r := 10 }
    lowerValue := 73
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 10))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 20, r := 11 }
    lowerValue := 25
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 11))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 20, r := 12 }
    lowerValue := 10
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 12))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 20, r := 13 }
    lowerValue := 5
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 13))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 20, r := 14 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 16 15)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 20, r := 15 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 17 16))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 20 15)) },
  { key := { q := 4, n := 20, r := 16 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 18 17)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 20 16)) },
  { key := { q := 4, n := 20, r := 17 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 19 18))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 20 17)) },
  { key := { q := 4, n := 20, r := 18 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 20 19)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 20 18)) },
  { key := { q := 4, n := 20, r := 19 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 20 19)) },
  { key := { q := 4, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 20)) },
  { key := { q := 4, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 21)) },
  { key := { q := 4, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 22)) },
  { key := { q := 4, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 23)) },
  { key := { q := 4, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 24)) },
  { key := { q := 4, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 25)) },
  { key := { q := 4, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 26)) },
  { key := { q := 4, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 27)) },
  { key := { q := 4, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 28)) },
  { key := { q := 4, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 29)) },
  { key := { q := 4, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 30)) },
  { key := { q := 4, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 31)) },
  { key := { q := 4, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 32)) },
  { key := { q := 4, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 33)) },
  { key := { q := 4, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 34)) },
  { key := { q := 4, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 35)) },
  { key := { q := 4, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 36)) },
  { key := { q := 4, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 37)) },
  { key := { q := 4, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 38)) },
  { key := { q := 4, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 39)) },
  { key := { q := 4, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 40)) },
  { key := { q := 4, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 41)) },
  { key := { q := 4, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 42)) },
  { key := { q := 4, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 43)) },
  { key := { q := 4, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 44)) },
  { key := { q := 4, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 45)) },
  { key := { q := 4, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 46)) },
  { key := { q := 4, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 47)) },
  { key := { q := 4, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 20 48)) },
  { key := { q := 4, n := 21, r := 0 }
    lowerValue := 4398046511104
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 21 0)) },
  { key := { q := 4, n := 21, r := 1 }
    lowerValue := 68719476736
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 1))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 21, r := 2 }
    lowerValue := 2250791460
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 2))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 21, r := 3 }
    lowerValue := 116153775
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 3))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 21, r := 4 }
    lowerValue := 8414915
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 4))
    upperTrace := (.lengthenFreeN 9 (@UpperTrace.blockGroup 2 2 12 4 4096 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4)))) },
  { key := { q := 4, n := 21, r := 5 }
    lowerValue := 804405
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 5))
    upperTrace := (.lengthenFreeN 7 (@UpperTrace.blockGroup 2 2 14 5 8192 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5)))) },
  { key := { q := 4, n := 21, r := 6 }
    lowerValue := 97679
    upperValue := 33554432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 6))
    upperTrace := (.lengthenFreeN 6 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))) },
  { key := { q := 4, n := 21, r := 7 }
    lowerValue := 14693
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))))) },
  { key := { q := 4, n := 21, r := 8 }
    lowerValue := 2691
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))))) },
  { key := { q := 4, n := 21, r := 9 }
    lowerValue := 593
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 9))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 21, r := 10 }
    lowerValue := 156
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 10))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 21, r := 11 }
    lowerValue := 49
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 11))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 21, r := 12 }
    lowerValue := 18
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 12))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 21, r := 13 }
    lowerValue := 8
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 13))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 21, r := 14 }
    lowerValue := 4
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 14))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 21, r := 15 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 17 16)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15)) },
  { key := { q := 4, n := 21, r := 16 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 18 17))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 16)) },
  { key := { q := 4, n := 21, r := 17 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 19 18)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 17)) },
  { key := { q := 4, n := 21, r := 18 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 20 19))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 18)) },
  { key := { q := 4, n := 21, r := 19 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 19)) },
  { key := { q := 4, n := 21, r := 20 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 20)) },
  { key := { q := 4, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 21)) },
  { key := { q := 4, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 22)) },
  { key := { q := 4, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 23)) },
  { key := { q := 4, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 24)) },
  { key := { q := 4, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 25)) },
  { key := { q := 4, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 26)) },
  { key := { q := 4, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 27)) },
  { key := { q := 4, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 28)) },
  { key := { q := 4, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 29)) },
  { key := { q := 4, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 30)) },
  { key := { q := 4, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 31)) },
  { key := { q := 4, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 32)) },
  { key := { q := 4, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 33)) },
  { key := { q := 4, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 34)) },
  { key := { q := 4, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 35)) },
  { key := { q := 4, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 36)) },
  { key := { q := 4, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 37)) },
  { key := { q := 4, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 38)) },
  { key := { q := 4, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 39)) },
  { key := { q := 4, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 40)) },
  { key := { q := 4, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 41)) },
  { key := { q := 4, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 42)) },
  { key := { q := 4, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 43)) },
  { key := { q := 4, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 44)) },
  { key := { q := 4, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 45)) },
  { key := { q := 4, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 46)) },
  { key := { q := 4, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 47)) },
  { key := { q := 4, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 21 48)) },
  { key := { q := 4, n := 22, r := 0 }
    lowerValue := 17592186044416
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 22 0)) },
  { key := { q := 4, n := 22, r := 1 }
    lowerValue := 262569940962
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 1))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 22, r := 2 }
    lowerValue := 8197663581
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 2))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 22, r := 3 }
    lowerValue := 402327816
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 3))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 22, r := 4 }
    lowerValue := 27650193
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 4))
    upperTrace := (.lengthenFreeN 10 (@UpperTrace.blockGroup 2 2 12 4 4096 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4)))) },
  { key := { q := 4, n := 22, r := 5 }
    lowerValue := 2500523
    upperValue := 536870912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 5))
    upperTrace := (.lengthenFreeN 8 (@UpperTrace.blockGroup 2 2 14 5 8192 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5)))) },
  { key := { q := 4, n := 22, r := 6 }
    lowerValue := 286386
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 6))
    upperTrace := (.lengthenFreeN 7 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))) },
  { key := { q := 4, n := 22, r := 7 }
    lowerValue := 40497
    upperValue := 33554432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))))) },
  { key := { q := 4, n := 22, r := 8 }
    lowerValue := 6947
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))))) },
  { key := { q := 4, n := 22, r := 9 }
    lowerValue := 1428
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 9))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 22, r := 10 }
    lowerValue := 349
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 10))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 22, r := 11 }
    lowerValue := 101
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 11))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 22, r := 12 }
    lowerValue := 34
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 12))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 22, r := 13 }
    lowerValue := 14
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 13))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 22, r := 14 }
    lowerValue := 7
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 14))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 22, r := 15 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 15))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 22, r := 16 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 18 17)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16)) },
  { key := { q := 4, n := 22, r := 17 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 19 18))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 17)) },
  { key := { q := 4, n := 22, r := 18 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 20 19)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 18)) },
  { key := { q := 4, n := 22, r := 19 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 21 20))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 19)) },
  { key := { q := 4, n := 22, r := 20 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 20)) },
  { key := { q := 4, n := 22, r := 21 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 21)) },
  { key := { q := 4, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 22)) },
  { key := { q := 4, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 23)) },
  { key := { q := 4, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 24)) },
  { key := { q := 4, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 25)) },
  { key := { q := 4, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 26)) },
  { key := { q := 4, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 27)) },
  { key := { q := 4, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 28)) },
  { key := { q := 4, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 29)) },
  { key := { q := 4, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 30)) },
  { key := { q := 4, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 31)) },
  { key := { q := 4, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 32)) },
  { key := { q := 4, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 33)) },
  { key := { q := 4, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 34)) },
  { key := { q := 4, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 35)) },
  { key := { q := 4, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 36)) },
  { key := { q := 4, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 37)) },
  { key := { q := 4, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 38)) },
  { key := { q := 4, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 39)) },
  { key := { q := 4, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 40)) },
  { key := { q := 4, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 41)) },
  { key := { q := 4, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 42)) },
  { key := { q := 4, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 43)) },
  { key := { q := 4, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 44)) },
  { key := { q := 4, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 45)) },
  { key := { q := 4, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 46)) },
  { key := { q := 4, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 47)) },
  { key := { q := 4, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 22 48)) },
  { key := { q := 4, n := 23, r := 0 }
    lowerValue := 70368744177664
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 23 0)) },
  { key := { q := 4, n := 23, r := 1 }
    lowerValue := 1005267773967
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 1))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 23, r := 2 }
    lowerValue := 29982421891
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 2))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 23, r := 3 }
    lowerValue := 1402773786
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 3))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 23, r := 4 }
    lowerValue := 91695338
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 4))
    upperTrace := (.lengthenFreeN 11 (@UpperTrace.blockGroup 2 2 12 4 4096 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4)))) },
  { key := { q := 4, n := 23, r := 5 }
    lowerValue := 7867594
    upperValue := 2147483648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 5))
    upperTrace := (.lengthenFreeN 9 (@UpperTrace.blockGroup 2 2 14 5 8192 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5)))) },
  { key := { q := 4, n := 23, r := 6 }
    lowerValue := 852599
    upperValue := 536870912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 6))
    upperTrace := (.lengthenFreeN 8 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))) },
  { key := { q := 4, n := 23, r := 7 }
    lowerValue := 113738
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))))) },
  { key := { q := 4, n := 23, r := 8 }
    lowerValue := 18347
    upperValue := 33554432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))))) },
  { key := { q := 4, n := 23, r := 9 }
    lowerValue := 3533
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 9))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 23, r := 10 }
    lowerValue := 805
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 10))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 23, r := 11 }
    lowerValue := 216
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 11))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 23, r := 12 }
    lowerValue := 68
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 12))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 23, r := 13 }
    lowerValue := 25
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 13))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 23, r := 14 }
    lowerValue := 11
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 14))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 23, r := 15 }
    lowerValue := 6
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 15))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 23, r := 16 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 18 17))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 23, r := 17 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 19 18)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17)) },
  { key := { q := 4, n := 23, r := 18 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 20 19))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 18)) }]

end CoveringCodes.Database
