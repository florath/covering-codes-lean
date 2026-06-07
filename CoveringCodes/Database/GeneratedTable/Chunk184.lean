import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 184. Do not edit manually.

def precomputedTable_chunk_184 : Array AnyBoundEntry := #[
  { key := { q := 19, n := 7, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 7 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 7 38)) },
  { key := { q := 19, n := 7, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 7 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 7 39)) },
  { key := { q := 19, n := 7, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 7 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 7 40)) },
  { key := { q := 19, n := 7, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 7 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 7 41)) },
  { key := { q := 19, n := 7, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 7 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 7 42)) },
  { key := { q := 19, n := 7, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 7 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 7 43)) },
  { key := { q := 19, n := 7, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 7 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 7 44)) },
  { key := { q := 19, n := 7, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 7 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 7 45)) },
  { key := { q := 19, n := 7, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 7 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 7 46)) },
  { key := { q := 19, n := 7, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 7 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 7 47)) },
  { key := { q := 19, n := 7, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 7 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 7 48)) },
  { key := { q := 19, n := 8, r := 0 }
    lowerValue := 16983563041
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 8 0)) },
  { key := { q := 19, n := 8, r := 1 }
    lowerValue := 117128021
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 1))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 8, r := 2 }
    lowerValue := 1842635
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 2))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 8, r := 3 }
    lowerValue := 50576
    upperValue := 1241479
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 8, r := 4 }
    lowerValue := 2211
    upperValue := 65341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 4))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 8, r := 5 }
    lowerValue := 150
    upperValue := 3439
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1)))) },
  { key := { q := 19, n := 8, r := 6 }
    lowerValue := 19
    upperValue := 181
    lowerTrace := (.radiusBack (by decide : 6 ≤ 7) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 8 7)))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 19) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 8, r := 7 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 8 7))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 8 7)) },
  { key := { q := 19, n := 8, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 8)) },
  { key := { q := 19, n := 8, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 9)) },
  { key := { q := 19, n := 8, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 10)) },
  { key := { q := 19, n := 8, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 11)) },
  { key := { q := 19, n := 8, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 12)) },
  { key := { q := 19, n := 8, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 13)) },
  { key := { q := 19, n := 8, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 14)) },
  { key := { q := 19, n := 8, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 15)) },
  { key := { q := 19, n := 8, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 16)) },
  { key := { q := 19, n := 8, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 17)) },
  { key := { q := 19, n := 8, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 18)) },
  { key := { q := 19, n := 8, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 19)) },
  { key := { q := 19, n := 8, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 20)) },
  { key := { q := 19, n := 8, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 21)) },
  { key := { q := 19, n := 8, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 22)) },
  { key := { q := 19, n := 8, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 23)) },
  { key := { q := 19, n := 8, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 24)) },
  { key := { q := 19, n := 8, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 25)) },
  { key := { q := 19, n := 8, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 26)) },
  { key := { q := 19, n := 8, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 27)) },
  { key := { q := 19, n := 8, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 28)) },
  { key := { q := 19, n := 8, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 29)) },
  { key := { q := 19, n := 8, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 30)) },
  { key := { q := 19, n := 8, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 31)) },
  { key := { q := 19, n := 8, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 32)) },
  { key := { q := 19, n := 8, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 33)) },
  { key := { q := 19, n := 8, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 34)) },
  { key := { q := 19, n := 8, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 35)) },
  { key := { q := 19, n := 8, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 36)) },
  { key := { q := 19, n := 8, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 37)) },
  { key := { q := 19, n := 8, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 38)) },
  { key := { q := 19, n := 8, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 39)) },
  { key := { q := 19, n := 8, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 40)) },
  { key := { q := 19, n := 8, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 41)) },
  { key := { q := 19, n := 8, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 42)) },
  { key := { q := 19, n := 8, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 43)) },
  { key := { q := 19, n := 8, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 44)) },
  { key := { q := 19, n := 8, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 45)) },
  { key := { q := 19, n := 8, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 46)) },
  { key := { q := 19, n := 8, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 47)) },
  { key := { q := 19, n := 8, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 8 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 8 48)) },
  { key := { q := 19, n := 9, r := 0 }
    lowerValue := 322687697779
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 9 0)) },
  { key := { q := 19, n := 9, r := 1 }
    lowerValue := 1979679128
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 1))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 9, r := 2 }
    lowerValue := 27283986
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 2))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 9, r := 3 }
    lowerValue := 643170
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 3))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 9, r := 4 }
    lowerValue := 23505
    upperValue := 1241479
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 4))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 9, r := 5 }
    lowerValue := 1282
    upperValue := 65341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 9, r := 6 }
    lowerValue := 104
    upperValue := 3439
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 6))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1)))) },
  { key := { q := 19, n := 9, r := 7 }
    lowerValue := 19
    upperValue := 181
    lowerTrace := (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 9 8)))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 19) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 9, r := 8 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 9 8))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 9 8)) },
  { key := { q := 19, n := 9, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 9)) },
  { key := { q := 19, n := 9, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 10)) },
  { key := { q := 19, n := 9, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 11)) },
  { key := { q := 19, n := 9, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 12)) },
  { key := { q := 19, n := 9, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 13)) },
  { key := { q := 19, n := 9, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 14)) },
  { key := { q := 19, n := 9, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 15)) },
  { key := { q := 19, n := 9, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 16)) },
  { key := { q := 19, n := 9, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 17)) },
  { key := { q := 19, n := 9, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 18)) },
  { key := { q := 19, n := 9, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 19)) },
  { key := { q := 19, n := 9, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 20)) },
  { key := { q := 19, n := 9, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 21)) },
  { key := { q := 19, n := 9, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 22)) },
  { key := { q := 19, n := 9, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 23)) },
  { key := { q := 19, n := 9, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 24)) },
  { key := { q := 19, n := 9, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 25)) },
  { key := { q := 19, n := 9, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 26)) },
  { key := { q := 19, n := 9, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 27)) },
  { key := { q := 19, n := 9, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 28)) },
  { key := { q := 19, n := 9, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 29)) },
  { key := { q := 19, n := 9, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 30)) },
  { key := { q := 19, n := 9, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 31)) },
  { key := { q := 19, n := 9, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 32)) },
  { key := { q := 19, n := 9, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 33)) },
  { key := { q := 19, n := 9, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 34)) },
  { key := { q := 19, n := 9, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 35)) },
  { key := { q := 19, n := 9, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 36)) },
  { key := { q := 19, n := 9, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 37)) },
  { key := { q := 19, n := 9, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 38)) },
  { key := { q := 19, n := 9, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 39)) },
  { key := { q := 19, n := 9, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 40)) },
  { key := { q := 19, n := 9, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 41)) },
  { key := { q := 19, n := 9, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 42)) },
  { key := { q := 19, n := 9, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 43)) },
  { key := { q := 19, n := 9, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 44)) },
  { key := { q := 19, n := 9, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 45)) },
  { key := { q := 19, n := 9, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 46)) },
  { key := { q := 19, n := 9, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 47)) },
  { key := { q := 19, n := 9, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 9 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 9 48)) },
  { key := { q := 19, n := 10, r := 0 }
    lowerValue := 6131066257801
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 10 0)) },
  { key := { q := 19, n := 10, r := 1 }
    lowerValue := 33873294242
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 1))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 10, r := 2 }
    lowerValue := 415355753
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 2))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 10, r := 3 }
    lowerValue := 8579706
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 3))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 10, r := 4 }
    lowerValue := 269385
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 4))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 10, r := 5 }
    lowerValue := 12289
    upperValue := 1241479
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 5))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 10, r := 6 }
    lowerValue := 803
    upperValue := 65341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 6))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 10, r := 7 }
    lowerValue := 76
    upperValue := 3439
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 7))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1)))) },
  { key := { q := 19, n := 10, r := 8 }
    lowerValue := 19
    upperValue := 181
    lowerTrace := (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 10 9)))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 19) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 10, r := 9 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 10 9))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 10 9)) },
  { key := { q := 19, n := 10, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 10)) },
  { key := { q := 19, n := 10, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 11)) },
  { key := { q := 19, n := 10, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 12)) },
  { key := { q := 19, n := 10, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 13)) },
  { key := { q := 19, n := 10, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 14)) },
  { key := { q := 19, n := 10, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 15)) },
  { key := { q := 19, n := 10, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 16)) },
  { key := { q := 19, n := 10, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 17)) },
  { key := { q := 19, n := 10, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 18)) },
  { key := { q := 19, n := 10, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 19)) },
  { key := { q := 19, n := 10, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 20)) },
  { key := { q := 19, n := 10, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 21)) },
  { key := { q := 19, n := 10, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 22)) },
  { key := { q := 19, n := 10, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 23)) },
  { key := { q := 19, n := 10, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 24)) },
  { key := { q := 19, n := 10, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 25)) },
  { key := { q := 19, n := 10, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 26)) },
  { key := { q := 19, n := 10, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 27)) },
  { key := { q := 19, n := 10, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 28)) },
  { key := { q := 19, n := 10, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 29)) },
  { key := { q := 19, n := 10, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 30)) },
  { key := { q := 19, n := 10, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 31)) },
  { key := { q := 19, n := 10, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 32)) },
  { key := { q := 19, n := 10, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 33)) },
  { key := { q := 19, n := 10, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 34)) },
  { key := { q := 19, n := 10, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 35)) },
  { key := { q := 19, n := 10, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 36)) },
  { key := { q := 19, n := 10, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 37)) },
  { key := { q := 19, n := 10, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 38)) },
  { key := { q := 19, n := 10, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 39)) },
  { key := { q := 19, n := 10, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 40)) },
  { key := { q := 19, n := 10, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 41)) },
  { key := { q := 19, n := 10, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 42)) },
  { key := { q := 19, n := 10, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 43)) },
  { key := { q := 19, n := 10, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 44)) },
  { key := { q := 19, n := 10, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 45)) },
  { key := { q := 19, n := 10, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 46)) },
  { key := { q := 19, n := 10, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 47)) },
  { key := { q := 19, n := 10, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 10 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 10 48)) },
  { key := { q := 19, n := 11, r := 0 }
    lowerValue := 116490258898219
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 11 0)) },
  { key := { q := 19, n := 11, r := 1 }
    lowerValue := 585378185419
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 1))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 11, r := 2 }
    lowerValue := 6464857035
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 2))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 11, r := 3 }
    lowerValue := 118831356
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 3))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 11, r := 4 }
    lowerValue := 3270143
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 4))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 11, r := 5 }
    lowerValue := 128209
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 5))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 11, r := 6 }
    lowerValue := 7009
    upperValue := 1241479
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 6))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 11, r := 7 }
    lowerValue := 533
    upperValue := 65341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 11, r := 8 }
    lowerValue := 58
    upperValue := 3439
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 8))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1)))) },
  { key := { q := 19, n := 11, r := 9 }
    lowerValue := 19
    upperValue := 181
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 11 10)))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 19) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 11, r := 10 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 11 10)) },
  { key := { q := 19, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 11)) },
  { key := { q := 19, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 12)) },
  { key := { q := 19, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 13)) },
  { key := { q := 19, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 14)) },
  { key := { q := 19, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 15)) },
  { key := { q := 19, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 16)) },
  { key := { q := 19, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 17)) },
  { key := { q := 19, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 18)) },
  { key := { q := 19, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 19)) },
  { key := { q := 19, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 20)) },
  { key := { q := 19, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 21)) },
  { key := { q := 19, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 22)) },
  { key := { q := 19, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 23)) },
  { key := { q := 19, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 24)) },
  { key := { q := 19, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 25)) },
  { key := { q := 19, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 26)) },
  { key := { q := 19, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 27)) },
  { key := { q := 19, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 28)) },
  { key := { q := 19, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 29)) },
  { key := { q := 19, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 30)) },
  { key := { q := 19, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 31)) },
  { key := { q := 19, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 32)) },
  { key := { q := 19, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 33)) },
  { key := { q := 19, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 34)) },
  { key := { q := 19, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 35)) },
  { key := { q := 19, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 36)) },
  { key := { q := 19, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 37)) },
  { key := { q := 19, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 38)) },
  { key := { q := 19, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 39)) },
  { key := { q := 19, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 40)) },
  { key := { q := 19, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 41)) },
  { key := { q := 19, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 42)) },
  { key := { q := 19, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 43)) },
  { key := { q := 19, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 44)) },
  { key := { q := 19, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 45)) },
  { key := { q := 19, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 46)) },
  { key := { q := 19, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 47)) },
  { key := { q := 19, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 11 48)) },
  { key := { q := 19, n := 12, r := 0 }
    lowerValue := 2213314919066161
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 12 0)) },
  { key := { q := 19, n := 12, r := 1 }
    lowerValue := 10199607921964
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 1))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 12, r := 2 }
    lowerValue := 102463539608
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 2))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 12, r := 3 }
    lowerValue := 1696493457
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 3))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 12, r := 4 }
    lowerValue := 41550741
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 12, r := 5 }
    lowerValue := 1428125
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 5))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 12, r := 6 }
    lowerValue := 67117
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 12, r := 7 }
    lowerValue := 4275
    upperValue := 1241479
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 12, r := 8 }
    lowerValue := 371
    upperValue := 65341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 12, r := 9 }
    lowerValue := 45
    upperValue := 3439
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 9))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1)))) },
  { key := { q := 19, n := 12, r := 10 }
    lowerValue := 19
    upperValue := 181
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 12 11)))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 19) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 12, r := 11 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 12 11)) },
  { key := { q := 19, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 12)) },
  { key := { q := 19, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 13)) },
  { key := { q := 19, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 14)) },
  { key := { q := 19, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 15)) },
  { key := { q := 19, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 16)) },
  { key := { q := 19, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 17)) },
  { key := { q := 19, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 18)) },
  { key := { q := 19, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 19)) },
  { key := { q := 19, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 20)) },
  { key := { q := 19, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 21)) },
  { key := { q := 19, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 22)) },
  { key := { q := 19, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 23)) },
  { key := { q := 19, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 24)) },
  { key := { q := 19, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 25)) },
  { key := { q := 19, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 26)) },
  { key := { q := 19, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 27)) },
  { key := { q := 19, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 28)) },
  { key := { q := 19, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 29)) },
  { key := { q := 19, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 30)) },
  { key := { q := 19, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 31)) },
  { key := { q := 19, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 32)) },
  { key := { q := 19, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 33)) },
  { key := { q := 19, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 34)) },
  { key := { q := 19, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 35)) },
  { key := { q := 19, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 36)) },
  { key := { q := 19, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 37)) },
  { key := { q := 19, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 38)) },
  { key := { q := 19, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 39)) },
  { key := { q := 19, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 40)) },
  { key := { q := 19, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 41)) },
  { key := { q := 19, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 12 42)) }]

end CoveringCodes.Database
