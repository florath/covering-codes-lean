import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 186. Do not edit manually.

def precomputedTable_chunk_186 : Array AnyBoundEntry := #[
  { key := { q := 19, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 17 48)) },
  { key := { q := 19, n := 18, r := 0 }
    lowerValue := 104127350297911241532841
    upperValue := 104127350297911241532841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 18 0)) },
  { key := { q := 19, n := 18, r := 1 }
    lowerValue := 320391847070496127794
    upperValue := 2747783992407338492119
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 1))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 18, r := 2 }
    lowerValue := 2086845908529796211
    upperValue := 144620210126702025901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 2))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 18, r := 3 }
    lowerValue := 21653459369650831
    upperValue := 7611590006668527679
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 3))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 18, r := 4 }
    lowerValue := 319374399830564
    upperValue := 400610000350975141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 4))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 18, r := 5 }
    lowerValue := 6304690653117
    upperValue := 21084736860577639
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 5))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 18, r := 6 }
    lowerValue := 160710498691
    upperValue := 1109722992661981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 6))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 18, r := 7 }
    lowerValue := 5172434000
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 7))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 18, r := 8 }
    lowerValue := 207283518
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 8))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 18, r := 9 }
    lowerValue := 10262319
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 9))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 18, r := 10 }
    lowerValue := 625829
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 10))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 18, r := 11 }
    lowerValue := 47082
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 11))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 18, r := 12 }
    lowerValue := 4396
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 12))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 18, r := 13 }
    lowerValue := 516
    upperValue := 1241479
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 13))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 18, r := 14 }
    lowerValue := 78
    upperValue := 65341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 14))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 18, r := 15 }
    lowerValue := 19
    upperValue := 3439
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 17 16))))
    upperTrace := (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1)))) },
  { key := { q := 19, n := 18, r := 16 }
    lowerValue := 19
    upperValue := 181
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 18 17)))
    upperTrace := (.lengthenDummyN 15 (by decide : 0 < 19) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 18, r := 17 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 18 17)) },
  { key := { q := 19, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 18)) },
  { key := { q := 19, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 19)) },
  { key := { q := 19, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 20)) },
  { key := { q := 19, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 21)) },
  { key := { q := 19, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 22)) },
  { key := { q := 19, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 23)) },
  { key := { q := 19, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 24)) },
  { key := { q := 19, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 25)) },
  { key := { q := 19, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 26)) },
  { key := { q := 19, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 27)) },
  { key := { q := 19, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 28)) },
  { key := { q := 19, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 29)) },
  { key := { q := 19, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 30)) },
  { key := { q := 19, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 31)) },
  { key := { q := 19, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 32)) },
  { key := { q := 19, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 33)) },
  { key := { q := 19, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 34)) },
  { key := { q := 19, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 35)) },
  { key := { q := 19, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 36)) },
  { key := { q := 19, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 37)) },
  { key := { q := 19, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 38)) },
  { key := { q := 19, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 39)) },
  { key := { q := 19, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 40)) },
  { key := { q := 19, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 41)) },
  { key := { q := 19, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 42)) },
  { key := { q := 19, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 43)) },
  { key := { q := 19, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 44)) },
  { key := { q := 19, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 45)) },
  { key := { q := 19, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 46)) },
  { key := { q := 19, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 47)) },
  { key := { q := 19, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 18 48)) },
  { key := { q := 19, n := 19, r := 0 }
    lowerValue := 1978419655660313589123979
    upperValue := 1978419655660313589123979
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 19 0)) },
  { key := { q := 19, n := 19, r := 1 }
    lowerValue := 5767987334286628539721
    upperValue := 52207895855739431350261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 1))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 19, r := 2 }
    lowerValue := 35489257819439854865
    upperValue := 2747783992407338492119
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 2))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 19, r := 3 }
    lowerValue := 346668171671287682
    upperValue := 144620210126702025901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 3))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 19, r := 4 }
    lowerValue := 4795076967965178
    upperValue := 7611590006668527679
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 4))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 19, r := 5 }
    lowerValue := 88383501233971
    upperValue := 400610000350975141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 5))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 19, r := 6 }
    lowerValue := 2093113589323
    upperValue := 21084736860577639
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 6))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 19, r := 7 }
    lowerValue := 62226690296
    upperValue := 1109722992661981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 7))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 19, r := 8 }
    lowerValue := 2287972212
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 8))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 19, r := 9 }
    lowerValue := 103103162
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 9))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 19, r := 10 }
    lowerValue := 5668478
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 10))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 19, r := 11 }
    lowerValue := 379987
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 11))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 19, r := 12 }
    lowerValue := 31158
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 12))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 19, r := 13 }
    lowerValue := 3149
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 13))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 19, r := 14 }
    lowerValue := 397
    upperValue := 1241479
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 14))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 19, r := 15 }
    lowerValue := 64
    upperValue := 65341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 15))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 19, r := 16 }
    lowerValue := 19
    upperValue := 3439
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 18 17))))
    upperTrace := (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1)))) },
  { key := { q := 19, n := 19, r := 17 }
    lowerValue := 19
    upperValue := 181
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 19 18)))
    upperTrace := (.lengthenDummyN 16 (by decide : 0 < 19) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 19, r := 18 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 19 18)) },
  { key := { q := 19, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 19)) },
  { key := { q := 19, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 20)) },
  { key := { q := 19, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 21)) },
  { key := { q := 19, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 22)) },
  { key := { q := 19, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 23)) },
  { key := { q := 19, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 24)) },
  { key := { q := 19, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 25)) },
  { key := { q := 19, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 26)) },
  { key := { q := 19, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 27)) },
  { key := { q := 19, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 28)) },
  { key := { q := 19, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 29)) },
  { key := { q := 19, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 30)) },
  { key := { q := 19, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 31)) },
  { key := { q := 19, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 32)) },
  { key := { q := 19, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 33)) },
  { key := { q := 19, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 34)) },
  { key := { q := 19, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 35)) },
  { key := { q := 19, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 36)) },
  { key := { q := 19, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 37)) },
  { key := { q := 19, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 38)) },
  { key := { q := 19, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 39)) },
  { key := { q := 19, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 40)) },
  { key := { q := 19, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 41)) },
  { key := { q := 19, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 42)) },
  { key := { q := 19, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 43)) },
  { key := { q := 19, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 44)) },
  { key := { q := 19, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 45)) },
  { key := { q := 19, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 46)) },
  { key := { q := 19, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 47)) },
  { key := { q := 19, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 19 48)) },
  { key := { q := 19, n := 20, r := 0 }
    lowerValue := 37589973457545958193355601
    upperValue := 37589973457545958193355601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 20 0)) },
  { key := { q := 19, n := 20, r := 1 }
    lowerValue := 104127350297911241532841
    upperValue := 991950021259049195654959
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 1))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 20, r := 2 }
    lowerValue := 607063410757997419186
    upperValue := 52207895855739431350261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 2))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 20, r := 3 }
    lowerValue := 5601747713370029332
    upperValue := 2747783992407338492119
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 3))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 20, r := 4 }
    lowerValue := 72945039152828095
    upperValue := 144620210126702025901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 4))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 20, r := 5 }
    lowerValue := 1260935384009052
    upperValue := 7611590006668527679
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 5))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 20, r := 6 }
    lowerValue := 27883151721027
    upperValue := 400610000350975141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 6))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 20, r := 7 }
    lowerValue := 770169208325
    upperValue := 21084736860577639
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 7))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 20, r := 8 }
    lowerValue := 26158793671
    upperValue := 1109722992661981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 8))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 20, r := 9 }
    lowerValue := 1081619459
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 9))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 20, r := 10 }
    lowerValue := 54131572
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 10))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 20, r := 11 }
    lowerValue := 3271840
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 11))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 20, r := 12 }
    lowerValue := 239100
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 12))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 20, r := 13 }
    lowerValue := 21221
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 13))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 20, r := 14 }
    lowerValue := 2307
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 14))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 20, r := 15 }
    lowerValue := 311
    upperValue := 1241479
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 15))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 20, r := 16 }
    lowerValue := 53
    upperValue := 65341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 16))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 20, r := 17 }
    lowerValue := 19
    upperValue := 3439
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 19 18))))
    upperTrace := (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1)))) },
  { key := { q := 19, n := 20, r := 18 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 20 19)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18)) },
  { key := { q := 19, n := 20, r := 19 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 19)) },
  { key := { q := 19, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 20)) },
  { key := { q := 19, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 21)) },
  { key := { q := 19, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 22)) },
  { key := { q := 19, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 23)) },
  { key := { q := 19, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 24)) },
  { key := { q := 19, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 25)) },
  { key := { q := 19, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 26)) },
  { key := { q := 19, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 27)) },
  { key := { q := 19, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 28)) },
  { key := { q := 19, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 29)) },
  { key := { q := 19, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 30)) },
  { key := { q := 19, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 31)) },
  { key := { q := 19, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 32)) },
  { key := { q := 19, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 33)) },
  { key := { q := 19, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 34)) },
  { key := { q := 19, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 35)) },
  { key := { q := 19, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 36)) },
  { key := { q := 19, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 37)) },
  { key := { q := 19, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 38)) },
  { key := { q := 19, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 39)) },
  { key := { q := 19, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 40)) },
  { key := { q := 19, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 41)) },
  { key := { q := 19, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 42)) },
  { key := { q := 19, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 43)) },
  { key := { q := 19, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 44)) },
  { key := { q := 19, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 45)) },
  { key := { q := 19, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 46)) },
  { key := { q := 19, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 47)) },
  { key := { q := 19, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 20 48)) },
  { key := { q := 19, n := 21, r := 0 }
    lowerValue := 714209495693373205673756419
    upperValue := 714209495693373205673756419
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 21 0)) },
  { key := { q := 19, n := 21, r := 1 }
    lowerValue := 1884457772278029566421521
    upperValue := 18847050403921934717444221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 1))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 21, r := 2 }
    lowerValue := 10438759638307680697961
    upperValue := 991950021259049195654959
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 2))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 3 }
    lowerValue := 91273023952316447837
    upperValue := 52207895855739431350261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 3))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 4 }
    lowerValue := 1122783176184278217
    upperValue := 2747783992407338492119
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 4))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 5 }
    lowerValue := 18272337495463471
    upperValue := 144620210126702025901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 5))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 6 }
    lowerValue := 378946012018112
    upperValue := 7611590006668527679
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 6))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 7 }
    lowerValue := 9773827978693
    upperValue := 400610000350975141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 7))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 8 }
    lowerValue := 308443811726
    upperValue := 21084736860577639
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 8))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 9 }
    lowerValue := 11781888434
    upperValue := 1109722992661981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 9))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 10 }
    lowerValue := 541075921
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 10))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 11 }
    lowerValue := 29773025
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 11))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 12 }
    lowerValue := 1962029
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 12))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 13 }
    lowerValue := 155220
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 13))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 14 }
    lowerValue := 14823
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 14))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 15 }
    lowerValue := 1724
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 15))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 16 }
    lowerValue := 248
    upperValue := 1241479
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 16))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 17 }
    lowerValue := 45
    upperValue := 65341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 17))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 21, r := 18 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 20 19))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 21, r := 19 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19)) },
  { key := { q := 19, n := 21, r := 20 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 20)) },
  { key := { q := 19, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 21)) },
  { key := { q := 19, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 22)) },
  { key := { q := 19, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 23)) },
  { key := { q := 19, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 24)) },
  { key := { q := 19, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 25)) },
  { key := { q := 19, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 26)) },
  { key := { q := 19, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 27)) },
  { key := { q := 19, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 28)) },
  { key := { q := 19, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 29)) },
  { key := { q := 19, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 30)) },
  { key := { q := 19, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 31)) },
  { key := { q := 19, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 32)) },
  { key := { q := 19, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 33)) },
  { key := { q := 19, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 34)) },
  { key := { q := 19, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 35)) },
  { key := { q := 19, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 36)) },
  { key := { q := 19, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 37)) },
  { key := { q := 19, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 38)) },
  { key := { q := 19, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 39)) },
  { key := { q := 19, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 40)) },
  { key := { q := 19, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 41)) },
  { key := { q := 19, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 42)) },
  { key := { q := 19, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 43)) },
  { key := { q := 19, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 44)) },
  { key := { q := 19, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 45)) },
  { key := { q := 19, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 46)) },
  { key := { q := 19, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 47)) },
  { key := { q := 19, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 21 48)) },
  { key := { q := 19, n := 22, r := 0 }
    lowerValue := 13569980418174090907801371961
    upperValue := 13569980418174090907801371961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 22 0)) },
  { key := { q := 19, n := 22, r := 1 }
    lowerValue := 34181310877012823445343507
    upperValue := 358093957674516759631440199
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 1))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 22, r := 2 }
    lowerValue := 180353536212624644911703
    upperValue := 18847050403921934717444221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 2))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 3 }
    lowerValue := 1498365698944891852821
    upperValue := 991950021259049195654959
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 3))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 4 }
    lowerValue := 17465572180833156525
    upperValue := 52207895855739431350261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 4))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 5 }
    lowerValue := 268516601077135402
    upperValue := 2747783992407338492119
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 5))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 6 }
    lowerValue := 5242834324019462
    upperValue := 144620210126702025901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 6))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 7 }
    lowerValue := 126823735541143
    upperValue := 7611590006668527679
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 7))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 8 }
    lowerValue := 3737409882577
    upperValue := 400610000350975141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 8))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 9 }
    lowerValue := 132650527050
    upperValue := 21084736860577639
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 9))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 10 }
    lowerValue := 5628065203
    upperValue := 1109722992661981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 10))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 11 }
    lowerValue := 284199261
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 11))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 12 }
    lowerValue := 17051817
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 12))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 13 }
    lowerValue := 1216650
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 13))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 14 }
    lowerValue := 103582
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 14))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 15 }
    lowerValue := 10589
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 15))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 16 }
    lowerValue := 1313
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 16))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 17 }
    lowerValue := 200
    upperValue := 1241479
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 17))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 22, r := 18 }
    lowerValue := 39
    upperValue := 6859
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 18))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 22, r := 19 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 21 20))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 22, r := 20 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20)) },
  { key := { q := 19, n := 22, r := 21 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 21)) },
  { key := { q := 19, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 22)) },
  { key := { q := 19, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 23)) },
  { key := { q := 19, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 24)) },
  { key := { q := 19, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 25)) },
  { key := { q := 19, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 26)) },
  { key := { q := 19, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 27)) },
  { key := { q := 19, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 28)) },
  { key := { q := 19, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 29)) },
  { key := { q := 19, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 30)) },
  { key := { q := 19, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 31)) },
  { key := { q := 19, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 32)) },
  { key := { q := 19, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 33)) },
  { key := { q := 19, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 34)) },
  { key := { q := 19, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 35)) },
  { key := { q := 19, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 36)) },
  { key := { q := 19, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 37)) },
  { key := { q := 19, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 38)) },
  { key := { q := 19, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 39)) },
  { key := { q := 19, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 40)) },
  { key := { q := 19, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 41)) },
  { key := { q := 19, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 42)) },
  { key := { q := 19, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 43)) },
  { key := { q := 19, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 44)) },
  { key := { q := 19, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 45)) },
  { key := { q := 19, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 46)) },
  { key := { q := 19, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 47)) },
  { key := { q := 19, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 22 48)) },
  { key := { q := 19, n := 23, r := 0 }
    lowerValue := 257829627945307727248226067259
    upperValue := 257829627945307727248226067259
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 23 0)) },
  { key := { q := 19, n := 23, r := 1 }
    lowerValue := 621276211916404162043918235
    upperValue := 6803785195815818432997363781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 1))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 23, r := 2 }
    lowerValue := 3129494070002642737910424
    upperValue := 358093957674516759631440199
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 2))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 23, r := 3 }
    lowerValue := 24765451913747725067473
    upperValue := 18847050403921934717444221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 3))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) }]

end CoveringCodes.Database
