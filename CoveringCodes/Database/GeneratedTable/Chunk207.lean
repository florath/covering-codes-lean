import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 207. Do not edit manually.

def precomputedTable_chunk_207 : Array AnyBoundEntry := #[
  { key := { q := 21, n := 27, r := 6 }
    lowerValue := 26090859449868771458612
    upperValue := 2927917757513156773753352601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 6))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 27, r := 7 }
    lowerValue := 433517494142399001420
    upperValue := 139424655119674132083492981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 7))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 27, r := 8 }
    lowerValue := 8641105656755422080
    upperValue := 6639269291413053908737761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 8))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 27, r := 9 }
    lowerValue := 203892827250597944
    upperValue := 316155680543478757558941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 9))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 27, r := 10 }
    lowerValue := 5640102228189308
    upperValue := 15055032406832321788521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 10))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 27, r := 11 }
    lowerValue := 181621934589209
    upperValue := 716906305087253418501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 11))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 27, r := 12 }
    lowerValue := 6774928211825
    upperValue := 34138395480345400881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 12))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 27, r := 13 }
    lowerValue := 291820264567
    upperValue := 1625637880016447661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 13))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 27, r := 14 }
    lowerValue := 14490644622
    upperValue := 77411327619830841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 14))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 27, r := 15 }
    lowerValue := 829333995
    upperValue := 3686253696182421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 15))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 27, r := 16 }
    lowerValue := 54772197
    upperValue := 175535890294401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 16))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 27, r := 17 }
    lowerValue := 4185399
    upperValue := 8358851918781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 17))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 27, r := 18 }
    lowerValue := 371638
    upperValue := 398040567561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 18))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 27, r := 19 }
    lowerValue := 38582
    upperValue := 18954312741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 19))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 27, r := 20 }
    lowerValue := 4723
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 27, r := 21 }
    lowerValue := 690
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 27, r := 22 }
    lowerValue := 122
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 27, r := 23 }
    lowerValue := 27
    upperValue := 9261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 23))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 27, r := 24 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 26 25))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 27, r := 25 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25)) },
  { key := { q := 21, n := 27, r := 26 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 26)) },
  { key := { q := 21, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 27)) },
  { key := { q := 21, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 28)) },
  { key := { q := 21, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 29)) },
  { key := { q := 21, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 30)) },
  { key := { q := 21, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 31)) },
  { key := { q := 21, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 32)) },
  { key := { q := 21, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 33)) },
  { key := { q := 21, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 34)) },
  { key := { q := 21, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 35)) },
  { key := { q := 21, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 36)) },
  { key := { q := 21, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 37)) },
  { key := { q := 21, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 38)) },
  { key := { q := 21, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 39)) },
  { key := { q := 21, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 40)) },
  { key := { q := 21, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 41)) },
  { key := { q := 21, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 42)) },
  { key := { q := 21, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 43)) },
  { key := { q := 21, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 44)) },
  { key := { q := 21, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 45)) },
  { key := { q := 21, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 46)) },
  { key := { q := 21, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 47)) },
  { key := { q := 21, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 27 48)) },
  { key := { q := 21, n := 28, r := 0 }
    lowerValue := 10523016528610349434285830688358359761
    upperValue := 10523016528610349434285830688358359761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 28 0)) },
  { key := { q := 21, n := 28, r := 1 }
    lowerValue := 18757605220339303804431070745736827
    upperValue := 251116148668922062949699663333030721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 1))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 28, r := 2 }
    lowerValue := 69339398980043288027133655473794
    upperValue := 11957911841377241092842841111096701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 2))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 3 }
    lowerValue := 399207584947767524686048203865
    upperValue := 569424373398916242516325767195081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 3))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 4 }
    lowerValue := 3186514277724797360224929985
    upperValue := 27115446352329344881729798437861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 4))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 5 }
    lowerValue := 33112243047837551844883673
    upperValue := 1291211731063302137225228497041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 5))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 6 }
    lowerValue := 430756408945449245351071
    upperValue := 61486272907776292248820404621
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 6))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 7 }
    lowerValue := 6833126025904506433940
    upperValue := 2927917757513156773753352601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 7))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 8 }
    lowerValue := 129741615004969396776
    upperValue := 139424655119674132083492981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 8))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 9 }
    lowerValue := 2908967581987601424
    upperValue := 6639269291413053908737761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 9))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 10 }
    lowerValue := 76254800201502217
    upperValue := 316155680543478757558941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 10))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 11 }
    lowerValue := 2319934958811608
    upperValue := 15055032406832321788521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 11))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 12 }
    lowerValue := 81483180793774
    upperValue := 716906305087253418501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 12))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 13 }
    lowerValue := 3292141009251
    upperValue := 34138395480345400881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 13))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 14 }
    lowerValue := 152676885118
    upperValue := 1625637880016447661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 14))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 15 }
    lowerValue := 8120688379
    upperValue := 77411327619830841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 15))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 16 }
    lowerValue := 495596568
    upperValue := 3686253696182421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 16))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 17 }
    lowerValue := 34763916
    upperValue := 175535890294401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 17))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 18 }
    lowerValue := 2811503
    upperValue := 8358851918781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 18))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 19 }
    lowerValue := 263373
    upperValue := 398040567561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 19))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 28, r := 20 }
    lowerValue := 28763
    upperValue := 1801088541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 28, r := 21 }
    lowerValue := 3694
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 28, r := 22 }
    lowerValue := 565
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 28, r := 23 }
    lowerValue := 105
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 28, r := 24 }
    lowerValue := 24
    upperValue := 9261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 24))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 28, r := 25 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 27 26))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25))) },
  { key := { q := 21, n := 28, r := 26 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26)) },
  { key := { q := 21, n := 28, r := 27 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 27)) },
  { key := { q := 21, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 28)) },
  { key := { q := 21, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 29)) },
  { key := { q := 21, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 30)) },
  { key := { q := 21, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 31)) },
  { key := { q := 21, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 32)) },
  { key := { q := 21, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 33)) },
  { key := { q := 21, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 34)) },
  { key := { q := 21, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 35)) },
  { key := { q := 21, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 36)) },
  { key := { q := 21, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 37)) },
  { key := { q := 21, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 38)) },
  { key := { q := 21, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 39)) },
  { key := { q := 21, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 40)) },
  { key := { q := 21, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 41)) },
  { key := { q := 21, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 42)) },
  { key := { q := 21, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 43)) },
  { key := { q := 21, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 44)) },
  { key := { q := 21, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 45)) },
  { key := { q := 21, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 46)) },
  { key := { q := 21, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 47)) },
  { key := { q := 21, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 28 48)) },
  { key := { q := 21, n := 29, r := 0 }
    lowerValue := 220983347100817338120002444455525554981
    upperValue := 220983347100817338120002444455525554981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 29 0)) },
  { key := { q := 21, n := 29, r := 1 }
    lowerValue := 380349995010012630154909542952711799
    upperValue := 5273439122047363321943692929993645141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 1))
    upperTrace := (.lengthenFreeN 26 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 29, r := 2 }
    lowerValue := 1355884103673540707935295798010355
    upperValue := 251116148668922062949699663333030721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 2))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 3 }
    lowerValue := 7517723760420778571688903097285
    upperValue := 11957911841377241092842841111096701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 3))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 4 }
    lowerValue := 57704706734126227738836698127
    upperValue := 569424373398916242516325767195081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 4))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 5 }
    lowerValue := 575709016903311045092512155
    upperValue := 27115446352329344881729798437861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 5))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 6 }
    lowerValue := 7178250636209033479190903
    upperValue := 1291211731063302137225228497041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 6))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 7 }
    lowerValue := 108934803185074961167077
    upperValue := 61486272907776292248820404621
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 7))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 8 }
    lowerValue := 1974696565793075092995
    upperValue := 2927917757513156773753352601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 8))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 9 }
    lowerValue := 42175694044569998719
    upperValue := 139424655119674132083492981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 9))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 10 }
    lowerValue := 1050566255204082415
    upperValue := 6639269291413053908737761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 10))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 11 }
    lowerValue := 30288819568178153
    upperValue := 316155680543478757558941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 11))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 12 }
    lowerValue := 1005101961169812
    upperValue := 15055032406832321788521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 12))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 13 }
    lowerValue := 38237218852994
    upperValue := 716906305087253418501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 13))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 14 }
    lowerValue := 1663385590032
    upperValue := 34138395480345400881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 14))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 15 }
    lowerValue := 82632313326
    upperValue := 1625637880016447661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 15))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 16 }
    lowerValue := 4686855945
    upperValue := 77411327619830841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 16))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 17 }
    lowerValue := 303815648
    upperValue := 3686253696182421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 17))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 18 }
    lowerValue := 22556613
    upperValue := 175535890294401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 18))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 19 }
    lowerValue := 1924745
    upperValue := 8358851918781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 19))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 29, r := 20 }
    lowerValue := 189692
    upperValue := 37822859361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 29, r := 21 }
    lowerValue := 21737
    upperValue := 1801088541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 29, r := 22 }
    lowerValue := 2922
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 29, r := 23 }
    lowerValue := 467
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 29, r := 24 }
    lowerValue := 90
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 29, r := 25 }
    lowerValue := 22
    upperValue := 9261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 25))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25))) },
  { key := { q := 21, n := 29, r := 26 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 28 27))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26))) },
  { key := { q := 21, n := 29, r := 27 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 27)) },
  { key := { q := 21, n := 29, r := 28 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 28)) },
  { key := { q := 21, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 29)) },
  { key := { q := 21, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 30)) },
  { key := { q := 21, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 31)) },
  { key := { q := 21, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 32)) },
  { key := { q := 21, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 33)) },
  { key := { q := 21, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 34)) },
  { key := { q := 21, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 35)) },
  { key := { q := 21, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 36)) },
  { key := { q := 21, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 37)) },
  { key := { q := 21, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 38)) },
  { key := { q := 21, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 39)) },
  { key := { q := 21, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 40)) },
  { key := { q := 21, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 41)) },
  { key := { q := 21, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 42)) },
  { key := { q := 21, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 43)) },
  { key := { q := 21, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 44)) },
  { key := { q := 21, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 45)) },
  { key := { q := 21, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 46)) },
  { key := { q := 21, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 47)) },
  { key := { q := 21, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 29 48)) },
  { key := { q := 21, n := 30, r := 0 }
    lowerValue := 4640650289117164100520051333566036654601
    upperValue := 4640650289117164100520051333566036654601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 30 0)) },
  { key := { q := 21, n := 30, r := 1 }
    lowerValue := 7721547902025231448452664448529179126
    upperValue := 110742221562994629760817551529866547961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 1))
    upperTrace := (.lengthenFreeN 27 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 30, r := 2 }
    lowerValue := 26578600862063585549453046280181882
    upperValue := 5273439122047363321943692929993645141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 2))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 3 }
    lowerValue := 142113213666801933991477995200923
    upperValue := 251116148668922062949699663333030721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 4 }
    lowerValue := 1050525858956567033323553410202
    upperValue := 11957911841377241092842841111096701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 4))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 5 }
    lowerValue := 10078802898823523199191508961
    upperValue := 569424373398916242516325767195081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 5))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 6 }
    lowerValue := 120655344665998826136311499
    upperValue := 27115446352329344881729798437861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 6))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 7 }
    lowerValue := 1754972882959457982162830
    upperValue := 1291211731063302137225228497041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 7))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 8 }
    lowerValue := 30434651564146108268079
    upperValue := 61486272907776292248820404621
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 8))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 9 }
    lowerValue := 620595301547614209638
    upperValue := 2927917757513156773753352601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 9))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 10 }
    lowerValue := 14725739440640048003
    upperValue := 139424655119674132083492981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 10))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 11 }
    lowerValue := 403436238328398021
    upperValue := 6639269291413053908737761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 11))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 12 }
    lowerValue := 12687031066163910
    upperValue := 316155680543478757558941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 12))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 13 }
    lowerValue := 456016072922231
    upperValue := 15055032406832321788521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 13))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 14 }
    lowerValue := 18679383414441
    upperValue := 716906305087253418501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 14))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 15 }
    lowerValue := 870449232475
    upperValue := 34138395480345400881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 15))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 16 }
    lowerValue := 46113437150
    upperValue := 1625637880016447661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 16))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 17 }
    lowerValue := 2778247184
    upperValue := 77411327619830841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 17))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 18 }
    lowerValue := 190627844
    upperValue := 3686253696182421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 18))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 19 }
    lowerValue := 14933787
    upperValue := 175535890294401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 19))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 30, r := 20 }
    lowerValue := 1340765
    upperValue := 794280046581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 30, r := 21 }
    lowerValue := 138670
    upperValue := 37822859361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 30, r := 22 }
    lowerValue := 16636
    upperValue := 1801088541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 30, r := 23 }
    lowerValue := 2336
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 30, r := 24 }
    lowerValue := 389
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 30, r := 25 }
    lowerValue := 78
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25))) },
  { key := { q := 21, n := 30, r := 26 }
    lowerValue := 21
    upperValue := 9261
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 28 27)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26))) },
  { key := { q := 21, n := 30, r := 27 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 29 28))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 27))) },
  { key := { q := 21, n := 30, r := 28 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 30 28)) },
  { key := { q := 21, n := 30, r := 29 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 30 29)) },
  { key := { q := 21, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 30)) },
  { key := { q := 21, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 31)) },
  { key := { q := 21, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 32)) },
  { key := { q := 21, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 33)) },
  { key := { q := 21, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 34)) },
  { key := { q := 21, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 35)) },
  { key := { q := 21, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 36)) },
  { key := { q := 21, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 37)) },
  { key := { q := 21, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 38)) },
  { key := { q := 21, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 39)) },
  { key := { q := 21, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 40)) },
  { key := { q := 21, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 41)) },
  { key := { q := 21, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 42)) },
  { key := { q := 21, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 43)) },
  { key := { q := 21, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 44)) },
  { key := { q := 21, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 45)) },
  { key := { q := 21, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 46)) },
  { key := { q := 21, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 47)) },
  { key := { q := 21, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 30 48)) },
  { key := { q := 21, n := 31, r := 0 }
    lowerValue := 97453656071460446110921078004886769746621
    upperValue := 97453656071460446110921078004886769746621
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 31 0)) },
  { key := { q := 21, n := 31, r := 1 }
    lowerValue := 156930203013623906780871301135083365132
    upperValue := 2325586652822887224977168582127197507181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 1))
    upperTrace := (.lengthenFreeN 28 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 31, r := 2 }
    lowerValue := 522200910248366722453105909864842487
    upperValue := 110742221562994629760817551529866547961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 2))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 3 }
    lowerValue := 2696065451635450132694867329504652
    upperValue := 5273439122047363321943692929993645141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 4 }
    lowerValue := 19219556263983406555669864139661
    upperValue := 251116148668922062949699663333030721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 4))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 5 }
    lowerValue := 177580516023794367392597649310
    upperValue := 11957911841377241092842841111096701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 5))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 6 }
    lowerValue := 2044306324178206859777405608
    upperValue := 569424373398916242516325767195081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 6))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 7 }
    lowerValue := 28549257892210474308479344
    upperValue := 27115446352329344881729798437861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 7))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 8 }
    lowerValue := 474539039289246478511606
    upperValue := 1291211731063302137225228497041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 8))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 9 }
    lowerValue := 9257211298330288495156
    upperValue := 61486272907776292248820404621
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 9))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 10 }
    lowerValue := 209715990353251279196
    upperValue := 2927917757513156773753352601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 10))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 11 }
    lowerValue := 5473207631605747573
    upperValue := 139424655119674132083492981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 11))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 12 }
    lowerValue := 163558056386272800
    upperValue := 6639269291413053908737761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 12))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 13 }
    lowerValue := 5571299479082622
    upperValue := 316155680543478757558941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 13))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 14 }
    lowerValue := 215621111102238
    upperValue := 15055032406832321788521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 14))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 15 }
    lowerValue := 9461457317088
    upperValue := 716906305087253418501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 15))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 16 }
    lowerValue := 470195277217
    upperValue := 34138395480345400881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 16))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 17 }
    lowerValue := 26459951887
    upperValue := 1625637880016447661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 17))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 18 }
    lowerValue := 1687477972
    upperValue := 77411327619830841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 18))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 19 }
    lowerValue := 122179172
    upperValue := 3686253696182421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 19))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 31, r := 20 }
    lowerValue := 10071517
    upperValue := 16679880978201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 31, r := 21 }
    lowerValue := 949014
    upperValue := 794280046581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 31, r := 22 }
    lowerValue := 102771
    upperValue := 37822859361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 31, r := 23 }
    lowerValue := 12881
    upperValue := 1801088541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 31, r := 24 }
    lowerValue := 1886
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 31, r := 25 }
    lowerValue := 327
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25))) },
  { key := { q := 21, n := 31, r := 26 }
    lowerValue := 68
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26))) },
  { key := { q := 21, n := 31, r := 27 }
    lowerValue := 21
    upperValue := 9261
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 29 28)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 27))) },
  { key := { q := 21, n := 31, r := 28 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 30 29))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 30 28))) },
  { key := { q := 21, n := 31, r := 29 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 31 29)) },
  { key := { q := 21, n := 31, r := 30 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 31 30)) },
  { key := { q := 21, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 31)) },
  { key := { q := 21, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 32)) },
  { key := { q := 21, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 33)) },
  { key := { q := 21, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 34)) },
  { key := { q := 21, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 35)) },
  { key := { q := 21, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 36)) },
  { key := { q := 21, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 37)) },
  { key := { q := 21, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 38)) },
  { key := { q := 21, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 39)) },
  { key := { q := 21, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 40)) },
  { key := { q := 21, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 41)) },
  { key := { q := 21, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 42)) },
  { key := { q := 21, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 43)) },
  { key := { q := 21, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 44)) },
  { key := { q := 21, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 45)) },
  { key := { q := 21, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 46)) },
  { key := { q := 21, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 47)) },
  { key := { q := 21, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 31 48)) },
  { key := { q := 21, n := 32, r := 0 }
    lowerValue := 2046526777500669368329342638102622164679041
    upperValue := 2046526777500669368329342638102622164679041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 32 0)) },
  { key := { q := 21, n := 32, r := 1 }
    lowerValue := 3192709481280295426410830948678037698408
    upperValue := 48837319709280631724520540224671147650801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 1))
    upperTrace := (.lengthenFreeN 29 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 32, r := 2 }
    lowerValue := 10281935769518186546135432589781111252
    upperValue := 2325586652822887224977168582127197507181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 2))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 3 }
    lowerValue := 51318354859653454764103846882943403
    upperValue := 110742221562994629760817551529866547961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 4 }
    lowerValue := 353246600707029185631145987967789
    upperValue := 5273439122047363321943692929993645141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 4))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 5 }
    lowerValue := 3147550338951546389599952472426
    upperValue := 251116148668922062949699663333030721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 5))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 6 }
    lowerValue := 34895983769544746339335680194
    upperValue := 11957911841377241092842841111096701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 6))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 7 }
    lowerValue := 468640687310564328183140492
    upperValue := 569424373398916242516325767195081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 7))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 8 }
    lowerValue := 7479027244758649463334524
    upperValue := 27115446352329344881729798437861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 8))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 9 }
    lowerValue := 139841460492972676222905
    upperValue := 1291211731063302137225228497041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 9))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 10 }
    lowerValue := 3030814085227764165818
    upperValue := 61486272907776292248820404621
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 10))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) }]

end CoveringCodes.Database
