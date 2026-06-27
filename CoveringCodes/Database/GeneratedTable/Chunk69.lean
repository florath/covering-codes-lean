import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 69. Do not edit manually.

def precomputedTable_chunk_69 : Array AnyBoundEntry := #[
  { key := { q := 7, n := 9, r := 2 }
    lowerValue := 29870
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 2))
    upperTrace := (.lengthenFreeN 2 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 9, r := 3 }
    lowerValue := 2070
    upperValue := 8575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 3))
    upperTrace := (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3)) },
  { key := { q := 7, n := 9, r := 4 }
    lowerValue := 221
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 4))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n8_r4_vandermonde_syndrome" (primitiveUpper_valid 7 8 4))) },
  { key := { q := 7, n := 9, r := 5 }
    lowerValue := 35
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 5))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 7) (.primitive "lean_known_bounds_q7_n8_r4_vandermonde_syndrome" (primitiveUpper_valid 7 8 4))) },
  { key := { q := 7, n := 9, r := 6 }
    lowerValue := 8
    upperValue := 49
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 6))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6))) },
  { key := { q := 7, n := 9, r := 7 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 9 8)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7)) },
  { key := { q := 7, n := 9, r := 8 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 9 8))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 8)) },
  { key := { q := 7, n := 9, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 9)) },
  { key := { q := 7, n := 9, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 10)) },
  { key := { q := 7, n := 9, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 11)) },
  { key := { q := 7, n := 9, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 12)) },
  { key := { q := 7, n := 9, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 13)) },
  { key := { q := 7, n := 9, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 14)) },
  { key := { q := 7, n := 9, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 15)) },
  { key := { q := 7, n := 9, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 16)) },
  { key := { q := 7, n := 9, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 17)) },
  { key := { q := 7, n := 9, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 18)) },
  { key := { q := 7, n := 9, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 19)) },
  { key := { q := 7, n := 9, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 20)) },
  { key := { q := 7, n := 9, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 21)) },
  { key := { q := 7, n := 9, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 22)) },
  { key := { q := 7, n := 9, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 23)) },
  { key := { q := 7, n := 9, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 24)) },
  { key := { q := 7, n := 9, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 25)) },
  { key := { q := 7, n := 9, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 26)) },
  { key := { q := 7, n := 9, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 27)) },
  { key := { q := 7, n := 9, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 28)) },
  { key := { q := 7, n := 9, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 29)) },
  { key := { q := 7, n := 9, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 30)) },
  { key := { q := 7, n := 9, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 31)) },
  { key := { q := 7, n := 9, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 32)) },
  { key := { q := 7, n := 9, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 33)) },
  { key := { q := 7, n := 9, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 34)) },
  { key := { q := 7, n := 9, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 35)) },
  { key := { q := 7, n := 9, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 36)) },
  { key := { q := 7, n := 9, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 37)) },
  { key := { q := 7, n := 9, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 38)) },
  { key := { q := 7, n := 9, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 39)) },
  { key := { q := 7, n := 9, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 40)) },
  { key := { q := 7, n := 9, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 41)) },
  { key := { q := 7, n := 9, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 42)) },
  { key := { q := 7, n := 9, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 43)) },
  { key := { q := 7, n := 9, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 44)) },
  { key := { q := 7, n := 9, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 45)) },
  { key := { q := 7, n := 9, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 46)) },
  { key := { q := 7, n := 9, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 47)) },
  { key := { q := 7, n := 9, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 9 48)) },
  { key := { q := 7, n := 10, r := 0 }
    lowerValue := 282475249
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 10 0)) },
  { key := { q := 7, n := 10, r := 1 }
    lowerValue := 4630742
    upperValue := 20588575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 1))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 10, r := 2 }
    lowerValue := 168041
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 2))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 10, r := 3 }
    lowerValue := 10235
    upperValue := 60025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 3))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 10, r := 4 }
    lowerValue := 943
    upperValue := 8575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 4))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 7) (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 10, r := 5 }
    lowerValue := 126
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 5))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n8_r4_vandermonde_syndrome" (primitiveUpper_valid 7 8 4)))) },
  { key := { q := 7, n := 10, r := 6 }
    lowerValue := 24
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 6))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 7) (.primitive "lean_known_bounds_q7_n8_r4_vandermonde_syndrome" (primitiveUpper_valid 7 8 4))) },
  { key := { q := 7, n := 10, r := 7 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 7))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7))) },
  { key := { q := 7, n := 10, r := 8 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 10 9)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8)) },
  { key := { q := 7, n := 10, r := 9 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 10 9))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 9)) },
  { key := { q := 7, n := 10, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 10)) },
  { key := { q := 7, n := 10, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 11)) },
  { key := { q := 7, n := 10, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 12)) },
  { key := { q := 7, n := 10, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 13)) },
  { key := { q := 7, n := 10, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 14)) },
  { key := { q := 7, n := 10, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 15)) },
  { key := { q := 7, n := 10, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 16)) },
  { key := { q := 7, n := 10, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 17)) },
  { key := { q := 7, n := 10, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 18)) },
  { key := { q := 7, n := 10, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 19)) },
  { key := { q := 7, n := 10, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 20)) },
  { key := { q := 7, n := 10, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 21)) },
  { key := { q := 7, n := 10, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 22)) },
  { key := { q := 7, n := 10, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 23)) },
  { key := { q := 7, n := 10, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 24)) },
  { key := { q := 7, n := 10, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 25)) },
  { key := { q := 7, n := 10, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 26)) },
  { key := { q := 7, n := 10, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 27)) },
  { key := { q := 7, n := 10, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 28)) },
  { key := { q := 7, n := 10, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 29)) },
  { key := { q := 7, n := 10, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 30)) },
  { key := { q := 7, n := 10, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 31)) },
  { key := { q := 7, n := 10, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 32)) },
  { key := { q := 7, n := 10, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 33)) },
  { key := { q := 7, n := 10, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 34)) },
  { key := { q := 7, n := 10, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 35)) },
  { key := { q := 7, n := 10, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 36)) },
  { key := { q := 7, n := 10, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 37)) },
  { key := { q := 7, n := 10, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 38)) },
  { key := { q := 7, n := 10, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 39)) },
  { key := { q := 7, n := 10, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 40)) },
  { key := { q := 7, n := 10, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 41)) },
  { key := { q := 7, n := 10, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 42)) },
  { key := { q := 7, n := 10, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 43)) },
  { key := { q := 7, n := 10, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 44)) },
  { key := { q := 7, n := 10, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 45)) },
  { key := { q := 7, n := 10, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 46)) },
  { key := { q := 7, n := 10, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 47)) },
  { key := { q := 7, n := 10, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 10 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 10 48)) },
  { key := { q := 7, n := 11, r := 0 }
    lowerValue := 1977326743
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 11 0)) },
  { key := { q := 7, n := 11, r := 1 }
    lowerValue := 29512340
    upperValue := 144120025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 1))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 11, r := 2 }
    lowerValue := 965964
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 2))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 11, r := 3 }
    lowerValue := 52468
    upperValue := 420175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 3))
    upperTrace := (.lengthenFreeN 2 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 11, r := 4 }
    lowerValue := 4249
    upperValue := 60025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 4))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3)))) },
  { key := { q := 7, n := 11, r := 5 }
    lowerValue := 488
    upperValue := 8575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 5))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 7) (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 11, r := 6 }
    lowerValue := 78
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 6))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n8_r4_vandermonde_syndrome" (primitiveUpper_valid 7 8 4)))) },
  { key := { q := 7, n := 11, r := 7 }
    lowerValue := 17
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 7))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 7) (.primitive "lean_known_bounds_q7_n8_r4_vandermonde_syndrome" (primitiveUpper_valid 7 8 4))) },
  { key := { q := 7, n := 11, r := 8 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 10 9))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8))) },
  { key := { q := 7, n := 11, r := 9 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 11 10)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9)) },
  { key := { q := 7, n := 11, r := 10 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 10)) },
  { key := { q := 7, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 11)) },
  { key := { q := 7, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 12)) },
  { key := { q := 7, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 13)) },
  { key := { q := 7, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 14)) },
  { key := { q := 7, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 15)) },
  { key := { q := 7, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 16)) },
  { key := { q := 7, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 17)) },
  { key := { q := 7, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 18)) },
  { key := { q := 7, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 19)) },
  { key := { q := 7, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 20)) },
  { key := { q := 7, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 21)) },
  { key := { q := 7, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 22)) },
  { key := { q := 7, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 23)) },
  { key := { q := 7, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 24)) },
  { key := { q := 7, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 25)) },
  { key := { q := 7, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 26)) },
  { key := { q := 7, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 27)) },
  { key := { q := 7, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 28)) },
  { key := { q := 7, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 29)) },
  { key := { q := 7, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 30)) },
  { key := { q := 7, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 31)) },
  { key := { q := 7, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 32)) },
  { key := { q := 7, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 33)) },
  { key := { q := 7, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 34)) },
  { key := { q := 7, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 35)) },
  { key := { q := 7, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 36)) },
  { key := { q := 7, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 37)) },
  { key := { q := 7, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 38)) },
  { key := { q := 7, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 39)) },
  { key := { q := 7, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 40)) },
  { key := { q := 7, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 41)) },
  { key := { q := 7, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 42)) },
  { key := { q := 7, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 43)) },
  { key := { q := 7, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 44)) },
  { key := { q := 7, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 45)) },
  { key := { q := 7, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 46)) },
  { key := { q := 7, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 47)) },
  { key := { q := 7, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 11 48)) },
  { key := { q := 7, n := 12, r := 0 }
    lowerValue := 13841287201
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 12 0)) },
  { key := { q := 7, n := 12, r := 1 }
    lowerValue := 189606674
    upperValue := 1008840175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 1))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 12, r := 2 }
    lowerValue := 5651812
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 2))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 12, r := 3 }
    lowerValue := 276998
    upperValue := 2941225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 3))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 12, r := 4 }
    lowerValue := 20017
    upperValue := 420175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 4))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 12, r := 5 }
    lowerValue := 2021
    upperValue := 60025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 5))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3)))) },
  { key := { q := 7, n := 12, r := 6 }
    lowerValue := 278
    upperValue := 8575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 6))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 7) (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 12, r := 7 }
    lowerValue := 51
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 7))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n8_r4_vandermonde_syndrome" (primitiveUpper_valid 7 8 4)))) },
  { key := { q := 7, n := 12, r := 8 }
    lowerValue := 13
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 8))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 7) (.primitive "lean_known_bounds_q7_n8_r4_vandermonde_syndrome" (primitiveUpper_valid 7 8 4))) },
  { key := { q := 7, n := 12, r := 9 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 11 10))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9))) },
  { key := { q := 7, n := 12, r := 10 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 12 11)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10)) },
  { key := { q := 7, n := 12, r := 11 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 11)) },
  { key := { q := 7, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 12)) },
  { key := { q := 7, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 13)) },
  { key := { q := 7, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 14)) },
  { key := { q := 7, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 15)) },
  { key := { q := 7, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 16)) },
  { key := { q := 7, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 17)) },
  { key := { q := 7, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 18)) },
  { key := { q := 7, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 19)) },
  { key := { q := 7, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 20)) },
  { key := { q := 7, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 21)) },
  { key := { q := 7, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 22)) },
  { key := { q := 7, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 23)) },
  { key := { q := 7, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 24)) },
  { key := { q := 7, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 25)) },
  { key := { q := 7, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 26)) },
  { key := { q := 7, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 27)) },
  { key := { q := 7, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 28)) },
  { key := { q := 7, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 29)) },
  { key := { q := 7, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 30)) },
  { key := { q := 7, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 31)) },
  { key := { q := 7, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 32)) },
  { key := { q := 7, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 33)) },
  { key := { q := 7, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 34)) },
  { key := { q := 7, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 35)) },
  { key := { q := 7, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 36)) },
  { key := { q := 7, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 37)) },
  { key := { q := 7, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 38)) },
  { key := { q := 7, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 39)) },
  { key := { q := 7, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 40)) },
  { key := { q := 7, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 41)) },
  { key := { q := 7, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 42)) },
  { key := { q := 7, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 43)) },
  { key := { q := 7, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 44)) },
  { key := { q := 7, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 45)) },
  { key := { q := 7, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 46)) },
  { key := { q := 7, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 47)) },
  { key := { q := 7, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 12 48)) },
  { key := { q := 7, n := 13, r := 0 }
    lowerValue := 96889010407
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 13 0)) },
  { key := { q := 7, n := 13, r := 1 }
    lowerValue := 1226443170
    upperValue := 7061881225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 1))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 13, r := 2 }
    lowerValue := 33560447
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 2))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 13, r := 3 }
    lowerValue := 1498369
    upperValue := 20588575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 3))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 13, r := 4 }
    lowerValue := 97740
    upperValue := 2941225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 4))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 13, r := 5 }
    lowerValue := 8809
    upperValue := 420175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 13, r := 6 }
    lowerValue := 1065
    upperValue := 60025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 6))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3)))) },
  { key := { q := 7, n := 13, r := 7 }
    lowerValue := 170
    upperValue := 8575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 7))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 7) (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 13, r := 8 }
    lowerValue := 36
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 8))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n8_r4_vandermonde_syndrome" (primitiveUpper_valid 7 8 4)))) },
  { key := { q := 7, n := 13, r := 9 }
    lowerValue := 10
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 9))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 7) (.primitive "lean_known_bounds_q7_n8_r4_vandermonde_syndrome" (primitiveUpper_valid 7 8 4))) },
  { key := { q := 7, n := 13, r := 10 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 12 11))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 13, r := 11 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 13 12)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11)) },
  { key := { q := 7, n := 13, r := 12 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 12)) },
  { key := { q := 7, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 13)) },
  { key := { q := 7, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 14)) },
  { key := { q := 7, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 15)) },
  { key := { q := 7, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 16)) },
  { key := { q := 7, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 17)) },
  { key := { q := 7, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 18)) },
  { key := { q := 7, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 19)) },
  { key := { q := 7, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 20)) },
  { key := { q := 7, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 21)) },
  { key := { q := 7, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 22)) },
  { key := { q := 7, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 23)) },
  { key := { q := 7, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 24)) },
  { key := { q := 7, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 25)) },
  { key := { q := 7, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 26)) },
  { key := { q := 7, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 27)) },
  { key := { q := 7, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 28)) },
  { key := { q := 7, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 29)) },
  { key := { q := 7, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 30)) },
  { key := { q := 7, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 31)) },
  { key := { q := 7, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 32)) },
  { key := { q := 7, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 33)) },
  { key := { q := 7, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 34)) },
  { key := { q := 7, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 35)) },
  { key := { q := 7, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 36)) },
  { key := { q := 7, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 37)) },
  { key := { q := 7, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 38)) },
  { key := { q := 7, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 39)) },
  { key := { q := 7, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 40)) },
  { key := { q := 7, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 41)) },
  { key := { q := 7, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 42)) },
  { key := { q := 7, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 43)) },
  { key := { q := 7, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 44)) },
  { key := { q := 7, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 45)) },
  { key := { q := 7, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 46)) },
  { key := { q := 7, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 47)) },
  { key := { q := 7, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 13 48)) },
  { key := { q := 7, n := 14, r := 0 }
    lowerValue := 678223072849
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 14 0)) },
  { key := { q := 7, n := 14, r := 1 }
    lowerValue := 7979094975
    upperValue := 49433168575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 1))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 14, r := 2 }
    lowerValue := 201792048
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 2))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 14, r := 3 }
    lowerValue := 8272527
    upperValue := 144120025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 3))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 14, r := 4 }
    lowerValue := 491723
    upperValue := 20588575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 4))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 14, r := 5 }
    lowerValue := 40021
    upperValue := 2941225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 5))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 14, r := 6 }
    lowerValue := 4319
    upperValue := 420175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 14 6))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) }]

end CoveringCodes.Database
