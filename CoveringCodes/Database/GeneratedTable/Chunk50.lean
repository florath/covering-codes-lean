import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 50. Do not edit manually.

def precomputedTable_chunk_50 : Array AnyBoundEntry := #[
  { key := { q := 5, n := 10, r := 5 }
    lowerValue := 31
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 5))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 10, r := 6 }
    lowerValue := 9
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 6))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 10, r := 7 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 9 8))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 10, r := 8 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 10 9)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 10 8)) },
  { key := { q := 5, n := 10, r := 9 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 10 9))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 10 9)) },
  { key := { q := 5, n := 10, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 10)) },
  { key := { q := 5, n := 10, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 11)) },
  { key := { q := 5, n := 10, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 12)) },
  { key := { q := 5, n := 10, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 13)) },
  { key := { q := 5, n := 10, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 14)) },
  { key := { q := 5, n := 10, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 15)) },
  { key := { q := 5, n := 10, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 16)) },
  { key := { q := 5, n := 10, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 17)) },
  { key := { q := 5, n := 10, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 18)) },
  { key := { q := 5, n := 10, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 19)) },
  { key := { q := 5, n := 10, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 20)) },
  { key := { q := 5, n := 10, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 21)) },
  { key := { q := 5, n := 10, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 22)) },
  { key := { q := 5, n := 10, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 23)) },
  { key := { q := 5, n := 10, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 24)) },
  { key := { q := 5, n := 10, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 25)) },
  { key := { q := 5, n := 10, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 26)) },
  { key := { q := 5, n := 10, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 27)) },
  { key := { q := 5, n := 10, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 28)) },
  { key := { q := 5, n := 10, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 29)) },
  { key := { q := 5, n := 10, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 30)) },
  { key := { q := 5, n := 10, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 31)) },
  { key := { q := 5, n := 10, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 32)) },
  { key := { q := 5, n := 10, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 33)) },
  { key := { q := 5, n := 10, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 34)) },
  { key := { q := 5, n := 10, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 35)) },
  { key := { q := 5, n := 10, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 36)) },
  { key := { q := 5, n := 10, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 37)) },
  { key := { q := 5, n := 10, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 38)) },
  { key := { q := 5, n := 10, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 39)) },
  { key := { q := 5, n := 10, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 40)) },
  { key := { q := 5, n := 10, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 41)) },
  { key := { q := 5, n := 10, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 42)) },
  { key := { q := 5, n := 10, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 43)) },
  { key := { q := 5, n := 10, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 44)) },
  { key := { q := 5, n := 10, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 45)) },
  { key := { q := 5, n := 10, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 46)) },
  { key := { q := 5, n := 10, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 47)) },
  { key := { q := 5, n := 10, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 10 48)) },
  { key := { q := 5, n := 11, r := 0 }
    lowerValue := 48828125
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 11 0)) },
  { key := { q := 5, n := 11, r := 1 }
    lowerValue := 1085070
    upperValue := 5078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 1))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 11, r := 2 }
    lowerValue := 52788
    upperValue := 648000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 2))
    upperTrace := (.lengthenFreeN 3 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 11, r := 3 }
    lowerValue := 4252
    upperValue := 129600
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 11, r := 4 }
    lowerValue := 509
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 4))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 11, r := 5 }
    lowerValue := 86
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 5))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 11, r := 6 }
    lowerValue := 20
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 6))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 11, r := 7 }
    lowerValue := 7
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 7))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 11, r := 8 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 10 9))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8)) },
  { key := { q := 5, n := 11, r := 9 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 11 10)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 9)) },
  { key := { q := 5, n := 11, r := 10 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 10)) },
  { key := { q := 5, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 11)) },
  { key := { q := 5, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 12)) },
  { key := { q := 5, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 13)) },
  { key := { q := 5, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 14)) },
  { key := { q := 5, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 15)) },
  { key := { q := 5, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 16)) },
  { key := { q := 5, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 17)) },
  { key := { q := 5, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 18)) },
  { key := { q := 5, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 19)) },
  { key := { q := 5, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 20)) },
  { key := { q := 5, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 21)) },
  { key := { q := 5, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 22)) },
  { key := { q := 5, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 23)) },
  { key := { q := 5, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 24)) },
  { key := { q := 5, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 25)) },
  { key := { q := 5, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 26)) },
  { key := { q := 5, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 27)) },
  { key := { q := 5, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 28)) },
  { key := { q := 5, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 29)) },
  { key := { q := 5, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 30)) },
  { key := { q := 5, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 31)) },
  { key := { q := 5, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 32)) },
  { key := { q := 5, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 33)) },
  { key := { q := 5, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 34)) },
  { key := { q := 5, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 35)) },
  { key := { q := 5, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 36)) },
  { key := { q := 5, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 37)) },
  { key := { q := 5, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 38)) },
  { key := { q := 5, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 39)) },
  { key := { q := 5, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 40)) },
  { key := { q := 5, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 41)) },
  { key := { q := 5, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 42)) },
  { key := { q := 5, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 43)) },
  { key := { q := 5, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 44)) },
  { key := { q := 5, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 45)) },
  { key := { q := 5, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 46)) },
  { key := { q := 5, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 47)) },
  { key := { q := 5, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 11 48)) },
  { key := { q := 5, n := 12, r := 0 }
    lowerValue := 244140625
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 12 0)) },
  { key := { q := 5, n := 12, r := 1 }
    lowerValue := 4982462
    upperValue := 25390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 1))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 12, r := 2 }
    lowerValue := 220942
    upperValue := 3240000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 2))
    upperTrace := (.lengthenFreeN 4 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 12, r := 3 }
    lowerValue := 16078
    upperValue := 648000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 12, r := 4 }
    lowerValue := 1721
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 4))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 12, r := 5 }
    lowerValue := 257
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 5))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 12, r := 6 }
    lowerValue := 52
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 6))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 12, r := 7 }
    lowerValue := 14
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 7))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 12, r := 8 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 8))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 12, r := 9 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 11 10))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9)) },
  { key := { q := 5, n := 12, r := 10 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 12 11)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 10)) },
  { key := { q := 5, n := 12, r := 11 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 11)) },
  { key := { q := 5, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 12)) },
  { key := { q := 5, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 13)) },
  { key := { q := 5, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 14)) },
  { key := { q := 5, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 15)) },
  { key := { q := 5, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 16)) },
  { key := { q := 5, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 17)) },
  { key := { q := 5, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 18)) },
  { key := { q := 5, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 19)) },
  { key := { q := 5, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 20)) },
  { key := { q := 5, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 21)) },
  { key := { q := 5, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 22)) },
  { key := { q := 5, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 23)) },
  { key := { q := 5, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 24)) },
  { key := { q := 5, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 25)) },
  { key := { q := 5, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 26)) },
  { key := { q := 5, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 27)) },
  { key := { q := 5, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 28)) },
  { key := { q := 5, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 29)) },
  { key := { q := 5, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 30)) },
  { key := { q := 5, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 31)) },
  { key := { q := 5, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 32)) },
  { key := { q := 5, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 33)) },
  { key := { q := 5, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 34)) },
  { key := { q := 5, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 35)) },
  { key := { q := 5, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 36)) },
  { key := { q := 5, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 37)) },
  { key := { q := 5, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 38)) },
  { key := { q := 5, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 39)) },
  { key := { q := 5, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 40)) },
  { key := { q := 5, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 41)) },
  { key := { q := 5, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 42)) },
  { key := { q := 5, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 43)) },
  { key := { q := 5, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 44)) },
  { key := { q := 5, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 45)) },
  { key := { q := 5, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 46)) },
  { key := { q := 5, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 47)) },
  { key := { q := 5, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 12 48)) },
  { key := { q := 5, n := 13, r := 0 }
    lowerValue := 1220703125
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 13 0)) },
  { key := { q := 5, n := 13, r := 1 }
    lowerValue := 23032135
    upperValue := 126953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 1))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 13, r := 2 }
    lowerValue := 938281
    upperValue := 16200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 2))
    upperTrace := (.lengthenFreeN 5 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 13, r := 3 }
    lowerValue := 62265
    upperValue := 3240000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 3))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 13, r := 4 }
    lowerValue := 6024
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 4))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 13, r := 5 }
    lowerValue := 803
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 5))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 13, r := 6 }
    lowerValue := 143
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 6))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 13, r := 7 }
    lowerValue := 34
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 7))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 13, r := 8 }
    lowerValue := 11
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 8))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 13, r := 9 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 11 10)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 13, r := 10 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 12 11))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10)) },
  { key := { q := 5, n := 13, r := 11 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 13 12)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 11)) },
  { key := { q := 5, n := 13, r := 12 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 12)) },
  { key := { q := 5, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 13)) },
  { key := { q := 5, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 14)) },
  { key := { q := 5, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 15)) },
  { key := { q := 5, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 16)) },
  { key := { q := 5, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 17)) },
  { key := { q := 5, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 18)) },
  { key := { q := 5, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 19)) },
  { key := { q := 5, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 20)) },
  { key := { q := 5, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 21)) },
  { key := { q := 5, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 22)) },
  { key := { q := 5, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 23)) },
  { key := { q := 5, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 24)) },
  { key := { q := 5, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 25)) },
  { key := { q := 5, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 26)) },
  { key := { q := 5, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 27)) },
  { key := { q := 5, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 28)) },
  { key := { q := 5, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 29)) },
  { key := { q := 5, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 30)) },
  { key := { q := 5, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 31)) },
  { key := { q := 5, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 32)) },
  { key := { q := 5, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 33)) },
  { key := { q := 5, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 34)) },
  { key := { q := 5, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 35)) },
  { key := { q := 5, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 36)) },
  { key := { q := 5, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 37)) },
  { key := { q := 5, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 38)) },
  { key := { q := 5, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 39)) },
  { key := { q := 5, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 40)) },
  { key := { q := 5, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 41)) },
  { key := { q := 5, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 42)) },
  { key := { q := 5, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 43)) },
  { key := { q := 5, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 44)) },
  { key := { q := 5, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 45)) },
  { key := { q := 5, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 46)) },
  { key := { q := 5, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 47)) },
  { key := { q := 5, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 13 48)) },
  { key := { q := 5, n := 14, r := 0 }
    lowerValue := 6103515625
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 14 0)) },
  { key := { q := 5, n := 14, r := 1 }
    lowerValue := 107079222
    upperValue := 634765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 1))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 14, r := 2 }
    lowerValue := 4034049
    upperValue := 81000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 2))
    upperTrace := (.lengthenFreeN 6 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 14, r := 3 }
    lowerValue := 246021
    upperValue := 16200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 3))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 14, r := 4 }
    lowerValue := 21716
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 4))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 14, r := 5 }
    lowerValue := 2619
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 5))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 14, r := 6 }
    lowerValue := 418
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 6))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 14, r := 7 }
    lowerValue := 87
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 7))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 14, r := 8 }
    lowerValue := 23
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 8))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 14, r := 9 }
    lowerValue := 8
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 9))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 14, r := 10 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 12 11)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 14, r := 11 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 13 12))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11)) },
  { key := { q := 5, n := 14, r := 12 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 14 13)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 12)) },
  { key := { q := 5, n := 14, r := 13 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 13)) },
  { key := { q := 5, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 14)) },
  { key := { q := 5, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 15)) },
  { key := { q := 5, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 16)) },
  { key := { q := 5, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 17)) },
  { key := { q := 5, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 18)) },
  { key := { q := 5, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 19)) },
  { key := { q := 5, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 20)) },
  { key := { q := 5, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 21)) },
  { key := { q := 5, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 22)) },
  { key := { q := 5, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 23)) },
  { key := { q := 5, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 24)) },
  { key := { q := 5, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 25)) },
  { key := { q := 5, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 26)) },
  { key := { q := 5, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 27)) },
  { key := { q := 5, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 28)) },
  { key := { q := 5, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 29)) },
  { key := { q := 5, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 30)) },
  { key := { q := 5, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 31)) },
  { key := { q := 5, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 32)) },
  { key := { q := 5, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 33)) },
  { key := { q := 5, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 34)) },
  { key := { q := 5, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 35)) },
  { key := { q := 5, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 36)) },
  { key := { q := 5, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 37)) },
  { key := { q := 5, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 38)) },
  { key := { q := 5, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 39)) },
  { key := { q := 5, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 40)) },
  { key := { q := 5, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 41)) },
  { key := { q := 5, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 42)) },
  { key := { q := 5, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 43)) },
  { key := { q := 5, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 44)) },
  { key := { q := 5, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 45)) },
  { key := { q := 5, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 46)) },
  { key := { q := 5, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 47)) },
  { key := { q := 5, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 14 48)) },
  { key := { q := 5, n := 15, r := 0 }
    lowerValue := 30517578125
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 15 0)) },
  { key := { q := 5, n := 15, r := 1 }
    lowerValue := 500288166
    upperValue := 3173828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 1))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 15, r := 2 }
    lowerValue := 17528765
    upperValue := 405000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 2))
    upperTrace := (.lengthenFreeN 7 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 15, r := 3 }
    lowerValue := 988872
    upperValue := 81000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 3))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 15, r := 4 }
    lowerValue := 80246
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 4))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 15, r := 5 }
    lowerValue := 8832
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 5))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 15, r := 6 }
    lowerValue := 1274
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 6))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 15, r := 7 }
    lowerValue := 236
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 7))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 15, r := 8 }
    lowerValue := 56
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 8))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 15, r := 9 }
    lowerValue := 17
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 9))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) }]

end CoveringCodes.Database
