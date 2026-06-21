import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 122. Do not edit manually.

def precomputedTable_chunk_122 : Array AnyBoundEntry := #[
  { key := { q := 12, n := 34, r := 22 }
    lowerValue := 93635
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 34, r := 23 }
    lowerValue := 15943
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 34, r := 24 }
    lowerValue := 3076
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 34, r := 25 }
    lowerValue := 676
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 34, r := 26 }
    lowerValue := 171
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 34, r := 27 }
    lowerValue := 50
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 34, r := 28 }
    lowerValue := 17
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 34, r := 29 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 31 30))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 34, r := 30 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 32 31)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30))) },
  { key := { q := 12, n := 34, r := 31 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 33 32))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 31)) },
  { key := { q := 12, n := 34, r := 32 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 32)) },
  { key := { q := 12, n := 34, r := 33 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 33)) },
  { key := { q := 12, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 34 34)) },
  { key := { q := 12, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 34 35)) },
  { key := { q := 12, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 34 36)) },
  { key := { q := 12, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 34 37)) },
  { key := { q := 12, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 34 38)) },
  { key := { q := 12, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 34 39)) },
  { key := { q := 12, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 34 40)) },
  { key := { q := 12, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 34 41)) },
  { key := { q := 12, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 34 42)) },
  { key := { q := 12, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 34 43)) },
  { key := { q := 12, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 34 44)) },
  { key := { q := 12, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 34 45)) },
  { key := { q := 12, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 34 46)) },
  { key := { q := 12, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 34 47)) },
  { key := { q := 12, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 34 48)) },
  { key := { q := 12, n := 35, r := 0 }
    lowerValue := 59066822915424320448445358917464096768
    upperValue := 59066822915424320448445358917464096768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 35 0)) },
  { key := { q := 12, n := 35, r := 1 }
    lowerValue := 153022857293845389762811810667005433
    upperValue := 2461117621476013352018556621561004032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 1))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 35, r := 2 }
    lowerValue := 816054253401090347583555890599247
    upperValue := 182305008998223211260633823819333632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 2))
    upperTrace := (.lengthenFreeN 26 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 35, r := 3 }
    lowerValue := 6724536567806865799907165086800
    upperValue := 15192084083185267605052818651611136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 35, r := 4 }
    lowerValue := 76177261498675701080841773757
    upperValue := 1266007006932105633754401554300928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 4))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 35, r := 5 }
    lowerValue := 1113256487559435545819214453
    upperValue := 105500583911008802812866796191744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 5))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 35, r := 6 }
    lowerValue := 20169068005352775634358878
    upperValue := 8791715325917400234405566349312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 6))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 35, r := 7 }
    lowerValue := 440894394001492138238755
    upperValue := 732642943826450019533797195776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 7))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 35, r := 8 }
    lowerValue := 11404881652168308365096
    upperValue := 61053578652204168294483099648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 8))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 35, r := 9 }
    lowerValue := 344076349067857439545
    upperValue := 5087798221017014024540258304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 9))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 35, r := 10 }
    lowerValue := 11973220190934753230
    upperValue := 423983185084751168711688192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 10))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 35, r := 11 }
    lowerValue := 476450383909607072
    upperValue := 6624737266949237011120128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 11))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 35, r := 12 }
    lowerValue := 21534914792384831
    upperValue := 552061438912436417593344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 12))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 35, r := 13 }
    lowerValue := 1099735536722974
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 13))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 35, r := 14 }
    lowerValue := 63192387147475
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 14))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 35, r := 15 }
    lowerValue := 4072961971151
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 15))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 35, r := 16 }
    lowerValue := 293784668737
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 16))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 35, r := 17 }
    lowerValue := 23678301429
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 35, r := 18 }
    lowerValue := 2130602891
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 35, r := 19 }
    lowerValue := 213991142
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 35, r := 20 }
    lowerValue := 24000383
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 35, r := 21 }
    lowerValue := 3009107
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 35, r := 22 }
    lowerValue := 422488
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 35, r := 23 }
    lowerValue := 66592
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 35, r := 24 }
    lowerValue := 11822
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 35, r := 25 }
    lowerValue := 2374
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 35, r := 26 }
    lowerValue := 542
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 35, r := 27 }
    lowerValue := 142
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 35, r := 28 }
    lowerValue := 43
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 35, r := 29 }
    lowerValue := 15
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 35, r := 30 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 32 31))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30))) },
  { key := { q := 12, n := 35, r := 31 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 33 32)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 31))) },
  { key := { q := 12, n := 35, r := 32 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 34 33))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 32)) },
  { key := { q := 12, n := 35, r := 33 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 33)) },
  { key := { q := 12, n := 35, r := 34 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 34)) },
  { key := { q := 12, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 35 35)) },
  { key := { q := 12, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 35 36)) },
  { key := { q := 12, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 35 37)) },
  { key := { q := 12, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 35 38)) },
  { key := { q := 12, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 35 39)) },
  { key := { q := 12, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 35 40)) },
  { key := { q := 12, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 35 41)) },
  { key := { q := 12, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 35 42)) },
  { key := { q := 12, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 35 43)) },
  { key := { q := 12, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 35 44)) },
  { key := { q := 12, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 35 45)) },
  { key := { q := 12, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 35 46)) },
  { key := { q := 12, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 35 47)) },
  { key := { q := 12, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 35 48)) },
  { key := { q := 12, n := 36, r := 0 }
    lowerValue := 708801874985091845381344307009569161216
    upperValue := 708801874985091845381344307009569161216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 36 0)) },
  { key := { q := 12, n := 36, r := 1 }
    lowerValue := 1785395151095949232698600269545514260
    upperValue := 29533411457712160224222679458732048384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 36, r := 2 }
    lowerValue := 9250027731544910349894218839437394
    upperValue := 2187660107978678535127605885832003584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 2))
    upperTrace := (.lengthenFreeN 27 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 36, r := 3 }
    lowerValue := 73987924487118989593737045963684
    upperValue := 182305008998223211260633823819333632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 36, r := 4 }
    lowerValue := 812838662558953749434264763331
    upperValue := 15192084083185267605052818651611136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 4))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 36, r := 5 }
    lowerValue := 11508962749072515789258227271
    upperValue := 1266007006932105633754401554300928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 5))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 36, r := 6 }
    lowerValue := 201810256269600777556180078
    upperValue := 105500583911008802812866796191744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 6))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 36, r := 7 }
    lowerValue := 4265140399907234574404891
    upperValue := 8791715325917400234405566349312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 7))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 36, r := 8 }
    lowerValue := 106542568872318621677955
    upperValue := 732642943826450019533797195776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 8))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 36, r := 9 }
    lowerValue := 3100109538559609374233
    upperValue := 61053578652204168294483099648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 9))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 36, r := 10 }
    lowerValue := 103905667838455180792
    upperValue := 5087798221017014024540258304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 10))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 36, r := 11 }
    lowerValue := 3976707952013338601
    upperValue := 79496847203390844133441536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 11))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 36, r := 12 }
    lowerValue := 172603218063981046
    upperValue := 6624737266949237011120128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 12))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 36, r := 13 }
    lowerValue := 8450061988446617
    upperValue := 552061438912436417593344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 13))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 36, r := 14 }
    lowerValue := 464628315117693
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 14))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 36, r := 15 }
    lowerValue := 28599131145386
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 15))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 36, r := 16 }
    lowerValue := 1965733718273
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 16))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 36, r := 17 }
    lowerValue := 150611579767
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 17))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 36, r := 18 }
    lowerValue := 12849189168
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 36, r := 19 }
    lowerValue := 1220014514
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 36, r := 20 }
    lowerValue := 128935212
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 36, r := 21 }
    lowerValue := 15177374
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 36, r := 22 }
    lowerValue := 1992527
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 36, r := 23 }
    lowerValue := 292304
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 36, r := 24 }
    lowerValue := 48043
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 36, r := 25 }
    lowerValue := 8877
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 36, r := 26 }
    lowerValue := 1852
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 36, r := 27 }
    lowerValue := 439
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 36, r := 28 }
    lowerValue := 119
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 36, r := 29 }
    lowerValue := 37
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 36, r := 30 }
    lowerValue := 14
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30))) },
  { key := { q := 12, n := 36, r := 31 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 33 32))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 31))) },
  { key := { q := 12, n := 36, r := 32 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 34 33)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 32))) },
  { key := { q := 12, n := 36, r := 33 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 35 34))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 36 33)) },
  { key := { q := 12, n := 36, r := 34 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 36 34)) },
  { key := { q := 12, n := 36, r := 35 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 36 35)) },
  { key := { q := 12, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 36 36)) },
  { key := { q := 12, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 36 37)) },
  { key := { q := 12, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 36 38)) },
  { key := { q := 12, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 36 39)) },
  { key := { q := 12, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 36 40)) },
  { key := { q := 12, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 36 41)) },
  { key := { q := 12, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 36 42)) },
  { key := { q := 12, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 36 43)) },
  { key := { q := 12, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 36 44)) },
  { key := { q := 12, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 36 45)) },
  { key := { q := 12, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 36 46)) },
  { key := { q := 12, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 36 47)) },
  { key := { q := 12, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 36 48)) },
  { key := { q := 12, n := 37, r := 0 }
    lowerValue := 8505622499821102144576131684114829934592
    upperValue := 8505622499821102144576131684114829934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 37 0)) },
  { key := { q := 12, n := 37, r := 1 }
    lowerValue := 20847113970149760158274832559104975330
    upperValue := 354400937492545922690672153504784580608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 1))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 37, r := 2 }
    lowerValue := 105015464106243698849002786430042102
    upperValue := 26251921295744142421531270629984043008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 2))
    upperTrace := (.lengthenFreeN 28 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 37, r := 3 }
    lowerValue := 816054253401090347583555890599247
    upperValue := 2187660107978678535127605885832003584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 37, r := 4 }
    lowerValue := 8702403786644202771099233952118
    upperValue := 182305008998223211260633823819333632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 4))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 37, r := 5 }
    lowerValue := 119496175318067267974867283430
    upperValue := 15192084083185267605052818651611136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 5))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 37, r := 6 }
    lowerValue := 2030138631771009730506640352
    upperValue := 1266007006932105633754401554300928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 6))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 37, r := 7 }
    lowerValue := 41527446571132839552552842
    upperValue := 105500583911008802812866796191744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 7))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 37, r := 8 }
    lowerValue := 1002927938576690860486319
    upperValue := 8791715325917400234405566349312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 8))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 37, r := 9 }
    lowerValue := 28181294495270341598839
    upperValue := 732642943826450019533797195776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 9))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 37, r := 10 }
    lowerValue := 910997392615433369107
    upperValue := 61053578652204168294483099648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 10))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 37, r := 11 }
    lowerValue := 33582446587415605446
    upperValue := 953962166440690129601298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 11))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 37, r := 12 }
    lowerValue := 1401911443492431153
    upperValue := 79496847203390844133441536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 12))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 37, r := 13 }
    lowerValue := 65907880504527697
    upperValue := 6624737266949237011120128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 13))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 37, r := 14 }
    lowerValue := 3474209055066922
    upperValue := 552061438912436417593344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 14))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 37, r := 15 }
    lowerValue := 204635209093426
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 15))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 37, r := 16 }
    lowerValue := 13432690909220
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 16))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 37, r := 17 }
    lowerValue := 980755081876
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 17))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 37, r := 18 }
    lowerValue := 79543170125
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 37, r := 19 }
    lowerValue := 7160983265
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 37, r := 20 }
    lowerValue := 715473083
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 37, r := 21 }
    lowerValue := 79364179
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 37, r := 22 }
    lowerValue := 9782834
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 37, r := 23 }
    lowerValue := 1342023
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 37, r := 24 }
    lowerValue := 205315
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 37, r := 25 }
    lowerValue := 35128
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 37, r := 26 }
    lowerValue := 6745
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 37, r := 27 }
    lowerValue := 1460
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 37, r := 28 }
    lowerValue := 358
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 37, r := 29 }
    lowerValue := 101
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 37, r := 30 }
    lowerValue := 33
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30))) },
  { key := { q := 12, n := 37, r := 31 }
    lowerValue := 12
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 31))) },
  { key := { q := 12, n := 37, r := 32 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 34 33))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 32))) },
  { key := { q := 12, n := 37, r := 33 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 35 34)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 37 33)) },
  { key := { q := 12, n := 37, r := 34 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 36 35))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 37 34)) },
  { key := { q := 12, n := 37, r := 35 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 37 35)) },
  { key := { q := 12, n := 37, r := 36 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 37 36)) },
  { key := { q := 12, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 37 37)) },
  { key := { q := 12, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 37 38)) },
  { key := { q := 12, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 37 39)) },
  { key := { q := 12, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 37 40)) },
  { key := { q := 12, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 37 41)) },
  { key := { q := 12, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 37 42)) },
  { key := { q := 12, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 37 43)) },
  { key := { q := 12, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 37 44)) },
  { key := { q := 12, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 37 45)) },
  { key := { q := 12, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 37 46)) },
  { key := { q := 12, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 37 47)) },
  { key := { q := 12, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 37 48)) },
  { key := { q := 12, n := 38, r := 0 }
    lowerValue := 102067469997853225734913580209377959215104
    upperValue := 102067469997853225734913580209377959215104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 38 0)) },
  { key := { q := 12, n := 38, r := 1 }
    lowerValue := 243597780424470705811249594771785105526
    upperValue := 4252811249910551072288065842057414967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 1))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 38, r := 2 }
    lowerValue := 1194022952175349497378554317977796019
    upperValue := 315023055548929709058375247559808516096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 2))
    upperTrace := (.lengthenFreeN 29 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 38, r := 3 }
    lowerValue := 9021503654020800595424593952391404
    upperValue := 26251921295744142421531270629984043008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 38, r := 4 }
    lowerValue := 93465022851567900368897815585472
    upperValue := 2187660107978678535127605885832003584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 4))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 38, r := 5 }
    lowerValue := 1245784156535228917975769722869
    upperValue := 182305008998223211260633823819333632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 5))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 38, r := 6 }
    lowerValue := 20525790214841216666600457118
    upperValue := 15192084083185267605052818651611136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 6))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 38, r := 7 }
    lowerValue := 406796087334449845692709896
    upperValue := 1266007006932105633754401554300928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 7))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 38, r := 8 }
    lowerValue := 9508975032468651098895658
    upperValue := 105500583911008802812866796191744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 8))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 38, r := 9 }
    lowerValue := 258328861231558821602023
    upperValue := 8791715325917400234405566349312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 9))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 38, r := 10 }
    lowerValue := 8064365374773210243835
    upperValue := 732642943826450019533797195776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 10))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 38, r := 11 }
    lowerValue := 286723696483754739765
    upperValue := 11447545997288281555215581184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 11))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 38, r := 12 }
    lowerValue := 11528884906072121430
    upperValue := 953962166440690129601298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 12))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 38, r := 13 }
    lowerValue := 521305711640659047
    upperValue := 79496847203390844133441536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 13))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 38, r := 14 }
    lowerValue := 26389000711260655
    upperValue := 6624737266949237011120128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 14))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 38, r := 15 }
    lowerValue := 1490140324955499
    upperValue := 552061438912436417593344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 15))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 38, r := 16 }
    lowerValue := 93604154497827
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 16))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 38, r := 17 }
    lowerValue := 6526988121541
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 17))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 38, r := 18 }
    lowerValue := 504463711598
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 38, r := 19 }
    lowerValue := 43175514004
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 38, r := 20 }
    lowerValue := 4090288315
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 38, r := 21 }
    lowerValue := 428960774
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 38, r := 22 }
    lowerValue := 49829449
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 38, r := 23 }
    lowerValue := 6418614
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 38, r := 24 }
    lowerValue := 918333
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 38, r := 25 }
    lowerValue := 146263
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 38, r := 26 }
    lowerValue := 26007
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 38, r := 27 }
    lowerValue := 5182
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 38, r := 28 }
    lowerValue := 1162
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 38, r := 29 }
    lowerValue := 295
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 38, r := 30 }
    lowerValue := 86
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30))) },
  { key := { q := 12, n := 38, r := 31 }
    lowerValue := 29
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 31))) },
  { key := { q := 12, n := 38, r := 32 }
    lowerValue := 12
    upperValue := 20736
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 34 33)))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 32))) },
  { key := { q := 12, n := 38, r := 33 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 35 34))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 37 33))) },
  { key := { q := 12, n := 38, r := 34 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 36 35)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 38 34)) },
  { key := { q := 12, n := 38, r := 35 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 37 36))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 38 35)) },
  { key := { q := 12, n := 38, r := 36 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 38 36)) },
  { key := { q := 12, n := 38, r := 37 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 38 37)) },
  { key := { q := 12, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 38 38)) },
  { key := { q := 12, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 38 39)) },
  { key := { q := 12, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 38 40)) },
  { key := { q := 12, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 38 41)) },
  { key := { q := 12, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 38 42)) },
  { key := { q := 12, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 38 43)) },
  { key := { q := 12, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 38 44)) },
  { key := { q := 12, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 38 45)) },
  { key := { q := 12, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 38 46)) },
  { key := { q := 12, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 38 47)) },
  { key := { q := 12, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 38 48)) },
  { key := { q := 12, n := 39, r := 0 }
    lowerValue := 1224809639974238708818962962512535510581248
    upperValue := 1224809639974238708818962962512535510581248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 39 0)) },
  { key := { q := 12, n := 39, r := 1 }
    lowerValue := 2848394511567996997253402238401245373445
    upperValue := 51033734998926612867456790104688979607552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 1))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 39, r := 2 }
    lowerValue := 13595249691692163577038360796445100072
    upperValue := 3780276666587156508700502970717702193152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 2))
    upperTrace := (.lengthenFreeN 30 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 39, r := 3 }
    lowerValue := 99951007415823170107879237358315626
    upperValue := 315023055548929709058375247559808516096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 39, r := 4 }
    lowerValue := 1006838233111287142133026254785093
    upperValue := 26251921295744142421531270629984043008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 4))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 39, r := 5 }
    lowerValue := 13037832934382273962829153143746
    upperValue := 2187660107978678535127605885832003584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 5))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 39, r := 6 }
    lowerValue := 208518045042820526628695649512
    upperValue := 182305008998223211260633823819333632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 6))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 39, r := 7 }
    lowerValue := 4007821632170216499290032565
    upperValue := 15192084083185267605052818651611136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 7))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 39, r := 8 }
    lowerValue := 90768550836324599019712146
    upperValue := 1266007006932105633754401554300928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 8))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 39, r := 9 }
    lowerValue := 2386712401453245299760372
    upperValue := 105500583911008802812866796191744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 9))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 39, r := 10 }
    lowerValue := 72035859302156023255543
    upperValue := 8791715325917400234405566349312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 10))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 39, r := 11 }
    lowerValue := 2473357942293016876341
    upperValue := 137370551967459378662586974208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 11))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 39, r := 12 }
    lowerValue := 95920870409623062515
    upperValue := 11447545997288281555215581184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 12))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 39, r := 13 }
    lowerValue := 4177712312038321886
    upperValue := 953962166440690129601298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 13))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 39, r := 14 }
    lowerValue := 203405556541470440
    upperValue := 79496847203390844133441536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 14))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 39, r := 15 }
    lowerValue := 11030242298681874
    upperValue := 6624737266949237011120128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 15))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 39, r := 16 }
    lowerValue := 664262713650254
    upperValue := 552061438912436417593344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 16))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 39, r := 17 }
    lowerValue := 44325230185599
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 17))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 39, r := 18 }
    lowerValue := 3271882478397
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 39, r := 19 }
    lowerValue := 266864676481
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 39, r := 20 }
    lowerValue := 24035785424
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 39, r := 21 }
    lowerValue := 2390194243
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 39, r := 22 }
    lowerValue := 262514134
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 39, r := 23 }
    lowerValue := 31868288
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 39, r := 24 }
    lowerValue := 4281593
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 39, r := 25 }
    lowerValue := 637781
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 39, r := 26 }
    lowerValue := 105580
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) }]

end CoveringCodes.Database
