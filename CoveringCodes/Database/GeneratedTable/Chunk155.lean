import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 155. Do not edit manually.

def precomputedTable_chunk_155 : Array AnyBoundEntry := #[
  { key := { q := 16, n := 6, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 6 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 6 40)) },
  { key := { q := 16, n := 6, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 6 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 6 41)) },
  { key := { q := 16, n := 6, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 6 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 6 42)) },
  { key := { q := 16, n := 6, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 6 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 6 43)) },
  { key := { q := 16, n := 6, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 6 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 6 44)) },
  { key := { q := 16, n := 6, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 6 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 6 45)) },
  { key := { q := 16, n := 6, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 6 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 6 46)) },
  { key := { q := 16, n := 6, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 6 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 6 47)) },
  { key := { q := 16, n := 6, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 6 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 6 48)) },
  { key := { q := 16, n := 7, r := 0 }
    lowerValue := 268435456
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 7 0)) },
  { key := { q := 16, n := 7, r := 1 }
    lowerValue := 2532410
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 1))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 7, r := 2 }
    lowerValue := 55566
    upperValue := 172032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 2))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 7, r := 3 }
    lowerValue := 2184
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 7, r := 4 }
    lowerValue := 142
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 4))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1)))) },
  { key := { q := 16, n := 7, r := 5 }
    lowerValue := 16
    upperValue := 128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 16) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 7, r := 6 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 7 6))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 7 6)) },
  { key := { q := 16, n := 7, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 7)) },
  { key := { q := 16, n := 7, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 8)) },
  { key := { q := 16, n := 7, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 9)) },
  { key := { q := 16, n := 7, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 10)) },
  { key := { q := 16, n := 7, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 11)) },
  { key := { q := 16, n := 7, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 12)) },
  { key := { q := 16, n := 7, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 13)) },
  { key := { q := 16, n := 7, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 14)) },
  { key := { q := 16, n := 7, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 15)) },
  { key := { q := 16, n := 7, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 16)) },
  { key := { q := 16, n := 7, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 17)) },
  { key := { q := 16, n := 7, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 18)) },
  { key := { q := 16, n := 7, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 19)) },
  { key := { q := 16, n := 7, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 20)) },
  { key := { q := 16, n := 7, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 21)) },
  { key := { q := 16, n := 7, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 22)) },
  { key := { q := 16, n := 7, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 23)) },
  { key := { q := 16, n := 7, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 24)) },
  { key := { q := 16, n := 7, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 25)) },
  { key := { q := 16, n := 7, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 26)) },
  { key := { q := 16, n := 7, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 27)) },
  { key := { q := 16, n := 7, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 28)) },
  { key := { q := 16, n := 7, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 29)) },
  { key := { q := 16, n := 7, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 30)) },
  { key := { q := 16, n := 7, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 31)) },
  { key := { q := 16, n := 7, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 32)) },
  { key := { q := 16, n := 7, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 33)) },
  { key := { q := 16, n := 7, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 34)) },
  { key := { q := 16, n := 7, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 35)) },
  { key := { q := 16, n := 7, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 36)) },
  { key := { q := 16, n := 7, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 37)) },
  { key := { q := 16, n := 7, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 38)) },
  { key := { q := 16, n := 7, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 39)) },
  { key := { q := 16, n := 7, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 40)) },
  { key := { q := 16, n := 7, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 41)) },
  { key := { q := 16, n := 7, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 42)) },
  { key := { q := 16, n := 7, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 43)) },
  { key := { q := 16, n := 7, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 44)) },
  { key := { q := 16, n := 7, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 45)) },
  { key := { q := 16, n := 7, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 46)) },
  { key := { q := 16, n := 7, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 47)) },
  { key := { q := 16, n := 7, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 7 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 7 48)) },
  { key := { q := 16, n := 8, r := 0 }
    lowerValue := 4294967296
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 8 0)) },
  { key := { q := 16, n := 8, r := 1 }
    lowerValue := 35495598
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 1))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 8, r := 2 }
    lowerValue := 668894
    upperValue := 2752512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 2))
    upperTrace := (.lengthenFreeN 2 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 8, r := 3 }
    lowerValue := 21979
    upperValue := 172032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 16, n := 8, r := 4 }
    lowerValue := 1149
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 4))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 8, r := 5 }
    lowerValue := 93
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1)))) },
  { key := { q := 16, n := 8, r := 6 }
    lowerValue := 16
    upperValue := 128
    lowerTrace := (.radiusBack (by decide : 6 ≤ 7) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 8 7)))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 16) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 8, r := 7 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 8 7))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 8 7)) },
  { key := { q := 16, n := 8, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 8)) },
  { key := { q := 16, n := 8, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 9)) },
  { key := { q := 16, n := 8, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 10)) },
  { key := { q := 16, n := 8, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 11)) },
  { key := { q := 16, n := 8, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 12)) },
  { key := { q := 16, n := 8, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 13)) },
  { key := { q := 16, n := 8, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 14)) },
  { key := { q := 16, n := 8, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 15)) },
  { key := { q := 16, n := 8, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 16)) },
  { key := { q := 16, n := 8, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 17)) },
  { key := { q := 16, n := 8, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 18)) },
  { key := { q := 16, n := 8, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 19)) },
  { key := { q := 16, n := 8, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 20)) },
  { key := { q := 16, n := 8, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 21)) },
  { key := { q := 16, n := 8, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 22)) },
  { key := { q := 16, n := 8, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 23)) },
  { key := { q := 16, n := 8, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 24)) },
  { key := { q := 16, n := 8, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 25)) },
  { key := { q := 16, n := 8, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 26)) },
  { key := { q := 16, n := 8, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 27)) },
  { key := { q := 16, n := 8, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 28)) },
  { key := { q := 16, n := 8, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 29)) },
  { key := { q := 16, n := 8, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 30)) },
  { key := { q := 16, n := 8, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 31)) },
  { key := { q := 16, n := 8, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 32)) },
  { key := { q := 16, n := 8, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 33)) },
  { key := { q := 16, n := 8, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 34)) },
  { key := { q := 16, n := 8, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 35)) },
  { key := { q := 16, n := 8, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 36)) },
  { key := { q := 16, n := 8, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 37)) },
  { key := { q := 16, n := 8, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 38)) },
  { key := { q := 16, n := 8, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 39)) },
  { key := { q := 16, n := 8, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 40)) },
  { key := { q := 16, n := 8, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 41)) },
  { key := { q := 16, n := 8, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 42)) },
  { key := { q := 16, n := 8, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 43)) },
  { key := { q := 16, n := 8, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 44)) },
  { key := { q := 16, n := 8, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 45)) },
  { key := { q := 16, n := 8, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 46)) },
  { key := { q := 16, n := 8, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 47)) },
  { key := { q := 16, n := 8, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 8 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 8 48)) },
  { key := { q := 16, n := 9, r := 0 }
    lowerValue := 68719476736
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 9 0)) },
  { key := { q := 16, n := 9, r := 1 }
    lowerValue := 505290271
    upperValue := 2147483648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 1))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 9, r := 2 }
    lowerValue := 8343793
    upperValue := 44040192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 2))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 9, r := 3 }
    lowerValue := 235554
    upperValue := 2752512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 9, r := 4 }
    lowerValue := 10303
    upperValue := 172032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 4))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 16, n := 9, r := 5 }
    lowerValue := 672
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 5))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 9, r := 6 }
    lowerValue := 65
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 6))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1)))) },
  { key := { q := 16, n := 9, r := 7 }
    lowerValue := 16
    upperValue := 128
    lowerTrace := (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 9 8)))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 16) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 9, r := 8 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 9 8))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 9 8)) },
  { key := { q := 16, n := 9, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 9)) },
  { key := { q := 16, n := 9, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 10)) },
  { key := { q := 16, n := 9, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 11)) },
  { key := { q := 16, n := 9, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 12)) },
  { key := { q := 16, n := 9, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 13)) },
  { key := { q := 16, n := 9, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 14)) },
  { key := { q := 16, n := 9, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 15)) },
  { key := { q := 16, n := 9, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 16)) },
  { key := { q := 16, n := 9, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 17)) },
  { key := { q := 16, n := 9, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 18)) },
  { key := { q := 16, n := 9, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 19)) },
  { key := { q := 16, n := 9, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 20)) },
  { key := { q := 16, n := 9, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 21)) },
  { key := { q := 16, n := 9, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 22)) },
  { key := { q := 16, n := 9, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 23)) },
  { key := { q := 16, n := 9, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 24)) },
  { key := { q := 16, n := 9, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 25)) },
  { key := { q := 16, n := 9, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 26)) },
  { key := { q := 16, n := 9, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 27)) },
  { key := { q := 16, n := 9, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 28)) },
  { key := { q := 16, n := 9, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 29)) },
  { key := { q := 16, n := 9, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 30)) },
  { key := { q := 16, n := 9, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 31)) },
  { key := { q := 16, n := 9, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 32)) },
  { key := { q := 16, n := 9, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 33)) },
  { key := { q := 16, n := 9, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 34)) },
  { key := { q := 16, n := 9, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 35)) },
  { key := { q := 16, n := 9, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 36)) },
  { key := { q := 16, n := 9, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 37)) },
  { key := { q := 16, n := 9, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 38)) },
  { key := { q := 16, n := 9, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 39)) },
  { key := { q := 16, n := 9, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 40)) },
  { key := { q := 16, n := 9, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 41)) },
  { key := { q := 16, n := 9, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 42)) },
  { key := { q := 16, n := 9, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 43)) },
  { key := { q := 16, n := 9, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 44)) },
  { key := { q := 16, n := 9, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 45)) },
  { key := { q := 16, n := 9, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 46)) },
  { key := { q := 16, n := 9, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 47)) },
  { key := { q := 16, n := 9, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 9 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 9 48)) },
  { key := { q := 16, n := 10, r := 0 }
    lowerValue := 1099511627776
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 10 0)) },
  { key := { q := 16, n := 10, r := 1 }
    lowerValue := 7281533959
    upperValue := 34359738368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 1))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 10, r := 2 }
    lowerValue := 106998018
    upperValue := 704643072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 2))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 10, r := 3 }
    lowerValue := 2647665
    upperValue := 44040192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 10, r := 4 }
    lowerValue := 99535
    upperValue := 2752512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 4))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 10, r := 5 }
    lowerValue := 5433
    upperValue := 172032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 5))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 16, n := 10, r := 6 }
    lowerValue := 424
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 6))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 10, r := 7 }
    lowerValue := 48
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 7))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1)))) },
  { key := { q := 16, n := 10, r := 8 }
    lowerValue := 16
    upperValue := 128
    lowerTrace := (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 10 9)))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 16) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 10, r := 9 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 10 9))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 10 9)) },
  { key := { q := 16, n := 10, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 10)) },
  { key := { q := 16, n := 10, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 11)) },
  { key := { q := 16, n := 10, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 12)) },
  { key := { q := 16, n := 10, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 13)) },
  { key := { q := 16, n := 10, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 14)) },
  { key := { q := 16, n := 10, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 15)) },
  { key := { q := 16, n := 10, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 16)) },
  { key := { q := 16, n := 10, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 17)) },
  { key := { q := 16, n := 10, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 18)) },
  { key := { q := 16, n := 10, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 19)) },
  { key := { q := 16, n := 10, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 20)) },
  { key := { q := 16, n := 10, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 21)) },
  { key := { q := 16, n := 10, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 22)) },
  { key := { q := 16, n := 10, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 23)) },
  { key := { q := 16, n := 10, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 24)) },
  { key := { q := 16, n := 10, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 25)) },
  { key := { q := 16, n := 10, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 26)) },
  { key := { q := 16, n := 10, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 27)) },
  { key := { q := 16, n := 10, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 28)) },
  { key := { q := 16, n := 10, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 29)) },
  { key := { q := 16, n := 10, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 30)) },
  { key := { q := 16, n := 10, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 31)) },
  { key := { q := 16, n := 10, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 32)) },
  { key := { q := 16, n := 10, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 33)) },
  { key := { q := 16, n := 10, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 34)) },
  { key := { q := 16, n := 10, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 35)) },
  { key := { q := 16, n := 10, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 36)) },
  { key := { q := 16, n := 10, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 37)) },
  { key := { q := 16, n := 10, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 38)) },
  { key := { q := 16, n := 10, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 39)) },
  { key := { q := 16, n := 10, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 40)) },
  { key := { q := 16, n := 10, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 41)) },
  { key := { q := 16, n := 10, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 42)) },
  { key := { q := 16, n := 10, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 43)) },
  { key := { q := 16, n := 10, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 44)) },
  { key := { q := 16, n := 10, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 45)) },
  { key := { q := 16, n := 10, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 46)) },
  { key := { q := 16, n := 10, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 47)) },
  { key := { q := 16, n := 10, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 10 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 10 48)) },
  { key := { q := 16, n := 11, r := 0 }
    lowerValue := 17592186044416
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 11 0)) },
  { key := { q := 16, n := 11, r := 1 }
    lowerValue := 105977024364
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 1))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 11, r := 2 }
    lowerValue := 1402773786
    upperValue := 11274289152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 2))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 11, r := 3 }
    lowerValue := 30895139
    upperValue := 704643072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 3))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 11, r := 4 }
    lowerValue := 1018322
    upperValue := 44040192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 4))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 11, r := 5 }
    lowerValue := 47791
    upperValue := 2752512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 11, r := 6 }
    lowerValue := 3125
    upperValue := 172032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 6))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 16, n := 11, r := 7 }
    lowerValue := 284
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 7))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 11, r := 8 }
    lowerValue := 37
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 8))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1)))) },
  { key := { q := 16, n := 11, r := 9 }
    lowerValue := 16
    upperValue := 128
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 11 10)))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 16) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 11, r := 10 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 11 10)) },
  { key := { q := 16, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 11)) },
  { key := { q := 16, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 12)) },
  { key := { q := 16, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 13)) },
  { key := { q := 16, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 14)) },
  { key := { q := 16, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 15)) },
  { key := { q := 16, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 16)) },
  { key := { q := 16, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 17)) },
  { key := { q := 16, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 18)) },
  { key := { q := 16, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 19)) },
  { key := { q := 16, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 20)) },
  { key := { q := 16, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 21)) },
  { key := { q := 16, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 22)) },
  { key := { q := 16, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 23)) },
  { key := { q := 16, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 24)) },
  { key := { q := 16, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 25)) },
  { key := { q := 16, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 26)) },
  { key := { q := 16, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 27)) },
  { key := { q := 16, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 28)) },
  { key := { q := 16, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 29)) },
  { key := { q := 16, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 30)) },
  { key := { q := 16, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 31)) },
  { key := { q := 16, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 32)) },
  { key := { q := 16, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 33)) },
  { key := { q := 16, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 34)) },
  { key := { q := 16, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 35)) },
  { key := { q := 16, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 36)) },
  { key := { q := 16, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 37)) },
  { key := { q := 16, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 38)) },
  { key := { q := 16, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 39)) },
  { key := { q := 16, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 40)) },
  { key := { q := 16, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 41)) },
  { key := { q := 16, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 42)) },
  { key := { q := 16, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 43)) },
  { key := { q := 16, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 44)) }]

end CoveringCodes.Database
