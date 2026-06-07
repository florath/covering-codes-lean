import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 196. Do not edit manually.

def precomputedTable_chunk_196 : Array AnyBoundEntry := #[
  { key := { q := 20, n := 20, r := 0 }
    lowerValue := 104857600000000000000000000
    upperValue := 104857600000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 20 0)) },
  { key := { q := 20, n := 20, r := 1 }
    lowerValue := 275216797900262467191602
    upperValue := 2621440000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 1))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 20, r := 2 }
    lowerValue := 1520314335010366675850
    upperValue := 131072000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 2))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 20, r := 3 }
    lowerValue := 13292917005092776822
    upperValue := 6553600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 3))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 20, r := 4 }
    lowerValue := 164021070035133599
    upperValue := 327680000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 4))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 20, r := 5 }
    lowerValue := 2686677061416091
    upperValue := 16384000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 5))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 20, r := 6 }
    lowerValue := 56298563993942
    upperValue := 819200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 6))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 20, r := 7 }
    lowerValue := 1473640865820
    upperValue := 40960000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 7))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 20, r := 8 }
    lowerValue := 47434538397
    upperValue := 2048000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 8))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 20, r := 9 }
    lowerValue := 1858874064
    upperValue := 102400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 9))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 20, r := 10 }
    lowerValue := 88177839
    upperValue := 5120000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 10))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 20, r := 11 }
    lowerValue := 5052194
    upperValue := 256000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 11))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 20, r := 12 }
    lowerValue := 350032
    upperValue := 12800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 12))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 20, r := 13 }
    lowerValue := 29459
    upperValue := 640000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 13))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 20, r := 14 }
    lowerValue := 3037
    upperValue := 32000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 14))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 20, r := 15 }
    lowerValue := 389
    upperValue := 1600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 15))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 20, r := 16 }
    lowerValue := 63
    upperValue := 80000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 16))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 20, r := 17 }
    lowerValue := 20
    upperValue := 4000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 19 18))))
    upperTrace := (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1)))) },
  { key := { q := 20, n := 20, r := 18 }
    lowerValue := 20
    upperValue := 200
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 20 19)))
    upperTrace := (.lengthenDummyN 17 (by decide : 0 < 20) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 20, r := 19 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 20 19)) },
  { key := { q := 20, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 20)) },
  { key := { q := 20, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 21)) },
  { key := { q := 20, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 22)) },
  { key := { q := 20, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 23)) },
  { key := { q := 20, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 24)) },
  { key := { q := 20, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 25)) },
  { key := { q := 20, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 26)) },
  { key := { q := 20, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 27)) },
  { key := { q := 20, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 28)) },
  { key := { q := 20, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 29)) },
  { key := { q := 20, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 30)) },
  { key := { q := 20, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 31)) },
  { key := { q := 20, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 32)) },
  { key := { q := 20, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 33)) },
  { key := { q := 20, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 34)) },
  { key := { q := 20, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 35)) },
  { key := { q := 20, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 36)) },
  { key := { q := 20, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 37)) },
  { key := { q := 20, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 38)) },
  { key := { q := 20, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 39)) },
  { key := { q := 20, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 40)) },
  { key := { q := 20, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 41)) },
  { key := { q := 20, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 42)) },
  { key := { q := 20, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 43)) },
  { key := { q := 20, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 44)) },
  { key := { q := 20, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 45)) },
  { key := { q := 20, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 46)) },
  { key := { q := 20, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 47)) },
  { key := { q := 20, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 20 48)) },
  { key := { q := 20, n := 21, r := 0 }
    lowerValue := 2097152000000000000000000000
    upperValue := 2097152000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 21 0)) },
  { key := { q := 20, n := 21, r := 1 }
    lowerValue := 5242880000000000000000000
    upperValue := 52428800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 1))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 21, r := 2 }
    lowerValue := 27518068494948169531558
    upperValue := 2621440000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 2))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 3 }
    lowerValue := 227984015097818382638
    upperValue := 131072000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 3))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 4 }
    lowerValue := 2657415206800883103
    upperValue := 6553600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 4))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 5 }
    lowerValue := 40979762797957537
    upperValue := 327680000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 5))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 6 }
    lowerValue := 805335335847604
    upperValue := 16384000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 6))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 7 }
    lowerValue := 19683532239643
    upperValue := 819200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 7))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 8 }
    lowerValue := 588669499572
    upperValue := 40960000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 8))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 9 }
    lowerValue := 21310327846
    upperValue := 2048000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 9))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 10 }
    lowerValue := 927559497
    upperValue := 102400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 10))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 11 }
    lowerValue := 48378422
    upperValue := 5120000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 11))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 12 }
    lowerValue := 3022232
    upperValue := 256000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 12))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 13 }
    lowerValue := 226689
    upperValue := 12800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 13))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 14 }
    lowerValue := 20529
    upperValue := 640000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 14))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 15 }
    lowerValue := 2265
    upperValue := 32000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 15))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 16 }
    lowerValue := 309
    upperValue := 1600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 16))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 17 }
    lowerValue := 53
    upperValue := 80000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 17))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 21, r := 18 }
    lowerValue := 20
    upperValue := 4000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 20 19))))
    upperTrace := (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1)))) },
  { key := { q := 20, n := 21, r := 19 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19)) },
  { key := { q := 20, n := 21, r := 20 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 20)) },
  { key := { q := 20, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 21)) },
  { key := { q := 20, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 22)) },
  { key := { q := 20, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 23)) },
  { key := { q := 20, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 24)) },
  { key := { q := 20, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 25)) },
  { key := { q := 20, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 26)) },
  { key := { q := 20, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 27)) },
  { key := { q := 20, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 28)) },
  { key := { q := 20, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 29)) },
  { key := { q := 20, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 30)) },
  { key := { q := 20, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 31)) },
  { key := { q := 20, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 32)) },
  { key := { q := 20, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 33)) },
  { key := { q := 20, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 34)) },
  { key := { q := 20, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 35)) },
  { key := { q := 20, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 36)) },
  { key := { q := 20, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 37)) },
  { key := { q := 20, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 38)) },
  { key := { q := 20, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 39)) },
  { key := { q := 20, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 40)) },
  { key := { q := 20, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 41)) },
  { key := { q := 20, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 42)) },
  { key := { q := 20, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 43)) },
  { key := { q := 20, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 44)) },
  { key := { q := 20, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 45)) },
  { key := { q := 20, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 46)) },
  { key := { q := 20, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 47)) },
  { key := { q := 20, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 21 48)) },
  { key := { q := 20, n := 22, r := 0 }
    lowerValue := 41943040000000000000000000000
    upperValue := 41943040000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 22 0)) },
  { key := { q := 20, n := 22, r := 1 }
    lowerValue := 100102720763723150357995227
    upperValue := 1048576000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 1))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 22, r := 2 }
    lowerValue := 500453883784751223004415
    upperValue := 52428800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 2))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 3 }
    lowerValue := 3939545416548084988077
    upperValue := 2621440000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 3))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 4 }
    lowerValue := 43511869821464929654
    upperValue := 131072000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 4))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 5 }
    lowerValue := 633872362267237026
    upperValue := 6553600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 5))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 6 }
    lowerValue := 11727713564139938
    upperValue := 327680000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 6))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 7 }
    lowerValue := 268829683830324
    upperValue := 16384000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 7))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 8 }
    lowerValue := 7507451214747
    upperValue := 819200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 8))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 9 }
    lowerValue := 252519580073
    upperValue := 40960000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 9))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 10 }
    lowerValue := 10153910800
    upperValue := 2048000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 10))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 11 }
    lowerValue := 485976730
    upperValue := 102400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 11))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 12 }
    lowerValue := 27638875
    upperValue := 5120000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 12))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 13 }
    lowerValue := 1869492
    upperValue := 256000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 13))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 14 }
    lowerValue := 150911
    upperValue := 12800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 14))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 15 }
    lowerValue := 14630
    upperValue := 640000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 15))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 16 }
    lowerValue := 1720
    upperValue := 32000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 16))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 17 }
    lowerValue := 249
    upperValue := 1600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 17))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 18 }
    lowerValue := 46
    upperValue := 80000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 18))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 22, r := 19 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 21 20))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 22, r := 20 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20)) },
  { key := { q := 20, n := 22, r := 21 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 21)) },
  { key := { q := 20, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 22)) },
  { key := { q := 20, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 23)) },
  { key := { q := 20, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 24)) },
  { key := { q := 20, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 25)) },
  { key := { q := 20, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 26)) },
  { key := { q := 20, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 27)) },
  { key := { q := 20, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 28)) },
  { key := { q := 20, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 29)) },
  { key := { q := 20, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 30)) },
  { key := { q := 20, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 31)) },
  { key := { q := 20, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 32)) },
  { key := { q := 20, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 33)) },
  { key := { q := 20, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 34)) },
  { key := { q := 20, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 35)) },
  { key := { q := 20, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 36)) },
  { key := { q := 20, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 37)) },
  { key := { q := 20, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 38)) },
  { key := { q := 20, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 39)) },
  { key := { q := 20, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 40)) },
  { key := { q := 20, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 41)) },
  { key := { q := 20, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 42)) },
  { key := { q := 20, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 43)) },
  { key := { q := 20, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 44)) },
  { key := { q := 20, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 45)) },
  { key := { q := 20, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 46)) },
  { key := { q := 20, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 47)) },
  { key := { q := 20, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 22 48)) },
  { key := { q := 20, n := 23, r := 0 }
    lowerValue := 838860800000000000000000000000
    upperValue := 838860800000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 23 0)) },
  { key := { q := 20, n := 23, r := 1 }
    lowerValue := 1915207305936073059360730594
    upperValue := 20971520000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 1))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 23, r := 2 }
    lowerValue := 9140804829412341589390985
    upperValue := 1048576000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 2))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 3 }
    lowerValue := 68539642750341938024653
    upperValue := 52428800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 3))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 4 }
    lowerValue := 719291829461494187113
    upperValue := 2621440000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 4))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 5 }
    lowerValue := 9929169627595959633
    upperValue := 131072000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 5))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 6 }
    lowerValue := 173546932941558663
    upperValue := 6553600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 6))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 7 }
    lowerValue := 3745373445857698
    upperValue := 327680000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 7))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 8 }
    lowerValue := 98098017907033
    upperValue := 16384000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 8))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 9 }
    lowerValue := 3081233043271
    upperValue := 819200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 9))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 10 }
    lowerValue := 115123874228
    upperValue := 40960000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 10))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 11 }
    lowerValue := 5090467919
    upperValue := 2048000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 11))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 12 }
    lowerValue := 265683829
    upperValue := 102400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 12))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 13 }
    lowerValue := 16362029
    upperValue := 5120000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 13))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 14 }
    lowerValue := 1191210
    upperValue := 256000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 14))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 15 }
    lowerValue := 102957
    upperValue := 12800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 15))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 16 }
    lowerValue := 10638
    upperValue := 640000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 16))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 17 }
    lowerValue := 1328
    upperValue := 32000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 17))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 18 }
    lowerValue := 203
    upperValue := 1600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 18))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 23, r := 19 }
    lowerValue := 39
    upperValue := 8000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 19))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 23, r := 20 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 22 21))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 23, r := 21 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21)) },
  { key := { q := 20, n := 23, r := 22 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 22)) },
  { key := { q := 20, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 23)) },
  { key := { q := 20, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 24)) },
  { key := { q := 20, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 25)) },
  { key := { q := 20, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 26)) },
  { key := { q := 20, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 27)) },
  { key := { q := 20, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 28)) },
  { key := { q := 20, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 29)) },
  { key := { q := 20, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 30)) },
  { key := { q := 20, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 31)) },
  { key := { q := 20, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 32)) },
  { key := { q := 20, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 33)) },
  { key := { q := 20, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 34)) },
  { key := { q := 20, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 35)) },
  { key := { q := 20, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 36)) },
  { key := { q := 20, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 37)) },
  { key := { q := 20, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 38)) },
  { key := { q := 20, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 39)) },
  { key := { q := 20, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 40)) },
  { key := { q := 20, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 41)) },
  { key := { q := 20, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 42)) },
  { key := { q := 20, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 43)) },
  { key := { q := 20, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 44)) },
  { key := { q := 20, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 45)) },
  { key := { q := 20, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 46)) },
  { key := { q := 20, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 47)) },
  { key := { q := 20, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 23 48)) },
  { key := { q := 20, n := 24, r := 0 }
    lowerValue := 16777216000000000000000000000000
    upperValue := 16777216000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 24 0)) },
  { key := { q := 20, n := 24, r := 1 }
    lowerValue := 36711632385120350109409190372
    upperValue := 419430400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 1))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 24, r := 2 }
    lowerValue := 167616276862517858391695723
    upperValue := 20971520000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 2))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 3 }
    lowerValue := 1199854477412066574509990
    upperValue := 1048576000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 3))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 4 }
    lowerValue := 11994232190482598129860
    upperValue := 52428800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 4))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 5 }
    lowerValue := 157321474501706021453
    upperValue := 2621440000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 5))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 6 }
    lowerValue := 2605631032092329854
    upperValue := 131072000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 6))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 7 }
    lowerValue := 53124159616434899
    upperValue := 6553600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 7))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 8 }
    lowerValue := 1310031260484049
    upperValue := 327680000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 8))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 9 }
    lowerValue := 38592960228049
    upperValue := 16384000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 9))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 10 }
    lowerValue := 1346560315556
    upperValue := 819200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 10))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 11 }
    lowerValue := 55327297989
    upperValue := 40960000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 11))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 12 }
    lowerValue := 2667969136
    upperValue := 2048000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 12))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 13 }
    lowerValue := 150794662
    upperValue := 102400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 13))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 14 }
    lowerValue := 9996463
    upperValue := 5120000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 14))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 15 }
    lowerValue := 779332
    upperValue := 256000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 15))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 16 }
    lowerValue := 71800
    upperValue := 12800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 16))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 17 }
    lowerValue := 7875
    upperValue := 640000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 17))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 18 }
    lowerValue := 1040
    upperValue := 32000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 18))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 24, r := 19 }
    lowerValue := 168
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 24, r := 20 }
    lowerValue := 34
    upperValue := 8000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 20))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 24, r := 21 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 23 22))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 24, r := 22 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22)) },
  { key := { q := 20, n := 24, r := 23 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 23)) },
  { key := { q := 20, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 24)) },
  { key := { q := 20, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 25)) },
  { key := { q := 20, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 26)) },
  { key := { q := 20, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 27)) },
  { key := { q := 20, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 28)) },
  { key := { q := 20, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 29)) },
  { key := { q := 20, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 30)) },
  { key := { q := 20, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 31)) },
  { key := { q := 20, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 32)) },
  { key := { q := 20, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 33)) },
  { key := { q := 20, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 34)) },
  { key := { q := 20, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 35)) },
  { key := { q := 20, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 36)) },
  { key := { q := 20, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 37)) },
  { key := { q := 20, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 38)) },
  { key := { q := 20, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 39)) },
  { key := { q := 20, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 40)) },
  { key := { q := 20, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 41)) },
  { key := { q := 20, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 42)) },
  { key := { q := 20, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 43)) },
  { key := { q := 20, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 44)) },
  { key := { q := 20, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 45)) },
  { key := { q := 20, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 46)) },
  { key := { q := 20, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 47)) },
  { key := { q := 20, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 24 48)) },
  { key := { q := 20, n := 25, r := 0 }
    lowerValue := 335544320000000000000000000000000
    upperValue := 335544320000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 25 0)) },
  { key := { q := 20, n := 25, r := 1 }
    lowerValue := 704925042016806722689075630253
    upperValue := 8388608000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 1))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 25, r := 2 }
    lowerValue := 3084727513422078399646980952
    upperValue := 419430400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 2))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 25, r := 3 }
    lowerValue := 21124040855990465156042919
    upperValue := 20971520000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 3))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 25, r := 4 }
    lowerValue := 201595303298692227357936
    upperValue := 1048576000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 4))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) }]

end CoveringCodes.Database
