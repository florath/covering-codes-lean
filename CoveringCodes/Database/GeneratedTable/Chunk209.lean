import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 209. Do not edit manually.

def precomputedTable_chunk_209 : Array AnyBoundEntry := #[
  { key := { q := 21, n := 37, r := 16 }
    lowerValue := 954634133342261959
    upperValue := 2927917757513156773753352601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 16))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 17 }
    lowerValue := 38476323468286156
    upperValue := 139424655119674132083492981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 17))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 18 }
    lowerValue := 1723343089694320
    upperValue := 6639269291413053908737761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 18))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 19 }
    lowerValue := 85720525065662
    upperValue := 316155680543478757558941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 19))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 37, r := 20 }
    lowerValue := 4734720319151
    upperValue := 1430568690241985328321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 37, r := 21 }
    lowerValue := 290541279604
    upperValue := 68122318582951682301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 37, r := 22 }
    lowerValue := 19828261027
    upperValue := 3243919932521508681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 37, r := 23 }
    lowerValue := 1507472655
    upperValue := 154472377739119461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 37, r := 24 }
    lowerValue := 127972171
    upperValue := 7355827511386641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 37, r := 25 }
    lowerValue := 12167981
    upperValue := 350277500542221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25))) },
  { key := { q := 21, n := 37, r := 26 }
    lowerValue := 1300960
    upperValue := 16679880978201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26))) },
  { key := { q := 21, n := 37, r := 27 }
    lowerValue := 157179
    upperValue := 794280046581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 27))) },
  { key := { q := 21, n := 37, r := 28 }
    lowerValue := 21591
    upperValue := 37822859361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 30 28))) },
  { key := { q := 21, n := 37, r := 29 }
    lowerValue := 3398
    upperValue := 1801088541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 31 29))) },
  { key := { q := 21, n := 37, r := 30 }
    lowerValue := 619
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 32 30))) },
  { key := { q := 21, n := 37, r := 31 }
    lowerValue := 132
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 33 31))) },
  { key := { q := 21, n := 37, r := 32 }
    lowerValue := 34
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 34 32))) },
  { key := { q := 21, n := 37, r := 33 }
    lowerValue := 21
    upperValue := 9261
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 35 34)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 35 33))) },
  { key := { q := 21, n := 37, r := 34 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 36 35))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 36 34))) },
  { key := { q := 21, n := 37, r := 35 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 37 35)) },
  { key := { q := 21, n := 37, r := 36 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 37 36)) },
  { key := { q := 21, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 37 37)) },
  { key := { q := 21, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 37 38)) },
  { key := { q := 21, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 37 39)) },
  { key := { q := 21, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 37 40)) },
  { key := { q := 21, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 37 41)) },
  { key := { q := 21, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 37 42)) },
  { key := { q := 21, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 37 43)) },
  { key := { q := 21, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 37 44)) },
  { key := { q := 21, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 37 45)) },
  { key := { q := 21, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 37 46)) },
  { key := { q := 21, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 37 47)) },
  { key := { q := 21, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 37 48)) },
  { key := { q := 21, n := 38, r := 0 }
    lowerValue := 175522663228862486625127968549968702993144556569961
    upperValue := 175522663228862486625127968549968702993144556569961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 38 0)) },
  { key := { q := 21, n := 38, r := 1 }
    lowerValue := 230647389262631388469287737910602763460111112445
    upperValue := 4188587471501847483441667319894512834627464312921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 1))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 38, r := 2 }
    lowerValue := 622506882969142848213504593010979188586877464
    upperValue := 199456546261992737306746062852119658791784014901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 2))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 3 }
    lowerValue := 2589977338615592336332139375880247341342643
    upperValue := 9497930774380606538416479183434269466275429281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 4 }
    lowerValue := 14776911241812671906179333423495597933813
    upperValue := 452282417827647930400784723020679498394068061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 4))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 5 }
    lowerValue := 108475044312880698385093206247765749297
    upperValue := 21537257991792758590513558239079976114003241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 5))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 6 }
    lowerValue := 984413980874666089351972269721285381
    upperValue := 1025583713894893266214931344718094100666821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 6))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 7 }
    lowerValue := 10747011898792312611231272452977835
    upperValue := 48837319709280631724520540224671147650801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 7))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 8 }
    lowerValue := 138396258177591350511982391672192
    upperValue := 2325586652822887224977168582127197507181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 8))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 9 }
    lowerValue := 2071547324277121135225182190639
    upperValue := 110742221562994629760817551529866547961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 9))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 10 }
    lowerValue := 35635328831470270073687185917
    upperValue := 5273439122047363321943692929993645141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 10))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 11 }
    lowerValue := 698275475521342137507493153
    upperValue := 251116148668922062949699663333030721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 11))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 12 }
    lowerValue := 15476572917305966016642172
    upperValue := 11957911841377241092842841111096701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 12))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 13 }
    lowerValue := 385820134422285099092588
    upperValue := 569424373398916242516325767195081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 13))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 14 }
    lowerValue := 10769892658053934742577
    upperValue := 27115446352329344881729798437861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 14))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 15 }
    lowerValue := 335440212153545360137
    upperValue := 1291211731063302137225228497041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 15))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 16 }
    lowerValue := 11625210524041268141
    upperValue := 61486272907776292248820404621
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 16))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 17 }
    lowerValue := 447375403813157401
    upperValue := 2927917757513156773753352601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 17))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 18 }
    lowerValue := 19089734352556668
    upperValue := 139424655119674132083492981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 18))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 19 }
    lowerValue := 902404224947717
    upperValue := 6639269291413053908737761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 19))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 38, r := 20 }
    lowerValue := 47241749223811
    upperValue := 30041942495081691894741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 38, r := 21 }
    lowerValue := 2739380772235
    upperValue := 1430568690241985328321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 38, r := 22 }
    lowerValue := 176070951048
    upperValue := 68122318582951682301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 38, r := 23 }
    lowerValue := 12559633791
    upperValue := 3243919932521508681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 38, r := 24 }
    lowerValue := 996136984
    upperValue := 154472377739119461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 38, r := 25 }
    lowerValue := 88062543
    upperValue := 7355827511386641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25))) },
  { key := { q := 21, n := 38, r := 26 }
    lowerValue := 8705308
    upperValue := 350277500542221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26))) },
  { key := { q := 21, n := 38, r := 27 }
    lowerValue := 966163
    upperValue := 16679880978201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 27))) },
  { key := { q := 21, n := 38, r := 28 }
    lowerValue := 120996
    upperValue := 794280046581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 30 28))) },
  { key := { q := 21, n := 38, r := 29 }
    lowerValue := 17205
    upperValue := 37822859361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 31 29))) },
  { key := { q := 21, n := 38, r := 30 }
    lowerValue := 2799
    upperValue := 1801088541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 32 30))) },
  { key := { q := 21, n := 38, r := 31 }
    lowerValue := 526
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 33 31))) },
  { key := { q := 21, n := 38, r := 32 }
    lowerValue := 116
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 34 32))) },
  { key := { q := 21, n := 38, r := 33 }
    lowerValue := 31
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 35 33))) },
  { key := { q := 21, n := 38, r := 34 }
    lowerValue := 21
    upperValue := 9261
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 36 35)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 36 34))) },
  { key := { q := 21, n := 38, r := 35 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 37 36))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 37 35))) },
  { key := { q := 21, n := 38, r := 36 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 38 36)) },
  { key := { q := 21, n := 38, r := 37 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 38 37)) },
  { key := { q := 21, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 38 38)) },
  { key := { q := 21, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 38 39)) },
  { key := { q := 21, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 38 40)) },
  { key := { q := 21, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 38 41)) },
  { key := { q := 21, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 38 42)) },
  { key := { q := 21, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 38 43)) },
  { key := { q := 21, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 38 44)) },
  { key := { q := 21, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 38 45)) },
  { key := { q := 21, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 38 46)) },
  { key := { q := 21, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 38 47)) },
  { key := { q := 21, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 38 48)) },
  { key := { q := 21, n := 39, r := 0 }
    lowerValue := 3685975927806112219127687339549342762856035687969181
    upperValue := 3685975927806112219127687339549342762856035687969181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 39 0)) },
  { key := { q := 21, n := 39, r := 1 }
    lowerValue := 4719559446614740357397807092892884459482760163853
    upperValue := 87960336901538797152275013717784769527176750571341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 1))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 39, r := 2 }
    lowerValue := 12403134546980164341353206764730392464040553360
    upperValue := 4188587471501847483441667319894512834627464312921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 2))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 3 }
    lowerValue := 50211375165813554289996606004218229363654605
    upperValue := 199456546261992737306746062852119658791784014901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 4 }
    lowerValue := 278532259694400899291878446979748536431975
    upperValue := 9497930774380606538416479183434269466275429281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 4))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 5 }
    lowerValue := 1986346601430075471208663290356152599589
    upperValue := 452282417827647930400784723020679498394068061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 5))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 6 }
    lowerValue := 17496981861736179141196831396946356608
    upperValue := 21537257991792758590513558239079976114003241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 6))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 7 }
    lowerValue := 185241091072061082134871691521279362
    upperValue := 1025583713894893266214931344718094100666821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 7))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 8 }
    lowerValue := 2311092590143629293742468234682754
    upperValue := 48837319709280631724520540224671147650801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 8))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 9 }
    lowerValue := 33479819563180530101949413128354
    upperValue := 2325586652822887224977168582127197507181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 9))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 10 }
    lowerValue := 556783155227754421774451167222
    upperValue := 110742221562994629760817551529866547961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 10))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 11 }
    lowerValue := 10535079997767916490445650828
    upperValue := 5273439122047363321943692929993645141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 11))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 12 }
    lowerValue := 225187116651223096102219863
    upperValue := 251116148668922062949699663333030721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 12))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 13 }
    lowerValue := 5406578459008948280973524
    upperValue := 11957911841377241092842841111096701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 13))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 14 }
    lowerValue := 145138821352752086566617
    upperValue := 569424373398916242516325767195081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 14))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 15 }
    lowerValue := 4340469834165762573433
    upperValue := 27115446352329344881729798437861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 15))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 16 }
    lowerValue := 144188095720616037782
    upperValue := 1291211731063302137225228497041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 16))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 17 }
    lowerValue := 5308851028716662625
    upperValue := 61486272907776292248820404621
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 17))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 18 }
    lowerValue := 216295585048102143
    upperValue := 2927917757513156773753352601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 18))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 19 }
    lowerValue := 9741008136122459
    upperValue := 139424655119674132083492981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 19))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 39, r := 20 }
    lowerValue := 484644452865649
    upperValue := 630880792396715529789561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 39, r := 21 }
    lowerValue := 26636213385324
    upperValue := 30041942495081691894741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 39, r := 22 }
    lowerValue := 1617817734060
    upperValue := 1430568690241985328321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 39, r := 23 }
    lowerValue := 108689617072
    upperValue := 68122318582951682301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 39, r := 24 }
    lowerValue := 8088492377
    upperValue := 3243919932521508681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 39, r := 25 }
    lowerValue := 668085006
    upperValue := 154472377739119461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25))) },
  { key := { q := 21, n := 39, r := 26 }
    lowerValue := 61406425
    upperValue := 7355827511386641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26))) },
  { key := { q := 21, n := 39, r := 27 }
    lowerValue := 6301630
    upperValue := 350277500542221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 27))) },
  { key := { q := 21, n := 39, r := 28 }
    lowerValue := 725008
    upperValue := 16679880978201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 30 28))) },
  { key := { q := 21, n := 39, r := 29 }
    lowerValue := 93994
    upperValue := 794280046581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 31 29))) },
  { key := { q := 21, n := 39, r := 30 }
    lowerValue := 13818
    upperValue := 37822859361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 32 30))) },
  { key := { q := 21, n := 39, r := 31 }
    lowerValue := 2322
    upperValue := 1801088541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 33 31))) },
  { key := { q := 21, n := 39, r := 32 }
    lowerValue := 450
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 34 32))) },
  { key := { q := 21, n := 39, r := 33 }
    lowerValue := 102
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 35 33))) },
  { key := { q := 21, n := 39, r := 34 }
    lowerValue := 28
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 34))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 36 34))) },
  { key := { q := 21, n := 39, r := 35 }
    lowerValue := 21
    upperValue := 9261
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 37 36)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 37 35))) },
  { key := { q := 21, n := 39, r := 36 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 38 37))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 38 36))) },
  { key := { q := 21, n := 39, r := 37 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 39 37)) },
  { key := { q := 21, n := 39, r := 38 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 39 38)) },
  { key := { q := 21, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 39 39)) },
  { key := { q := 21, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 39 40)) },
  { key := { q := 21, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 39 41)) },
  { key := { q := 21, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 39 42)) },
  { key := { q := 21, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 39 43)) },
  { key := { q := 21, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 39 44)) },
  { key := { q := 21, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 39 45)) },
  { key := { q := 21, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 39 46)) },
  { key := { q := 21, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 39 47)) },
  { key := { q := 21, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 39 48)) },
  { key := { q := 21, n := 40, r := 0 }
    lowerValue := 77405494483928356601681434130536198019976749447352801
    upperValue := 77405494483928356601681434130536198019976749447352801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 40 0)) },
  { key := { q := 21, n := 40, r := 1 }
    lowerValue := 96636073013643391512710904033128836479371722156496
    upperValue := 1847167074932314740197775288073480160070711761998161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 1))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 40, r := 2 }
    lowerValue := 247459229618602103579213091168302524672161372398
    upperValue := 87960336901538797152275013717784769527176750571341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 2))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 3 }
    lowerValue := 975460141399776885023648177592826219454770721
    upperValue := 4188587471501847483441667319894512834627464312921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 3))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 4 }
    lowerValue := 5265052101723768916857156325855175696745600
    upperValue := 199456546261992737306746062852119658791784014901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 4))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 5 }
    lowerValue := 36506388686479925795821650829736150904193
    upperValue := 9497930774380606538416479183434269466275429281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 5))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 6 }
    lowerValue := 312400281910801806690315919596676321439
    upperValue := 452282417827647930400784723020679498394068061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 6))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 7 }
    lowerValue := 3210309898080193889682674882509817529
    upperValue := 21537257991792758590513558239079976114003241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 7))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 8 }
    lowerValue := 38841187537997034048758398386771103
    upperValue := 1025583713894893266214931344718094100666821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 8))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 9 }
    lowerValue := 545133769837644419084454554916333
    upperValue := 48837319709280631724520540224671147650801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 9))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 10 }
    lowerValue := 8774106377936952279360485513569
    upperValue := 2325586652822887224977168582127197507181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 10))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 11 }
    lowerValue := 160499418241897229012821989542
    upperValue := 110742221562994629760817551529866547961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 11))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 12 }
    lowerValue := 3312736127889942941063602628
    upperValue := 5273439122047363321943692929993645141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 12))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 13 }
    lowerValue := 76705354915871604144995791
    upperValue := 251116148668922062949699663333030721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 13))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 14 }
    lowerValue := 1983161527324322680885200
    upperValue := 11957911841377241092842841111096701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 14))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 15 }
    lowerValue := 57035938041786298245028
    upperValue := 569424373398916242516325767195081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 15))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 16 }
    lowerValue := 1819255823421051996508
    upperValue := 27115446352329344881729798437861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 16))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 17 }
    lowerValue := 64205971519048862951
    upperValue := 1291211731063302137225228497041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 17))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 18 }
    lowerValue := 2502801833271862524
    upperValue := 61486272907776292248820404621
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 18))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 19 }
    lowerValue := 107623408660262713
    upperValue := 2927917757513156773753352601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 19))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 40, r := 20 }
    lowerValue := 5101366737794474
    upperValue := 13248496640331026125580781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 40, r := 21 }
    lowerValue := 266462835775953
    upperValue := 630880792396715529789561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 40, r := 22 }
    lowerValue := 15339954433279
    upperValue := 30041942495081691894741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 40, r := 23 }
    lowerValue := 973897557138
    upperValue := 1430568690241985328321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 40, r := 24 }
    lowerValue := 68261016298
    upperValue := 68122318582951682301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 40, r := 25 }
    lowerValue := 5290386557
    upperValue := 3243919932521508681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25))) },
  { key := { q := 21, n := 40, r := 26 }
    lowerValue := 454336468
    upperValue := 154472377739119461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26))) },
  { key := { q := 21, n := 40, r := 27 }
    lowerValue := 43353682
    upperValue := 7355827511386641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 27))) },
  { key := { q := 21, n := 40, r := 28 }
    lowerValue := 4612264
    upperValue := 350277500542221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 30 28))) },
  { key := { q := 21, n := 40, r := 29 }
    lowerValue := 549379
    upperValue := 16679880978201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 31 29))) },
  { key := { q := 21, n := 40, r := 30 }
    lowerValue := 73645
    upperValue := 794280046581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 32 30))) },
  { key := { q := 21, n := 40, r := 31 }
    lowerValue := 11181
    upperValue := 37822859361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 33 31))) },
  { key := { q := 21, n := 40, r := 32 }
    lowerValue := 1938
    upperValue := 1801088541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 34 32))) },
  { key := { q := 21, n := 40, r := 33 }
    lowerValue := 387
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 35 33))) },
  { key := { q := 21, n := 40, r := 34 }
    lowerValue := 91
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 36 34))) },
  { key := { q := 21, n := 40, r := 35 }
    lowerValue := 25
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 35))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 37 35))) },
  { key := { q := 21, n := 40, r := 36 }
    lowerValue := 21
    upperValue := 9261
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 38 37)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 38 36))) },
  { key := { q := 21, n := 40, r := 37 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 39 38))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 39 37))) },
  { key := { q := 21, n := 40, r := 38 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 40 38)) },
  { key := { q := 21, n := 40, r := 39 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 40 39)) },
  { key := { q := 21, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 40 40)) },
  { key := { q := 21, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 40 41)) },
  { key := { q := 21, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 40 42)) },
  { key := { q := 21, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 40 43)) },
  { key := { q := 21, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 40 44)) },
  { key := { q := 21, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 40 45)) },
  { key := { q := 21, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 40 46)) },
  { key := { q := 21, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 40 47)) },
  { key := { q := 21, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 40 48)) },
  { key := { q := 21, n := 41, r := 0 }
    lowerValue := 1625515384162495488635310116741260158419511738394408821
    upperValue := 1625515384162495488635310116741260158419511738394408821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 41 0)) },
  { key := { q := 21, n := 41, r := 1 }
    lowerValue := 1979921296178435430737283942437588499901963140553483
    upperValue := 38790508573578609544153281049543083361484947001961381
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 1))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 41, r := 2 }
    lowerValue := 4943465849694805041756183810466059523021679693190
    upperValue := 1847167074932314740197775288073480160070711761998161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 2))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 3 }
    lowerValue := 18987709037162134129090623929294157180596047905
    upperValue := 87960336901538797152275013717784769527176750571341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 3))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 4 }
    lowerValue := 99793385877722033621215285595085330053276813
    upperValue := 4188587471501847483441667319894512834627464312921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 4))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 5 }
    lowerValue := 673269008092401359568985055426328286301953
    upperValue := 199456546261992737306746062852119658791784014901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 5))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 6 }
    lowerValue := 5601686849833241097344991860843544374516
    upperValue := 9497930774380606538416479183434269466275429281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 6))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 7 }
    lowerValue := 55922925351530162482422140098718964542
    upperValue := 452282417827647930400784723020679498394068061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 7))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 8 }
    lowerValue := 656746789939328459955378583782110401
    upperValue := 21537257991792758590513558239079976114003241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 8))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 9 }
    lowerValue := 8938720809077426115684856266168427
    upperValue := 1025583713894893266214931344718094100666821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 9))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 10 }
    lowerValue := 139386732633705004258051744159494
    upperValue := 48837319709280631724520540224671147650801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 10))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 11 }
    lowerValue := 2467688965168497705803064310827
    upperValue := 2325586652822887224977168582127197507181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 11))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 12 }
    lowerValue := 49240717758196890006645474627
    upperValue := 110742221562994629760817551529866547961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 12))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 13 }
    lowerValue := 1100963319842415295182280774
    upperValue := 5273439122047363321943692929993645141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 13))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 14 }
    lowerValue := 27451577866094525561186671
    upperValue := 251116148668922062949699663333030721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 14))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 15 }
    lowerValue := 760381582799024780720532
    upperValue := 11957911841377241092842841111096701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 15))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 16 }
    lowerValue := 23324744324361690892729
    upperValue := 569424373398916242516325767195081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 16))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 17 }
    lowerValue := 790413223881958421723
    upperValue := 27115446352329344881729798437861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 17))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 18 }
    lowerValue := 29533799916012593144
    upperValue := 1291211731063302137225228497041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 18))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 19 }
    lowerValue := 1215087706316723769
    upperValue := 61486272907776292248820404621
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 19))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 41, r := 20 }
    lowerValue := 54994109881175689
    upperValue := 278218429446951548637196401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 41, r := 21 }
    lowerValue := 2736731674839085
    upperValue := 13248496640331026125580781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 41, r := 22 }
    lowerValue := 149736236227265
    upperValue := 630880792396715529789561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 41, r := 23 }
    lowerValue := 9010605949502
    upperValue := 30041942495081691894741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 41, r := 24 }
    lowerValue := 596833527509
    upperValue := 1430568690241985328321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 41, r := 25 }
    lowerValue := 43567099404
    upperValue := 68122318582951682301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25))) },
  { key := { q := 21, n := 41, r := 26 }
    lowerValue := 3510852015
    upperValue := 3243919932521508681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26))) },
  { key := { q := 21, n := 41, r := 27 }
    lowerValue := 313029490
    upperValue := 154472377739119461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 27))) },
  { key := { q := 21, n := 41, r := 28 }
    lowerValue := 30967281
    upperValue := 7355827511386641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 30 28))) },
  { key := { q := 21, n := 41, r := 29 }
    lowerValue := 3411028
    upperValue := 350277500542221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 31 29))) },
  { key := { q := 21, n := 41, r := 30 }
    lowerValue := 420140
    upperValue := 16679880978201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 32 30))) },
  { key := { q := 21, n := 41, r := 31 }
    lowerValue := 58170
    upperValue := 794280046581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 33 31))) },
  { key := { q := 21, n := 41, r := 32 }
    lowerValue := 9111
    upperValue := 37822859361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 34 32))) },
  { key := { q := 21, n := 41, r := 33 }
    lowerValue := 1627
    upperValue := 1801088541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 35 33))) },
  { key := { q := 21, n := 41, r := 34 }
    lowerValue := 335
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 36 34))) },
  { key := { q := 21, n := 41, r := 35 }
    lowerValue := 81
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 37 35))) },
  { key := { q := 21, n := 41, r := 36 }
    lowerValue := 23
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 38 36))) },
  { key := { q := 21, n := 41, r := 37 }
    lowerValue := 21
    upperValue := 9261
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 39 38)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 39 37))) },
  { key := { q := 21, n := 41, r := 38 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 40 39))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 40 38))) },
  { key := { q := 21, n := 41, r := 39 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 41 39)) },
  { key := { q := 21, n := 41, r := 40 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 41 40)) },
  { key := { q := 21, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 41 41)) },
  { key := { q := 21, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 41 42)) },
  { key := { q := 21, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 41 43)) },
  { key := { q := 21, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 41 44)) },
  { key := { q := 21, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 41 45)) },
  { key := { q := 21, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 41 46)) },
  { key := { q := 21, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 41 47)) },
  { key := { q := 21, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 41 48)) },
  { key := { q := 21, n := 42, r := 0 }
    lowerValue := 34135823067412405261341512451566463326809746506282585241
    upperValue := 34135823067412405261341512451566463326809746506282585241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 42 0)) },
  { key := { q := 21, n := 42, r := 1 }
    lowerValue := 40589563694901789847017256184977958771474133776792611
    upperValue := 814600680045150800427218902040404750591183887041189001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 1))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 42, r := 2 }
    lowerValue := 98875345244082844335816176096021223802531409960818
    upperValue := 38790508573578609544153281049543083361484947001961381
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 2))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 3 }
    lowerValue := 370295968173608238018724846112475459350480479910
    upperValue := 1847167074932314740197775288073480160070711761998161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 3))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 4 }
    lowerValue := 1896330818030051028657554825199607157814109699
    upperValue := 87960336901538797152275013717784769527176750571341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 4))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 5 }
    lowerValue := 12457699494206458058849514744300325333155866
    upperValue := 4188587471501847483441667319894512834627464312921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 5))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 6 }
    lowerValue := 100853187671817395668184898678160691619579
    upperValue := 199456546261992737306746062852119658791784014901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 6))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 7 }
    lowerValue := 978924811461724532109035952786830110264
    upperValue := 9497930774380606538416479183434269466275429281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 7))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 8 }
    lowerValue := 11168478476367917900659043816562617021
    upperValue := 452282417827647930400784723020679498394068061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 8))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 9 }
    lowerValue := 147548619047497610498042721270460898
    upperValue := 21537257991792758590513558239079976114003241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 9))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 10 }
    lowerValue := 2231255721124643832107459998267623
    upperValue := 1025583713894893266214931344718094100666821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 10))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 11 }
    lowerValue := 38270666260781258520014291583012
    upperValue := 48837319709280631724520540224671147650801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 11))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 12 }
    lowerValue := 739094522458201930144581252620
    upperValue := 2325586652822887224977168582127197507181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 12))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 13 }
    lowerValue := 15976101026169561489467269497
    upperValue := 110742221562994629760817551529866547961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 13))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 14 }
    lowerValue := 384659852666031070491466105
    upperValue := 5273439122047363321943692929993645141
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 14))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 15 }
    lowerValue := 10275557463490998157100857
    upperValue := 251116148668922062949699663333030721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 15))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 16 }
    lowerValue := 303575653691711499277197
    upperValue := 11957911841377241092842841111096701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 16))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 17 }
    lowerValue := 9893435883485363049701
    upperValue := 569424373398916242516325767195081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 17))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 18 }
    lowerValue := 354953190732618412419
    upperValue := 27115446352329344881729798437861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 18))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 19 }
    lowerValue := 13998356933064554851
    upperValue := 1291211731063302137225228497041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 19))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 42, r := 20 }
    lowerValue := 606174620748601734
    upperValue := 5842587018385982521381124421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 42 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) }]

end CoveringCodes.Database
