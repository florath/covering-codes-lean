import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 41. Do not edit manually.

def precomputedTable_chunk_41 : Array AnyBoundEntry := #[
  { key := { q := 4, n := 13, r := 9 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 11 10)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9)) },
  { key := { q := 4, n := 13, r := 10 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 12 11))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 10)) },
  { key := { q := 4, n := 13, r := 11 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 13 12)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 11)) },
  { key := { q := 4, n := 13, r := 12 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 12)) },
  { key := { q := 4, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 13)) },
  { key := { q := 4, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 14)) },
  { key := { q := 4, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 15)) },
  { key := { q := 4, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 16)) },
  { key := { q := 4, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 17)) },
  { key := { q := 4, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 18)) },
  { key := { q := 4, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 19)) },
  { key := { q := 4, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 20)) },
  { key := { q := 4, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 21)) },
  { key := { q := 4, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 22)) },
  { key := { q := 4, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 23)) },
  { key := { q := 4, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 24)) },
  { key := { q := 4, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 25)) },
  { key := { q := 4, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 26)) },
  { key := { q := 4, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 27)) },
  { key := { q := 4, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 28)) },
  { key := { q := 4, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 29)) },
  { key := { q := 4, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 30)) },
  { key := { q := 4, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 31)) },
  { key := { q := 4, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 32)) },
  { key := { q := 4, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 33)) },
  { key := { q := 4, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 34)) },
  { key := { q := 4, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 35)) },
  { key := { q := 4, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 36)) },
  { key := { q := 4, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 37)) },
  { key := { q := 4, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 38)) },
  { key := { q := 4, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 39)) },
  { key := { q := 4, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 40)) },
  { key := { q := 4, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 41)) },
  { key := { q := 4, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 42)) },
  { key := { q := 4, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 43)) },
  { key := { q := 4, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 44)) },
  { key := { q := 4, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 45)) },
  { key := { q := 4, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 46)) },
  { key := { q := 4, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 47)) },
  { key := { q := 4, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 13 48)) },
  { key := { q := 4, n := 14, r := 0 }
    lowerValue := 268435456
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 14 0)) },
  { key := { q := 4, n := 14, r := 1 }
    lowerValue := 6242686
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 1))
    upperTrace := (.lengthenFreeN 6 (@UpperTrace.blockGroup 2 2 8 1 4096 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 15 1))))) },
  { key := { q := 4, n := 14, r := 2 }
    lowerValue := 311411
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 2))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 8 1 4096 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 15 1))))))) },
  { key := { q := 4, n := 14, r := 3 }
    lowerValue := 25111
    upperValue := 131072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 3))
    upperTrace := (.lengthenFreeN 2 (@UpperTrace.blockGroup 2 2 12 3 8192 (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 4, n := 14, r := 4 }
    lowerValue := 2926
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 4))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 12 3 8192 (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3)))))) },
  { key := { q := 4, n := 14, r := 5 }
    lowerValue := 465
    upperValue := 8192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 5))
    upperTrace := (@UpperTrace.blockGroup 2 2 14 5 8192 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))) },
  { key := { q := 4, n := 14, r := 6 }
    lowerValue := 97
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 6))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q4_n11_r4_gf4_coset_syndrome" (primitiveUpper_valid 4 11 4)))) },
  { key := { q := 4, n := 14, r := 7 }
    lowerValue := 27
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 7))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 4) (.primitive "lean_known_bounds_q4_n11_r4_gf4_coset_syndrome" (primitiveUpper_valid 4 11 4))) },
  { key := { q := 4, n := 14, r := 8 }
    lowerValue := 9
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 8))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 11 8))) },
  { key := { q := 4, n := 14, r := 9 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 9))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 14, r := 10 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 12 11)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10)) },
  { key := { q := 4, n := 14, r := 11 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 13 12))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 11)) },
  { key := { q := 4, n := 14, r := 12 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 14 13)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 12)) },
  { key := { q := 4, n := 14, r := 13 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 13)) },
  { key := { q := 4, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 14)) },
  { key := { q := 4, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 15)) },
  { key := { q := 4, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 16)) },
  { key := { q := 4, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 17)) },
  { key := { q := 4, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 18)) },
  { key := { q := 4, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 19)) },
  { key := { q := 4, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 20)) },
  { key := { q := 4, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 21)) },
  { key := { q := 4, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 22)) },
  { key := { q := 4, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 23)) },
  { key := { q := 4, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 24)) },
  { key := { q := 4, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 25)) },
  { key := { q := 4, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 26)) },
  { key := { q := 4, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 27)) },
  { key := { q := 4, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 28)) },
  { key := { q := 4, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 29)) },
  { key := { q := 4, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 30)) },
  { key := { q := 4, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 31)) },
  { key := { q := 4, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 32)) },
  { key := { q := 4, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 33)) },
  { key := { q := 4, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 34)) },
  { key := { q := 4, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 35)) },
  { key := { q := 4, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 36)) },
  { key := { q := 4, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 37)) },
  { key := { q := 4, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 38)) },
  { key := { q := 4, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 39)) },
  { key := { q := 4, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 40)) },
  { key := { q := 4, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 41)) },
  { key := { q := 4, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 42)) },
  { key := { q := 4, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 43)) },
  { key := { q := 4, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 44)) },
  { key := { q := 4, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 45)) },
  { key := { q := 4, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 46)) },
  { key := { q := 4, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 47)) },
  { key := { q := 4, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 14 48)) },
  { key := { q := 4, n := 15, r := 0 }
    lowerValue := 1073741824
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 15 0)) },
  { key := { q := 4, n := 15, r := 1 }
    lowerValue := 23342214
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 1))
    upperTrace := (@UpperTrace.alphabetExpand 2 4 2 15 1 2048 (by decide : 0 < 2) (by decide : 0 < 2) (by decide : 4 ≤ 2 * 2) (by decide : 0 < 4) (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 15 1))) },
  { key := { q := 4, n := 15, r := 2 }
    lowerValue := 1083494
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 2))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 8 1 4096 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 15 1))))))) },
  { key := { q := 4, n := 15, r := 3 }
    lowerValue := 80879
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 3))
    upperTrace := (.lengthenFreeN 3 (@UpperTrace.blockGroup 2 2 12 3 8192 (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 4, n := 15, r := 4 }
    lowerValue := 8671
    upperValue := 131072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 4))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 12 3 8192 (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 4, n := 15, r := 5 }
    lowerValue := 1258
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 5))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 14 5 8192 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5)))) },
  { key := { q := 4, n := 15, r := 6 }
    lowerValue := 239
    upperValue := 8192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 6))
    upperTrace := (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))) },
  { key := { q := 4, n := 15, r := 7 }
    lowerValue := 58
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 7))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q4_n11_r4_gf4_coset_syndrome" (primitiveUpper_valid 4 11 4)))) },
  { key := { q := 4, n := 15, r := 8 }
    lowerValue := 18
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 8))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 4) (.primitive "lean_known_bounds_q4_n11_r4_gf4_coset_syndrome" (primitiveUpper_valid 4 11 4))) },
  { key := { q := 4, n := 15, r := 9 }
    lowerValue := 7
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 9))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 15, r := 10 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 10))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 15, r := 11 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 13 12)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11)) },
  { key := { q := 4, n := 15, r := 12 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 14 13))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 12)) },
  { key := { q := 4, n := 15, r := 13 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 15 14)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 13)) },
  { key := { q := 4, n := 15, r := 14 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 14)) },
  { key := { q := 4, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 15)) },
  { key := { q := 4, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 16)) },
  { key := { q := 4, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 17)) },
  { key := { q := 4, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 18)) },
  { key := { q := 4, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 19)) },
  { key := { q := 4, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 20)) },
  { key := { q := 4, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 21)) },
  { key := { q := 4, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 22)) },
  { key := { q := 4, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 23)) },
  { key := { q := 4, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 24)) },
  { key := { q := 4, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 25)) },
  { key := { q := 4, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 26)) },
  { key := { q := 4, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 27)) },
  { key := { q := 4, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 28)) },
  { key := { q := 4, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 29)) },
  { key := { q := 4, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 30)) },
  { key := { q := 4, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 31)) },
  { key := { q := 4, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 32)) },
  { key := { q := 4, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 33)) },
  { key := { q := 4, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 34)) },
  { key := { q := 4, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 35)) },
  { key := { q := 4, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 36)) },
  { key := { q := 4, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 37)) },
  { key := { q := 4, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 38)) },
  { key := { q := 4, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 39)) },
  { key := { q := 4, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 40)) },
  { key := { q := 4, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 41)) },
  { key := { q := 4, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 42)) },
  { key := { q := 4, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 43)) },
  { key := { q := 4, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 44)) },
  { key := { q := 4, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 45)) },
  { key := { q := 4, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 46)) },
  { key := { q := 4, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 47)) },
  { key := { q := 4, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 15 48)) },
  { key := { q := 4, n := 16, r := 0 }
    lowerValue := 4294967296
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 16 0)) },
  { key := { q := 4, n := 16, r := 1 }
    lowerValue := 87652394
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 1))
    upperTrace := (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1)))) },
  { key := { q := 4, n := 16, r := 2 }
    lowerValue := 3804223
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 2))
    upperTrace := (@UpperTrace.blockGroup 2 2 16 2 67108864 (.lengthenDummyN 1 (by decide : 0 < 2) (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1)))) },
  { key := { q := 4, n := 16, r := 3 }
    lowerValue := 264322
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 3))
    upperTrace := (.lengthenFreeN 4 (@UpperTrace.blockGroup 2 2 12 3 8192 (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 4, n := 16, r := 4 }
    lowerValue := 26242
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 4))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 12 3 8192 (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 4, n := 16, r := 5 }
    lowerValue := 3506
    upperValue := 131072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 5))
    upperTrace := (.lengthenFreeN 2 (@UpperTrace.blockGroup 2 2 14 5 8192 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5)))) },
  { key := { q := 4, n := 16, r := 6 }
    lowerValue := 609
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 6))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))) },
  { key := { q := 4, n := 16, r := 7 }
    lowerValue := 134
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 7))
    upperTrace := (@UpperTrace.blockGroup 2 2 16 7 4096 (.primitive "lean_known_bounds_q2_n32_r7_bch31_tail" (primitiveUpper_valid 2 32 7))) },
  { key := { q := 4, n := 16, r := 8 }
    lowerValue := 37
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 8))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q4_n11_r4_gf4_coset_syndrome" (primitiveUpper_valid 4 11 4)))) },
  { key := { q := 4, n := 16, r := 9 }
    lowerValue := 13
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 9))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 16, r := 10 }
    lowerValue := 6
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 10))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 16, r := 11 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 13 12))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 16, r := 12 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 14 13)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 16 12)) },
  { key := { q := 4, n := 16, r := 13 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 15 14))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 16 13)) },
  { key := { q := 4, n := 16, r := 14 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 16 15)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 16 14)) },
  { key := { q := 4, n := 16, r := 15 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 16 15)) },
  { key := { q := 4, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 16)) },
  { key := { q := 4, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 17)) },
  { key := { q := 4, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 18)) },
  { key := { q := 4, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 19)) },
  { key := { q := 4, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 20)) },
  { key := { q := 4, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 21)) },
  { key := { q := 4, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 22)) },
  { key := { q := 4, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 23)) },
  { key := { q := 4, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 24)) },
  { key := { q := 4, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 25)) },
  { key := { q := 4, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 26)) },
  { key := { q := 4, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 27)) },
  { key := { q := 4, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 28)) },
  { key := { q := 4, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 29)) },
  { key := { q := 4, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 30)) },
  { key := { q := 4, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 31)) },
  { key := { q := 4, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 32)) },
  { key := { q := 4, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 33)) },
  { key := { q := 4, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 34)) },
  { key := { q := 4, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 35)) },
  { key := { q := 4, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 36)) },
  { key := { q := 4, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 37)) },
  { key := { q := 4, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 38)) },
  { key := { q := 4, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 39)) },
  { key := { q := 4, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 40)) },
  { key := { q := 4, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 41)) },
  { key := { q := 4, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 42)) },
  { key := { q := 4, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 43)) },
  { key := { q := 4, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 44)) },
  { key := { q := 4, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 45)) },
  { key := { q := 4, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 46)) },
  { key := { q := 4, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 47)) },
  { key := { q := 4, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 16 48)) },
  { key := { q := 4, n := 17, r := 0 }
    lowerValue := 17179869184
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 17 0)) },
  { key := { q := 4, n := 17, r := 1 }
    lowerValue := 330382100
    upperValue := 536870912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 1))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))) },
  { key := { q := 4, n := 17, r := 2 }
    lowerValue := 13463848
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 2))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 4) (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))) },
  { key := { q := 4, n := 17, r := 3 }
    lowerValue := 874917
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 3))
    upperTrace := (.lengthenFreeN 5 (@UpperTrace.blockGroup 2 2 12 3 8192 (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 4, n := 17, r := 4 }
    lowerValue := 80879
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 4))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 12 3 8192 (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 4, n := 17, r := 5 }
    lowerValue := 10011
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 5))
    upperTrace := (.lengthenFreeN 3 (@UpperTrace.blockGroup 2 2 14 5 8192 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5)))) },
  { key := { q := 4, n := 17, r := 6 }
    lowerValue := 1600
    upperValue := 131072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 6))
    upperTrace := (.lengthenFreeN 2 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))) },
  { key := { q := 4, n := 17, r := 7 }
    lowerValue := 323
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 7))
    upperTrace := (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7)))) },
  { key := { q := 4, n := 17, r := 8 }
    lowerValue := 81
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 8))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 4) (@UpperTrace.blockGroup 2 2 16 7 4096 (.primitive "lean_known_bounds_q2_n32_r7_bch31_tail" (primitiveUpper_valid 2 32 7)))) },
  { key := { q := 4, n := 17, r := 9 }
    lowerValue := 25
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 9))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 17, r := 10 }
    lowerValue := 10
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 10))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 17, r := 11 }
    lowerValue := 5
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 11))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 17, r := 12 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 14 13))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12)) },
  { key := { q := 4, n := 17, r := 13 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 15 14)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 13)) },
  { key := { q := 4, n := 17, r := 14 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 16 15))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 14)) },
  { key := { q := 4, n := 17, r := 15 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 17 16)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 15)) },
  { key := { q := 4, n := 17, r := 16 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 16)) },
  { key := { q := 4, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 17)) },
  { key := { q := 4, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 18)) },
  { key := { q := 4, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 19)) },
  { key := { q := 4, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 20)) },
  { key := { q := 4, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 21)) },
  { key := { q := 4, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 22)) },
  { key := { q := 4, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 23)) },
  { key := { q := 4, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 24)) },
  { key := { q := 4, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 25)) },
  { key := { q := 4, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 26)) },
  { key := { q := 4, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 27)) },
  { key := { q := 4, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 28)) },
  { key := { q := 4, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 29)) },
  { key := { q := 4, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 30)) },
  { key := { q := 4, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 31)) },
  { key := { q := 4, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 32)) },
  { key := { q := 4, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 33)) },
  { key := { q := 4, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 34)) },
  { key := { q := 4, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 35)) },
  { key := { q := 4, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 36)) },
  { key := { q := 4, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 37)) },
  { key := { q := 4, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 38)) },
  { key := { q := 4, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 39)) },
  { key := { q := 4, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 40)) },
  { key := { q := 4, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 41)) },
  { key := { q := 4, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 42)) },
  { key := { q := 4, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 43)) },
  { key := { q := 4, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 44)) },
  { key := { q := 4, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 45)) },
  { key := { q := 4, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 46)) },
  { key := { q := 4, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 47)) },
  { key := { q := 4, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 17 48)) },
  { key := { q := 4, n := 18, r := 0 }
    lowerValue := 68719476736
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 18 0)) },
  { key := { q := 4, n := 18, r := 1 }
    lowerValue := 1249445032
    upperValue := 2147483648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 1))
    upperTrace := (.lengthenFreeN 2 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))) },
  { key := { q := 4, n := 18, r := 2 }
    lowerValue := 47988462
    upperValue := 536870912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 2))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1)))))) },
  { key := { q := 4, n := 18, r := 3 }
    lowerValue := 2928720
    upperValue := 33554432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 3))
    upperTrace := (.lengthenFreeN 6 (@UpperTrace.blockGroup 2 2 12 3 8192 (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))) },
  { key := { q := 4, n := 18, r := 4 }
    lowerValue := 253275
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 4))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 12 3 8192 (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 2 23 3))))))) },
  { key := { q := 4, n := 18, r := 5 }
    lowerValue := 29201
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 5))
    upperTrace := (.lengthenFreeN 4 (@UpperTrace.blockGroup 2 2 14 5 8192 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5)))) },
  { key := { q := 4, n := 18, r := 6 }
    lowerValue := 4326
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 6))
    upperTrace := (.lengthenFreeN 3 (@UpperTrace.blockGroup 2 2 15 6 8192 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6)))) },
  { key := { q := 4, n := 18, r := 7 }
    lowerValue := 804
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 7))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 18, r := 8 }
    lowerValue := 185
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 8))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 4) (@UpperTrace.blockGroup 2 2 17 7 16384 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 4, n := 18, r := 9 }
    lowerValue := 52
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 9))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 4) (@UpperTrace.blockGroup 2 2 16 7 4096 (.primitive "lean_known_bounds_q2_n32_r7_bch31_tail" (primitiveUpper_valid 2 32 7)))) },
  { key := { q := 4, n := 18, r := 10 }
    lowerValue := 18
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 10))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 18, r := 11 }
    lowerValue := 8
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 11))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 18, r := 12 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 18 12))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 18, r := 13 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 15 14))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13)) }]

end CoveringCodes.Database
