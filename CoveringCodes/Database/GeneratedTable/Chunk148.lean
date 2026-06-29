import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 148. Do not edit manually.

def precomputedTable_chunk_148 : Array AnyBoundEntry := #[
  { key := { q := 15, n := 20, r := 5 }
    lowerValue := 38993527881937
    upperValue := 93002175000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 5))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 20, r := 6 }
    lowerValue := 1107044219944
    upperValue := 6200145000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 6))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 20, r := 7 }
    lowerValue := 39249834648
    upperValue := 413343000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 7))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 20, r := 8 }
    lowerValue := 1710723873
    upperValue := 27556200000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 8))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 20, r := 9 }
    lowerValue := 90739802
    upperValue := 1837080000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 9))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 20, r := 10 }
    lowerValue := 5822941
    upperValue := 122472000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 10))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 20, r := 11 }
    lowerValue := 451023
    upperValue := 8164800000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 11))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 20, r := 12 }
    lowerValue := 42205
    upperValue := 544320000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 12))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 20, r := 13 }
    lowerValue := 4791
    upperValue := 36288000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 13))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 20, r := 14 }
    lowerValue := 665
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 14))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 20, r := 15 }
    lowerValue := 115
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 15))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 20, r := 16 }
    lowerValue := 25
    upperValue := 3375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 16))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 20, r := 17 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 19 18))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 20, r := 18 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 20 19)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18)) },
  { key := { q := 15, n := 20, r := 19 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 19)) },
  { key := { q := 15, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 20)) },
  { key := { q := 15, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 21)) },
  { key := { q := 15, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 22)) },
  { key := { q := 15, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 23)) },
  { key := { q := 15, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 24)) },
  { key := { q := 15, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 25)) },
  { key := { q := 15, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 26)) },
  { key := { q := 15, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 27)) },
  { key := { q := 15, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 28)) },
  { key := { q := 15, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 29)) },
  { key := { q := 15, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 30)) },
  { key := { q := 15, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 31)) },
  { key := { q := 15, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 32)) },
  { key := { q := 15, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 33)) },
  { key := { q := 15, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 34)) },
  { key := { q := 15, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 35)) },
  { key := { q := 15, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 36)) },
  { key := { q := 15, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 37)) },
  { key := { q := 15, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 38)) },
  { key := { q := 15, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 39)) },
  { key := { q := 15, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 40)) },
  { key := { q := 15, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 41)) },
  { key := { q := 15, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 42)) },
  { key := { q := 15, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 43)) },
  { key := { q := 15, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 44)) },
  { key := { q := 15, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 45)) },
  { key := { q := 15, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 46)) },
  { key := { q := 15, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 47)) },
  { key := { q := 15, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 20 48)) },
  { key := { q := 15, n := 21, r := 0 }
    lowerValue := 4987885095119476318359375
    upperValue := 4987885095119476318359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 21 0)) },
  { key := { q := 15, n := 21, r := 1 }
    lowerValue := 16908085068201614638507
    upperValue := 139314069504000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 1))
    upperTrace := (.lengthenFreeN 12 (@UpperTrace.alphabetExpand 8 15 2 9 1 2097152 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 15 ≤ 2 * 8) (by decide : 0 < 15) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1)))) },
  { key := { q := 15, n := 21, r := 2 }
    lowerValue := 120320470271848421623
    upperValue := 4708235109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 2))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 21, r := 3 }
    lowerValue := 1351373307898177669
    upperValue := 313882340625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 3))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 21, r := 4 }
    lowerValue := 21351266649280807
    upperValue := 20925489375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 4))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 21, r := 5 }
    lowerValue := 446231724706735
    upperValue := 1395032625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 5))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 21, r := 6 }
    lowerValue := 11882691928348
    upperValue := 93002175000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 6))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 21, r := 7 }
    lowerValue := 393451887173
    upperValue := 6200145000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 7))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 21, r := 8 }
    lowerValue := 15936470458
    upperValue := 413343000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 8))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 21, r := 9 }
    lowerValue := 781079444
    upperValue := 27556200000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 9))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 21, r := 10 }
    lowerValue := 46009188
    upperValue := 1837080000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 10))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 21, r := 11 }
    lowerValue := 3245722
    upperValue := 122472000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 11))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 21, r := 12 }
    lowerValue := 274048
    upperValue := 8164800000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 12))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 21, r := 13 }
    lowerValue := 27755
    upperValue := 544320000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 13))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 21, r := 14 }
    lowerValue := 3389
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 14))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 21, r := 15 }
    lowerValue := 504
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 15))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 21, r := 16 }
    lowerValue := 92
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 16))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 21, r := 17 }
    lowerValue := 22
    upperValue := 3375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 17))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 21, r := 18 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 20 19))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 21, r := 19 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19)) },
  { key := { q := 15, n := 21, r := 20 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 20)) },
  { key := { q := 15, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 21)) },
  { key := { q := 15, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 22)) },
  { key := { q := 15, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 23)) },
  { key := { q := 15, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 24)) },
  { key := { q := 15, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 25)) },
  { key := { q := 15, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 26)) },
  { key := { q := 15, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 27)) },
  { key := { q := 15, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 28)) },
  { key := { q := 15, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 29)) },
  { key := { q := 15, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 30)) },
  { key := { q := 15, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 31)) },
  { key := { q := 15, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 32)) },
  { key := { q := 15, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 33)) },
  { key := { q := 15, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 34)) },
  { key := { q := 15, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 35)) },
  { key := { q := 15, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 36)) },
  { key := { q := 15, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 37)) },
  { key := { q := 15, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 38)) },
  { key := { q := 15, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 39)) },
  { key := { q := 15, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 40)) },
  { key := { q := 15, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 41)) },
  { key := { q := 15, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 42)) },
  { key := { q := 15, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 43)) },
  { key := { q := 15, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 44)) },
  { key := { q := 15, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 45)) },
  { key := { q := 15, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 46)) },
  { key := { q := 15, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 47)) },
  { key := { q := 15, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 21 48)) },
  { key := { q := 15, n := 22, r := 0 }
    lowerValue := 74818276426792144775390625
    upperValue := 74818276426792144775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 22 0)) },
  { key := { q := 15, n := 22, r := 1 }
    lowerValue := 242130344423275549434922
    upperValue := 2089711042560000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 1))
    upperTrace := (.lengthenFreeN 13 (@UpperTrace.alphabetExpand 8 15 2 9 1 2097152 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 15 ≤ 2 * 8) (by decide : 0 < 15) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1)))) },
  { key := { q := 15, n := 22, r := 2 }
    lowerValue := 1641291574570410108049
    upperValue := 70623526640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 2))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 22, r := 3 }
    lowerValue := 17516327158492733501
    upperValue := 4708235109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 3))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 22, r := 4 }
    lowerValue := 262258575515067693
    upperValue := 313882340625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 4))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 22, r := 5 }
    lowerValue := 5178329699902293
    upperValue := 20925489375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 5))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 22, r := 6 }
    lowerValue := 129836575984864
    upperValue := 1395032625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 6))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 22, r := 7 }
    lowerValue := 4032484587853
    upperValue := 93002175000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 7))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 22, r := 8 }
    lowerValue := 152544988829
    upperValue := 6200145000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 8))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 22, r := 9 }
    lowerValue := 6948408826
    upperValue := 413343000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 9))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 22, r := 10 }
    lowerValue := 378227202
    upperValue := 27556200000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 10))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 22, r := 11 }
    lowerValue := 24494396
    upperValue := 1837080000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 11))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 22, r := 12 }
    lowerValue := 1883861
    upperValue := 122472000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 12))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 22, r := 13 }
    lowerValue := 172185
    upperValue := 8164800000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 13))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 22, r := 14 }
    lowerValue := 18762
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 14))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 22, r := 15 }
    lowerValue := 2452
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 15))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 22, r := 16 }
    lowerValue := 388
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 16))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 22, r := 17 }
    lowerValue := 76
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 17))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 22, r := 18 }
    lowerValue := 19
    upperValue := 3375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 18))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 22, r := 19 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 21 20))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 22, r := 20 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20)) },
  { key := { q := 15, n := 22, r := 21 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 21)) },
  { key := { q := 15, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 22)) },
  { key := { q := 15, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 23)) },
  { key := { q := 15, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 24)) },
  { key := { q := 15, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 25)) },
  { key := { q := 15, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 26)) },
  { key := { q := 15, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 27)) },
  { key := { q := 15, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 28)) },
  { key := { q := 15, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 29)) },
  { key := { q := 15, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 30)) },
  { key := { q := 15, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 31)) },
  { key := { q := 15, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 32)) },
  { key := { q := 15, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 33)) },
  { key := { q := 15, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 34)) },
  { key := { q := 15, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 35)) },
  { key := { q := 15, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 36)) },
  { key := { q := 15, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 37)) },
  { key := { q := 15, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 38)) },
  { key := { q := 15, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 39)) },
  { key := { q := 15, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 40)) },
  { key := { q := 15, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 41)) },
  { key := { q := 15, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 42)) },
  { key := { q := 15, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 43)) },
  { key := { q := 15, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 44)) },
  { key := { q := 15, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 45)) },
  { key := { q := 15, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 46)) },
  { key := { q := 15, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 47)) },
  { key := { q := 15, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 22 48)) },
  { key := { q := 15, n := 23, r := 0 }
    lowerValue := 1122274146401882171630859375
    upperValue := 1122274146401882171630859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 23 0)) },
  { key := { q := 15, n := 23, r := 1 }
    lowerValue := 3474532960996539231055293
    upperValue := 31345665638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 1))
    upperTrace := (.lengthenFreeN 14 (@UpperTrace.alphabetExpand 8 15 2 9 1 2097152 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 15 ≤ 2 * 8) (by decide : 0 < 15) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1)))) },
  { key := { q := 15, n := 23, r := 2 }
    lowerValue := 22485507130730343443948
    upperValue := 1059352899609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 2))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 23, r := 3 }
    lowerValue := 228590721199030493037
    upperValue := 70623526640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 3))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 23, r := 4 }
    lowerValue := 3252184104062790106
    upperValue := 4708235109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 4))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 23, r := 5 }
    lowerValue := 60853187906402077
    upperValue := 313882340625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 5))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 23, r := 6 }
    lowerValue := 1441536415017168
    upperValue := 20925489375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 6))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 23, r := 7 }
    lowerValue := 42156865809138
    upperValue := 1395032625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 7))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 23, r := 8 }
    lowerValue := 1495923891918
    upperValue := 93002175000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 8))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 23, r := 9 }
    lowerValue := 63641828431
    upperValue := 6200145000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 9))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 23, r := 10 }
    lowerValue := 3219738614
    upperValue := 413343000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 10))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 23, r := 11 }
    lowerValue := 192701857
    upperValue := 27556200000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 11))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 23, r := 12 }
    lowerValue := 13606873
    upperValue := 1837080000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 12))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 23, r := 13 }
    lowerValue := 1132992
    upperValue := 122472000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 13))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 23, r := 14 }
    lowerValue := 111435
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 14))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 23, r := 15 }
    lowerValue := 12998
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 15))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 23, r := 16 }
    lowerValue := 1810
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 16))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 23, r := 17 }
    lowerValue := 304
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 23, r := 18 }
    lowerValue := 63
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 23, r := 19 }
    lowerValue := 16
    upperValue := 3375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 19))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 23, r := 20 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 22 21))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 23, r := 21 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21)) },
  { key := { q := 15, n := 23, r := 22 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 22)) },
  { key := { q := 15, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 23)) },
  { key := { q := 15, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 24)) },
  { key := { q := 15, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 25)) },
  { key := { q := 15, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 26)) },
  { key := { q := 15, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 27)) },
  { key := { q := 15, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 28)) },
  { key := { q := 15, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 29)) },
  { key := { q := 15, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 30)) },
  { key := { q := 15, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 31)) },
  { key := { q := 15, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 32)) },
  { key := { q := 15, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 33)) },
  { key := { q := 15, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 34)) },
  { key := { q := 15, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 35)) },
  { key := { q := 15, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 36)) },
  { key := { q := 15, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 37)) },
  { key := { q := 15, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 38)) },
  { key := { q := 15, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 39)) },
  { key := { q := 15, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 40)) },
  { key := { q := 15, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 41)) },
  { key := { q := 15, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 42)) },
  { key := { q := 15, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 43)) },
  { key := { q := 15, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 44)) },
  { key := { q := 15, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 45)) },
  { key := { q := 15, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 46)) },
  { key := { q := 15, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 47)) },
  { key := { q := 15, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 23 48)) },
  { key := { q := 15, n := 24, r := 0 }
    lowerValue := 16834112196028232574462890625
    upperValue := 16834112196028232574462890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 24 0)) },
  { key := { q := 15, n := 24, r := 1 }
    lowerValue := 49952855181092678262501160
    upperValue := 470184984576000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 1))
    upperTrace := (.lengthenFreeN 15 (@UpperTrace.alphabetExpand 8 15 2 9 1 2097152 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 15 ≤ 2 * 8) (by decide : 0 < 15) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1)))) },
  { key := { q := 15, n := 24, r := 2 }
    lowerValue := 309262987452983164155254
    upperValue := 15890293494140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 2))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 24, r := 3 }
    lowerValue := 3001648487805858894659
    upperValue := 1059352899609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 3))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 24, r := 4 }
    lowerValue := 40680117531814556821
    upperValue := 70623526640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 4))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 24, r := 5 }
    lowerValue := 723317114963812707
    upperValue := 4708235109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 5))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 24, r := 6 }
    lowerValue := 16237875035401977
    upperValue := 313882340625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 6))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 24, r := 7 }
    lowerValue := 448661347788805
    upperValue := 20925489375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 7))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 24, r := 8 }
    lowerValue := 14991361892532
    upperValue := 1395032625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 8))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 24, r := 9 }
    lowerValue := 598284091266
    upperValue := 93002175000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 9))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 24, r := 10 }
    lowerValue := 28271730606
    upperValue := 6200145000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 10))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 24, r := 11 }
    lowerValue := 1572732153
    upperValue := 413343000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 11))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 24, r := 12 }
    lowerValue := 102638940
    upperValue := 27556200000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 12))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 24, r := 13 }
    lowerValue := 7847196
    upperValue := 1837080000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 13))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 24, r := 14 }
    lowerValue := 703217
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 14))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 24, r := 15 }
    lowerValue := 74047
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 15))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 24, r := 16 }
    lowerValue := 9204
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 16))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 24, r := 17 }
    lowerValue := 1360
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 24, r := 18 }
    lowerValue := 242
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 24, r := 19 }
    lowerValue := 52
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 24, r := 20 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 22 21)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 24, r := 21 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 23 22))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 24, r := 22 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22)) },
  { key := { q := 15, n := 24, r := 23 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 23)) },
  { key := { q := 15, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 24)) },
  { key := { q := 15, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 25)) },
  { key := { q := 15, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 26)) },
  { key := { q := 15, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 27)) },
  { key := { q := 15, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 28)) },
  { key := { q := 15, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 29)) },
  { key := { q := 15, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 30)) },
  { key := { q := 15, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 31)) },
  { key := { q := 15, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 32)) },
  { key := { q := 15, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 33)) },
  { key := { q := 15, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 34)) },
  { key := { q := 15, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 35)) },
  { key := { q := 15, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 36)) },
  { key := { q := 15, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 37)) },
  { key := { q := 15, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 38)) },
  { key := { q := 15, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 39)) },
  { key := { q := 15, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 40)) },
  { key := { q := 15, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 41)) },
  { key := { q := 15, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 42)) },
  { key := { q := 15, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 43)) },
  { key := { q := 15, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 44)) },
  { key := { q := 15, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 45)) },
  { key := { q := 15, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 46)) },
  { key := { q := 15, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 47)) },
  { key := { q := 15, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 24 48)) },
  { key := { q := 15, n := 25, r := 0 }
    lowerValue := 252511682940423488616943359375
    upperValue := 252511682940423488616943359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 25 0)) },
  { key := { q := 15, n := 25, r := 1 }
    lowerValue := 719406504103770622840294472
    upperValue := 7052774768640000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 1))
    upperTrace := (.lengthenFreeN 16 (@UpperTrace.alphabetExpand 8 15 2 9 1 2097152 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 15 ≤ 2 * 8) (by decide : 0 < 15) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1)))) },
  { key := { q := 15, n := 25, r := 2 }
    lowerValue := 4268933457429688232099937
    upperValue := 238354402412109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 2))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 25, r := 3 }
    lowerValue := 39638582385872220952495
    upperValue := 15890293494140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 3))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 25, r := 4 }
    lowerValue := 512888249720408075426
    upperValue := 1059352899609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 4))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 25, r := 5 }
    lowerValue := 8687252267752293524
    upperValue := 70623526640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 5))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 25, r := 6 }
    lowerValue := 185323181084190124
    upperValue := 4708235109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 6))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 25, r := 7 }
    lowerValue := 4852744512415409
    upperValue := 313882340625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 7))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 25, r := 8 }
    lowerValue := 153203459180329
    upperValue := 20925489375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 8))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 25, r := 9 }
    lowerValue := 5757454835588
    upperValue := 1395032625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 25 9))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) }]

end CoveringCodes.Database
