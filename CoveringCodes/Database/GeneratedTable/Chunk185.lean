import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 185. Do not edit manually.

def precomputedTable_chunk_185 : Array AnyBoundEntry := #[
  { key := { q := 19, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 43)) },
  { key := { q := 19, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 44)) },
  { key := { q := 19, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 45)) },
  { key := { q := 19, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 46)) },
  { key := { q := 19, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 47)) },
  { key := { q := 19, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 48)) },
  { key := { q := 19, n := 13, r := 0 }
    lowerValue := 42052983462257059
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 13 0)) },
  { key := { q := 19, n := 13, r := 1 }
    lowerValue := 178948865796839
    upperValue := 1109722992661981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 1))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 13, r := 2 }
    lowerValue := 1648684026435
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 2))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 13, r := 3 }
    lowerValue := 24832596162
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 3))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 13, r := 4 }
    lowerValue := 547912336
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 13, r := 5 }
    lowerValue := 16763358
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 5))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 13, r := 6 }
    lowerValue := 690825
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 6))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 13, r := 7 }
    lowerValue := 37837
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 13, r := 8 }
    lowerValue := 2750
    upperValue := 1241479
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 13, r := 9 }
    lowerValue := 268
    upperValue := 65341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 13, r := 10 }
    lowerValue := 36
    upperValue := 3439
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 10))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1)))) },
  { key := { q := 19, n := 13, r := 11 }
    lowerValue := 19
    upperValue := 181
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 13 12)))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 19) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 13, r := 12 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 13 12)) },
  { key := { q := 19, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 13)) },
  { key := { q := 19, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 14)) },
  { key := { q := 19, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 15)) },
  { key := { q := 19, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 16)) },
  { key := { q := 19, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 17)) },
  { key := { q := 19, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 18)) },
  { key := { q := 19, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 19)) },
  { key := { q := 19, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 20)) },
  { key := { q := 19, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 21)) },
  { key := { q := 19, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 22)) },
  { key := { q := 19, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 23)) },
  { key := { q := 19, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 24)) },
  { key := { q := 19, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 25)) },
  { key := { q := 19, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 26)) },
  { key := { q := 19, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 27)) },
  { key := { q := 19, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 28)) },
  { key := { q := 19, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 29)) },
  { key := { q := 19, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 30)) },
  { key := { q := 19, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 31)) },
  { key := { q := 19, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 32)) },
  { key := { q := 19, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 33)) },
  { key := { q := 19, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 34)) },
  { key := { q := 19, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 35)) },
  { key := { q := 19, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 36)) },
  { key := { q := 19, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 37)) },
  { key := { q := 19, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 38)) },
  { key := { q := 19, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 39)) },
  { key := { q := 19, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 40)) },
  { key := { q := 19, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 41)) },
  { key := { q := 19, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 42)) },
  { key := { q := 19, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 43)) },
  { key := { q := 19, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 44)) },
  { key := { q := 19, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 45)) },
  { key := { q := 19, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 46)) },
  { key := { q := 19, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 47)) },
  { key := { q := 19, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 13 48)) },
  { key := { q := 19, n := 14, r := 0 }
    lowerValue := 799006685782884121
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 14 0)) },
  { key := { q := 19, n := 14, r := 1 }
    lowerValue := 3158129192817724
    upperValue := 21084736860577639
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 1))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 14, r := 2 }
    lowerValue := 26869108712476
    upperValue := 1109722992661981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 2))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 14, r := 3 }
    lowerValue := 371184731745
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 14, r := 4 }
    lowerValue := 7451087872
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 14, r := 5 }
    lowerValue := 205392326
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 5))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 14, r := 6 }
    lowerValue := 7535748
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 14, r := 7 }
    lowerValue := 362006
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 14, r := 8 }
    lowerValue := 22635
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 14, r := 9 }
    lowerValue := 1848
    upperValue := 1241479
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 14, r := 10 }
    lowerValue := 200
    upperValue := 65341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 10))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 14, r := 11 }
    lowerValue := 30
    upperValue := 3439
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 11))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1)))) },
  { key := { q := 19, n := 14, r := 12 }
    lowerValue := 19
    upperValue := 181
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 14 13)))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 19) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 14, r := 13 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 14 13)) },
  { key := { q := 19, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 14)) },
  { key := { q := 19, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 15)) },
  { key := { q := 19, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 16)) },
  { key := { q := 19, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 17)) },
  { key := { q := 19, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 18)) },
  { key := { q := 19, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 19)) },
  { key := { q := 19, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 20)) },
  { key := { q := 19, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 21)) },
  { key := { q := 19, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 22)) },
  { key := { q := 19, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 23)) },
  { key := { q := 19, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 24)) },
  { key := { q := 19, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 25)) },
  { key := { q := 19, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 26)) },
  { key := { q := 19, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 27)) },
  { key := { q := 19, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 28)) },
  { key := { q := 19, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 29)) },
  { key := { q := 19, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 30)) },
  { key := { q := 19, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 31)) },
  { key := { q := 19, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 32)) },
  { key := { q := 19, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 33)) },
  { key := { q := 19, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 34)) },
  { key := { q := 19, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 35)) },
  { key := { q := 19, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 36)) },
  { key := { q := 19, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 37)) },
  { key := { q := 19, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 38)) },
  { key := { q := 19, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 39)) },
  { key := { q := 19, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 40)) },
  { key := { q := 19, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 41)) },
  { key := { q := 19, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 42)) },
  { key := { q := 19, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 43)) },
  { key := { q := 19, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 44)) },
  { key := { q := 19, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 45)) },
  { key := { q := 19, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 46)) },
  { key := { q := 19, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 47)) },
  { key := { q := 19, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 14 48)) },
  { key := { q := 19, n := 15, r := 0 }
    lowerValue := 15181127029874798299
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 15 0)) },
  { key := { q := 19, n := 15, r := 1 }
    lowerValue := 56018918929427300
    upperValue := 400610000350975141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 1))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 15, r := 2 }
    lowerValue := 442714619867453
    upperValue := 21084736860577639
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 2))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 15, r := 3 }
    lowerValue := 5648053790882
    upperValue := 1109722992661981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 15, r := 4 }
    lowerValue := 103994503127
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 15, r := 5 }
    lowerValue := 2608282963
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 15, r := 6 }
    lowerValue := 86231155
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 15, r := 7 }
    lowerValue := 3688601
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 15, r := 8 }
    lowerValue := 202337
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 15, r := 9 }
    lowerValue := 14217
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 15, r := 10 }
    lowerValue := 1288
    upperValue := 1241479
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 10))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 15, r := 11 }
    lowerValue := 153
    upperValue := 65341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 11))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 15, r := 12 }
    lowerValue := 25
    upperValue := 3439
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 12))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1)))) },
  { key := { q := 19, n := 15, r := 13 }
    lowerValue := 19
    upperValue := 181
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 15 14)))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 19) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 15, r := 14 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 15 14)) },
  { key := { q := 19, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 15)) },
  { key := { q := 19, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 16)) },
  { key := { q := 19, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 17)) },
  { key := { q := 19, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 18)) },
  { key := { q := 19, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 19)) },
  { key := { q := 19, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 20)) },
  { key := { q := 19, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 21)) },
  { key := { q := 19, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 22)) },
  { key := { q := 19, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 23)) },
  { key := { q := 19, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 24)) },
  { key := { q := 19, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 25)) },
  { key := { q := 19, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 26)) },
  { key := { q := 19, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 27)) },
  { key := { q := 19, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 28)) },
  { key := { q := 19, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 29)) },
  { key := { q := 19, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 30)) },
  { key := { q := 19, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 31)) },
  { key := { q := 19, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 32)) },
  { key := { q := 19, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 33)) },
  { key := { q := 19, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 34)) },
  { key := { q := 19, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 35)) },
  { key := { q := 19, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 36)) },
  { key := { q := 19, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 37)) },
  { key := { q := 19, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 38)) },
  { key := { q := 19, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 39)) },
  { key := { q := 19, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 40)) },
  { key := { q := 19, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 41)) },
  { key := { q := 19, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 42)) },
  { key := { q := 19, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 43)) },
  { key := { q := 19, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 44)) },
  { key := { q := 19, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 45)) },
  { key := { q := 19, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 46)) },
  { key := { q := 19, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 47)) },
  { key := { q := 19, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 15 48)) },
  { key := { q := 19, n := 16, r := 0 }
    lowerValue := 288441413567621167681
    upperValue := 288441413567621167681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 16 0)) },
  { key := { q := 19, n := 16, r := 1 }
    lowerValue := 998067174974467709
    upperValue := 7611590006668527679
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 1))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 16, r := 2 }
    lowerValue := 7364022915254951
    upperValue := 400610000350975141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 2))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 16, r := 3 }
    lowerValue := 87271905103803
    upperValue := 21084736860577639
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 16, r := 4 }
    lowerValue := 1484046730530
    upperValue := 1109722992661981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 16, r := 5 }
    lowerValue := 34143182250
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 16, r := 6 }
    lowerValue := 1027147592
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 16, r := 7 }
    lowerValue := 39595973
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 16, r := 8 }
    lowerValue := 1934401
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 16, r := 9 }
    lowerValue := 119273
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 16, r := 10 }
    lowerValue := 9302
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 10))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 16, r := 11 }
    lowerValue := 926
    upperValue := 1241479
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 11))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 16, r := 12 }
    lowerValue := 120
    upperValue := 65341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 12))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 16, r := 13 }
    lowerValue := 21
    upperValue := 3439
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 13))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1)))) },
  { key := { q := 19, n := 16, r := 14 }
    lowerValue := 19
    upperValue := 181
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 16 15)))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 19) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 16, r := 15 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 16 15)) },
  { key := { q := 19, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 16)) },
  { key := { q := 19, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 17)) },
  { key := { q := 19, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 18)) },
  { key := { q := 19, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 19)) },
  { key := { q := 19, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 20)) },
  { key := { q := 19, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 21)) },
  { key := { q := 19, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 22)) },
  { key := { q := 19, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 23)) },
  { key := { q := 19, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 24)) },
  { key := { q := 19, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 25)) },
  { key := { q := 19, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 26)) },
  { key := { q := 19, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 27)) },
  { key := { q := 19, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 28)) },
  { key := { q := 19, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 29)) },
  { key := { q := 19, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 30)) },
  { key := { q := 19, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 31)) },
  { key := { q := 19, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 32)) },
  { key := { q := 19, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 33)) },
  { key := { q := 19, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 34)) },
  { key := { q := 19, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 35)) },
  { key := { q := 19, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 36)) },
  { key := { q := 19, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 37)) },
  { key := { q := 19, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 38)) },
  { key := { q := 19, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 39)) },
  { key := { q := 19, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 40)) },
  { key := { q := 19, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 41)) },
  { key := { q := 19, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 42)) },
  { key := { q := 19, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 43)) },
  { key := { q := 19, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 44)) },
  { key := { q := 19, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 45)) },
  { key := { q := 19, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 46)) },
  { key := { q := 19, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 47)) },
  { key := { q := 19, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 16 48)) },
  { key := { q := 19, n := 17, r := 0 }
    lowerValue := 5480386857784802185939
    upperValue := 5480386857784802185939
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 17 0)) },
  { key := { q := 19, n := 17, r := 1 }
    lowerValue := 17851422989527042951
    upperValue := 144620210126702025901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 1))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 17, r := 2 }
    lowerValue := 123512809217389786
    upperValue := 7611590006668527679
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 2))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 17, r := 3 }
    lowerValue := 1366635368716085
    upperValue := 400610000350975141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 17, r := 4 }
    lowerValue := 21588819593654
    upperValue := 21084736860577639
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 4))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 17, r := 5 }
    lowerValue := 458744146975
    upperValue := 1109722992661981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 5))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 17, r := 6 }
    lowerValue := 12660239031
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 6))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 17, r := 7 }
    lowerValue := 444139493
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 7))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 17, r := 8 }
    lowerValue := 19556427
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 8))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 17, r := 9 }
    lowerValue := 1074091
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 9))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 17, r := 10 }
    lowerValue := 73522
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 10))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 17, r := 11 }
    lowerValue := 6300
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 11))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 17, r := 12 }
    lowerValue := 683
    upperValue := 1241479
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 12))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 17, r := 13 }
    lowerValue := 96
    upperValue := 65341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 13))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 17, r := 14 }
    lowerValue := 19
    upperValue := 3439
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 16 15))))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1)))) },
  { key := { q := 19, n := 17, r := 15 }
    lowerValue := 19
    upperValue := 181
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 17 16)))
    upperTrace := (.lengthenDummyN 14 (by decide : 0 < 19) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 17, r := 16 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 17 16)) },
  { key := { q := 19, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 17)) },
  { key := { q := 19, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 18)) },
  { key := { q := 19, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 19)) },
  { key := { q := 19, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 20)) },
  { key := { q := 19, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 21)) },
  { key := { q := 19, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 22)) },
  { key := { q := 19, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 23)) },
  { key := { q := 19, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 24)) },
  { key := { q := 19, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 25)) },
  { key := { q := 19, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 26)) },
  { key := { q := 19, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 27)) },
  { key := { q := 19, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 28)) },
  { key := { q := 19, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 29)) },
  { key := { q := 19, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 30)) },
  { key := { q := 19, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 31)) },
  { key := { q := 19, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 32)) },
  { key := { q := 19, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 33)) },
  { key := { q := 19, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 34)) },
  { key := { q := 19, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 35)) },
  { key := { q := 19, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 36)) },
  { key := { q := 19, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 37)) },
  { key := { q := 19, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 38)) },
  { key := { q := 19, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 39)) },
  { key := { q := 19, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 40)) },
  { key := { q := 19, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 41)) },
  { key := { q := 19, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 42)) },
  { key := { q := 19, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 43)) },
  { key := { q := 19, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 44)) },
  { key := { q := 19, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 45)) },
  { key := { q := 19, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 46)) },
  { key := { q := 19, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 47)) }]

end CoveringCodes.Database
