import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 157. Do not edit manually.

def precomputedTable_chunk_157 : Array AnyBoundEntry := #[
  { key := { q := 16, n := 17, r := 1 }
    lowerValue := 1152921504606846976
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 1))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 17, r := 2 }
    lowerValue := 9565332680170885
    upperValue := 189151184349560832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 2))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 17, r := 3 }
    lowerValue := 126898615038658
    upperValue := 11821949021847552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 17, r := 4 }
    lowerValue := 2403223189988
    upperValue := 738871813865472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 17, r := 5 }
    lowerValue := 61210818059
    upperValue := 46179488366592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 17, r := 6 }
    lowerValue := 2024442347
    upperValue := 2886218022912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 17, r := 7 }
    lowerValue := 85089762
    upperValue := 180388626432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 17, r := 8 }
    lowerValue := 4487404
    upperValue := 11274289152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 17, r := 9 }
    lowerValue := 295051
    upperValue := 704643072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 17, r := 10 }
    lowerValue := 24163
    upperValue := 44040192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 10))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 17, r := 11 }
    lowerValue := 2475
    upperValue := 2752512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 11))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 17, r := 12 }
    lowerValue := 321
    upperValue := 172032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 12))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 16, n := 17, r := 13 }
    lowerValue := 54
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 13))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 17, r := 14 }
    lowerValue := 16
    upperValue := 2048
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 16 15))))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1)))) },
  { key := { q := 16, n := 17, r := 15 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 17 16)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15)) },
  { key := { q := 16, n := 17, r := 16 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 16)) },
  { key := { q := 16, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 17)) },
  { key := { q := 16, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 18)) },
  { key := { q := 16, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 19)) },
  { key := { q := 16, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 20)) },
  { key := { q := 16, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 21)) },
  { key := { q := 16, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 22)) },
  { key := { q := 16, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 23)) },
  { key := { q := 16, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 24)) },
  { key := { q := 16, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 25)) },
  { key := { q := 16, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 26)) },
  { key := { q := 16, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 27)) },
  { key := { q := 16, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 28)) },
  { key := { q := 16, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 29)) },
  { key := { q := 16, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 30)) },
  { key := { q := 16, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 31)) },
  { key := { q := 16, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 32)) },
  { key := { q := 16, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 33)) },
  { key := { q := 16, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 34)) },
  { key := { q := 16, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 35)) },
  { key := { q := 16, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 36)) },
  { key := { q := 16, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 37)) },
  { key := { q := 16, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 38)) },
  { key := { q := 16, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 39)) },
  { key := { q := 16, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 40)) },
  { key := { q := 16, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 41)) },
  { key := { q := 16, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 42)) },
  { key := { q := 16, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 43)) },
  { key := { q := 16, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 44)) },
  { key := { q := 16, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 45)) },
  { key := { q := 16, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 46)) },
  { key := { q := 16, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 47)) },
  { key := { q := 16, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 17 48)) },
  { key := { q := 16, n := 18, r := 0 }
    lowerValue := 4722366482869645213696
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 18 0)) },
  { key := { q := 16, n := 18, r := 1 }
    lowerValue := 17425706578854779387
    upperValue := 147573952589676412928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 1))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 18, r := 2 }
    lowerValue := 136106942669749978
    upperValue := 3026418949592973312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 2))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 18, r := 3 }
    lowerValue := 1693395939489154
    upperValue := 189151184349560832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 18, r := 4 }
    lowerValue := 29945026433850
    upperValue := 11821949021847552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 18, r := 5 }
    lowerValue := 708635642175
    upperValue := 738871813865472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 18, r := 6 }
    lowerValue := 21650354795
    upperValue := 46179488366592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 18, r := 7 }
    lowerValue := 834997104
    upperValue := 2886218022912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 18, r := 8 }
    lowerValue := 40087145
    upperValue := 180388626432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 18, r := 9 }
    lowerValue := 2376729
    upperValue := 11274289152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 18, r := 10 }
    lowerValue := 173489
    upperValue := 704643072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 10))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 18, r := 11 }
    lowerValue := 15612
    upperValue := 44040192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 11))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 18, r := 12 }
    lowerValue := 1742
    upperValue := 2752512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 12))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 18, r := 13 }
    lowerValue := 244
    upperValue := 172032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 13))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 16, n := 18, r := 14 }
    lowerValue := 44
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 14))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 18, r := 15 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 17 16))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 18, r := 16 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 18 17)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16)) },
  { key := { q := 16, n := 18, r := 17 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 17)) },
  { key := { q := 16, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 18)) },
  { key := { q := 16, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 19)) },
  { key := { q := 16, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 20)) },
  { key := { q := 16, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 21)) },
  { key := { q := 16, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 22)) },
  { key := { q := 16, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 23)) },
  { key := { q := 16, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 24)) },
  { key := { q := 16, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 25)) },
  { key := { q := 16, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 26)) },
  { key := { q := 16, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 27)) },
  { key := { q := 16, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 28)) },
  { key := { q := 16, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 29)) },
  { key := { q := 16, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 30)) },
  { key := { q := 16, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 31)) },
  { key := { q := 16, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 32)) },
  { key := { q := 16, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 33)) },
  { key := { q := 16, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 34)) },
  { key := { q := 16, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 35)) },
  { key := { q := 16, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 36)) },
  { key := { q := 16, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 37)) },
  { key := { q := 16, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 38)) },
  { key := { q := 16, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 39)) },
  { key := { q := 16, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 40)) },
  { key := { q := 16, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 41)) },
  { key := { q := 16, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 42)) },
  { key := { q := 16, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 43)) },
  { key := { q := 16, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 44)) },
  { key := { q := 16, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 45)) },
  { key := { q := 16, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 46)) },
  { key := { q := 16, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 47)) },
  { key := { q := 16, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 18 48)) },
  { key := { q := 16, n := 19, r := 0 }
    lowerValue := 75557863725914323419136
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 19 0)) },
  { key := { q := 16, n := 19, r := 1 }
    lowerValue := 264188334705994137830
    upperValue := 2361183241434822606848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 1))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 19, r := 2 }
    lowerValue := 1949326996876095133
    upperValue := 48422703193487572992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 2))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 19, r := 3 }
    lowerValue := 22833109224255009
    upperValue := 3026418949592973312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 19, r := 4 }
    lowerValue := 378676109917299
    upperValue := 189151184349560832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 4))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 19, r := 5 }
    lowerValue := 8367849205662
    upperValue := 11821949021847552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 5))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 19, r := 6 }
    lowerValue := 237543599372
    upperValue := 738871813865472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 6))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 19, r := 7 }
    lowerValue := 8463645988
    upperValue := 46179488366592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 7))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 19, r := 8 }
    lowerValue := 372875305
    upperValue := 2886218022912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 8))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 19, r := 9 }
    lowerValue := 20127529
    upperValue := 180388626432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 9))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 19, r := 10 }
    lowerValue := 1325025
    upperValue := 11274289152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 10))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 19, r := 11 }
    lowerValue := 106302
    upperValue := 704643072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 11))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 19, r := 12 }
    lowerValue := 10425
    upperValue := 44040192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 12))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 19, r := 13 }
    lowerValue := 1259
    upperValue := 2752512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 13))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 19, r := 14 }
    lowerValue := 190
    upperValue := 172032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 14))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 16, n := 19, r := 15 }
    lowerValue := 37
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 15))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 19, r := 16 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 18 17))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 19, r := 17 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 19 18)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17)) },
  { key := { q := 16, n := 19, r := 18 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 18)) },
  { key := { q := 16, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 19)) },
  { key := { q := 16, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 20)) },
  { key := { q := 16, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 21)) },
  { key := { q := 16, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 22)) },
  { key := { q := 16, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 23)) },
  { key := { q := 16, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 24)) },
  { key := { q := 16, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 25)) },
  { key := { q := 16, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 26)) },
  { key := { q := 16, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 27)) },
  { key := { q := 16, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 28)) },
  { key := { q := 16, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 29)) },
  { key := { q := 16, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 30)) },
  { key := { q := 16, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 31)) },
  { key := { q := 16, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 32)) },
  { key := { q := 16, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 33)) },
  { key := { q := 16, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 34)) },
  { key := { q := 16, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 35)) },
  { key := { q := 16, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 36)) },
  { key := { q := 16, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 37)) },
  { key := { q := 16, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 38)) },
  { key := { q := 16, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 39)) },
  { key := { q := 16, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 40)) },
  { key := { q := 16, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 41)) },
  { key := { q := 16, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 42)) },
  { key := { q := 16, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 43)) },
  { key := { q := 16, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 44)) },
  { key := { q := 16, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 45)) },
  { key := { q := 16, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 46)) },
  { key := { q := 16, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 47)) },
  { key := { q := 16, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 19 48)) },
  { key := { q := 16, n := 20, r := 0 }
    lowerValue := 1208925819614629174706176
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 20 0)) },
  { key := { q := 16, n := 20, r := 1 }
    lowerValue := 4016364849218037125270
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 1))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 20, r := 2 }
    lowerValue := 28081248277964023477
    upperValue := 774763251095801167872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 2))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 20, r := 3 }
    lowerValue := 310733831689811848
    upperValue := 48422703193487572992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 3))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 20, r := 4 }
    lowerValue := 4851837072869582
    upperValue := 3026418949592973312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 4))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 20, r := 5 }
    lowerValue := 100555120952148
    upperValue := 189151184349560832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 5))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 20, r := 6 }
    lowerValue := 2665632033276
    upperValue := 11821949021847552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 6))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 20, r := 7 }
    lowerValue := 88252153332
    upperValue := 738871813865472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 7))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 20, r := 8 }
    lowerValue := 3592157603
    upperValue := 46179488366592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 8))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 20, r := 9 }
    lowerValue := 177953508
    upperValue := 2886218022912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 9))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 20, r := 10 }
    lowerValue := 10667014
    upperValue := 180388626432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 10))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 20, r := 11 }
    lowerValue := 771912
    upperValue := 11274289152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 11))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 20, r := 12 }
    lowerValue := 67499
    upperValue := 704643072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 12))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 20, r := 13 }
    lowerValue := 7163
    upperValue := 44040192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 13))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 20, r := 14 }
    lowerValue := 930
    upperValue := 2752512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 14))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 20, r := 15 }
    lowerValue := 150
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 15))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 20, r := 16 }
    lowerValue := 31
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 16))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 20, r := 17 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 19 18))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 20, r := 18 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 20 19)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18)) },
  { key := { q := 16, n := 20, r := 19 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 19)) },
  { key := { q := 16, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 20)) },
  { key := { q := 16, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 21)) },
  { key := { q := 16, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 22)) },
  { key := { q := 16, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 23)) },
  { key := { q := 16, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 24)) },
  { key := { q := 16, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 25)) },
  { key := { q := 16, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 26)) },
  { key := { q := 16, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 27)) },
  { key := { q := 16, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 28)) },
  { key := { q := 16, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 29)) },
  { key := { q := 16, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 30)) },
  { key := { q := 16, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 31)) },
  { key := { q := 16, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 32)) },
  { key := { q := 16, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 33)) },
  { key := { q := 16, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 34)) },
  { key := { q := 16, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 35)) },
  { key := { q := 16, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 36)) },
  { key := { q := 16, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 37)) },
  { key := { q := 16, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 38)) },
  { key := { q := 16, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 39)) },
  { key := { q := 16, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 40)) },
  { key := { q := 16, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 41)) },
  { key := { q := 16, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 42)) },
  { key := { q := 16, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 43)) },
  { key := { q := 16, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 44)) },
  { key := { q := 16, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 45)) },
  { key := { q := 16, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 46)) },
  { key := { q := 16, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 47)) },
  { key := { q := 16, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 20 48)) },
  { key := { q := 16, n := 21, r := 0 }
    lowerValue := 19342813113834066795298816
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 21 0)) },
  { key := { q := 16, n := 21, r := 1 }
    lowerValue := 61211433904538186061073
    upperValue := 604462909807314587353088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 1))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 21, r := 2 }
    lowerValue := 406652085814112323831
    upperValue := 12396212017532818685952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 2))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 21, r := 3 }
    lowerValue := 4263991554784557954
    upperValue := 774763251095801167872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 3))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 21, r := 4 }
    lowerValue := 62897946602454147
    upperValue := 48422703193487572992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 4))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 21, r := 5 }
    lowerValue := 1227332055862464
    upperValue := 3026418949592973312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 5))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 21, r := 6 }
    lowerValue := 30515863002543
    upperValue := 189151184349560832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 6))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 21, r := 7 }
    lowerValue := 943487929905
    upperValue := 11821949021847552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 7))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 21, r := 8 }
    lowerValue := 35686266717
    upperValue := 738871813865472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 8))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 21, r := 9 }
    lowerValue := 1633451681
    upperValue := 46179488366592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 9))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 21, r := 10 }
    lowerValue := 89868136
    upperValue := 2886218022912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 10))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 21, r := 11 }
    lowerValue := 5922220
    upperValue := 180388626432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 11))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 21, r := 12 }
    lowerValue := 467190
    upperValue := 11274289152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 12))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 21, r := 13 }
    lowerValue := 44219
    upperValue := 704643072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 13))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 21, r := 14 }
    lowerValue := 5048
    upperValue := 44040192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 14))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 21, r := 15 }
    lowerValue := 701
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 15))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 21, r := 16 }
    lowerValue := 120
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 16))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 21, r := 17 }
    lowerValue := 26
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 17))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 21, r := 18 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 20 19))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 21, r := 19 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19)) },
  { key := { q := 16, n := 21, r := 20 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 20)) },
  { key := { q := 16, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 21)) },
  { key := { q := 16, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 22)) },
  { key := { q := 16, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 23)) },
  { key := { q := 16, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 24)) },
  { key := { q := 16, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 25)) },
  { key := { q := 16, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 26)) },
  { key := { q := 16, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 27)) },
  { key := { q := 16, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 28)) },
  { key := { q := 16, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 29)) },
  { key := { q := 16, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 30)) },
  { key := { q := 16, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 31)) },
  { key := { q := 16, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 32)) },
  { key := { q := 16, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 33)) },
  { key := { q := 16, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 34)) },
  { key := { q := 16, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 35)) },
  { key := { q := 16, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 36)) },
  { key := { q := 16, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 37)) },
  { key := { q := 16, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 38)) },
  { key := { q := 16, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 39)) },
  { key := { q := 16, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 40)) },
  { key := { q := 16, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 41)) },
  { key := { q := 16, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 42)) },
  { key := { q := 16, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 43)) },
  { key := { q := 16, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 44)) },
  { key := { q := 16, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 45)) },
  { key := { q := 16, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 46)) },
  { key := { q := 16, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 47)) },
  { key := { q := 16, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 21 48)) },
  { key := { q := 16, n := 22, r := 0 }
    lowerValue := 309485009821345068724781056
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 22 0)) },
  { key := { q := 16, n := 22, r := 1 }
    lowerValue := 935000029671737367748584
    upperValue := 9671406556917033397649408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 1))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 22, r := 2 }
    lowerValue := 5916816614180879224655
    upperValue := 198339392280525098975232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 2))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 22, r := 3 }
    lowerValue := 58951704086083384553
    upperValue := 12396212017532818685952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 3))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 22, r := 4 }
    lowerValue := 824037129203426466
    upperValue := 774763251095801167872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 4))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 22, r := 5 }
    lowerValue := 15190974566599271
    upperValue := 48422703193487572992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 22 5))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) }]

end CoveringCodes.Database
