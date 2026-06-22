import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 100. Do not edit manually.

def precomputedTable_chunk_100 : Array AnyBoundEntry := #[
  { key := { q := 10, n := 20, r := 10 }
    lowerValue := 139843
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 10))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 20, r := 11 }
    lowerValue := 16707
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 11))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 20, r := 12 }
    lowerValue := 2406
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 12))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 20, r := 13 }
    lowerValue := 420
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 13))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 20, r := 14 }
    lowerValue := 89
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 14))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 20, r := 15 }
    lowerValue := 24
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 15))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 20, r := 16 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 18 17)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 20, r := 17 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 19 18))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 20, r := 18 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 20 19)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 20 18)) },
  { key := { q := 10, n := 20, r := 19 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 20 19)) },
  { key := { q := 10, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 20)) },
  { key := { q := 10, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 21)) },
  { key := { q := 10, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 22)) },
  { key := { q := 10, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 23)) },
  { key := { q := 10, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 24)) },
  { key := { q := 10, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 25)) },
  { key := { q := 10, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 26)) },
  { key := { q := 10, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 27)) },
  { key := { q := 10, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 28)) },
  { key := { q := 10, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 29)) },
  { key := { q := 10, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 30)) },
  { key := { q := 10, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 31)) },
  { key := { q := 10, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 32)) },
  { key := { q := 10, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 33)) },
  { key := { q := 10, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 34)) },
  { key := { q := 10, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 35)) },
  { key := { q := 10, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 36)) },
  { key := { q := 10, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 37)) },
  { key := { q := 10, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 38)) },
  { key := { q := 10, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 39)) },
  { key := { q := 10, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 40)) },
  { key := { q := 10, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 41)) },
  { key := { q := 10, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 42)) },
  { key := { q := 10, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 43)) },
  { key := { q := 10, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 44)) },
  { key := { q := 10, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 45)) },
  { key := { q := 10, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 46)) },
  { key := { q := 10, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 47)) },
  { key := { q := 10, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 20 48)) },
  { key := { q := 10, n := 21, r := 0 }
    lowerValue := 1000000000000000000000
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 21 0)) },
  { key := { q := 10, n := 21, r := 1 }
    lowerValue := 5263157894736842106
    upperValue := 50000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 1))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 21, r := 2 }
    lowerValue := 58139534883720931
    upperValue := 5000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 2))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 21, r := 3 }
    lowerValue := 1013407379632539
    upperValue := 500000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 3))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 21, r := 4 }
    lowerValue := 24842032619825
    upperValue := 11560000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 4))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 21, r := 5 }
    lowerValue := 805255123280
    upperValue := 1156000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 5))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 21, r := 6 }
    lowerValue := 33244728508
    upperValue := 115600000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 6))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 21, r := 7 }
    lowerValue := 1705775575
    upperValue := 11560000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 7))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 21, r := 8 }
    lowerValue := 106999698
    upperValue := 1156000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 8))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 21, r := 9 }
    lowerValue := 8115545
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 9))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 21, r := 10 }
    lowerValue := 739063
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 10))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 21, r := 11 }
    lowerValue := 80505
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 11))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 21, r := 12 }
    lowerValue := 10479
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 12))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 21, r := 13 }
    lowerValue := 1633
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 13))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 21, r := 14 }
    lowerValue := 306
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 14))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 21, r := 15 }
    lowerValue := 70
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 15))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 21, r := 16 }
    lowerValue := 20
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 16))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 21, r := 17 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 19 18)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 21, r := 18 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 20 19))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18)) },
  { key := { q := 10, n := 21, r := 19 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 19)) },
  { key := { q := 10, n := 21, r := 20 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 20)) },
  { key := { q := 10, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 21)) },
  { key := { q := 10, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 22)) },
  { key := { q := 10, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 23)) },
  { key := { q := 10, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 24)) },
  { key := { q := 10, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 25)) },
  { key := { q := 10, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 26)) },
  { key := { q := 10, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 27)) },
  { key := { q := 10, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 28)) },
  { key := { q := 10, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 29)) },
  { key := { q := 10, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 30)) },
  { key := { q := 10, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 31)) },
  { key := { q := 10, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 32)) },
  { key := { q := 10, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 33)) },
  { key := { q := 10, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 34)) },
  { key := { q := 10, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 35)) },
  { key := { q := 10, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 36)) },
  { key := { q := 10, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 37)) },
  { key := { q := 10, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 38)) },
  { key := { q := 10, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 39)) },
  { key := { q := 10, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 40)) },
  { key := { q := 10, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 41)) },
  { key := { q := 10, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 42)) },
  { key := { q := 10, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 43)) },
  { key := { q := 10, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 44)) },
  { key := { q := 10, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 45)) },
  { key := { q := 10, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 46)) },
  { key := { q := 10, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 47)) },
  { key := { q := 10, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 21 48)) },
  { key := { q := 10, n := 22, r := 0 }
    lowerValue := 10000000000000000000000
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 22 0)) },
  { key := { q := 10, n := 22, r := 1 }
    lowerValue := 50251256281407035176
    upperValue := 500000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 1))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 22, r := 2 }
    lowerValue := 528820729772607087
    upperValue := 50000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 2))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 22, r := 3 }
    lowerValue := 8759865798855962
    upperValue := 5000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 3))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 22, r := 4 }
    lowerValue := 203519731288829
    upperValue := 115600000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 4))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 22, r := 5 }
    lowerValue := 6233902307062
    upperValue := 11560000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 5))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 22, r := 6 }
    lowerValue := 242385819225
    upperValue := 1156000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 6))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 22, r := 7 }
    lowerValue := 11669112457
    upperValue := 115600000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 7))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 22, r := 8 }
    lowerValue := 683900355
    upperValue := 11560000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 8))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 22, r := 9 }
    lowerValue := 48231656
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 9))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 22, r := 10 }
    lowerValue := 4061660
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 10))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 22, r := 11 }
    lowerValue := 406517
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 11))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 22, r := 12 }
    lowerValue := 48256
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 12))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 22, r := 13 }
    lowerValue := 6796
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 13))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 22, r := 14 }
    lowerValue := 1139
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 14))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 22, r := 15 }
    lowerValue := 228
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 15))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 22, r := 16 }
    lowerValue := 55
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 16))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 22, r := 17 }
    lowerValue := 17
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 17))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 22, r := 18 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 20 19)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 22, r := 19 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 21 20))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19)) },
  { key := { q := 10, n := 22, r := 20 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 20)) },
  { key := { q := 10, n := 22, r := 21 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 21)) },
  { key := { q := 10, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 22)) },
  { key := { q := 10, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 23)) },
  { key := { q := 10, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 24)) },
  { key := { q := 10, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 25)) },
  { key := { q := 10, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 26)) },
  { key := { q := 10, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 27)) },
  { key := { q := 10, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 28)) },
  { key := { q := 10, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 29)) },
  { key := { q := 10, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 30)) },
  { key := { q := 10, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 31)) },
  { key := { q := 10, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 32)) },
  { key := { q := 10, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 33)) },
  { key := { q := 10, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 34)) },
  { key := { q := 10, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 35)) },
  { key := { q := 10, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 36)) },
  { key := { q := 10, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 37)) },
  { key := { q := 10, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 38)) },
  { key := { q := 10, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 39)) },
  { key := { q := 10, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 40)) },
  { key := { q := 10, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 41)) },
  { key := { q := 10, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 42)) },
  { key := { q := 10, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 43)) },
  { key := { q := 10, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 44)) },
  { key := { q := 10, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 45)) },
  { key := { q := 10, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 46)) },
  { key := { q := 10, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 47)) },
  { key := { q := 10, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 22 48)) },
  { key := { q := 10, n := 23, r := 0 }
    lowerValue := 100000000000000000000000
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 23 0)) },
  { key := { q := 10, n := 23, r := 1 }
    lowerValue := 480769230769230769231
    upperValue := 5000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 1))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 23, r := 2 }
    lowerValue := 4830684507994782861
    upperValue := 500000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 2))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 23, r := 3 }
    lowerValue := 76233457339757273
    upperValue := 50000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 3))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 23, r := 4 }
    lowerValue := 1683234887938217
    upperValue := 1156000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 4))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 23, r := 5 }
    lowerValue := 48867514507358
    upperValue := 115600000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 5))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 23, r := 6 }
    lowerValue := 1795534453432
    upperValue := 11560000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 6))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 23, r := 7 }
    lowerValue := 81415187780
    upperValue := 1156000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 7))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 23, r := 8 }
    lowerValue := 4477341560
    upperValue := 115600000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 8))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 23, r := 9 }
    lowerValue := 295045451
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 9))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 23, r := 10 }
    lowerValue := 23105135
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 10))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 23, r := 11 }
    lowerValue := 2138686
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 11))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 23, r := 12 }
    lowerValue := 233305
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 12))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 23, r := 13 }
    lowerValue := 29970
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 13))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 23, r := 14 }
    lowerValue := 4539
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 14))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 23, r := 15 }
    lowerValue := 814
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 15))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 23, r := 16 }
    lowerValue := 174
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 16))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 23, r := 17 }
    lowerValue := 45
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 23, r := 18 }
    lowerValue := 14
    upperValue := 1000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 18))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 23, r := 19 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 21 20)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 23, r := 20 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 22 21))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20)) },
  { key := { q := 10, n := 23, r := 21 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 21)) },
  { key := { q := 10, n := 23, r := 22 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 22)) },
  { key := { q := 10, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 23)) },
  { key := { q := 10, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 24)) },
  { key := { q := 10, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 25)) },
  { key := { q := 10, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 26)) },
  { key := { q := 10, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 27)) },
  { key := { q := 10, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 28)) },
  { key := { q := 10, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 29)) },
  { key := { q := 10, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 30)) },
  { key := { q := 10, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 31)) },
  { key := { q := 10, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 32)) },
  { key := { q := 10, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 33)) },
  { key := { q := 10, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 34)) },
  { key := { q := 10, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 35)) },
  { key := { q := 10, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 36)) },
  { key := { q := 10, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 37)) },
  { key := { q := 10, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 38)) },
  { key := { q := 10, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 39)) },
  { key := { q := 10, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 40)) },
  { key := { q := 10, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 41)) },
  { key := { q := 10, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 42)) },
  { key := { q := 10, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 43)) },
  { key := { q := 10, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 44)) },
  { key := { q := 10, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 45)) },
  { key := { q := 10, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 46)) },
  { key := { q := 10, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 47)) },
  { key := { q := 10, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 23 48)) },
  { key := { q := 10, n := 24, r := 0 }
    lowerValue := 1000000000000000000000000
    upperValue := 1000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 24 0)) },
  { key := { q := 10, n := 24, r := 1 }
    lowerValue := 4608294930875576036867
    upperValue := 50000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 1))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 24, r := 2 }
    lowerValue := 44300713241483187880
    upperValue := 5000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 2))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 24, r := 3 }
    lowerValue := 667525995131065392
    upperValue := 500000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 3))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 24, r := 4 }
    lowerValue := 14041935256708693
    upperValue := 11560000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 4))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 24, r := 5 }
    lowerValue := 387441629589010
    upperValue := 1156000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 5))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 24, r := 6 }
    lowerValue := 13493297857035
    upperValue := 115600000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 6))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 24, r := 7 }
    lowerValue := 578196587298
    upperValue := 11560000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 7))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 24, r := 8 }
    lowerValue := 29949866461
    upperValue := 1156000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 8))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 24, r := 9 }
    lowerValue := 1852047451
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 9))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 24, r := 10 }
    lowerValue := 135530375
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 10))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 24, r := 11 }
    lowerValue := 11667242
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 11))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 24, r := 12 }
    lowerValue := 1177242
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 12))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 24, r := 13 }
    lowerValue := 138999
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 13))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 24, r := 14 }
    lowerValue := 19209
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 14))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 24, r := 15 }
    lowerValue := 3113
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 15))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 24, r := 16 }
    lowerValue := 594
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 16))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 24, r := 17 }
    lowerValue := 135
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 24, r := 18 }
    lowerValue := 37
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 24, r := 19 }
    lowerValue := 12
    upperValue := 1000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 19))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 24, r := 20 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 22 21)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 24, r := 21 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 23 22))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21)) },
  { key := { q := 10, n := 24, r := 22 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 22)) },
  { key := { q := 10, n := 24, r := 23 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 23)) },
  { key := { q := 10, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 24)) },
  { key := { q := 10, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 25)) },
  { key := { q := 10, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 26)) },
  { key := { q := 10, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 27)) },
  { key := { q := 10, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 28)) },
  { key := { q := 10, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 29)) },
  { key := { q := 10, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 30)) },
  { key := { q := 10, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 31)) },
  { key := { q := 10, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 32)) },
  { key := { q := 10, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 33)) },
  { key := { q := 10, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 34)) },
  { key := { q := 10, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 35)) },
  { key := { q := 10, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 36)) },
  { key := { q := 10, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 37)) },
  { key := { q := 10, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 38)) },
  { key := { q := 10, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 39)) },
  { key := { q := 10, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 40)) },
  { key := { q := 10, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 41)) },
  { key := { q := 10, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 42)) },
  { key := { q := 10, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 43)) },
  { key := { q := 10, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 44)) },
  { key := { q := 10, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 45)) },
  { key := { q := 10, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 46)) },
  { key := { q := 10, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 47)) },
  { key := { q := 10, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 24 48)) },
  { key := { q := 10, n := 25, r := 0 }
    lowerValue := 10000000000000000000000000
    upperValue := 10000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 25 0)) },
  { key := { q := 10, n := 25, r := 1 }
    lowerValue := 44247787610619469026549
    upperValue := 500000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 25 1))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 25, r := 2 }
    lowerValue := 407730571638261436843
    upperValue := 50000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 25 2))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 25, r := 3 }
    lowerValue := 5878113783824136241
    upperValue := 5000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 25 3))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 25, r := 4 }
    lowerValue := 118066715155879470
    upperValue := 115600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 25 4))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 25, r := 5 }
    lowerValue := 3103690019709134
    upperValue := 11560000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 25 5))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 25, r := 6 }
    lowerValue := 102732507648072
    upperValue := 1156000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 25 6))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 25, r := 7 }
    lowerValue := 4172728649248
    upperValue := 115600000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 25 7))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 25, r := 8 }
    lowerValue := 204270183887
    upperValue := 11560000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 25 8))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 25, r := 9 }
    lowerValue := 11898456514
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 25 9))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 25, r := 10 }
    lowerValue := 817133224
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 25 10))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 25, r := 11 }
    lowerValue := 65739373
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 25 11))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 25, r := 12 }
    lowerValue := 6169663
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 25 12))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 25, r := 13 }
    lowerValue := 673887
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 25 13))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 25, r := 14 }
    lowerValue := 85609
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 25 14))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) }]

end CoveringCodes.Database
