import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 53. Do not edit manually.

def precomputedTable_chunk_53 : Array AnyBoundEntry := #[
  { key := { q := 5, n := 25, r := 20 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 22 21))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 25 20)) },
  { key := { q := 5, n := 25, r := 21 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 23 22)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 25 21)) },
  { key := { q := 5, n := 25, r := 22 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 24 23))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 25 22)) },
  { key := { q := 5, n := 25, r := 23 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 25 23)) },
  { key := { q := 5, n := 25, r := 24 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 25 24)) },
  { key := { q := 5, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 25)) },
  { key := { q := 5, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 26)) },
  { key := { q := 5, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 27)) },
  { key := { q := 5, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 28)) },
  { key := { q := 5, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 29)) },
  { key := { q := 5, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 30)) },
  { key := { q := 5, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 31)) },
  { key := { q := 5, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 32)) },
  { key := { q := 5, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 33)) },
  { key := { q := 5, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 34)) },
  { key := { q := 5, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 35)) },
  { key := { q := 5, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 36)) },
  { key := { q := 5, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 37)) },
  { key := { q := 5, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 38)) },
  { key := { q := 5, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 39)) },
  { key := { q := 5, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 40)) },
  { key := { q := 5, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 41)) },
  { key := { q := 5, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 42)) },
  { key := { q := 5, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 43)) },
  { key := { q := 5, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 44)) },
  { key := { q := 5, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 45)) },
  { key := { q := 5, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 46)) },
  { key := { q := 5, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 47)) },
  { key := { q := 5, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 25 48)) },
  { key := { q := 5, n := 26, r := 0 }
    lowerValue := 1490116119384765625
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 26 0)) },
  { key := { q := 5, n := 26, r := 1 }
    lowerValue := 14191582089378721
    upperValue := 154972076416015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 1))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 26, r := 2 }
    lowerValue := 280888995171493
    upperValue := 19775390625000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 2))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 26, r := 3 }
    lowerValue := 8678350190063
    upperValue := 3955078125000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 3))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 26, r := 4 }
    lowerValue := 372631037593
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 4))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 26, r := 5 }
    lowerValue := 20882367083
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 5))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 26, r := 6 }
    lowerValue := 1468992442
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 6))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 26, r := 7 }
    lowerValue := 126369112
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 7))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 26, r := 8 }
    lowerValue := 13050928
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 8))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 26, r := 9 }
    lowerValue := 1596681
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 9))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 26, r := 10 }
    lowerValue := 229143
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 10))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 26, r := 11 }
    lowerValue := 38298
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 11))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 26, r := 12 }
    lowerValue := 7416
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 12))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 26, r := 13 }
    lowerValue := 1658
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 13))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 26, r := 14 }
    lowerValue := 427
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 14))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 26, r := 15 }
    lowerValue := 127
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 15))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 26, r := 16 }
    lowerValue := 44
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 16))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 26, r := 17 }
    lowerValue := 17
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 26, r := 18 }
    lowerValue := 8
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 26, r := 19 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 21 20))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 26, r := 20 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 22 21)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20)) },
  { key := { q := 5, n := 26, r := 21 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 23 22))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 21)) },
  { key := { q := 5, n := 26, r := 22 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 24 23)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 22)) },
  { key := { q := 5, n := 26, r := 23 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 25 24))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 23)) },
  { key := { q := 5, n := 26, r := 24 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 24)) },
  { key := { q := 5, n := 26, r := 25 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 25)) },
  { key := { q := 5, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 26)) },
  { key := { q := 5, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 27)) },
  { key := { q := 5, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 28)) },
  { key := { q := 5, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 29)) },
  { key := { q := 5, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 30)) },
  { key := { q := 5, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 31)) },
  { key := { q := 5, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 32)) },
  { key := { q := 5, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 33)) },
  { key := { q := 5, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 34)) },
  { key := { q := 5, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 35)) },
  { key := { q := 5, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 36)) },
  { key := { q := 5, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 37)) },
  { key := { q := 5, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 38)) },
  { key := { q := 5, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 39)) },
  { key := { q := 5, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 40)) },
  { key := { q := 5, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 41)) },
  { key := { q := 5, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 42)) },
  { key := { q := 5, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 43)) },
  { key := { q := 5, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 44)) },
  { key := { q := 5, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 45)) },
  { key := { q := 5, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 46)) },
  { key := { q := 5, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 47)) },
  { key := { q := 5, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 26 48)) },
  { key := { q := 5, n := 27, r := 0 }
    lowerValue := 7450580596923828125
    upperValue := 7450580596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 27 0)) },
  { key := { q := 5, n := 27, r := 1 }
    lowerValue := 68353950430493837
    upperValue := 774860382080078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 1))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 27, r := 2 }
    lowerValue := 1301411457977962
    upperValue := 98876953125000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 2))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 27, r := 3 }
    lowerValue := 38619051947254
    upperValue := 19775390625000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 3))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 27, r := 4 }
    lowerValue := 1590059296465
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 4))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 27, r := 5 }
    lowerValue := 85292545194
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 5))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 27, r := 6 }
    lowerValue := 5732052702
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 6))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 27, r := 7 }
    lowerValue := 470089124
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 7))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 27, r := 8 }
    lowerValue := 46178195
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 8))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 27, r := 9 }
    lowerValue := 5360257
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 9))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 27, r := 10 }
    lowerValue := 727877
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 10))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 27, r := 11 }
    lowerValue := 114764
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 11))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 27, r := 12 }
    lowerValue := 20895
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 12))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 27, r := 13 }
    lowerValue := 4376
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 13))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 27, r := 14 }
    lowerValue := 1052
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 14))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 27, r := 15 }
    lowerValue := 290
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 15))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 27, r := 16 }
    lowerValue := 92
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 16))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 27, r := 17 }
    lowerValue := 33
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 27, r := 18 }
    lowerValue := 14
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 27, r := 19 }
    lowerValue := 7
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 27, r := 20 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 22 21))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 27, r := 21 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 23 22)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21)) },
  { key := { q := 5, n := 27, r := 22 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 24 23))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 22)) },
  { key := { q := 5, n := 27, r := 23 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 25 24)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 23)) },
  { key := { q := 5, n := 27, r := 24 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 26 25))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 24)) },
  { key := { q := 5, n := 27, r := 25 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 25)) },
  { key := { q := 5, n := 27, r := 26 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 26)) },
  { key := { q := 5, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 27)) },
  { key := { q := 5, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 28)) },
  { key := { q := 5, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 29)) },
  { key := { q := 5, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 30)) },
  { key := { q := 5, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 31)) },
  { key := { q := 5, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 32)) },
  { key := { q := 5, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 33)) },
  { key := { q := 5, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 34)) },
  { key := { q := 5, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 35)) },
  { key := { q := 5, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 36)) },
  { key := { q := 5, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 37)) },
  { key := { q := 5, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 38)) },
  { key := { q := 5, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 39)) },
  { key := { q := 5, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 40)) },
  { key := { q := 5, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 41)) },
  { key := { q := 5, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 42)) },
  { key := { q := 5, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 43)) },
  { key := { q := 5, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 44)) },
  { key := { q := 5, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 45)) },
  { key := { q := 5, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 46)) },
  { key := { q := 5, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 47)) },
  { key := { q := 5, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 27 48)) },
  { key := { q := 5, n := 28, r := 0 }
    lowerValue := 37252902984619140625
    upperValue := 37252902984619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 28 0)) },
  { key := { q := 5, n := 28, r := 1 }
    lowerValue := 329671707828487971
    upperValue := 3874301910400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 1))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 28, r := 2 }
    lowerValue := 6046567600165419
    upperValue := 494384765625000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 2))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 28, r := 3 }
    lowerValue := 172606987071096
    upperValue := 98876953125000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 3))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 28, r := 4 }
    lowerValue := 6826095271052
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 4))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 28, r := 5 }
    lowerValue := 351124001581
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 5))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 28, r := 6 }
    lowerValue := 22588151394
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 6))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 28, r := 7 }
    lowerValue := 1769857323
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 7))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 28, r := 8 }
    lowerValue := 165759041
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 8))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 28, r := 9 }
    lowerValue := 18303004
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 9))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 28, r := 10 }
    lowerValue := 2358388
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 10))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 28, r := 11 }
    lowerValue := 351891
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 11))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 28, r := 12 }
    lowerValue := 60451
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 12))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 28, r := 13 }
    lowerValue := 11906
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 13))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 28, r := 14 }
    lowerValue := 2681
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 14))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 28, r := 15 }
    lowerValue := 689
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 15))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 28, r := 16 }
    lowerValue := 202
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 16))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 28, r := 17 }
    lowerValue := 68
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 28, r := 18 }
    lowerValue := 26
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 28, r := 19 }
    lowerValue := 12
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 28, r := 20 }
    lowerValue := 6
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 20))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 28, r := 21 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 23 22))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 28, r := 22 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 24 23)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22)) },
  { key := { q := 5, n := 28, r := 23 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 25 24))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 23)) },
  { key := { q := 5, n := 28, r := 24 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 26 25)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 24)) },
  { key := { q := 5, n := 28, r := 25 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 27 26))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 25)) },
  { key := { q := 5, n := 28, r := 26 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 26)) },
  { key := { q := 5, n := 28, r := 27 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 27)) },
  { key := { q := 5, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 28)) },
  { key := { q := 5, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 29)) },
  { key := { q := 5, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 30)) },
  { key := { q := 5, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 31)) },
  { key := { q := 5, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 32)) },
  { key := { q := 5, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 33)) },
  { key := { q := 5, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 34)) },
  { key := { q := 5, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 35)) },
  { key := { q := 5, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 36)) },
  { key := { q := 5, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 37)) },
  { key := { q := 5, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 38)) },
  { key := { q := 5, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 39)) },
  { key := { q := 5, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 40)) },
  { key := { q := 5, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 41)) },
  { key := { q := 5, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 42)) },
  { key := { q := 5, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 43)) },
  { key := { q := 5, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 44)) },
  { key := { q := 5, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 45)) },
  { key := { q := 5, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 46)) },
  { key := { q := 5, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 47)) },
  { key := { q := 5, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 28 48)) },
  { key := { q := 5, n := 29, r := 0 }
    lowerValue := 186264514923095703125
    upperValue := 186264514923095703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 29 0)) },
  { key := { q := 5, n := 29, r := 1 }
    lowerValue := 1592004401052100027
    upperValue := 19371509552001953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 1))
    upperTrace := (.lengthenFreeN 26 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 29, r := 2 }
    lowerValue := 28166416894464798
    upperValue := 2471923828125000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 2))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 29, r := 3 }
    lowerValue := 774588470543379
    upperValue := 494384765625000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 3))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 29, r := 4 }
    lowerValue := 29468852848858
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 4))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 29, r := 5 }
    lowerValue := 1456035056272
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 5))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 29, r := 6 }
    lowerValue := 89826300841
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 6))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 29, r := 7 }
    lowerValue := 6737624744
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 7))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 29, r := 8 }
    lowerValue := 602923750
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 8))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 29, r := 9 }
    lowerValue := 63478155
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 9))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 29, r := 10 }
    lowerValue := 7781352
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 10))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 29, r := 11 }
    lowerValue := 1101839
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 11))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 29, r := 12 }
    lowerValue := 179150
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 12))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 29, r := 13 }
    lowerValue := 33298
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 13))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 29, r := 14 }
    lowerValue := 7052
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 14))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 29, r := 15 }
    lowerValue := 1699
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 15))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 29, r := 16 }
    lowerValue := 465
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 16))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 29, r := 17 }
    lowerValue := 145
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 29, r := 18 }
    lowerValue := 51
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 29, r := 19 }
    lowerValue := 21
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 29, r := 20 }
    lowerValue := 10
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 29, r := 21 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 21))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 29, r := 22 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 24 23))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 29, r := 23 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 25 24)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23)) },
  { key := { q := 5, n := 29, r := 24 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 26 25))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 24)) },
  { key := { q := 5, n := 29, r := 25 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 27 26)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 25)) },
  { key := { q := 5, n := 29, r := 26 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 28 27))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 26)) },
  { key := { q := 5, n := 29, r := 27 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 27)) },
  { key := { q := 5, n := 29, r := 28 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 28)) },
  { key := { q := 5, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 29)) },
  { key := { q := 5, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 30)) },
  { key := { q := 5, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 31)) },
  { key := { q := 5, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 32)) },
  { key := { q := 5, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 33)) },
  { key := { q := 5, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 34)) },
  { key := { q := 5, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 35)) },
  { key := { q := 5, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 36)) },
  { key := { q := 5, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 37)) },
  { key := { q := 5, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 38)) },
  { key := { q := 5, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 39)) },
  { key := { q := 5, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 40)) },
  { key := { q := 5, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 41)) },
  { key := { q := 5, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 42)) },
  { key := { q := 5, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 43)) },
  { key := { q := 5, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 44)) },
  { key := { q := 5, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 45)) },
  { key := { q := 5, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 46)) },
  { key := { q := 5, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 47)) },
  { key := { q := 5, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 29 48)) },
  { key := { q := 5, n := 30, r := 0 }
    lowerValue := 931322574615478515625
    upperValue := 931322574615478515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 30 0)) },
  { key := { q := 5, n := 30, r := 1 }
    lowerValue := 7696880781946103435
    upperValue := 96857547760009765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 1))
    upperTrace := (.lengthenFreeN 27 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 30, r := 2 }
    lowerValue := 131524159668899664
    upperValue := 12359619140625000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 2))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 30, r := 3 }
    lowerValue := 3489131895262938
    upperValue := 2471923828125000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 3))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 30, r := 4 }
    lowerValue := 127883234934261
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 4))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 30, r := 5 }
    lowerValue := 6078782086594
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 5))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 30, r := 6 }
    lowerValue := 360236165932
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 6))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 30, r := 7 }
    lowerValue := 25913362420
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 7))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 30, r := 8 }
    lowerValue := 2219986888
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 8))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 30, r := 9 }
    lowerValue := 223336033
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 9))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 30, r := 10 }
    lowerValue := 26106091
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 10))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 30, r := 11 }
    lowerValue := 3517106
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 11))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 30, r := 12 }
    lowerValue := 542757
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 12))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 30, r := 13 }
    lowerValue := 95493
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 13))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 30, r := 14 }
    lowerValue := 19089
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 14))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 30, r := 15 }
    lowerValue := 4325
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 15))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 30, r := 16 }
    lowerValue := 1109
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 16))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 30, r := 17 }
    lowerValue := 322
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 30, r := 18 }
    lowerValue := 106
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 30, r := 19 }
    lowerValue := 40
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 30, r := 20 }
    lowerValue := 17
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 30, r := 21 }
    lowerValue := 8
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 30, r := 22 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 22))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 30, r := 23 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 25 24))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 30, r := 24 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 26 25)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 30 24)) }]

end CoveringCodes.Database
