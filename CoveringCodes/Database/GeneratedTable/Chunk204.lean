import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 204. Do not edit manually.

def precomputedTable_chunk_204 : Array AnyBoundEntry := #[
  { key := { q := 21, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 11 40)) },
  { key := { q := 21, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 11 41)) },
  { key := { q := 21, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 11 42)) },
  { key := { q := 21, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 11 43)) },
  { key := { q := 21, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 11 44)) },
  { key := { q := 21, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 11 45)) },
  { key := { q := 21, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 11 46)) },
  { key := { q := 21, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 11 47)) },
  { key := { q := 21, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 11 48)) },
  { key := { q := 21, n := 12, r := 0 }
    lowerValue := 7355827511386641
    upperValue := 7355827511386641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 12 0)) },
  { key := { q := 21, n := 12, r := 1 }
    lowerValue := 30522105856377
    upperValue := 175535890294401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 1))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 12, r := 2 }
    lowerValue := 276109286866
    upperValue := 8358851918781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 2))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 12, r := 3 }
    lowerValue := 4117126783
    upperValue := 398040567561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 3))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 12, r := 4 }
    lowerValue := 90827666
    upperValue := 18954312741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 12, r := 5 }
    lowerValue := 2812521
    upperValue := 902586321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 5))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 12, r := 6 }
    lowerValue := 119121
    upperValue := 42980301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 12, r := 7 }
    lowerValue := 6840
    upperValue := 2046681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 12, r := 8 }
    lowerValue := 536
    upperValue := 97461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 12, r := 9 }
    lowerValue := 59
    upperValue := 4641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 9))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1)))) },
  { key := { q := 21, n := 12, r := 10 }
    lowerValue := 21
    upperValue := 221
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 12 11)))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 21) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 12, r := 11 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 12 11)) },
  { key := { q := 21, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 12)) },
  { key := { q := 21, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 13)) },
  { key := { q := 21, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 14)) },
  { key := { q := 21, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 15)) },
  { key := { q := 21, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 16)) },
  { key := { q := 21, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 17)) },
  { key := { q := 21, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 18)) },
  { key := { q := 21, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 19)) },
  { key := { q := 21, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 20)) },
  { key := { q := 21, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 21)) },
  { key := { q := 21, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 22)) },
  { key := { q := 21, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 23)) },
  { key := { q := 21, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 24)) },
  { key := { q := 21, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 25)) },
  { key := { q := 21, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 26)) },
  { key := { q := 21, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 27)) },
  { key := { q := 21, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 28)) },
  { key := { q := 21, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 29)) },
  { key := { q := 21, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 30)) },
  { key := { q := 21, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 31)) },
  { key := { q := 21, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 32)) },
  { key := { q := 21, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 33)) },
  { key := { q := 21, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 34)) },
  { key := { q := 21, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 35)) },
  { key := { q := 21, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 36)) },
  { key := { q := 21, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 37)) },
  { key := { q := 21, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 38)) },
  { key := { q := 21, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 39)) },
  { key := { q := 21, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 40)) },
  { key := { q := 21, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 41)) },
  { key := { q := 21, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 42)) },
  { key := { q := 21, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 43)) },
  { key := { q := 21, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 44)) },
  { key := { q := 21, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 45)) },
  { key := { q := 21, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 46)) },
  { key := { q := 21, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 47)) },
  { key := { q := 21, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 12 48)) },
  { key := { q := 21, n := 13, r := 0 }
    lowerValue := 154472377739119461
    upperValue := 154472377739119461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 13 0)) },
  { key := { q := 21, n := 13, r := 1 }
    lowerValue := 591848190571339
    upperValue := 3686253696182421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 1))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 13, r := 2 }
    lowerValue := 4909964010652
    upperValue := 175535890294401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 2))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 13, r := 3 }
    lowerValue := 66598394084
    upperValue := 8358851918781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 3))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 13, r := 4 }
    lowerValue := 1323450061
    upperValue := 398040567561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 13, r := 5 }
    lowerValue := 36474149
    upperValue := 18954312741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 5))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 13, r := 6 }
    lowerValue := 1354319
    upperValue := 902586321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 6))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 13, r := 7 }
    lowerValue := 66856
    upperValue := 42980301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 13, r := 8 }
    lowerValue := 4382
    upperValue := 2046681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 13, r := 9 }
    lowerValue := 385
    upperValue := 97461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 13, r := 10 }
    lowerValue := 47
    upperValue := 4641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 10))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1)))) },
  { key := { q := 21, n := 13, r := 11 }
    lowerValue := 21
    upperValue := 221
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 13 12)))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 21) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 13, r := 12 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 13 12)) },
  { key := { q := 21, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 13)) },
  { key := { q := 21, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 14)) },
  { key := { q := 21, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 15)) },
  { key := { q := 21, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 16)) },
  { key := { q := 21, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 17)) },
  { key := { q := 21, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 18)) },
  { key := { q := 21, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 19)) },
  { key := { q := 21, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 20)) },
  { key := { q := 21, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 21)) },
  { key := { q := 21, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 22)) },
  { key := { q := 21, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 23)) },
  { key := { q := 21, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 24)) },
  { key := { q := 21, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 25)) },
  { key := { q := 21, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 26)) },
  { key := { q := 21, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 27)) },
  { key := { q := 21, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 28)) },
  { key := { q := 21, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 29)) },
  { key := { q := 21, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 30)) },
  { key := { q := 21, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 31)) },
  { key := { q := 21, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 32)) },
  { key := { q := 21, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 33)) },
  { key := { q := 21, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 34)) },
  { key := { q := 21, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 35)) },
  { key := { q := 21, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 36)) },
  { key := { q := 21, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 37)) },
  { key := { q := 21, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 38)) },
  { key := { q := 21, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 39)) },
  { key := { q := 21, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 40)) },
  { key := { q := 21, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 41)) },
  { key := { q := 21, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 42)) },
  { key := { q := 21, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 43)) },
  { key := { q := 21, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 44)) },
  { key := { q := 21, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 45)) },
  { key := { q := 21, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 46)) },
  { key := { q := 21, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 47)) },
  { key := { q := 21, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 13 48)) },
  { key := { q := 21, n := 14, r := 0 }
    lowerValue := 3243919932521508681
    upperValue := 3243919932521508681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 14 0)) },
  { key := { q := 21, n := 14, r := 1 }
    lowerValue := 11544199048119248
    upperValue := 77411327619830841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 1))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 14, r := 2 }
    lowerValue := 88435973188341
    upperValue := 3686253696182421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 2))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 14, r := 3 }
    lowerValue := 1100125762171
    upperValue := 175535890294401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 14, r := 4 }
    lowerValue := 19888088805
    upperValue := 8358851918781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 14, r := 5 }
    lowerValue := 493784253
    upperValue := 398040567561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 5))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 14, r := 6 }
    lowerValue := 16320665
    upperValue := 18954312741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 14, r := 7 }
    lowerValue := 706472
    upperValue := 902586321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 14, r := 8 }
    lowerValue := 39819
    upperValue := 42980301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 14, r := 9 }
    lowerValue := 2932
    upperValue := 2046681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 14, r := 10 }
    lowerValue := 286
    upperValue := 97461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 10))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 14, r := 11 }
    lowerValue := 38
    upperValue := 4641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 11))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1)))) },
  { key := { q := 21, n := 14, r := 12 }
    lowerValue := 21
    upperValue := 221
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 14 13)))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 21) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 14, r := 13 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 14 13)) },
  { key := { q := 21, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 14)) },
  { key := { q := 21, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 15)) },
  { key := { q := 21, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 16)) },
  { key := { q := 21, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 17)) },
  { key := { q := 21, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 18)) },
  { key := { q := 21, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 19)) },
  { key := { q := 21, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 20)) },
  { key := { q := 21, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 21)) },
  { key := { q := 21, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 22)) },
  { key := { q := 21, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 23)) },
  { key := { q := 21, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 24)) },
  { key := { q := 21, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 25)) },
  { key := { q := 21, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 26)) },
  { key := { q := 21, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 27)) },
  { key := { q := 21, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 28)) },
  { key := { q := 21, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 29)) },
  { key := { q := 21, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 30)) },
  { key := { q := 21, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 31)) },
  { key := { q := 21, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 32)) },
  { key := { q := 21, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 33)) },
  { key := { q := 21, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 34)) },
  { key := { q := 21, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 35)) },
  { key := { q := 21, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 36)) },
  { key := { q := 21, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 37)) },
  { key := { q := 21, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 38)) },
  { key := { q := 21, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 39)) },
  { key := { q := 21, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 40)) },
  { key := { q := 21, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 41)) },
  { key := { q := 21, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 42)) },
  { key := { q := 21, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 43)) },
  { key := { q := 21, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 44)) },
  { key := { q := 21, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 45)) },
  { key := { q := 21, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 46)) },
  { key := { q := 21, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 47)) },
  { key := { q := 21, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 14 48)) },
  { key := { q := 21, n := 15, r := 0 }
    lowerValue := 68122318582951682301
    upperValue := 68122318582951682301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 15 0)) },
  { key := { q := 21, n := 15, r := 1 }
    lowerValue := 226319995292198281
    upperValue := 1625637880016447661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 1))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 15, r := 2 }
    lowerValue := 1610418632726217
    upperValue := 77411327619830841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 2))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 15, r := 3 }
    lowerValue := 18499932130196
    upperValue := 3686253696182421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 15, r := 4 }
    lowerValue := 306743573334
    upperValue := 175535890294401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 15, r := 5 }
    lowerValue := 6928856782
    upperValue := 8358851918781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 15, r := 6 }
    lowerValue := 206336428
    upperValue := 398040567561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 15, r := 7 }
    lowerValue := 7951758
    upperValue := 18954312741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 15, r := 8 }
    lowerValue := 393083
    upperValue := 902586321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 15, r := 9 }
    lowerValue := 24900
    upperValue := 42980301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 15, r := 10 }
    lowerValue := 2035
    upperValue := 2046681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 10))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 15, r := 11 }
    lowerValue := 218
    upperValue := 97461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 11))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 15, r := 12 }
    lowerValue := 32
    upperValue := 4641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 12))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1)))) },
  { key := { q := 21, n := 15, r := 13 }
    lowerValue := 21
    upperValue := 221
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 15 14)))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 21) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 15, r := 14 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 15 14)) },
  { key := { q := 21, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 15)) },
  { key := { q := 21, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 16)) },
  { key := { q := 21, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 17)) },
  { key := { q := 21, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 18)) },
  { key := { q := 21, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 19)) },
  { key := { q := 21, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 20)) },
  { key := { q := 21, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 21)) },
  { key := { q := 21, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 22)) },
  { key := { q := 21, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 23)) },
  { key := { q := 21, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 24)) },
  { key := { q := 21, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 25)) },
  { key := { q := 21, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 26)) },
  { key := { q := 21, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 27)) },
  { key := { q := 21, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 28)) },
  { key := { q := 21, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 29)) },
  { key := { q := 21, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 30)) },
  { key := { q := 21, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 31)) },
  { key := { q := 21, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 32)) },
  { key := { q := 21, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 33)) },
  { key := { q := 21, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 34)) },
  { key := { q := 21, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 35)) },
  { key := { q := 21, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 36)) },
  { key := { q := 21, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 37)) },
  { key := { q := 21, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 38)) },
  { key := { q := 21, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 39)) },
  { key := { q := 21, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 40)) },
  { key := { q := 21, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 41)) },
  { key := { q := 21, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 42)) },
  { key := { q := 21, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 43)) },
  { key := { q := 21, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 44)) },
  { key := { q := 21, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 45)) },
  { key := { q := 21, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 46)) },
  { key := { q := 21, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 47)) },
  { key := { q := 21, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 15 48)) },
  { key := { q := 21, n := 16, r := 0 }
    lowerValue := 1430568690241985328321
    upperValue := 1430568690241985328321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 16 0)) },
  { key := { q := 21, n := 16, r := 1 }
    lowerValue := 4456600281127680151
    upperValue := 34138395480345400881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 1))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 16, r := 2 }
    lowerValue := 29605527415450536
    upperValue := 1625637880016447661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 2))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 16, r := 3 }
    lowerValue := 315915918999997
    upperValue := 77411327619830841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 16, r := 4 }
    lowerValue := 4837442303141
    upperValue := 3686253696182421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 16, r := 5 }
    lowerValue := 100226706629
    upperValue := 175535890294401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 16, r := 6 }
    lowerValue := 2715657809
    upperValue := 8358851918781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 16, r := 7 }
    lowerValue := 94302576
    upperValue := 398040567561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 16, r := 8 }
    lowerValue := 4150884
    upperValue := 18954312741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 16, r := 9 }
    lowerValue := 230666
    upperValue := 902586321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 16, r := 10 }
    lowerValue := 16219
    upperValue := 42980301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 10))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 16, r := 11 }
    lowerValue := 1456
    upperValue := 2046681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 11))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 16, r := 12 }
    lowerValue := 170
    upperValue := 97461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 12))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 16, r := 13 }
    lowerValue := 27
    upperValue := 4641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 13))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1)))) },
  { key := { q := 21, n := 16, r := 14 }
    lowerValue := 21
    upperValue := 221
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 16 15)))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 21) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 16, r := 15 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 16 15)) },
  { key := { q := 21, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 16)) },
  { key := { q := 21, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 17)) },
  { key := { q := 21, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 18)) },
  { key := { q := 21, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 19)) },
  { key := { q := 21, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 20)) },
  { key := { q := 21, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 21)) },
  { key := { q := 21, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 22)) },
  { key := { q := 21, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 23)) },
  { key := { q := 21, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 24)) },
  { key := { q := 21, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 25)) },
  { key := { q := 21, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 26)) },
  { key := { q := 21, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 27)) },
  { key := { q := 21, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 28)) },
  { key := { q := 21, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 29)) },
  { key := { q := 21, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 30)) },
  { key := { q := 21, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 31)) },
  { key := { q := 21, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 32)) },
  { key := { q := 21, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 33)) },
  { key := { q := 21, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 34)) },
  { key := { q := 21, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 35)) },
  { key := { q := 21, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 36)) },
  { key := { q := 21, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 37)) },
  { key := { q := 21, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 38)) },
  { key := { q := 21, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 39)) },
  { key := { q := 21, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 40)) },
  { key := { q := 21, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 41)) },
  { key := { q := 21, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 42)) },
  { key := { q := 21, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 43)) },
  { key := { q := 21, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 44)) }]

end CoveringCodes.Database
