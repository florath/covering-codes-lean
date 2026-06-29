import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 146. Do not edit manually.

def precomputedTable_chunk_146 : Array AnyBoundEntry := #[
  { key := { q := 15, n := 9, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 9 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 9 44)) },
  { key := { q := 15, n := 9, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 9 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 9 45)) },
  { key := { q := 15, n := 9, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 9 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 9 46)) },
  { key := { q := 15, n := 9, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 9 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 9 47)) },
  { key := { q := 15, n := 9, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 9 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 9 48)) },
  { key := { q := 15, n := 10, r := 0 }
    lowerValue := 576650390625
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 10 0)) },
  { key := { q := 15, n := 10, r := 1 }
    lowerValue := 4089719083
    upperValue := 16106127360
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 1))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 8 15 2 9 1 2097152 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 15 ≤ 2 * 8) (by decide : 0 < 15) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1)))) },
  { key := { q := 15, n := 10, r := 2 }
    lowerValue := 64351121
    upperValue := 544320000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 2))
    upperTrace := (.lengthenFreeN 4 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 10, r := 3 }
    lowerValue := 1704851
    upperValue := 36288000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 10, r := 4 }
    lowerValue := 68604
    upperValue := 2419200
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 4))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 10, r := 5 }
    lowerValue := 4007
    upperValue := 161280
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 5))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 15, n := 10, r := 6 }
    lowerValue := 335
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 6))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 10, r := 7 }
    lowerValue := 41
    upperValue := 1695
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 7))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1)))) },
  { key := { q := 15, n := 10, r := 8 }
    lowerValue := 15
    upperValue := 113
    lowerTrace := (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 10 9)))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 15) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 10, r := 9 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 10 9))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 10 9)) },
  { key := { q := 15, n := 10, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 10)) },
  { key := { q := 15, n := 10, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 11)) },
  { key := { q := 15, n := 10, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 12)) },
  { key := { q := 15, n := 10, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 13)) },
  { key := { q := 15, n := 10, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 14)) },
  { key := { q := 15, n := 10, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 15)) },
  { key := { q := 15, n := 10, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 16)) },
  { key := { q := 15, n := 10, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 17)) },
  { key := { q := 15, n := 10, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 18)) },
  { key := { q := 15, n := 10, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 19)) },
  { key := { q := 15, n := 10, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 20)) },
  { key := { q := 15, n := 10, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 21)) },
  { key := { q := 15, n := 10, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 22)) },
  { key := { q := 15, n := 10, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 23)) },
  { key := { q := 15, n := 10, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 24)) },
  { key := { q := 15, n := 10, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 25)) },
  { key := { q := 15, n := 10, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 26)) },
  { key := { q := 15, n := 10, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 27)) },
  { key := { q := 15, n := 10, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 28)) },
  { key := { q := 15, n := 10, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 29)) },
  { key := { q := 15, n := 10, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 30)) },
  { key := { q := 15, n := 10, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 31)) },
  { key := { q := 15, n := 10, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 32)) },
  { key := { q := 15, n := 10, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 33)) },
  { key := { q := 15, n := 10, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 34)) },
  { key := { q := 15, n := 10, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 35)) },
  { key := { q := 15, n := 10, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 36)) },
  { key := { q := 15, n := 10, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 37)) },
  { key := { q := 15, n := 10, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 38)) },
  { key := { q := 15, n := 10, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 39)) },
  { key := { q := 15, n := 10, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 40)) },
  { key := { q := 15, n := 10, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 41)) },
  { key := { q := 15, n := 10, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 42)) },
  { key := { q := 15, n := 10, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 43)) },
  { key := { q := 15, n := 10, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 44)) },
  { key := { q := 15, n := 10, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 45)) },
  { key := { q := 15, n := 10, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 46)) },
  { key := { q := 15, n := 10, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 47)) },
  { key := { q := 15, n := 10, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 10 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 10 48)) },
  { key := { q := 15, n := 11, r := 0 }
    lowerValue := 8649755859375
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 11 0)) },
  { key := { q := 15, n := 11, r := 1 }
    lowerValue := 55804876513
    upperValue := 241591910400
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 1))
    upperTrace := (.lengthenFreeN 2 (@UpperTrace.alphabetExpand 8 15 2 9 1 2097152 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 15 ≤ 2 * 8) (by decide : 0 < 15) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1)))) },
  { key := { q := 15, n := 11, r := 2 }
    lowerValue := 791015625
    upperValue := 8164800000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 2))
    upperTrace := (.lengthenFreeN 5 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 11, r := 3 }
    lowerValue := 18653977
    upperValue := 544320000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 3))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 11, r := 4 }
    lowerValue := 658228
    upperValue := 36288000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 4))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 11, r := 5 }
    lowerValue := 33063
    upperValue := 2419200
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 11, r := 6 }
    lowerValue := 2313
    upperValue := 161280
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 6))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 15, n := 11, r := 7 }
    lowerValue := 225
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 7))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 11, r := 8 }
    lowerValue := 31
    upperValue := 1695
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 8))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1)))) },
  { key := { q := 15, n := 11, r := 9 }
    lowerValue := 15
    upperValue := 113
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 11 10)))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 15) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 11, r := 10 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 11 10)) },
  { key := { q := 15, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 11)) },
  { key := { q := 15, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 12)) },
  { key := { q := 15, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 13)) },
  { key := { q := 15, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 14)) },
  { key := { q := 15, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 15)) },
  { key := { q := 15, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 16)) },
  { key := { q := 15, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 17)) },
  { key := { q := 15, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 18)) },
  { key := { q := 15, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 19)) },
  { key := { q := 15, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 20)) },
  { key := { q := 15, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 21)) },
  { key := { q := 15, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 22)) },
  { key := { q := 15, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 23)) },
  { key := { q := 15, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 24)) },
  { key := { q := 15, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 25)) },
  { key := { q := 15, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 26)) },
  { key := { q := 15, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 27)) },
  { key := { q := 15, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 28)) },
  { key := { q := 15, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 29)) },
  { key := { q := 15, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 30)) },
  { key := { q := 15, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 31)) },
  { key := { q := 15, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 32)) },
  { key := { q := 15, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 33)) },
  { key := { q := 15, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 34)) },
  { key := { q := 15, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 35)) },
  { key := { q := 15, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 36)) },
  { key := { q := 15, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 37)) },
  { key := { q := 15, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 38)) },
  { key := { q := 15, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 39)) },
  { key := { q := 15, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 40)) },
  { key := { q := 15, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 41)) },
  { key := { q := 15, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 42)) },
  { key := { q := 15, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 43)) },
  { key := { q := 15, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 44)) },
  { key := { q := 15, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 45)) },
  { key := { q := 15, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 46)) },
  { key := { q := 15, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 47)) },
  { key := { q := 15, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 11 48)) },
  { key := { q := 15, n := 12, r := 0 }
    lowerValue := 129746337890625
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 12 0)) },
  { key := { q := 15, n := 12, r := 1 }
    lowerValue := 767729810004
    upperValue := 3623878656000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 1))
    upperTrace := (.lengthenFreeN 3 (@UpperTrace.alphabetExpand 8 15 2 9 1 2097152 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 15 ≤ 2 * 8) (by decide : 0 < 15) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1)))) },
  { key := { q := 15, n := 12, r := 2 }
    lowerValue := 9900521778
    upperValue := 122472000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 2))
    upperTrace := (.lengthenFreeN 6 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 12, r := 3 }
    lowerValue := 210359101
    upperValue := 8164800000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 3))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 12, r := 4 }
    lowerValue := 6608684
    upperValue := 544320000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 4))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 12, r := 5 }
    lowerValue := 291180
    upperValue := 36288000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 5))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 12, r := 6 }
    lowerValue := 17527
    upperValue := 2419200
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 6))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 12, r := 7 }
    lowerValue := 1428
    upperValue := 161280
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 7))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 15, n := 12, r := 8 }
    lowerValue := 158
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 8))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 12, r := 9 }
    lowerValue := 25
    upperValue := 1695
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 9))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1)))) },
  { key := { q := 15, n := 12, r := 10 }
    lowerValue := 15
    upperValue := 113
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 12 11)))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 15) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 12, r := 11 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 12 11)) },
  { key := { q := 15, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 12)) },
  { key := { q := 15, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 13)) },
  { key := { q := 15, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 14)) },
  { key := { q := 15, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 15)) },
  { key := { q := 15, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 16)) },
  { key := { q := 15, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 17)) },
  { key := { q := 15, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 18)) },
  { key := { q := 15, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 19)) },
  { key := { q := 15, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 20)) },
  { key := { q := 15, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 21)) },
  { key := { q := 15, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 22)) },
  { key := { q := 15, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 23)) },
  { key := { q := 15, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 24)) },
  { key := { q := 15, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 25)) },
  { key := { q := 15, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 26)) },
  { key := { q := 15, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 27)) },
  { key := { q := 15, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 28)) },
  { key := { q := 15, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 29)) },
  { key := { q := 15, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 30)) },
  { key := { q := 15, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 31)) },
  { key := { q := 15, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 32)) },
  { key := { q := 15, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 33)) },
  { key := { q := 15, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 34)) },
  { key := { q := 15, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 35)) },
  { key := { q := 15, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 36)) },
  { key := { q := 15, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 37)) },
  { key := { q := 15, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 38)) },
  { key := { q := 15, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 39)) },
  { key := { q := 15, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 40)) },
  { key := { q := 15, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 41)) },
  { key := { q := 15, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 42)) },
  { key := { q := 15, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 43)) },
  { key := { q := 15, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 44)) },
  { key := { q := 15, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 45)) },
  { key := { q := 15, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 46)) },
  { key := { q := 15, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 47)) },
  { key := { q := 15, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 12 48)) },
  { key := { q := 15, n := 13, r := 0 }
    lowerValue := 1946195068359375
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 13 0)) },
  { key := { q := 15, n := 13, r := 1 }
    lowerValue := 10634945728740
    upperValue := 54358179840000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 1))
    upperTrace := (.lengthenFreeN 4 (@UpperTrace.alphabetExpand 8 15 2 9 1 2097152 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 15 ≤ 2 * 8) (by decide : 0 < 15) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1)))) },
  { key := { q := 15, n := 13, r := 2 }
    lowerValue := 125796333034
    upperValue := 1837080000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 2))
    upperTrace := (.lengthenFreeN 7 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 13, r := 3 }
    lowerValue := 2431968646
    upperValue := 122472000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 3))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 13, r := 4 }
    lowerValue := 68848736
    upperValue := 8164800000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 4))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 13, r := 5 }
    lowerValue := 2701371
    upperValue := 544320000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 5))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 13, r := 6 }
    lowerValue := 142672
    upperValue := 36288000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 6))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 13, r := 7 }
    lowerValue := 10005
    upperValue := 2419200
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 13, r := 8 }
    lowerValue := 930
    upperValue := 161280
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 8))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 15, n := 13, r := 9 }
    lowerValue := 116
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 9))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 13, r := 10 }
    lowerValue := 20
    upperValue := 1695
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 10))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1)))) },
  { key := { q := 15, n := 13, r := 11 }
    lowerValue := 15
    upperValue := 113
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 13 12)))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 15) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 13, r := 12 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 13 12)) },
  { key := { q := 15, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 13)) },
  { key := { q := 15, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 14)) },
  { key := { q := 15, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 15)) },
  { key := { q := 15, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 16)) },
  { key := { q := 15, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 17)) },
  { key := { q := 15, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 18)) },
  { key := { q := 15, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 19)) },
  { key := { q := 15, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 20)) },
  { key := { q := 15, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 21)) },
  { key := { q := 15, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 22)) },
  { key := { q := 15, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 23)) },
  { key := { q := 15, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 24)) },
  { key := { q := 15, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 25)) },
  { key := { q := 15, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 26)) },
  { key := { q := 15, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 27)) },
  { key := { q := 15, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 28)) },
  { key := { q := 15, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 29)) },
  { key := { q := 15, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 30)) },
  { key := { q := 15, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 31)) },
  { key := { q := 15, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 32)) },
  { key := { q := 15, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 33)) },
  { key := { q := 15, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 34)) },
  { key := { q := 15, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 35)) },
  { key := { q := 15, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 36)) },
  { key := { q := 15, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 37)) },
  { key := { q := 15, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 38)) },
  { key := { q := 15, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 39)) },
  { key := { q := 15, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 40)) },
  { key := { q := 15, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 41)) },
  { key := { q := 15, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 42)) },
  { key := { q := 15, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 43)) },
  { key := { q := 15, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 44)) },
  { key := { q := 15, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 45)) },
  { key := { q := 15, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 46)) },
  { key := { q := 15, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 47)) },
  { key := { q := 15, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 13 48)) },
  { key := { q := 15, n := 14, r := 0 }
    lowerValue := 29192926025390625
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 14 0)) },
  { key := { q := 15, n := 14, r := 1 }
    lowerValue := 148187441753252
    upperValue := 815372697600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 1))
    upperTrace := (.lengthenFreeN 5 (@UpperTrace.alphabetExpand 8 15 2 9 1 2097152 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 15 ≤ 2 * 8) (by decide : 0 < 15) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1)))) },
  { key := { q := 15, n := 14, r := 2 }
    lowerValue := 1618861311229
    upperValue := 27556200000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 2))
    upperTrace := (.lengthenFreeN 8 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 14, r := 3 }
    lowerValue := 28709204637
    upperValue := 1837080000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 3))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 14, r := 4 }
    lowerValue := 739599454
    upperValue := 122472000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 14, r := 5 }
    lowerValue := 26153968
    upperValue := 8164800000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 5))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 14, r := 6 }
    lowerValue := 1230348
    upperValue := 544320000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 14, r := 7 }
    lowerValue := 75727
    upperValue := 36288000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 14, r := 8 }
    lowerValue := 6061
    upperValue := 2419200
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 14, r := 9 }
    lowerValue := 633
    upperValue := 161280
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 9))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 15, n := 14, r := 10 }
    lowerValue := 87
    upperValue := 10752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 10))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 14, r := 11 }
    lowerValue := 17
    upperValue := 1695
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 11))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1)))) },
  { key := { q := 15, n := 14, r := 12 }
    lowerValue := 15
    upperValue := 113
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 14 13)))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 15) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 14, r := 13 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 14 13)) },
  { key := { q := 15, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 14)) },
  { key := { q := 15, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 15)) },
  { key := { q := 15, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 16)) },
  { key := { q := 15, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 17)) },
  { key := { q := 15, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 18)) },
  { key := { q := 15, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 19)) },
  { key := { q := 15, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 20)) },
  { key := { q := 15, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 21)) },
  { key := { q := 15, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 22)) },
  { key := { q := 15, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 23)) },
  { key := { q := 15, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 24)) },
  { key := { q := 15, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 25)) },
  { key := { q := 15, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 26)) },
  { key := { q := 15, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 27)) },
  { key := { q := 15, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 28)) },
  { key := { q := 15, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 29)) },
  { key := { q := 15, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 30)) },
  { key := { q := 15, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 31)) },
  { key := { q := 15, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 32)) },
  { key := { q := 15, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 33)) },
  { key := { q := 15, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 34)) },
  { key := { q := 15, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 35)) },
  { key := { q := 15, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 36)) },
  { key := { q := 15, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 37)) },
  { key := { q := 15, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 38)) },
  { key := { q := 15, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 39)) },
  { key := { q := 15, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 40)) },
  { key := { q := 15, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 41)) },
  { key := { q := 15, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 42)) },
  { key := { q := 15, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 43)) },
  { key := { q := 15, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 44)) },
  { key := { q := 15, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 45)) },
  { key := { q := 15, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 46)) },
  { key := { q := 15, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 47)) },
  { key := { q := 15, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 14 48)) }]

end CoveringCodes.Database
