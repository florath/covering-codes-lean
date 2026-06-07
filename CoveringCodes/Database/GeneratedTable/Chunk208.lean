import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 208. Do not edit manually.

def precomputedTable_chunk_208 : Array AnyBoundEntry := #[
  { key := { q := 21, n := 32, r := 11 }
    lowerValue := 75519116292268051114
    upperValue := 2927917757513156773753352601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 11))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 12 }
    lowerValue := 2149832854526228984
    upperValue := 139424655119674132083492981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 12))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 13 }
    lowerValue := 69588943365350045
    upperValue := 6639269291413053908737761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 13))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 14 }
    lowerValue := 2552387271319858
    upperValue := 316155680543478757558941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 14))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 15 }
    lowerValue := 105821567206042
    upperValue := 15055032406832321788521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 15))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 16 }
    lowerValue := 4952111663793
    upperValue := 716906305087253418501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 16))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 17 }
    lowerValue := 261426574830
    upperValue := 34138395480345400881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 17))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 18 }
    lowerValue := 15573325281
    upperValue := 1625637880016447661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 18))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 19 }
    lowerValue := 1048076378
    upperValue := 77411327619830841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 19))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 32, r := 20 }
    lowerValue := 79852788
    upperValue := 350277500542221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 32, r := 21 }
    lowerValue := 6908978
    upperValue := 16679880978201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 32, r := 22 }
    lowerValue := 681710
    upperValue := 794280046581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 32, r := 23 }
    lowerValue := 77137
    upperValue := 37822859361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 32, r := 24 }
    lowerValue := 10082
    upperValue := 1801088541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 32, r := 25 }
    lowerValue := 1536
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25))) },
  { key := { q := 21, n := 32, r := 26 }
    lowerValue := 277
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26))) },
  { key := { q := 21, n := 32, r := 27 }
    lowerValue := 60
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 27))) },
  { key := { q := 21, n := 32, r := 28 }
    lowerValue := 21
    upperValue := 9261
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 30 29)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 30 28))) },
  { key := { q := 21, n := 32, r := 29 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 31 30))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 31 29))) },
  { key := { q := 21, n := 32, r := 30 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 32 30)) },
  { key := { q := 21, n := 32, r := 31 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 32 31)) },
  { key := { q := 21, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 32)) },
  { key := { q := 21, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 33)) },
  { key := { q := 21, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 34)) },
  { key := { q := 21, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 35)) },
  { key := { q := 21, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 36)) },
  { key := { q := 21, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 37)) },
  { key := { q := 21, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 38)) },
  { key := { q := 21, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 39)) },
  { key := { q := 21, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 40)) },
  { key := { q := 21, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 41)) },
  { key := { q := 21, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 42)) },
  { key := { q := 21, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 43)) },
  { key := { q := 21, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 44)) },
  { key := { q := 21, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 45)) },
  { key := { q := 21, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 46)) },
  { key := { q := 21, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 47)) },
  { key := { q := 21, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 32 48)) },
  { key := { q := 21, n := 33, r := 0 }
    lowerValue := 42977062327514056734916195400155065458259861
    upperValue := 42977062327514056734916195400155065458259861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 33 0)) },
  { key := { q := 21, n := 33, r := 1 }
    lowerValue := 65018248604408557844048707110673321419456
    upperValue := 1025583713894893266214931344718094100666821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 1))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 33, r := 2 }
    lowerValue := 202854996094203542581769157136778668364
    upperValue := 48837319709280631724520540224671147650801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 2))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 3 }
    lowerValue := 979872287500274037232270193472684865
    upperValue := 2325586652822887224977168582127197507181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 4 }
    lowerValue := 6520508572803881068395017479292026
    upperValue := 110742221562994629760817551529866547961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 4))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 5 }
    lowerValue := 56100972695641356061824657168362
    upperValue := 5273439122047363321943692929993645141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 5))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 6 }
    lowerValue := 599815930894433708910920203828
    upperValue := 251116148668922062949699663333030721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 6))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 7 }
    lowerValue := 7757771917311758579436738392
    upperValue := 11957911841377241092842841111096701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 7))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 8 }
    lowerValue := 119058521451534267252183709
    upperValue := 569424373398916242516325767195081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 8))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 9 }
    lowerValue := 2137382908125267541118243
    upperValue := 27115446352329344881729798437861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 9))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 10 }
    lowerValue := 44400893344438528717011
    upperValue := 1291211731063302137225228497041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 10))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 11 }
    lowerValue := 1058437467468603569340
    upperValue := 61486272907776292248820404621
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 11))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 12 }
    lowerValue := 28767673087159031675
    upperValue := 2927917757513156773753352601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 12))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 13 }
    lowerValue := 887081018103323466
    upperValue := 139424655119674132083492981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 13))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 14 }
    lowerValue := 30919089673587304
    upperValue := 6639269291413053908737761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 14))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 15 }
    lowerValue := 1214879075782821
    upperValue := 316155680543478757558941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 15))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 16 }
    lowerValue := 53717858090070
    upperValue := 15055032406832321788521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 16))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 17 }
    lowerValue := 2670448710450
    upperValue := 716906305087253418501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 17))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 18 }
    lowerValue := 149237101551
    upperValue := 34138395480345400881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 18))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 19 }
    lowerValue := 9381801069
    upperValue := 1625637880016447661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 19))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 33, r := 20 }
    lowerValue := 664438727
    upperValue := 7355827511386641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 33, r := 21 }
    lowerValue := 53137638
    upperValue := 350277500542221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 33, r := 22 }
    lowerValue := 4814653
    upperValue := 16679880978201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 33, r := 23 }
    lowerValue := 496431
    upperValue := 794280046581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 33, r := 24 }
    lowerValue := 58583
    upperValue := 37822859361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 33, r := 25 }
    lowerValue := 7970
    upperValue := 1801088541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25))) },
  { key := { q := 21, n := 33, r := 26 }
    lowerValue := 1262
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26))) },
  { key := { q := 21, n := 33, r := 27 }
    lowerValue := 236
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 27))) },
  { key := { q := 21, n := 33, r := 28 }
    lowerValue := 53
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 30 28))) },
  { key := { q := 21, n := 33, r := 29 }
    lowerValue := 21
    upperValue := 9261
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 31 30)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 31 29))) },
  { key := { q := 21, n := 33, r := 30 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 32 31))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 32 30))) },
  { key := { q := 21, n := 33, r := 31 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 33 31)) },
  { key := { q := 21, n := 33, r := 32 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 33 32)) },
  { key := { q := 21, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 33)) },
  { key := { q := 21, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 34)) },
  { key := { q := 21, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 35)) },
  { key := { q := 21, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 36)) },
  { key := { q := 21, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 37)) },
  { key := { q := 21, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 38)) },
  { key := { q := 21, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 39)) },
  { key := { q := 21, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 40)) },
  { key := { q := 21, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 41)) },
  { key := { q := 21, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 42)) },
  { key := { q := 21, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 43)) },
  { key := { q := 21, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 44)) },
  { key := { q := 21, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 45)) },
  { key := { q := 21, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 46)) },
  { key := { q := 21, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 47)) },
  { key := { q := 21, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 33 48)) },
  { key := { q := 21, n := 34, r := 0 }
    lowerValue := 902518308877795191433240103403256374623457081
    upperValue := 902518308877795191433240103403256374623457081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 34 0)) },
  { key := { q := 21, n := 34, r := 1 }
    lowerValue := 1325283860319816727508428933044429331311979
    upperValue := 21537257991792758590513558239079976114003241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 34, r := 2 }
    lowerValue := 4009748974270574555085680725619916272913
    upperValue := 1025583713894893266214931344718094100666821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 3 }
    lowerValue := 18764513149515148152821168157860897518
    upperValue := 48837319709280631724520540224671147650801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 4 }
    lowerValue := 120847247100517319675974890747505104
    upperValue := 2325586652822887224977168582127197507181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 4))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 5 }
    lowerValue := 1005157496922665480761364727986824
    upperValue := 110742221562994629760817551529866547961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 5))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 6 }
    lowerValue := 10377144035558765546598324338499
    upperValue := 5273439122047363321943692929993645141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 6))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 7 }
    lowerValue := 129432641886158208578663695665
    upperValue := 251116148668922062949699663333030721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 7))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 8 }
    lowerValue := 1913040362232444012423233295
    upperValue := 11957911841377241092842841111096701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 8))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 9 }
    lowerValue := 33026838887783664635074136
    upperValue := 569424373398916242516325767195081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 9))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 10 }
    lowerValue := 658734518017225550896159
    upperValue := 27115446352329344881729798437861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 10))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 11 }
    lowerValue := 15051278467537101782473
    upperValue := 1291211731063302137225228497041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 11))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 12 }
    lowerValue := 391374705637869611402
    upperValue := 61486272907776292248820404621
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 12))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 13 }
    lowerValue := 11522522738989427481
    upperValue := 2927917757513156773753352601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 13))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 14 }
    lowerValue := 382594962856196841
    upperValue := 139424655119674132083492981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 14))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 15 }
    lowerValue := 14285940094379240
    upperValue := 6639269291413053908737761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 15))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 16 }
    lowerValue := 598660249684699
    upperValue := 316155680543478757558941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 16))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 17 }
    lowerValue := 28120559690867
    upperValue := 15055032406832321788521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 17))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 18 }
    lowerValue := 1479902432250
    upperValue := 716906305087253418501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 18))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 19 }
    lowerValue := 87280245213
    upperValue := 34138395480345400881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 19))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 34, r := 20 }
    lowerValue := 5774280874
    upperValue := 154472377739119461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 34, r := 21 }
    lowerValue := 429275386
    upperValue := 7355827511386641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 34, r := 22 }
    lowerValue := 35953957
    upperValue := 350277500542221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 34, r := 23 }
    lowerValue := 3404468
    upperValue := 16679880978201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 34, r := 24 }
    lowerValue := 366124
    upperValue := 794280046581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 34, r := 25 }
    lowerValue := 44981
    upperValue := 37822859361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25))) },
  { key := { q := 21, n := 34, r := 26 }
    lowerValue := 6360
    upperValue := 1801088541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26))) },
  { key := { q := 21, n := 34, r := 27 }
    lowerValue := 1045
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 27))) },
  { key := { q := 21, n := 34, r := 28 }
    lowerValue := 202
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 30 28))) },
  { key := { q := 21, n := 34, r := 29 }
    lowerValue := 47
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 31 29))) },
  { key := { q := 21, n := 34, r := 30 }
    lowerValue := 21
    upperValue := 9261
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 32 31)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 32 30))) },
  { key := { q := 21, n := 34, r := 31 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 33 32))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 33 31))) },
  { key := { q := 21, n := 34, r := 32 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 34 32)) },
  { key := { q := 21, n := 34, r := 33 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 34 33)) },
  { key := { q := 21, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 34 34)) },
  { key := { q := 21, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 34 35)) },
  { key := { q := 21, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 34 36)) },
  { key := { q := 21, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 34 37)) },
  { key := { q := 21, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 34 38)) },
  { key := { q := 21, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 34 39)) },
  { key := { q := 21, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 34 40)) },
  { key := { q := 21, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 34 41)) },
  { key := { q := 21, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 34 42)) },
  { key := { q := 21, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 34 43)) },
  { key := { q := 21, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 34 44)) },
  { key := { q := 21, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 34 45)) },
  { key := { q := 21, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 34 46)) },
  { key := { q := 21, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 34 47)) },
  { key := { q := 21, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 34 48)) },
  { key := { q := 21, n := 35, r := 0 }
    lowerValue := 18952884486433699020098042171468383867092598701
    upperValue := 18952884486433699020098042171468383867092598701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 35 0)) },
  { key := { q := 21, n := 35, r := 1 }
    lowerValue := 27036925087637231127101344039184570423812552
    upperValue := 452282417827647930400784723020679498394068061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 1))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 35, r := 2 }
    lowerValue := 79400105095637215680278013797463705083316
    upperValue := 21537257991792758590513558239079976114003241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 3 }
    lowerValue := 360329896482304743991644245576870498515
    upperValue := 1025583713894893266214931344718094100666821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 4 }
    lowerValue := 2248213257913539542334215992931954009
    upperValue := 48837319709280631724520540224671147650801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 4))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 5 }
    lowerValue := 18097720177484054497119251805367962
    upperValue := 2325586652822887224977168582127197507181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 5))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 6 }
    lowerValue := 180624951260541317358714506380043
    upperValue := 110742221562994629760817551529866547961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 6))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 7 }
    lowerValue := 2175413111784097651487900424462
    upperValue := 5273439122047363321943692929993645141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 7))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 8 }
    lowerValue := 31007813706750837701574606713
    upperValue := 251116148668922062949699663333030721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 8))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 9 }
    lowerValue := 515552913413339143383933701
    upperValue := 11957911841377241092842841111096701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 9))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 10 }
    lowerValue := 9888726675479499877703219
    upperValue := 569424373398916242516325767195081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 10))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 11 }
    lowerValue := 216940392442211471525434
    upperValue := 27115446352329344881729798437861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 11))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 12 }
    lowerValue := 5406954540051308617183
    upperValue := 1291211731063302137225228497041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 12))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 13 }
    lowerValue := 152296994198694837888
    upperValue := 61486272907776292248820404621
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 13))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 14 }
    lowerValue := 4828184253208029252
    upperValue := 2927917757513156773753352601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 14))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 15 }
    lowerValue := 171746130590736758
    upperValue := 139424655119674132083492981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 15))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 16 }
    lowerValue := 6839556776853718
    upperValue := 6639269291413053908737761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 16))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 17 }
    lowerValue := 304484180521786
    upperValue := 316155680543478757558941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 17))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 18 }
    lowerValue := 15141206684198
    upperValue := 15055032406832321788521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 18))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 19 }
    lowerValue := 840950246813
    upperValue := 716906305087253418501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 19))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 35, r := 20 }
    lowerValue := 52196131645
    upperValue := 3243919932521508681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 35, r := 21 }
    lowerValue := 3624976042
    upperValue := 154472377739119461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 35, r := 22 }
    lowerValue := 282244826
    upperValue := 7355827511386641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 35, r := 23 }
    lowerValue := 24705920
    upperValue := 350277500542221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 35, r := 24 }
    lowerValue := 2440172
    upperValue := 16679880978201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 35, r := 25 }
    lowerValue := 273230
    upperValue := 794280046581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25))) },
  { key := { q := 21, n := 35, r := 26 }
    lowerValue := 34891
    upperValue := 37822859361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26))) },
  { key := { q := 21, n := 35, r := 27 }
    lowerValue := 5120
    upperValue := 1801088541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 27))) },
  { key := { q := 21, n := 35, r := 28 }
    lowerValue := 872
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 30 28))) },
  { key := { q := 21, n := 35, r := 29 }
    lowerValue := 175
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 31 29))) },
  { key := { q := 21, n := 35, r := 30 }
    lowerValue := 42
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 32 30))) },
  { key := { q := 21, n := 35, r := 31 }
    lowerValue := 21
    upperValue := 9261
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 33 32)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 33 31))) },
  { key := { q := 21, n := 35, r := 32 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 34 33))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 34 32))) },
  { key := { q := 21, n := 35, r := 33 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 35 33)) },
  { key := { q := 21, n := 35, r := 34 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 35 34)) },
  { key := { q := 21, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 35 35)) },
  { key := { q := 21, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 35 36)) },
  { key := { q := 21, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 35 37)) },
  { key := { q := 21, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 35 38)) },
  { key := { q := 21, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 35 39)) },
  { key := { q := 21, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 35 40)) },
  { key := { q := 21, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 35 41)) },
  { key := { q := 21, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 35 42)) },
  { key := { q := 21, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 35 43)) },
  { key := { q := 21, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 35 44)) },
  { key := { q := 21, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 35 45)) },
  { key := { q := 21, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 35 46)) },
  { key := { q := 21, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 35 47)) },
  { key := { q := 21, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 35 48)) },
  { key := { q := 21, n := 36, r := 0 }
    lowerValue := 398010574215107679422058885600836061208944572721
    upperValue := 398010574215107679422058885600836061208944572721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 36 0)) },
  { key := { q := 21, n := 36, r := 1 }
    lowerValue := 552025761740787350099942975868011180594930060
    upperValue := 9497930774380606538416479183434269466275429281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 36, r := 2 }
    lowerValue := 1574901073575633522430106265806308384380185
    upperValue := 452282417827647930400784723020679498394068061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 3 }
    lowerValue := 6937279028740987889036304999388752386504
    upperValue := 21537257991792758590513558239079976114003241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 4 }
    lowerValue := 41974617624675904637748781796403227658
    upperValue := 1025583713894893266214931344718094100666821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 5 }
    lowerValue := 327349938426033670208996172107831335
    upperValue := 48837319709280631724520540224671147650801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 6 }
    lowerValue := 3161962377430224689893161964348681
    upperValue := 2325586652822887224977168582127197507181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 7 }
    lowerValue := 36815657547235814380123962613693
    upperValue := 110742221562994629760817551529866547961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 8 }
    lowerValue := 506712837015914765613328574732
    upperValue := 5273439122047363321943692929993645141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 8))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 9 }
    lowerValue := 8124847716073681772287071604
    upperValue := 251116148668922062949699663333030721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 9))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 10 }
    lowerValue := 150087311597435575228505258
    upperValue := 11957911841377241092842841111096701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 10))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 11 }
    lowerValue := 3166434007477441823676570
    upperValue := 569424373398916242516325767195081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 11))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 12 }
    lowerValue := 75774464111976221218939
    upperValue := 27115446352329344881729798437861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 12))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 13 }
    lowerValue := 2045775155956597525984
    upperValue := 1291211731063302137225228497041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 13))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 14 }
    lowerValue := 62049484791898640665
    upperValue := 61486272907776292248820404621
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 14))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 15 }
    lowerValue := 2107398768171653286
    upperValue := 2927917757513156773753352601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 15))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 16 }
    lowerValue := 79951494834232218
    upperValue := 139424655119674132083492981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 16))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 17 }
    lowerValue := 3382509129459509
    upperValue := 6639269291413053908737761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 17))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 18 }
    lowerValue := 159417241344612
    upperValue := 316155680543478757558941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 18))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 19 }
    lowerValue := 8366434948428
    upperValue := 15055032406832321788521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 19))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 36, r := 20 }
    lowerValue := 489041651294
    upperValue := 68122318582951682301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 36, r := 21 }
    lowerValue := 31864817910
    upperValue := 3243919932521508681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 36, r := 22 }
    lowerValue := 2317803747
    upperValue := 154472377739119461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 36, r := 23 }
    lowerValue := 188617227
    upperValue := 7355827511386641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 36, r := 24 }
    lowerValue := 17222576
    upperValue := 350277500542221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 36, r := 25 }
    lowerValue := 1771246
    upperValue := 16679880978201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25))) },
  { key := { q := 21, n := 36, r := 26 }
    lowerValue := 206167
    upperValue := 794280046581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26))) },
  { key := { q := 21, n := 36, r := 27 }
    lowerValue := 27325
    upperValue := 37822859361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 27))) },
  { key := { q := 21, n := 36, r := 28 }
    lowerValue := 4155
    upperValue := 1801088541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 30 28))) },
  { key := { q := 21, n := 36, r := 29 }
    lowerValue := 732
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 31 29))) },
  { key := { q := 21, n := 36, r := 30 }
    lowerValue := 152
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 32 30))) },
  { key := { q := 21, n := 36, r := 31 }
    lowerValue := 38
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 33 31))) },
  { key := { q := 21, n := 36, r := 32 }
    lowerValue := 21
    upperValue := 9261
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 34 33)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 34 32))) },
  { key := { q := 21, n := 36, r := 33 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 35 34))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 35 33))) },
  { key := { q := 21, n := 36, r := 34 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 36 34)) },
  { key := { q := 21, n := 36, r := 35 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 36 35)) },
  { key := { q := 21, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 36 36)) },
  { key := { q := 21, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 36 37)) },
  { key := { q := 21, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 36 38)) },
  { key := { q := 21, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 36 39)) },
  { key := { q := 21, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 36 40)) },
  { key := { q := 21, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 36 41)) },
  { key := { q := 21, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 36 42)) },
  { key := { q := 21, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 36 43)) },
  { key := { q := 21, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 36 44)) },
  { key := { q := 21, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 36 45)) },
  { key := { q := 21, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 36 46)) },
  { key := { q := 21, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 36 47)) },
  { key := { q := 21, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 36 48)) },
  { key := { q := 21, n := 37, r := 0 }
    lowerValue := 8358222058517261267863236597617557285387836027141
    upperValue := 8358222058517261267863236597617557285387836027141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 37 0)) },
  { key := { q := 21, n := 37, r := 1 }
    lowerValue := 11279651900833011157710170846987256795395190321
    upperValue := 199456546261992737306746062852119658791784014901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 1))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 37, r := 2 }
    lowerValue := 31287679759068287038916664224576374593895494
    upperValue := 9497930774380606538416479183434269466275429281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 2))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 3 }
    lowerValue := 133887631639534177415929340695220325489323
    upperValue := 452282417827647930400784723020679498394068061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 4 }
    lowerValue := 786313757542670260616551253462029339999
    upperValue := 21537257991792758590513558239079976114003241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 5 }
    lowerValue := 5946796084749390773162590980584614359
    upperValue := 1025583713894893266214931344718094100666821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 6 }
    lowerValue := 55650368113655344167612304303498097
    upperValue := 48837319709280631724520540224671147650801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 7 }
    lowerValue := 627098876814918837562621357117329
    upperValue := 2325586652822887224977168582127197507181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 7))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 8 }
    lowerValue := 8344089608562725939306247145479
    upperValue := 110742221562994629760817551529866547961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 8))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 9 }
    lowerValue := 129191560682987158399298781917
    upperValue := 5273439122047363321943692929993645141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 9))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 10 }
    lowerValue := 2301528004648435074674254904
    upperValue := 251116148668922062949699663333030721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 10))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 11 }
    lowerValue := 46763472767422884670043890
    upperValue := 11957911841377241092842841111096701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 11))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 12 }
    lowerValue := 1076188422903004746121147
    upperValue := 569424373398916242516325767195081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 12))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 13 }
    lowerValue := 27897581224039268843572
    upperValue := 27115446352329344881729798437861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 13))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 14 }
    lowerValue := 811048341810990533704
    upperValue := 1291211731063302137225228497041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 14))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 15 }
    lowerValue := 26354031663009585976
    upperValue := 61486272907776292248820404621
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 15))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) }]

end CoveringCodes.Database
