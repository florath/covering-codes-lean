import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 59. Do not edit manually.

def precomputedTable_chunk_59 : Array AnyBoundEntry := #[
  { key := { q := 6, n := 7, r := 1 }
    lowerValue := 7776
    upperValue := 23328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 1))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 6 3 1))) },
  { key := { q := 6, n := 7, r := 2 }
    lowerValue := 499
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 2))
    upperTrace := (.primitive "lean_known_bounds_q6_n7_r2_synchronized_syndrome" (primitiveUpper_valid 6 7 2)) },
  { key := { q := 6, n := 7, r := 3 }
    lowerValue := 57
    upperValue := 648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 6 3 1))))) },
  { key := { q := 6, n := 7, r := 4 }
    lowerValue := 11
    upperValue := 108
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 4))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 6 3 1)))) },
  { key := { q := 6, n := 7, r := 5 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 5 ≤ 6) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 7 6)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 7 5)) },
  { key := { q := 6, n := 7, r := 6 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 7 6))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 7 6)) },
  { key := { q := 6, n := 7, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 7)) },
  { key := { q := 6, n := 7, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 8)) },
  { key := { q := 6, n := 7, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 9)) },
  { key := { q := 6, n := 7, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 10)) },
  { key := { q := 6, n := 7, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 11)) },
  { key := { q := 6, n := 7, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 12)) },
  { key := { q := 6, n := 7, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 13)) },
  { key := { q := 6, n := 7, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 14)) },
  { key := { q := 6, n := 7, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 15)) },
  { key := { q := 6, n := 7, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 16)) },
  { key := { q := 6, n := 7, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 17)) },
  { key := { q := 6, n := 7, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 18)) },
  { key := { q := 6, n := 7, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 19)) },
  { key := { q := 6, n := 7, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 20)) },
  { key := { q := 6, n := 7, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 21)) },
  { key := { q := 6, n := 7, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 22)) },
  { key := { q := 6, n := 7, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 23)) },
  { key := { q := 6, n := 7, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 24)) },
  { key := { q := 6, n := 7, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 25)) },
  { key := { q := 6, n := 7, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 26)) },
  { key := { q := 6, n := 7, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 27)) },
  { key := { q := 6, n := 7, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 28)) },
  { key := { q := 6, n := 7, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 29)) },
  { key := { q := 6, n := 7, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 30)) },
  { key := { q := 6, n := 7, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 31)) },
  { key := { q := 6, n := 7, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 32)) },
  { key := { q := 6, n := 7, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 33)) },
  { key := { q := 6, n := 7, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 34)) },
  { key := { q := 6, n := 7, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 35)) },
  { key := { q := 6, n := 7, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 36)) },
  { key := { q := 6, n := 7, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 37)) },
  { key := { q := 6, n := 7, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 38)) },
  { key := { q := 6, n := 7, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 39)) },
  { key := { q := 6, n := 7, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 40)) },
  { key := { q := 6, n := 7, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 41)) },
  { key := { q := 6, n := 7, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 42)) },
  { key := { q := 6, n := 7, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 43)) },
  { key := { q := 6, n := 7, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 44)) },
  { key := { q := 6, n := 7, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 45)) },
  { key := { q := 6, n := 7, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 46)) },
  { key := { q := 6, n := 7, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 47)) },
  { key := { q := 6, n := 7, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 7 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 7 48)) },
  { key := { q := 6, n := 8, r := 0 }
    lowerValue := 1679616
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 8 0)) },
  { key := { q := 6, n := 8, r := 1 }
    lowerValue := 40967
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 1))
    upperTrace := (.alphabetProject (by decide : 0 < 6) (by decide : 6 ≤ 7) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))) },
  { key := { q := 6, n := 8, r := 2 }
    lowerValue := 2267
    upperValue := 5184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 2))
    upperTrace := (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)) },
  { key := { q := 6, n := 8, r := 3 }
    lowerValue := 217
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 6) (.primitive "lean_known_bounds_q6_n7_r2_synchronized_syndrome" (primitiveUpper_valid 6 7 2))) },
  { key := { q := 6, n := 8, r := 4 }
    lowerValue := 33
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 4))
    upperTrace := (.alphabetProject (by decide : 0 < 6) (by decide : 6 ≤ 7) (.primitive "lean_known_bounds_q7_n8_r4_vandermonde_syndrome" (primitiveUpper_valid 7 8 4))) },
  { key := { q := 6, n := 8, r := 5 }
    lowerValue := 8
    upperValue := 36
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 5))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 7 5))) },
  { key := { q := 6, n := 8, r := 6 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 6 ≤ 7) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 8 7)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 8 6)) },
  { key := { q := 6, n := 8, r := 7 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 8 7))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 8 7)) },
  { key := { q := 6, n := 8, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 8)) },
  { key := { q := 6, n := 8, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 9)) },
  { key := { q := 6, n := 8, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 10)) },
  { key := { q := 6, n := 8, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 11)) },
  { key := { q := 6, n := 8, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 12)) },
  { key := { q := 6, n := 8, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 13)) },
  { key := { q := 6, n := 8, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 14)) },
  { key := { q := 6, n := 8, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 15)) },
  { key := { q := 6, n := 8, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 16)) },
  { key := { q := 6, n := 8, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 17)) },
  { key := { q := 6, n := 8, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 18)) },
  { key := { q := 6, n := 8, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 19)) },
  { key := { q := 6, n := 8, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 20)) },
  { key := { q := 6, n := 8, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 21)) },
  { key := { q := 6, n := 8, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 22)) },
  { key := { q := 6, n := 8, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 23)) },
  { key := { q := 6, n := 8, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 24)) },
  { key := { q := 6, n := 8, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 25)) },
  { key := { q := 6, n := 8, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 26)) },
  { key := { q := 6, n := 8, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 27)) },
  { key := { q := 6, n := 8, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 28)) },
  { key := { q := 6, n := 8, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 29)) },
  { key := { q := 6, n := 8, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 30)) },
  { key := { q := 6, n := 8, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 31)) },
  { key := { q := 6, n := 8, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 32)) },
  { key := { q := 6, n := 8, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 33)) },
  { key := { q := 6, n := 8, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 34)) },
  { key := { q := 6, n := 8, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 35)) },
  { key := { q := 6, n := 8, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 36)) },
  { key := { q := 6, n := 8, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 37)) },
  { key := { q := 6, n := 8, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 38)) },
  { key := { q := 6, n := 8, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 39)) },
  { key := { q := 6, n := 8, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 40)) },
  { key := { q := 6, n := 8, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 41)) },
  { key := { q := 6, n := 8, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 42)) },
  { key := { q := 6, n := 8, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 43)) },
  { key := { q := 6, n := 8, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 44)) },
  { key := { q := 6, n := 8, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 45)) },
  { key := { q := 6, n := 8, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 46)) },
  { key := { q := 6, n := 8, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 47)) },
  { key := { q := 6, n := 8, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 8 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 8 48)) },
  { key := { q := 6, n := 9, r := 0 }
    lowerValue := 10077696
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 9 0)) },
  { key := { q := 6, n := 9, r := 1 }
    lowerValue := 219081
    upperValue := 705894
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 1))
    upperTrace := (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 6) (by decide : 6 ≤ 7) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 6, n := 9, r := 2 }
    lowerValue := 10653
    upperValue := 31104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 2))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 9, r := 3 }
    lowerValue := 881
    upperValue := 5184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 9, r := 4 }
    lowerValue := 112
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 4))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 6) (.primitive "lean_known_bounds_q6_n7_r2_synchronized_syndrome" (primitiveUpper_valid 6 7 2))) },
  { key := { q := 6, n := 9, r := 5 }
    lowerValue := 21
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 5))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 7 5))) },
  { key := { q := 6, n := 9, r := 6 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 6))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 8 6))) },
  { key := { q := 6, n := 9, r := 7 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 9 8)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 9 7)) },
  { key := { q := 6, n := 9, r := 8 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 9 8))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 9 8)) },
  { key := { q := 6, n := 9, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 9)) },
  { key := { q := 6, n := 9, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 10)) },
  { key := { q := 6, n := 9, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 11)) },
  { key := { q := 6, n := 9, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 12)) },
  { key := { q := 6, n := 9, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 13)) },
  { key := { q := 6, n := 9, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 14)) },
  { key := { q := 6, n := 9, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 15)) },
  { key := { q := 6, n := 9, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 16)) },
  { key := { q := 6, n := 9, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 17)) },
  { key := { q := 6, n := 9, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 18)) },
  { key := { q := 6, n := 9, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 19)) },
  { key := { q := 6, n := 9, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 20)) },
  { key := { q := 6, n := 9, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 21)) },
  { key := { q := 6, n := 9, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 22)) },
  { key := { q := 6, n := 9, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 23)) },
  { key := { q := 6, n := 9, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 24)) },
  { key := { q := 6, n := 9, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 25)) },
  { key := { q := 6, n := 9, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 26)) },
  { key := { q := 6, n := 9, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 27)) },
  { key := { q := 6, n := 9, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 28)) },
  { key := { q := 6, n := 9, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 29)) },
  { key := { q := 6, n := 9, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 30)) },
  { key := { q := 6, n := 9, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 31)) },
  { key := { q := 6, n := 9, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 32)) },
  { key := { q := 6, n := 9, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 33)) },
  { key := { q := 6, n := 9, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 34)) },
  { key := { q := 6, n := 9, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 35)) },
  { key := { q := 6, n := 9, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 36)) },
  { key := { q := 6, n := 9, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 37)) },
  { key := { q := 6, n := 9, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 38)) },
  { key := { q := 6, n := 9, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 39)) },
  { key := { q := 6, n := 9, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 40)) },
  { key := { q := 6, n := 9, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 41)) },
  { key := { q := 6, n := 9, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 42)) },
  { key := { q := 6, n := 9, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 43)) },
  { key := { q := 6, n := 9, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 44)) },
  { key := { q := 6, n := 9, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 45)) },
  { key := { q := 6, n := 9, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 46)) },
  { key := { q := 6, n := 9, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 47)) },
  { key := { q := 6, n := 9, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 9 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 9 48)) },
  { key := { q := 6, n := 10, r := 0 }
    lowerValue := 60466176
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 10 0)) },
  { key := { q := 6, n := 10, r := 1 }
    lowerValue := 1185612
    upperValue := 4235364
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 1))
    upperTrace := (.lengthenFreeN 2 (.alphabetProject (by decide : 0 < 6) (by decide : 6 ≤ 7) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 6, n := 10, r := 2 }
    lowerValue := 51417
    upperValue := 186624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 2))
    upperTrace := (.lengthenFreeN 2 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 10, r := 3 }
    lowerValue := 3739
    upperValue := 31104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 6, n := 10, r := 4 }
    lowerValue := 411
    upperValue := 5184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 4))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 10, r := 5 }
    lowerValue := 65
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 5))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 6) (.primitive "lean_known_bounds_q6_n7_r2_synchronized_syndrome" (primitiveUpper_valid 6 7 2))) },
  { key := { q := 6, n := 10, r := 6 }
    lowerValue := 15
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 6))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 8 6))) },
  { key := { q := 6, n := 10, r := 7 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 9 8))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 9 7))) },
  { key := { q := 6, n := 10, r := 8 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 10 9)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 10 8)) },
  { key := { q := 6, n := 10, r := 9 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 10 9))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 10 9)) },
  { key := { q := 6, n := 10, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 10)) },
  { key := { q := 6, n := 10, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 11)) },
  { key := { q := 6, n := 10, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 12)) },
  { key := { q := 6, n := 10, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 13)) },
  { key := { q := 6, n := 10, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 14)) },
  { key := { q := 6, n := 10, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 15)) },
  { key := { q := 6, n := 10, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 16)) },
  { key := { q := 6, n := 10, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 17)) },
  { key := { q := 6, n := 10, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 18)) },
  { key := { q := 6, n := 10, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 19)) },
  { key := { q := 6, n := 10, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 20)) },
  { key := { q := 6, n := 10, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 21)) },
  { key := { q := 6, n := 10, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 22)) },
  { key := { q := 6, n := 10, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 23)) },
  { key := { q := 6, n := 10, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 24)) },
  { key := { q := 6, n := 10, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 25)) },
  { key := { q := 6, n := 10, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 26)) },
  { key := { q := 6, n := 10, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 27)) },
  { key := { q := 6, n := 10, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 28)) },
  { key := { q := 6, n := 10, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 29)) },
  { key := { q := 6, n := 10, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 30)) },
  { key := { q := 6, n := 10, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 31)) },
  { key := { q := 6, n := 10, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 32)) },
  { key := { q := 6, n := 10, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 33)) },
  { key := { q := 6, n := 10, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 34)) },
  { key := { q := 6, n := 10, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 35)) },
  { key := { q := 6, n := 10, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 36)) },
  { key := { q := 6, n := 10, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 37)) },
  { key := { q := 6, n := 10, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 38)) },
  { key := { q := 6, n := 10, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 39)) },
  { key := { q := 6, n := 10, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 40)) },
  { key := { q := 6, n := 10, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 41)) },
  { key := { q := 6, n := 10, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 42)) },
  { key := { q := 6, n := 10, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 43)) },
  { key := { q := 6, n := 10, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 44)) },
  { key := { q := 6, n := 10, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 45)) },
  { key := { q := 6, n := 10, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 46)) },
  { key := { q := 6, n := 10, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 47)) },
  { key := { q := 6, n := 10, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 10 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 10 48)) },
  { key := { q := 6, n := 11, r := 0 }
    lowerValue := 362797056
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 11 0)) },
  { key := { q := 6, n := 11, r := 1 }
    lowerValue := 6478519
    upperValue := 25412184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 1))
    upperTrace := (.lengthenFreeN 3 (.alphabetProject (by decide : 0 < 6) (by decide : 6 ≤ 7) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 6, n := 11, r := 2 }
    lowerValue := 253527
    upperValue := 1119744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 2))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 11, r := 3 }
    lowerValue := 16449
    upperValue := 186624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 11, r := 4 }
    lowerValue := 1590
    upperValue := 31104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 4))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 6, n := 11, r := 5 }
    lowerValue := 217
    upperValue := 5184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 5))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 11, r := 6 }
    lowerValue := 41
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 6))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 6) (.primitive "lean_known_bounds_q6_n7_r2_synchronized_syndrome" (primitiveUpper_valid 6 7 2))) },
  { key := { q := 6, n := 11, r := 7 }
    lowerValue := 11
    upperValue := 216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 7))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 9 7))) },
  { key := { q := 6, n := 11, r := 8 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 10 9))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 10 8))) },
  { key := { q := 6, n := 11, r := 9 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 11 10)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 11 9)) },
  { key := { q := 6, n := 11, r := 10 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 11 10)) },
  { key := { q := 6, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 11)) },
  { key := { q := 6, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 12)) },
  { key := { q := 6, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 13)) },
  { key := { q := 6, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 14)) },
  { key := { q := 6, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 15)) },
  { key := { q := 6, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 16)) },
  { key := { q := 6, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 17)) },
  { key := { q := 6, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 18)) },
  { key := { q := 6, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 19)) },
  { key := { q := 6, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 20)) },
  { key := { q := 6, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 21)) },
  { key := { q := 6, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 22)) },
  { key := { q := 6, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 23)) },
  { key := { q := 6, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 24)) },
  { key := { q := 6, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 25)) },
  { key := { q := 6, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 26)) },
  { key := { q := 6, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 27)) },
  { key := { q := 6, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 28)) },
  { key := { q := 6, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 29)) },
  { key := { q := 6, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 30)) },
  { key := { q := 6, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 31)) },
  { key := { q := 6, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 32)) },
  { key := { q := 6, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 33)) },
  { key := { q := 6, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 34)) },
  { key := { q := 6, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 35)) },
  { key := { q := 6, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 36)) },
  { key := { q := 6, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 37)) },
  { key := { q := 6, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 38)) },
  { key := { q := 6, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 39)) },
  { key := { q := 6, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 40)) },
  { key := { q := 6, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 41)) },
  { key := { q := 6, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 42)) },
  { key := { q := 6, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 43)) },
  { key := { q := 6, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 44)) },
  { key := { q := 6, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 45)) },
  { key := { q := 6, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 46)) },
  { key := { q := 6, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 47)) },
  { key := { q := 6, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 11 48)) },
  { key := { q := 6, n := 12, r := 0 }
    lowerValue := 2176782336
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 12 0)) },
  { key := { q := 6, n := 12, r := 1 }
    lowerValue := 35684957
    upperValue := 152473104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 1))
    upperTrace := (.lengthenFreeN 4 (.alphabetProject (by decide : 0 < 6) (by decide : 6 ≤ 7) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 6, n := 12, r := 2 }
    lowerValue := 1272229
    upperValue := 6718464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 2))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 12, r := 3 }
    lowerValue := 74520
    upperValue := 1119744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 12, r := 4 }
    lowerValue := 6430
    upperValue := 186624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 4))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 12, r := 5 }
    lowerValue := 774
    upperValue := 31104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 12 5))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) }]

end CoveringCodes.Database
