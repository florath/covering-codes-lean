import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 32. Do not edit manually.

def precomputedTable_chunk_32 : Array AnyBoundEntry := #[
  { key := { q := 3, n := 16, r := 13 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 15 14))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 13)) },
  { key := { q := 3, n := 16, r := 14 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 16 15)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 14)) },
  { key := { q := 3, n := 16, r := 15 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 15)) },
  { key := { q := 3, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 16)) },
  { key := { q := 3, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 17)) },
  { key := { q := 3, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 18)) },
  { key := { q := 3, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 19)) },
  { key := { q := 3, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 20)) },
  { key := { q := 3, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 21)) },
  { key := { q := 3, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 22)) },
  { key := { q := 3, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 23)) },
  { key := { q := 3, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 24)) },
  { key := { q := 3, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 25)) },
  { key := { q := 3, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 26)) },
  { key := { q := 3, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 27)) },
  { key := { q := 3, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 28)) },
  { key := { q := 3, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 29)) },
  { key := { q := 3, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 30)) },
  { key := { q := 3, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 31)) },
  { key := { q := 3, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 32)) },
  { key := { q := 3, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 33)) },
  { key := { q := 3, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 34)) },
  { key := { q := 3, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 35)) },
  { key := { q := 3, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 36)) },
  { key := { q := 3, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 37)) },
  { key := { q := 3, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 38)) },
  { key := { q := 3, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 39)) },
  { key := { q := 3, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 40)) },
  { key := { q := 3, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 41)) },
  { key := { q := 3, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 42)) },
  { key := { q := 3, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 43)) },
  { key := { q := 3, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 44)) },
  { key := { q := 3, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 45)) },
  { key := { q := 3, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 46)) },
  { key := { q := 3, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 47)) },
  { key := { q := 3, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 16 48)) },
  { key := { q := 3, n := 17, r := 0 }
    lowerValue := 129140163
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 17 0)) },
  { key := { q := 3, n := 17, r := 1 }
    lowerValue := 3689719
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 1))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 17, r := 2 }
    lowerValue := 223041
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 2))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 17, r := 3 }
    lowerValue := 21456
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 17, r := 4 }
    lowerValue := 2929
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 4))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1)))) },
  { key := { q := 3, n := 17, r := 5 }
    lowerValue := 534
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 3) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 17, r := 6 }
    lowerValue := 125
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 6))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 17, r := 7 }
    lowerValue := 37
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 7))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 17, r := 8 }
    lowerValue := 14
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 8))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 17, r := 9 }
    lowerValue := 6
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 9))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 17, r := 10 }
    lowerValue := 4
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 10))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 17, r := 11 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 13 12)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11)) },
  { key := { q := 3, n := 17, r := 12 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 14 13))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 12)) },
  { key := { q := 3, n := 17, r := 13 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 15 14)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 13)) },
  { key := { q := 3, n := 17, r := 14 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 16 15))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 14)) },
  { key := { q := 3, n := 17, r := 15 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 17 16)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 15)) },
  { key := { q := 3, n := 17, r := 16 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 16)) },
  { key := { q := 3, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 17)) },
  { key := { q := 3, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 18)) },
  { key := { q := 3, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 19)) },
  { key := { q := 3, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 20)) },
  { key := { q := 3, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 21)) },
  { key := { q := 3, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 22)) },
  { key := { q := 3, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 23)) },
  { key := { q := 3, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 24)) },
  { key := { q := 3, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 25)) },
  { key := { q := 3, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 26)) },
  { key := { q := 3, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 27)) },
  { key := { q := 3, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 28)) },
  { key := { q := 3, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 29)) },
  { key := { q := 3, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 30)) },
  { key := { q := 3, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 31)) },
  { key := { q := 3, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 32)) },
  { key := { q := 3, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 33)) },
  { key := { q := 3, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 34)) },
  { key := { q := 3, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 35)) },
  { key := { q := 3, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 36)) },
  { key := { q := 3, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 37)) },
  { key := { q := 3, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 38)) },
  { key := { q := 3, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 39)) },
  { key := { q := 3, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 40)) },
  { key := { q := 3, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 41)) },
  { key := { q := 3, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 42)) },
  { key := { q := 3, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 43)) },
  { key := { q := 3, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 44)) },
  { key := { q := 3, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 45)) },
  { key := { q := 3, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 46)) },
  { key := { q := 3, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 47)) },
  { key := { q := 3, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 17 48)) },
  { key := { q := 3, n := 18, r := 0 }
    lowerValue := 387420489
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 18 0)) },
  { key := { q := 3, n := 18, r := 1 }
    lowerValue := 10470825
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 1))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 18, r := 2 }
    lowerValue := 596950
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 2))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 18, r := 3 }
    lowerValue := 53981
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 18, r := 4 }
    lowerValue := 6902
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 4))
    upperTrace := (@UpperTrace.blockUngroup 3 2 9 2 531441 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 3, n := 18, r := 5 }
    lowerValue := 1173
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1)))) },
  { key := { q := 3, n := 18, r := 6 }
    lowerValue := 256
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 6))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 18, r := 7 }
    lowerValue := 70
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 7))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 18, r := 8 }
    lowerValue := 24
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 8))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 18, r := 9 }
    lowerValue := 10
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 9))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 18, r := 10 }
    lowerValue := 5
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 10))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 18, r := 11 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 11))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 18, r := 12 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 14 13)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 18 12)) },
  { key := { q := 3, n := 18, r := 13 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 15 14))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 18 13)) },
  { key := { q := 3, n := 18, r := 14 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 16 15)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 18 14)) },
  { key := { q := 3, n := 18, r := 15 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 17 16))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 18 15)) },
  { key := { q := 3, n := 18, r := 16 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 18 17)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 18 16)) },
  { key := { q := 3, n := 18, r := 17 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 18 17)) },
  { key := { q := 3, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 18)) },
  { key := { q := 3, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 19)) },
  { key := { q := 3, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 20)) },
  { key := { q := 3, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 21)) },
  { key := { q := 3, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 22)) },
  { key := { q := 3, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 23)) },
  { key := { q := 3, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 24)) },
  { key := { q := 3, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 25)) },
  { key := { q := 3, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 26)) },
  { key := { q := 3, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 27)) },
  { key := { q := 3, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 28)) },
  { key := { q := 3, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 29)) },
  { key := { q := 3, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 30)) },
  { key := { q := 3, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 31)) },
  { key := { q := 3, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 32)) },
  { key := { q := 3, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 33)) },
  { key := { q := 3, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 34)) },
  { key := { q := 3, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 35)) },
  { key := { q := 3, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 36)) },
  { key := { q := 3, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 37)) },
  { key := { q := 3, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 38)) },
  { key := { q := 3, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 39)) },
  { key := { q := 3, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 40)) },
  { key := { q := 3, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 41)) },
  { key := { q := 3, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 42)) },
  { key := { q := 3, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 43)) },
  { key := { q := 3, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 44)) },
  { key := { q := 3, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 45)) },
  { key := { q := 3, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 46)) },
  { key := { q := 3, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 47)) },
  { key := { q := 3, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 18 48)) },
  { key := { q := 3, n := 19, r := 0 }
    lowerValue := 1162261467
    upperValue := 1162261467
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 19 0)) },
  { key := { q := 3, n := 19, r := 1 }
    lowerValue := 29801577
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 1))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 19, r := 2 }
    lowerValue := 1607554
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 2))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 19, r := 3 }
    lowerValue := 137140
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 3))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 19, r := 4 }
    lowerValue := 16489
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 4))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 9 2 531441 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 3, n := 19, r := 5 }
    lowerValue := 2627
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 4 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 19, r := 6 }
    lowerValue := 534
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 6))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 19, r := 7 }
    lowerValue := 135
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 7))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 19, r := 8 }
    lowerValue := 42
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 8))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 19, r := 9 }
    lowerValue := 16
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 9))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 19, r := 10 }
    lowerValue := 7
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 10))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 19, r := 11 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 11))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 19, r := 12 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12)) },
  { key := { q := 3, n := 19, r := 13 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 15 14)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 13)) },
  { key := { q := 3, n := 19, r := 14 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 16 15))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 14)) },
  { key := { q := 3, n := 19, r := 15 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 17 16)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 15)) },
  { key := { q := 3, n := 19, r := 16 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 18 17))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 16)) },
  { key := { q := 3, n := 19, r := 17 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 19 18)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 17)) },
  { key := { q := 3, n := 19, r := 18 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 18)) },
  { key := { q := 3, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 19)) },
  { key := { q := 3, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 20)) },
  { key := { q := 3, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 21)) },
  { key := { q := 3, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 22)) },
  { key := { q := 3, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 23)) },
  { key := { q := 3, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 24)) },
  { key := { q := 3, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 25)) },
  { key := { q := 3, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 26)) },
  { key := { q := 3, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 27)) },
  { key := { q := 3, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 28)) },
  { key := { q := 3, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 29)) },
  { key := { q := 3, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 30)) },
  { key := { q := 3, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 31)) },
  { key := { q := 3, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 32)) },
  { key := { q := 3, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 33)) },
  { key := { q := 3, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 34)) },
  { key := { q := 3, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 35)) },
  { key := { q := 3, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 36)) },
  { key := { q := 3, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 37)) },
  { key := { q := 3, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 38)) },
  { key := { q := 3, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 39)) },
  { key := { q := 3, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 40)) },
  { key := { q := 3, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 41)) },
  { key := { q := 3, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 42)) },
  { key := { q := 3, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 43)) },
  { key := { q := 3, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 44)) },
  { key := { q := 3, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 45)) },
  { key := { q := 3, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 46)) },
  { key := { q := 3, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 47)) },
  { key := { q := 3, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 19 48)) },
  { key := { q := 3, n := 20, r := 0 }
    lowerValue := 3486784401
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 20 0)) },
  { key := { q := 3, n := 20, r := 1 }
    lowerValue := 85043522
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 1))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 20, r := 2 }
    lowerValue := 4353040
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 2))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 20, r := 3 }
    lowerValue := 351455
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 3))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 20, r := 4 }
    lowerValue := 39876
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 4))
    upperTrace := (@UpperTrace.blockUngroup 3 2 10 2 4782969 (.lengthenFreeN 2 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 3, n := 20, r := 5 }
    lowerValue := 5975
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 5))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 9 2 531441 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 3, n := 20, r := 6 }
    lowerValue := 1138
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 6))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 20, r := 7 }
    lowerValue := 269
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 7))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 20, r := 8 }
    lowerValue := 78
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 8))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 20, r := 9 }
    lowerValue := 27
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 9))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 20, r := 10 }
    lowerValue := 11
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 10))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 20, r := 11 }
    lowerValue := 6
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 11))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 20, r := 12 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 12))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 20, r := 13 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 15 14))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13)) },
  { key := { q := 3, n := 20, r := 14 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 16 15)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 14)) },
  { key := { q := 3, n := 20, r := 15 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 17 16))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 15)) },
  { key := { q := 3, n := 20, r := 16 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 18 17)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 16)) },
  { key := { q := 3, n := 20, r := 17 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 19 18))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 17)) },
  { key := { q := 3, n := 20, r := 18 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 20 19)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 18)) },
  { key := { q := 3, n := 20, r := 19 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 19)) },
  { key := { q := 3, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 20)) },
  { key := { q := 3, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 21)) },
  { key := { q := 3, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 22)) },
  { key := { q := 3, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 23)) },
  { key := { q := 3, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 24)) },
  { key := { q := 3, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 25)) },
  { key := { q := 3, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 26)) },
  { key := { q := 3, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 27)) },
  { key := { q := 3, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 28)) },
  { key := { q := 3, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 29)) },
  { key := { q := 3, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 30)) },
  { key := { q := 3, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 31)) },
  { key := { q := 3, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 32)) },
  { key := { q := 3, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 33)) },
  { key := { q := 3, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 34)) },
  { key := { q := 3, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 35)) },
  { key := { q := 3, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 36)) },
  { key := { q := 3, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 37)) },
  { key := { q := 3, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 38)) },
  { key := { q := 3, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 39)) },
  { key := { q := 3, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 40)) },
  { key := { q := 3, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 41)) },
  { key := { q := 3, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 42)) },
  { key := { q := 3, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 43)) },
  { key := { q := 3, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 44)) },
  { key := { q := 3, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 45)) },
  { key := { q := 3, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 46)) },
  { key := { q := 3, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 47)) },
  { key := { q := 3, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 20 48)) },
  { key := { q := 3, n := 21, r := 0 }
    lowerValue := 10460353203
    upperValue := 10460353203
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 21 0)) },
  { key := { q := 3, n := 21, r := 1 }
    lowerValue := 243264028
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 1))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 21, r := 2 }
    lowerValue := 11846380
    upperValue := 129140163
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 2))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 21, r := 3 }
    lowerValue := 907781
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 3))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 21, r := 4 }
    lowerValue := 97503
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 4))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 10 2 4782969 (.lengthenFreeN 2 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 3, n := 21, r := 5 }
    lowerValue := 13792
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (@UpperTrace.blockUngroup 3 2 9 2 531441 (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 3, n := 21, r := 6 }
    lowerValue := 2473
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 6))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 21, r := 7 }
    lowerValue := 548
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 7))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 21, r := 8 }
    lowerValue := 147
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 8))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 21, r := 9 }
    lowerValue := 48
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 9))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 21, r := 10 }
    lowerValue := 18
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 10))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10))) },
  { key := { q := 3, n := 21, r := 11 }
    lowerValue := 9
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 11))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 17 11))) },
  { key := { q := 3, n := 21, r := 12 }
    lowerValue := 5
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 12))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 19 12))) },
  { key := { q := 3, n := 21, r := 13 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 21 13))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 20 13))) },
  { key := { q := 3, n := 21, r := 14 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 16 15))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 21 14)) },
  { key := { q := 3, n := 21, r := 15 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 17 16)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 21 15)) },
  { key := { q := 3, n := 21, r := 16 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 18 17))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 21 16)) },
  { key := { q := 3, n := 21, r := 17 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 19 18)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 21 17)) }]

end CoveringCodes.Database
