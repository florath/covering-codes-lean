import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 187. Do not edit manually.

def precomputedTable_chunk_187 : Array AnyBoundEntry := #[
  { key := { q := 19, n := 23, r := 4 }
    lowerValue := 274294617993742615341
    upperValue := 991950021259049195654959
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 4))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 23, r := 5 }
    lowerValue := 3995992688533138374
    upperValue := 52207895855739431350261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 5))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 23, r := 6 }
    lowerValue := 73708695495341154
    upperValue := 2747783992407338492119
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 6))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 23, r := 7 }
    lowerValue := 1678709670250157
    upperValue := 144620210126702025901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 7))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 23, r := 8 }
    lowerValue := 46398698102954
    upperValue := 7611590006668527679
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 8))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 23, r := 9 }
    lowerValue := 1537866914191
    upperValue := 400610000350975141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 9))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 23, r := 10 }
    lowerValue := 60630069926
    upperValue := 21084736860577639
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 10))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 23, r := 11 }
    lowerValue := 2828679456
    upperValue := 1109722992661981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 11))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 23, r := 12 }
    lowerValue := 155762445
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 12))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 23, r := 13 }
    lowerValue := 10119649
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 13))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 23, r := 14 }
    lowerValue := 777130
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 14))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 23, r := 15 }
    lowerValue := 70838
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 15))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 23, r := 16 }
    lowerValue := 7717
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 16))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 23, r := 17 }
    lowerValue := 1015
    upperValue := 23588101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 17))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 23, r := 18 }
    lowerValue := 164
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 23, r := 19 }
    lowerValue := 33
    upperValue := 6859
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 19))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 23, r := 20 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 22 21))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 23, r := 21 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21)) },
  { key := { q := 19, n := 23, r := 22 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 22)) },
  { key := { q := 19, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 23)) },
  { key := { q := 19, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 24)) },
  { key := { q := 19, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 25)) },
  { key := { q := 19, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 26)) },
  { key := { q := 19, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 27)) },
  { key := { q := 19, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 28)) },
  { key := { q := 19, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 29)) },
  { key := { q := 19, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 30)) },
  { key := { q := 19, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 31)) },
  { key := { q := 19, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 32)) },
  { key := { q := 19, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 33)) },
  { key := { q := 19, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 34)) },
  { key := { q := 19, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 35)) },
  { key := { q := 19, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 36)) },
  { key := { q := 19, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 37)) },
  { key := { q := 19, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 38)) },
  { key := { q := 19, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 39)) },
  { key := { q := 19, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 40)) },
  { key := { q := 19, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 41)) },
  { key := { q := 19, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 42)) },
  { key := { q := 19, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 43)) },
  { key := { q := 19, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 44)) },
  { key := { q := 19, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 45)) },
  { key := { q := 19, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 46)) },
  { key := { q := 19, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 47)) },
  { key := { q := 19, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 23 48)) },
  { key := { q := 19, n := 24, r := 0 }
    lowerValue := 4898762930960846817716295277921
    upperValue := 4898762930960846817716295277921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 24 0)) },
  { key := { q := 19, n := 24, r := 1 }
    lowerValue := 11313540256260616207196986786
    upperValue := 129271918720500550226949911839
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 1))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 24, r := 2 }
    lowerValue := 54517321198803062841139759
    upperValue := 6803785195815818432997363781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 2))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 3 }
    lowerValue := 411874475281151926963471
    upperValue := 358093957674516759631440199
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 3))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 4 }
    lowerValue := 4345306457492473057818
    upperValue := 18847050403921934717444221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 4))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 5 }
    lowerValue := 60150646740009921540
    upperValue := 991950021259049195654959
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 5))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 6 }
    lowerValue := 1051383136650742300
    upperValue := 52207895855739431350261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 6))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 7 }
    lowerValue := 22621735636496110
    upperValue := 2747783992407338492119
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 7))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 8 }
    lowerValue := 588693672530868
    upperValue := 144620210126702025901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 8))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 9 }
    lowerValue := 18301024482698
    upperValue := 7611590006668527679
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 9))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 10 }
    lowerValue := 673806893886
    upperValue := 400610000350975141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 10))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 11 }
    lowerValue := 29212601647
    upperValue := 21084736860577639
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 11))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 12 }
    lowerValue := 1486299510
    upperValue := 1109722992661981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 12))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 13 }
    lowerValue := 88628394
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 13))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 14 }
    lowerValue := 6198000
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 14))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 15 }
    lowerValue := 509670
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 15))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 16 }
    lowerValue := 49520
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 16))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 17 }
    lowerValue := 5727
    upperValue := 448173919
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 17))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 24, r := 18 }
    lowerValue := 797
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 24, r := 19 }
    lowerValue := 136
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 24, r := 20 }
    lowerValue := 29
    upperValue := 6859
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 20))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 24, r := 21 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 23 22))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 24, r := 22 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22)) },
  { key := { q := 19, n := 24, r := 23 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 23)) },
  { key := { q := 19, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 24)) },
  { key := { q := 19, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 25)) },
  { key := { q := 19, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 26)) },
  { key := { q := 19, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 27)) },
  { key := { q := 19, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 28)) },
  { key := { q := 19, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 29)) },
  { key := { q := 19, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 30)) },
  { key := { q := 19, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 31)) },
  { key := { q := 19, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 32)) },
  { key := { q := 19, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 33)) },
  { key := { q := 19, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 34)) },
  { key := { q := 19, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 35)) },
  { key := { q := 19, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 36)) },
  { key := { q := 19, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 37)) },
  { key := { q := 19, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 38)) },
  { key := { q := 19, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 39)) },
  { key := { q := 19, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 40)) },
  { key := { q := 19, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 41)) },
  { key := { q := 19, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 42)) },
  { key := { q := 19, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 43)) },
  { key := { q := 19, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 44)) },
  { key := { q := 19, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 45)) },
  { key := { q := 19, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 46)) },
  { key := { q := 19, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 47)) },
  { key := { q := 19, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 24 48)) },
  { key := { q := 19, n := 25, r := 0 }
    lowerValue := 93076495688256089536609610280499
    upperValue := 93076495688256089536609610280499
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 25 0)) },
  { key := { q := 19, n := 25, r := 1 }
    lowerValue := 206378039220080021145475854281
    upperValue := 2456166455689510454312048324941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 1))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 25, r := 2 }
    lowerValue := 953154557436750156543298177
    upperValue := 129271918720500550226949911839
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 2))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 3 }
    lowerValue := 6888814047511669314455754
    upperValue := 6803785195815818432997363781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 3))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 4 }
    lowerValue := 69384594898595192056950
    upperValue := 358093957674516759631440199
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 4))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 5 }
    lowerValue := 914898732820891574487
    upperValue := 18847050403921934717444221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 5))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 6 }
    lowerValue := 15195420588457873756
    upperValue := 991950021259049195654959
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 6))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 7 }
    lowerValue := 309821784073818926
    upperValue := 52207895855739431350261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 7))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 8 }
    lowerValue := 7617150067555856
    upperValue := 2747783992407338492119
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 8))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 9 }
    lowerValue := 222957791335897
    upperValue := 144620210126702025901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 9))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 10 }
    lowerValue := 7699613821455
    upperValue := 7611590006668527679
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 10))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 11 }
    lowerValue := 311752985802
    upperValue := 400610000350975141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 11))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 12 }
    lowerValue := 14740287683
    upperValue := 21084736860577639
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 12))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 13 }
    lowerValue := 812185168
    upperValue := 1109722992661981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 13))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 14 }
    lowerValue := 52135132
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 14))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 15 }
    lowerValue := 3904471
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 15))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 16 }
    lowerValue := 342274
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 16))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 17 }
    lowerValue := 35308
    upperValue := 8515304461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 17))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 25, r := 18 }
    lowerValue := 4320
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 25, r := 19 }
    lowerValue := 634
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 25, r := 20 }
    lowerValue := 113
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 25, r := 21 }
    lowerValue := 25
    upperValue := 6859
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 21))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 25, r := 22 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 24 23))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 25, r := 23 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23)) },
  { key := { q := 19, n := 25, r := 24 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 24)) },
  { key := { q := 19, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 25)) },
  { key := { q := 19, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 26)) },
  { key := { q := 19, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 27)) },
  { key := { q := 19, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 28)) },
  { key := { q := 19, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 29)) },
  { key := { q := 19, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 30)) },
  { key := { q := 19, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 31)) },
  { key := { q := 19, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 32)) },
  { key := { q := 19, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 33)) },
  { key := { q := 19, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 34)) },
  { key := { q := 19, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 35)) },
  { key := { q := 19, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 36)) },
  { key := { q := 19, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 37)) },
  { key := { q := 19, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 38)) },
  { key := { q := 19, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 39)) },
  { key := { q := 19, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 40)) },
  { key := { q := 19, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 41)) },
  { key := { q := 19, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 42)) },
  { key := { q := 19, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 43)) },
  { key := { q := 19, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 44)) },
  { key := { q := 19, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 45)) },
  { key := { q := 19, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 46)) },
  { key := { q := 19, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 47)) },
  { key := { q := 19, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 25 48)) },
  { key := { q := 19, n := 26, r := 0 }
    lowerValue := 1768453418076865701195582595329481
    upperValue := 1768453418076865701195582595329481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 26 0)) },
  { key := { q := 19, n := 26, r := 1 }
    lowerValue := 3770689590782229640075869073198
    upperValue := 46667162658100698631928918173879
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 1))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 26, r := 2 }
    lowerValue := 16719959705366087428221715204
    upperValue := 2456166455689510454312048324941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 2))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 3 }
    lowerValue := 115820093555554779186177050
    upperValue := 129271918720500550226949911839
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 3))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 4 }
    lowerValue := 1115982753067396433812670
    upperValue := 6803785195815818432997363781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 4))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 5 }
    lowerValue := 14048674861596194534540
    upperValue := 358093957674516759631440199
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 5))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 6 }
    lowerValue := 222264831794659675048
    upperValue := 18847050403921934717444221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 6))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 7 }
    lowerValue := 4306213078840635850
    upperValue := 991950021259049195654959
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 7))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 8 }
    lowerValue := 100327059625834033
    upperValue := 52207895855739431350261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 8))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 9 }
    lowerValue := 2774434501927359
    upperValue := 2747783992407338492119
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 9))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 10 }
    lowerValue := 90214391239232
    upperValue := 144620210126702025901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 10))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 11 }
    lowerValue := 3426233960551
    upperValue := 7611590006668527679
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 11))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 12 }
    lowerValue := 151298819933
    upperValue := 400610000350975141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 12))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 13 }
    lowerValue := 7747546189
    upperValue := 21084736860577639
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 13))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 14 }
    lowerValue := 459565962
    upperValue := 1109722992661981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 14))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 15 }
    lowerValue := 31594353
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 15))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 16 }
    lowerValue := 2522657
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 16))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 17 }
    lowerValue := 234823
    upperValue := 161790784759
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 17))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 26, r := 18 }
    lowerValue := 25630
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 26, r := 19 }
    lowerValue := 3307
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 26, r := 20 }
    lowerValue := 510
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 26, r := 21 }
    lowerValue := 96
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 26, r := 22 }
    lowerValue := 23
    upperValue := 6859
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 22))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 26, r := 23 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 25 24))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 26, r := 24 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24)) },
  { key := { q := 19, n := 26, r := 25 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 25)) },
  { key := { q := 19, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 26)) },
  { key := { q := 19, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 27)) },
  { key := { q := 19, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 28)) },
  { key := { q := 19, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 29)) },
  { key := { q := 19, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 30)) },
  { key := { q := 19, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 31)) },
  { key := { q := 19, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 32)) },
  { key := { q := 19, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 33)) },
  { key := { q := 19, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 34)) },
  { key := { q := 19, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 35)) },
  { key := { q := 19, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 36)) },
  { key := { q := 19, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 37)) },
  { key := { q := 19, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 38)) },
  { key := { q := 19, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 39)) },
  { key := { q := 19, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 40)) },
  { key := { q := 19, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 41)) },
  { key := { q := 19, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 42)) },
  { key := { q := 19, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 43)) },
  { key := { q := 19, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 44)) },
  { key := { q := 19, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 45)) },
  { key := { q := 19, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 46)) },
  { key := { q := 19, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 47)) },
  { key := { q := 19, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 26 48)) },
  { key := { q := 19, n := 27, r := 0 }
    lowerValue := 33600614943460448322716069311260139
    upperValue := 33600614943460448322716069311260139
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 27 0)) },
  { key := { q := 19, n := 27, r := 1 }
    lowerValue := 68995102553306875405987821994375
    upperValue := 886676090503913274006649445303701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 1))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 27, r := 2 }
    lowerValue := 294197712509832225641278592354
    upperValue := 46667162658100698631928918173879
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 2))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 3 }
    lowerValue := 1956617058410556566581677823
    upperValue := 2456166455689510454312048324941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 3))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 4 }
    lowerValue := 18069688536269005858213301
    upperValue := 129271918720500550226949911839
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 4))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 5 }
    lowerValue := 217614465600136212874515
    upperValue := 6803785195815818432997363781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 5))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 6 }
    lowerValue := 3286971491524559949444
    upperValue := 358093957674516759631440199
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 6))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 7 }
    lowerValue := 60662742554943132367
    upperValue := 18847050403921934717444221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 7))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 8 }
    lowerValue := 1343002245684330780
    upperValue := 991950021259049195654959
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 8))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 9 }
    lowerValue := 35195155679725134
    upperValue := 52207895855739431350261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 9))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 10 }
    lowerValue := 1081233988827405
    upperValue := 2747783992407338492119
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 10))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 11 }
    lowerValue := 38665797450855
    upperValue := 144620210126702025901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 11))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 12 }
    lowerValue := 1601615970852
    upperValue := 7611590006668527679
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 12))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 13 }
    lowerValue := 76599625207
    upperValue := 400610000350975141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 13))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 14 }
    lowerValue := 4222895579
    upperValue := 21084736860577639
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 14))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 15 }
    lowerValue := 268291030
    upperValue := 1109722992661981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 15))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 16 }
    lowerValue := 19666098
    upperValue := 58406473297999
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 16))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 17 }
    lowerValue := 1667564
    upperValue := 3074024910421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 17))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 27, r := 18 }
    lowerValue := 164259
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 27, r := 19 }
    lowerValue := 18910
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 27, r := 20 }
    lowerValue := 2566
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 27, r := 21 }
    lowerValue := 415
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 27, r := 22 }
    lowerValue := 82
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 27, r := 23 }
    lowerValue := 20
    upperValue := 6859
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 23))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 27, r := 24 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 26 25))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 27, r := 25 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25)) },
  { key := { q := 19, n := 27, r := 26 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 26)) },
  { key := { q := 19, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 27)) },
  { key := { q := 19, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 28)) },
  { key := { q := 19, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 29)) },
  { key := { q := 19, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 30)) },
  { key := { q := 19, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 31)) },
  { key := { q := 19, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 32)) },
  { key := { q := 19, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 33)) },
  { key := { q := 19, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 34)) },
  { key := { q := 19, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 35)) },
  { key := { q := 19, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 36)) },
  { key := { q := 19, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 37)) },
  { key := { q := 19, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 38)) },
  { key := { q := 19, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 39)) },
  { key := { q := 19, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 40)) },
  { key := { q := 19, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 41)) },
  { key := { q := 19, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 42)) },
  { key := { q := 19, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 43)) },
  { key := { q := 19, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 44)) },
  { key := { q := 19, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 45)) },
  { key := { q := 19, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 46)) },
  { key := { q := 19, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 47)) },
  { key := { q := 19, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 27 48)) },
  { key := { q := 19, n := 28, r := 0 }
    lowerValue := 638411683925748518131605316913942641
    upperValue := 638411683925748518131605316913942641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 28 0)) },
  { key := { q := 19, n := 28, r := 1 }
    lowerValue := 1264181552328214887389317459235530
    upperValue := 16846845719574352206126339460770319
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 28 1))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 28, r := 2 }
    lowerValue := 5191309626399639917477295078868
    upperValue := 886676090503913274006649445303701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 28 2))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 28, r := 3 }
    lowerValue := 33201137114273243484830614473
    upperValue := 46667162658100698631928918173879
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 28 3))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 28, r := 4 }
    lowerValue := 294387203611721674177665444
    upperValue := 2456166455689510454312048324941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 28 4))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 28, r := 5 }
    lowerValue := 3398059756585059486604433
    upperValue := 129271918720500550226949911839
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 28 5))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 28, r := 6 }
    lowerValue := 49102394254594819381367
    upperValue := 6803785195815818432997363781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 28 6))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 28, r := 7 }
    lowerValue := 865179990462557135354
    upperValue := 358093957674516759631440199
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 28 7))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 28, r := 8 }
    lowerValue := 18246021782172204227
    upperValue := 18847050403921934717444221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 28 8))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) }]

end CoveringCodes.Database
