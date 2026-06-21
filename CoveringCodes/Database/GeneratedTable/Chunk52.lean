import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 52. Do not edit manually.

def precomputedTable_chunk_52 : Array AnyBoundEntry := #[
  { key := { q := 5, n := 20, r := 15 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 17 16))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 20, r := 16 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 18 17)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 20 16)) },
  { key := { q := 5, n := 20, r := 17 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 19 18))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 20 17)) },
  { key := { q := 5, n := 20, r := 18 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 20 19)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 20 18)) },
  { key := { q := 5, n := 20, r := 19 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 20 19)) },
  { key := { q := 5, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 20)) },
  { key := { q := 5, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 21)) },
  { key := { q := 5, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 22)) },
  { key := { q := 5, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 23)) },
  { key := { q := 5, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 24)) },
  { key := { q := 5, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 25)) },
  { key := { q := 5, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 26)) },
  { key := { q := 5, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 27)) },
  { key := { q := 5, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 28)) },
  { key := { q := 5, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 29)) },
  { key := { q := 5, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 30)) },
  { key := { q := 5, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 31)) },
  { key := { q := 5, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 32)) },
  { key := { q := 5, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 33)) },
  { key := { q := 5, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 34)) },
  { key := { q := 5, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 35)) },
  { key := { q := 5, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 36)) },
  { key := { q := 5, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 37)) },
  { key := { q := 5, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 38)) },
  { key := { q := 5, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 39)) },
  { key := { q := 5, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 40)) },
  { key := { q := 5, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 41)) },
  { key := { q := 5, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 42)) },
  { key := { q := 5, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 43)) },
  { key := { q := 5, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 44)) },
  { key := { q := 5, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 45)) },
  { key := { q := 5, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 46)) },
  { key := { q := 5, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 47)) },
  { key := { q := 5, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 20 48)) },
  { key := { q := 5, n := 21, r := 0 }
    lowerValue := 476837158203125
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 21 0)) },
  { key := { q := 5, n := 21, r := 1 }
    lowerValue := 5609848920037
    upperValue := 49591064453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 1))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 21, r := 2 }
    lowerValue := 138414269435
    upperValue := 6328125000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 2))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 21, r := 3 }
    lowerValue := 5384036112
    upperValue := 1265625000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 21, r := 4 }
    lowerValue := 294212256
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 4))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 21, r := 5 }
    lowerValue := 21232301
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 5))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 21, r := 6 }
    lowerValue := 1948474
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 6))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 21, r := 7 }
    lowerValue := 221800
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 7))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 21, r := 8 }
    lowerValue := 30792
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 8))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 21, r := 9 }
    lowerValue := 5153
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 9))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 21, r := 10 }
    lowerValue := 1032
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 10))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 21, r := 11 }
    lowerValue := 246
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 11))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 21, r := 12 }
    lowerValue := 70
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 12))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 21, r := 13 }
    lowerValue := 24
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 13))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 21, r := 14 }
    lowerValue := 10
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 14))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 21, r := 15 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 15))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 21, r := 16 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 18 17))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16)) },
  { key := { q := 5, n := 21, r := 17 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 19 18)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 17)) },
  { key := { q := 5, n := 21, r := 18 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 20 19))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 18)) },
  { key := { q := 5, n := 21, r := 19 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 19)) },
  { key := { q := 5, n := 21, r := 20 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 20)) },
  { key := { q := 5, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 21)) },
  { key := { q := 5, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 22)) },
  { key := { q := 5, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 23)) },
  { key := { q := 5, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 24)) },
  { key := { q := 5, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 25)) },
  { key := { q := 5, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 26)) },
  { key := { q := 5, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 27)) },
  { key := { q := 5, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 28)) },
  { key := { q := 5, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 29)) },
  { key := { q := 5, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 30)) },
  { key := { q := 5, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 31)) },
  { key := { q := 5, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 32)) },
  { key := { q := 5, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 33)) },
  { key := { q := 5, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 34)) },
  { key := { q := 5, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 35)) },
  { key := { q := 5, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 36)) },
  { key := { q := 5, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 37)) },
  { key := { q := 5, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 38)) },
  { key := { q := 5, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 39)) },
  { key := { q := 5, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 40)) },
  { key := { q := 5, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 41)) },
  { key := { q := 5, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 42)) },
  { key := { q := 5, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 43)) },
  { key := { q := 5, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 44)) },
  { key := { q := 5, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 45)) },
  { key := { q := 5, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 46)) },
  { key := { q := 5, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 47)) },
  { key := { q := 5, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 21 48)) },
  { key := { q := 5, n := 22, r := 0 }
    lowerValue := 2384185791015625
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 22 0)) },
  { key := { q := 5, n := 22, r := 1 }
    lowerValue := 26788604393434
    upperValue := 247955322265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 1))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 22, r := 2 }
    lowerValue := 629903775698
    upperValue := 31640625000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 2))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 22, r := 3 }
    lowerValue := 23295576638
    upperValue := 6328125000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 3))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 22, r := 4 }
    lowerValue := 1207191848
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 4))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 22, r := 5 }
    lowerValue := 82380903
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 5))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 22, r := 6 }
    lowerValue := 7126421
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 6))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 22, r := 7 }
    lowerValue := 762026
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 7))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 22, r := 8 }
    lowerValue := 98990
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 8))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 22, r := 9 }
    lowerValue := 15434
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 9))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 22, r := 10 }
    lowerValue := 2864
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 10))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 22, r := 11 }
    lowerValue := 629
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 11))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 22, r := 12 }
    lowerValue := 163
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 12))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 22, r := 13 }
    lowerValue := 50
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 13))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 22, r := 14 }
    lowerValue := 18
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 14))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 22, r := 15 }
    lowerValue := 8
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 15))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 22, r := 16 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 18 17)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 22, r := 17 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 19 18))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17)) },
  { key := { q := 5, n := 22, r := 18 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 20 19)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 18)) },
  { key := { q := 5, n := 22, r := 19 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 21 20))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 19)) },
  { key := { q := 5, n := 22, r := 20 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 20)) },
  { key := { q := 5, n := 22, r := 21 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 21)) },
  { key := { q := 5, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 22)) },
  { key := { q := 5, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 23)) },
  { key := { q := 5, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 24)) },
  { key := { q := 5, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 25)) },
  { key := { q := 5, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 26)) },
  { key := { q := 5, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 27)) },
  { key := { q := 5, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 28)) },
  { key := { q := 5, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 29)) },
  { key := { q := 5, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 30)) },
  { key := { q := 5, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 31)) },
  { key := { q := 5, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 32)) },
  { key := { q := 5, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 33)) },
  { key := { q := 5, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 34)) },
  { key := { q := 5, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 35)) },
  { key := { q := 5, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 36)) },
  { key := { q := 5, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 37)) },
  { key := { q := 5, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 38)) },
  { key := { q := 5, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 39)) },
  { key := { q := 5, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 40)) },
  { key := { q := 5, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 41)) },
  { key := { q := 5, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 42)) },
  { key := { q := 5, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 43)) },
  { key := { q := 5, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 44)) },
  { key := { q := 5, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 45)) },
  { key := { q := 5, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 46)) },
  { key := { q := 5, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 47)) },
  { key := { q := 5, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 22 48)) },
  { key := { q := 5, n := 23, r := 0 }
    lowerValue := 11920928955078125
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 23 0)) },
  { key := { q := 5, n := 23, r := 1 }
    lowerValue := 128182031775034
    upperValue := 1239776611328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 1))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 23, r := 2 }
    lowerValue := 2878756086713
    upperValue := 158203125000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 2))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 23, r := 3 }
    lowerValue := 101467667831
    upperValue := 31640625000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 3))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 23, r := 4 }
    lowerValue := 4999624200
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 4))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 23, r := 5 }
    lowerValue := 323578298
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 5))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 23, r := 6 }
    lowerValue := 26472138
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 6))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 23, r := 7 }
    lowerValue := 2668683
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 7))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 23, r := 8 }
    lowerValue := 325707
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 8))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 23, r := 9 }
    lowerValue := 47528
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 9))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 23, r := 10 }
    lowerValue := 8219
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 10))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 23, r := 11 }
    lowerValue := 1674
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 11))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 23, r := 12 }
    lowerValue := 400
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 12))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 23, r := 13 }
    lowerValue := 112
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 13))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 23, r := 14 }
    lowerValue := 37
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 14))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 23, r := 15 }
    lowerValue := 14
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 15))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 23, r := 16 }
    lowerValue := 7
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 16))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 23, r := 17 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 19 18)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 23, r := 18 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 20 19))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18)) },
  { key := { q := 5, n := 23, r := 19 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 21 20)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 19)) },
  { key := { q := 5, n := 23, r := 20 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 22 21))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 20)) },
  { key := { q := 5, n := 23, r := 21 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 21)) },
  { key := { q := 5, n := 23, r := 22 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 22)) },
  { key := { q := 5, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 23)) },
  { key := { q := 5, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 24)) },
  { key := { q := 5, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 25)) },
  { key := { q := 5, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 26)) },
  { key := { q := 5, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 27)) },
  { key := { q := 5, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 28)) },
  { key := { q := 5, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 29)) },
  { key := { q := 5, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 30)) },
  { key := { q := 5, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 31)) },
  { key := { q := 5, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 32)) },
  { key := { q := 5, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 33)) },
  { key := { q := 5, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 34)) },
  { key := { q := 5, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 35)) },
  { key := { q := 5, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 36)) },
  { key := { q := 5, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 37)) },
  { key := { q := 5, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 38)) },
  { key := { q := 5, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 39)) },
  { key := { q := 5, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 40)) },
  { key := { q := 5, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 41)) },
  { key := { q := 5, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 42)) },
  { key := { q := 5, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 43)) },
  { key := { q := 5, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 44)) },
  { key := { q := 5, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 45)) },
  { key := { q := 5, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 46)) },
  { key := { q := 5, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 47)) },
  { key := { q := 5, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 23 48)) },
  { key := { q := 5, n := 24, r := 0 }
    lowerValue := 59604644775390625
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 24 0)) },
  { key := { q := 5, n := 24, r := 1 }
    lowerValue := 614480873973100
    upperValue := 6198883056640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 1))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 24, r := 2 }
    lowerValue := 13207322130599
    upperValue := 791015625000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 2))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 24, r := 3 }
    lowerValue := 444648186674
    upperValue := 158203125000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 3))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 24, r := 4 }
    lowerValue := 20882367083
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 4))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 24, r := 5 }
    lowerValue := 1285181108
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 5))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 24, r := 6 }
    lowerValue := 99726081
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 6))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 24, r := 7 }
    lowerValue := 9508975
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 7))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 24, r := 8 }
    lowerValue := 1094305
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 8))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 24, r := 9 }
    lowerValue := 150054
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 9))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 24, r := 10 }
    lowerValue := 24292
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 10))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 24, r := 11 }
    lowerValue := 4613
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 11))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 24, r := 12 }
    lowerValue := 1023
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 12))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 24, r := 13 }
    lowerValue := 264
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 13))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 24, r := 14 }
    lowerValue := 80
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 14))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 24, r := 15 }
    lowerValue := 28
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 15))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 24, r := 16 }
    lowerValue := 12
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 16))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 24, r := 17 }
    lowerValue := 6
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 17))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 24, r := 18 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 20 19)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 24, r := 19 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 21 20))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19)) },
  { key := { q := 5, n := 24, r := 20 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 22 21)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 20)) },
  { key := { q := 5, n := 24, r := 21 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 23 22))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 21)) },
  { key := { q := 5, n := 24, r := 22 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 22)) },
  { key := { q := 5, n := 24, r := 23 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 23)) },
  { key := { q := 5, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 24)) },
  { key := { q := 5, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 25)) },
  { key := { q := 5, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 26)) },
  { key := { q := 5, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 27)) },
  { key := { q := 5, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 28)) },
  { key := { q := 5, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 29)) },
  { key := { q := 5, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 30)) },
  { key := { q := 5, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 31)) },
  { key := { q := 5, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 32)) },
  { key := { q := 5, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 33)) },
  { key := { q := 5, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 34)) },
  { key := { q := 5, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 35)) },
  { key := { q := 5, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 36)) },
  { key := { q := 5, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 37)) },
  { key := { q := 5, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 38)) },
  { key := { q := 5, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 39)) },
  { key := { q := 5, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 40)) },
  { key := { q := 5, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 41)) },
  { key := { q := 5, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 42)) },
  { key := { q := 5, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 43)) },
  { key := { q := 5, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 44)) },
  { key := { q := 5, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 45)) },
  { key := { q := 5, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 46)) },
  { key := { q := 5, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 47)) },
  { key := { q := 5, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 24 48)) },
  { key := { q := 5, n := 25, r := 0 }
    lowerValue := 298023223876953125
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 25 0)) },
  { key := { q := 5, n := 25, r := 1 }
    lowerValue := 2950724988880725
    upperValue := 30994415283203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 1))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 25, r := 2 }
    lowerValue := 60808656167508
    upperValue := 3955078125000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 2))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 25, r := 3 }
    lowerValue := 1959377149901
    upperValue := 791015625000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 3))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 25, r := 4 }
    lowerValue := 87899464970
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 4))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 25, r := 5 }
    lowerValue := 5156501803
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 5))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 25, r := 6 }
    lowerValue := 380521299
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 6))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 25, r := 7 }
    lowerValue := 34417798
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 7))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 25, r := 8 }
    lowerValue := 3746784
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 8))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 25, r := 9 }
    lowerValue := 484516
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 9))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 25, r := 10 }
    lowerValue := 73720
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 10))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 25, r := 11 }
    lowerValue := 13107
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 11))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 25, r := 12 }
    lowerValue := 2710
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 12))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 25, r := 13 }
    lowerValue := 650
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 13))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 25, r := 14 }
    lowerValue := 181
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 14))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 25, r := 15 }
    lowerValue := 58
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 15))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 25, r := 16 }
    lowerValue := 22
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 16))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 25, r := 17 }
    lowerValue := 10
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 17))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 25, r := 18 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 25 18))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 25, r := 19 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 21 20)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) }]

end CoveringCodes.Database
