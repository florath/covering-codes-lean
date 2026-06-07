import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 189. Do not edit manually.

def precomputedTable_chunk_189 : Array AnyBoundEntry := #[
  { key := { q := 19, n := 33, r := 14 }
    lowerValue := 4951375008144727
    upperValue := 991950021259049195654959
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 14))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 33, r := 15 }
    lowerValue := 216052807279885
    upperValue := 52207895855739431350261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 15))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 33, r := 16 }
    lowerValue := 10608299992183
    upperValue := 2747783992407338492119
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 16))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 33, r := 17 }
    lowerValue := 585570109614
    upperValue := 144620210126702025901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 17))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 33, r := 18 }
    lowerValue := 36332874298
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 33, r := 19 }
    lowerValue := 2535652670
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 33, r := 20 }
    lowerValue := 199333539
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 33, r := 21 }
    lowerValue := 17691974
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 33, r := 22 }
    lowerValue := 1778667
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 33, r := 23 }
    lowerValue := 203434
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 33, r := 24 }
    lowerValue := 26620
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 33, r := 25 }
    lowerValue := 4014
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 33, r := 26 }
    lowerValue := 704
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 33, r := 27 }
    lowerValue := 146
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 33, r := 28 }
    lowerValue := 36
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) },
  { key := { q := 19, n := 33, r := 29 }
    lowerValue := 19
    upperValue := 6859
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 31 30)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 33, r := 30 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 32 31))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 33, r := 31 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31)) },
  { key := { q := 19, n := 33, r := 32 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 32)) },
  { key := { q := 19, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 33)) },
  { key := { q := 19, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 34)) },
  { key := { q := 19, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 35)) },
  { key := { q := 19, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 36)) },
  { key := { q := 19, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 37)) },
  { key := { q := 19, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 38)) },
  { key := { q := 19, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 39)) },
  { key := { q := 19, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 40)) },
  { key := { q := 19, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 41)) },
  { key := { q := 19, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 42)) },
  { key := { q := 19, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 43)) },
  { key := { q := 19, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 44)) },
  { key := { q := 19, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 45)) },
  { key := { q := 19, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 46)) },
  { key := { q := 19, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 47)) },
  { key := { q := 19, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 33 48)) },
  { key := { q := 19, n := 34, r := 0 }
    lowerValue := 30034640110980377619945846078500632729311721
    upperValue := 30034640110980377619945846078500632729311721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 34 0)) },
  { key := { q := 19, n := 34, r := 1 }
    lowerValue := 48996150262610730211983435690865632511113
    upperValue := 792574698948454344541507237237004596006039
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 34, r := 2 }
    lowerValue := 164684363220035298420008258050634853789
    upperValue := 41714457839392333923237223012473926105581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 3 }
    lowerValue := 856149609796064561322349993607680746
    upperValue := 2195497781020649153854590684867048742399
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 4 }
    lowerValue := 6125208192244894151606213803561467
    upperValue := 115552514790560481781820562361423618021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 4))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 5 }
    lowerValue := 56595762664832762686823227249652
    upperValue := 6081711304766341146411608545338085159
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 5))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 6 }
    lowerValue := 649062733080924803080551843349
    upperValue := 320090068671912691916400449754636061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 6))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 7 }
    lowerValue := 8992992724999237523366625676
    upperValue := 16846845719574352206126339460770319
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 7))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 8 }
    lowerValue := 147648097083690031346718693
    upperValue := 886676090503913274006649445303701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 8))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 9 }
    lowerValue := 2831422703440327831571448
    upperValue := 46667162658100698631928918173879
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 9))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 10 }
    lowerValue := 62729468788990366751170
    upperValue := 2456166455689510454312048324941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 10))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 11 }
    lowerValue := 1592011431345077234895
    upperValue := 129271918720500550226949911839
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 11))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 12 }
    lowerValue := 45979433896113742382
    upperValue := 6803785195815818432997363781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 12))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 13 }
    lowerValue := 1503491674425948513
    upperValue := 358093957674516759631440199
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 13))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 14 }
    lowerValue := 55444369360839690
    upperValue := 18847050403921934717444221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 14))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 15 }
    lowerValue := 2299169962419356
    upperValue := 991950021259049195654959
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 15))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 16 }
    lowerValue := 106994768377007
    upperValue := 52207895855739431350261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 16))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 17 }
    lowerValue := 5580812756423
    upperValue := 2747783992407338492119
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 17))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 34, r := 18 }
    lowerValue := 326109955308
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 34, r := 19 }
    lowerValue := 21353235846
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 34, r := 20 }
    lowerValue := 1568241456
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 34, r := 21 }
    lowerValue := 129406885
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 34, r := 22 }
    lowerValue := 12028137
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 34, r := 23 }
    lowerValue := 1263673
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 34, r := 24 }
    lowerValue := 150738
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 34, r := 25 }
    lowerValue := 20534
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 34, r := 26 }
    lowerValue := 3218
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 34, r := 27 }
    lowerValue := 586
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 34, r := 28 }
    lowerValue := 126
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) },
  { key := { q := 19, n := 34, r := 29 }
    lowerValue := 32
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 34, r := 30 }
    lowerValue := 19
    upperValue := 6859
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 32 31)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 34, r := 31 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 33 32))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31))) },
  { key := { q := 19, n := 34, r := 32 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 32)) },
  { key := { q := 19, n := 34, r := 33 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 33)) },
  { key := { q := 19, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 34 34)) },
  { key := { q := 19, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 34 35)) },
  { key := { q := 19, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 34 36)) },
  { key := { q := 19, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 34 37)) },
  { key := { q := 19, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 34 38)) },
  { key := { q := 19, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 34 39)) },
  { key := { q := 19, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 34 40)) },
  { key := { q := 19, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 34 41)) },
  { key := { q := 19, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 34 42)) },
  { key := { q := 19, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 34 43)) },
  { key := { q := 19, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 34 44)) },
  { key := { q := 19, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 34 45)) },
  { key := { q := 19, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 34 46)) },
  { key := { q := 19, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 34 47)) },
  { key := { q := 19, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 34 48)) },
  { key := { q := 19, n := 35, r := 0 }
    lowerValue := 570658162108627174778971075491512021856922699
    upperValue := 570658162108627174778971075491512021856922699
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 35 0)) },
  { key := { q := 19, n := 35, r := 1 }
    lowerValue := 904371096844100118508670484138687831785932
    upperValue := 15058919280020632546288637507503087324114741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 1))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 35, r := 2 }
    lowerValue := 2950494863832083877230204463507825417670
    upperValue := 792574698948454344541507237237004596006039
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 3 }
    lowerValue := 14874892567709825970780959280952061405
    upperValue := 41714457839392333923237223012473926105581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 4 }
    lowerValue := 103101667354876127620592025764225955
    upperValue := 2195497781020649153854590684867048742399
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 4))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 5 }
    lowerValue := 921979076349217690820866513172328
    upperValue := 115552514790560481781820562361423618021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 5))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 6 }
    lowerValue := 10222043570256037075316135716737
    upperValue := 6081711304766341146411608545338085159
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 6))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 7 }
    lowerValue := 136759534598895015765108001117
    upperValue := 320090068671912691916400449754636061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 7))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 8 }
    lowerValue := 2165385506344929403809744502
    upperValue := 16846845719574352206126339460770319
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 8))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 9 }
    lowerValue := 39992352390933825630296403
    upperValue := 886676090503913274006649445303701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 9))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 10 }
    lowerValue := 852067647948500950928405
    upperValue := 46667162658100698631928918173879
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 10))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 11 }
    lowerValue := 20763151399474816063488
    upperValue := 2456166455689510454312048324941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 11))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 12 }
    lowerValue := 574794262545503005880
    upperValue := 129271918720500550226949911839
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 12))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 13 }
    lowerValue := 17982244701595867894
    upperValue := 6803785195815818432997363781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 13))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 14 }
    lowerValue := 633159677779234239
    upperValue := 358093957674516759631440199
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 14))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 15 }
    lowerValue := 25013516827300206
    upperValue := 18847050403921934717444221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 15))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 16 }
    lowerValue := 1106248555752920
    upperValue := 991950021259049195654959
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 16))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 17 }
    lowerValue := 54689180620098
    upperValue := 52207895855739431350261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 17))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 35, r := 18 }
    lowerValue := 3019809766700
    upperValue := 288441413567621167681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 35, r := 19 }
    lowerValue := 186224454323
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 35, r := 20 }
    lowerValue := 12832457887
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 35, r := 21 }
    lowerValue := 989305685
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 35, r := 22 }
    lowerValue := 85495258
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 35, r := 23 }
    lowerValue := 8304793
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 35, r := 24 }
    lowerValue := 910039
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 35, r := 25 }
    lowerValue := 113019
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 35, r := 26 }
    lowerValue := 16001
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 35, r := 27 }
    lowerValue := 2602
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 35, r := 28 }
    lowerValue := 491
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) },
  { key := { q := 19, n := 35, r := 29 }
    lowerValue := 109
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 35, r := 30 }
    lowerValue := 29
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 35, r := 31 }
    lowerValue := 19
    upperValue := 6859
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 33 32)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31))) },
  { key := { q := 19, n := 35, r := 32 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 34 33))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 32))) },
  { key := { q := 19, n := 35, r := 33 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 35 33)) },
  { key := { q := 19, n := 35, r := 34 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 35 34)) },
  { key := { q := 19, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 35 35)) },
  { key := { q := 19, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 35 36)) },
  { key := { q := 19, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 35 37)) },
  { key := { q := 19, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 35 38)) },
  { key := { q := 19, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 35 39)) },
  { key := { q := 19, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 35 40)) },
  { key := { q := 19, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 35 41)) },
  { key := { q := 19, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 35 42)) },
  { key := { q := 19, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 35 43)) },
  { key := { q := 19, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 35 44)) },
  { key := { q := 19, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 35 45)) },
  { key := { q := 19, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 35 46)) },
  { key := { q := 19, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 35 47)) },
  { key := { q := 19, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 35 48)) },
  { key := { q := 19, n := 36, r := 0 }
    lowerValue := 10842505080063916320800450434338728415281531281
    upperValue := 10842505080063916320800450434338728415281531281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 36 0)) },
  { key := { q := 19, n := 36, r := 1 }
    lowerValue := 16706479322132382620647843504374003721543192
    upperValue := 286119466320392018379484112642558659158180079
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 36, r := 2 }
    lowerValue := 52949934218870611864102722747772995010386
    upperValue := 15058919280020632546288637507503087324114741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 3 }
    lowerValue := 259109584461163472125603803536662630812
    upperValue := 792574698948454344541507237237004596006039
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 4 }
    lowerValue := 1741640155955848667174983727902395641
    upperValue := 41714457839392333923237223012473926105581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 5 }
    lowerValue := 15088846286479273134213351729594053
    upperValue := 2195497781020649153854590684867048742399
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 6 }
    lowerValue := 161907417579108146946701372942589
    upperValue := 115552514790560481781820562361423618021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 7 }
    lowerValue := 2094124324048381904183444838443
    upperValue := 6081711304766341146411608545338085159
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 8 }
    lowerValue := 32017287296939951998483932635
    upperValue := 320090068671912691916400449754636061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 8))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 9 }
    lowerValue := 570272791212703808783871123
    upperValue := 16846845719574352206126339460770319
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 9))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 10 }
    lowerValue := 11701656139452588696974119
    upperValue := 886676090503913274006649445303701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 10))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 11 }
    lowerValue := 274220413410047293381016
    upperValue := 46667162658100698631928918173879
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 11))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 12 }
    lowerValue := 7288983871574589085505
    upperValue := 2456166455689510454312048324941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 12))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 13 }
    lowerValue := 218576814390118579473
    upperValue := 129271918720500550226949911839
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 13))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 14 }
    lowerValue := 7363291379961771990
    upperValue := 6803785195815818432997363781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 14))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 15 }
    lowerValue := 277748409598439133
    upperValue := 358093957674516759631440199
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 15))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 16 }
    lowerValue := 11702628271572444
    upperValue := 18847050403921934717444221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 16))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 17 }
    lowerValue := 549826427813013
    upperValue := 991950021259049195654959
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 17))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 36, r := 18 }
    lowerValue := 28775695786936
    upperValue := 5480386857784802185939
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 36, r := 19 }
    lowerValue := 1676889158775
    upperValue := 288441413567621167681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 36, r := 20 }
    lowerValue := 108829543314
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 36, r := 21 }
    lowerValue := 7872374687
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 36, r := 22 }
    lowerValue := 635639991
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 36, r := 23 }
    lowerValue := 57410417
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 36, r := 24 }
    lowerValue := 5817019
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 36, r := 25 }
    lowerValue := 663698
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 36, r := 26 }
    lowerValue := 85678
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 36, r := 27 }
    lowerValue := 12589
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 36, r := 28 }
    lowerValue := 2121
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) },
  { key := { q := 19, n := 36, r := 29 }
    lowerValue := 414
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 36, r := 30 }
    lowerValue := 95
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 36, r := 31 }
    lowerValue := 26
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31))) },
  { key := { q := 19, n := 36, r := 32 }
    lowerValue := 19
    upperValue := 6859
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 34 33)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 32))) },
  { key := { q := 19, n := 36, r := 33 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 35 34))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 35 33))) },
  { key := { q := 19, n := 36, r := 34 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 36 34)) },
  { key := { q := 19, n := 36, r := 35 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 36 35)) },
  { key := { q := 19, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 36 36)) },
  { key := { q := 19, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 36 37)) },
  { key := { q := 19, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 36 38)) },
  { key := { q := 19, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 36 39)) },
  { key := { q := 19, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 36 40)) },
  { key := { q := 19, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 36 41)) },
  { key := { q := 19, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 36 42)) },
  { key := { q := 19, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 36 43)) },
  { key := { q := 19, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 36 44)) },
  { key := { q := 19, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 36 45)) },
  { key := { q := 19, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 36 46)) },
  { key := { q := 19, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 36 47)) },
  { key := { q := 19, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 36 48)) },
  { key := { q := 19, n := 37, r := 0 }
    lowerValue := 206007596521214410095208558252435839890349094339
    upperValue := 206007596521214410095208558252435839890349094339
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 37 0)) },
  { key := { q := 19, n := 37, r := 1 }
    lowerValue := 308856966298672279003311181787759879895575854
    upperValue := 5436269860087448349210198140208614524005421501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 1))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 37, r := 2 }
    lowerValue := 951751650587035449571536090165607180795419
    upperValue := 286119466320392018379484112642558659158180079
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 2))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 3 }
    lowerValue := 4524547775962899946658615280104661667131
    upperValue := 15058919280020632546288637507503087324114741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 4 }
    lowerValue := 29519602829320765941349023746440630126
    upperValue := 792574698948454344541507237237004596006039
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 5 }
    lowerValue := 248011972193774172660029253900363042
    upperValue := 41714457839392333923237223012473926105581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 6 }
    lowerValue := 2578262679233046422071826968247358
    upperValue := 2195497781020649153854590684867048742399
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 7 }
    lowerValue := 32274436568337669025861333767223
    upperValue := 115552514790560481781820562361423618021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 7))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 8 }
    lowerValue := 477044071819137979310079913553
    upperValue := 6081711304766341146411608545338085159
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 8))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 9 }
    lowerValue := 8204709979081137959182443913
    upperValue := 320090068671912691916400449754636061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 9))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 10 }
    lowerValue := 162362868020869905143413167
    upperValue := 16846845719574352206126339460770319
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 10))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 11 }
    lowerValue := 3664455227184622211019586
    upperValue := 886676090503913274006649445303701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 11))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 12 }
    lowerValue := 93672676150995889065708
    upperValue := 46667162658100698631928918173879
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 12))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 13 }
    lowerValue := 2697127866089157393499
    upperValue := 2456166455689510454312048324941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 13))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 14 }
    lowerValue := 87092144856653879814
    upperValue := 129271918720500550226949911839
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 14))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 15 }
    lowerValue := 3143124858972077471
    upperValue := 6803785195815818432997363781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 15))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 16 }
    lowerValue := 126449391513543508
    upperValue := 358093957674516759631440199
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 16))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 17 }
    lowerValue := 5660031444720851
    upperValue := 18847050403921934717444221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 17))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 37, r := 18 }
    lowerValue := 281526721051114
    upperValue := 104127350297911241532841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 37, r := 19 }
    lowerValue := 15549932982988
    upperValue := 5480386857784802185939
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 37, r := 20 }
    lowerValue := 953679128905
    upperValue := 288441413567621167681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 37, r := 21 }
    lowerValue := 64974427239
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 37, r := 22 }
    lowerValue := 4922669904
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 37, r := 23 }
    lowerValue := 415424421
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 37, r := 24 }
    lowerValue := 39139643
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 37, r := 25 }
    lowerValue := 4129466
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 37, r := 26 }
    lowerValue := 489785
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 37, r := 27 }
    lowerValue := 65624
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 37, r := 28 }
    lowerValue := 9993
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) },
  { key := { q := 19, n := 37, r := 29 }
    lowerValue := 1743
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 37, r := 30 }
    lowerValue := 352
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 37, r := 31 }
    lowerValue := 83
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31))) },
  { key := { q := 19, n := 37, r := 32 }
    lowerValue := 24
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 32))) },
  { key := { q := 19, n := 37, r := 33 }
    lowerValue := 19
    upperValue := 6859
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 35 34)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 35 33))) },
  { key := { q := 19, n := 37, r := 34 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 36 35))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 36 34))) },
  { key := { q := 19, n := 37, r := 35 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 37 35)) },
  { key := { q := 19, n := 37, r := 36 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 37 36)) },
  { key := { q := 19, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 37 37)) },
  { key := { q := 19, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 37 38)) },
  { key := { q := 19, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 37 39)) },
  { key := { q := 19, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 37 40)) },
  { key := { q := 19, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 37 41)) },
  { key := { q := 19, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 37 42)) },
  { key := { q := 19, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 37 43)) },
  { key := { q := 19, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 37 44)) },
  { key := { q := 19, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 37 45)) },
  { key := { q := 19, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 37 46)) },
  { key := { q := 19, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 37 47)) },
  { key := { q := 19, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 37 48)) },
  { key := { q := 19, n := 38, r := 0 }
    lowerValue := 3914144333903073791808962606796280957916632792441
    upperValue := 3914144333903073791808962606796280957916632792441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 38 0)) },
  { key := { q := 19, n := 38, r := 1 }
    lowerValue := 5714079319566531082932792126709899208637420135
    upperValue := 103289127341661518634993764663963675956103008519
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 1))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 38, r := 2 }
    lowerValue := 17132958648249227608735834782021478693656281
    upperValue := 5436269860087448349210198140208614524005421501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 2))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 3 }
    lowerValue := 79190073910567634757790240731502378738736
    upperValue := 286119466320392018379484112642558659158180079
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 4 }
    lowerValue := 501927233250660651472218670304205432578
    upperValue := 15058919280020632546288637507503087324114741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 4))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 5 }
    lowerValue := 4093215249080419262520003245797574235
    upperValue := 792574698948454344541507237237004596006039
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 5))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 6 }
    lowerValue := 41265305764722041010581715186746666
    upperValue := 41714457839392333923237223012473926105581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 6))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 7 }
    lowerValue := 500451462640489497356081419038498
    upperValue := 2195497781020649153854590684867048742399
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 7))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 8 }
    lowerValue := 7159115011537007574039660640548
    upperValue := 115552514790560481781820562361423618021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 8))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 9 }
    lowerValue := 119037493949703655728238663265
    upperValue := 6081711304766341146411608545338085159
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 9))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 10 }
    lowerValue := 2274657595132580631963058180
    upperValue := 320090068671912691916400449754636061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 10))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 11 }
    lowerValue := 49510801245823168906705571
    upperValue := 16846845719574352206126339460770319
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 11))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 12 }
    lowerValue := 1218923455819349354152641
    upperValue := 886676090503913274006649445303701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 12))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 13 }
    lowerValue := 33752380231679125171866
    upperValue := 46667162658100698631928918173879
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 13))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 14 }
    lowerValue := 1046494213278787334761
    upperValue := 2456166455689510454312048324941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 14))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 15 }
    lowerValue := 36202035402227162821
    upperValue := 129271918720500550226949911839
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 15))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 16 }
    lowerValue := 1393463779466712114
    upperValue := 6803785195815818432997363781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 16))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 17 }
    lowerValue := 59556105814166322
    upperValue := 358093957674516759631440199
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 17))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 38, r := 18 }
    lowerValue := 2822234138193170
    upperValue := 1978419655660313589123979
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) }]

end CoveringCodes.Database
