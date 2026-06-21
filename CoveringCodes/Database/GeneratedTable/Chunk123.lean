import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 123. Do not edit manually.

def precomputedTable_chunk_123 : Array AnyBoundEntry := #[
  { key := { q := 12, n := 39, r := 27 }
    lowerValue := 19482
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 39, r := 28 }
    lowerValue := 4022
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 39, r := 29 }
    lowerValue := 933
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 39, r := 30 }
    lowerValue := 245
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30))) },
  { key := { q := 12, n := 39, r := 31 }
    lowerValue := 73
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 31))) },
  { key := { q := 12, n := 39, r := 32 }
    lowerValue := 25
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 32))) },
  { key := { q := 12, n := 39, r := 33 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 35 34)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 37 33))) },
  { key := { q := 12, n := 39, r := 34 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 36 35))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 38 34))) },
  { key := { q := 12, n := 39, r := 35 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 37 36)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 39 35)) },
  { key := { q := 12, n := 39, r := 36 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 39 36)) },
  { key := { q := 12, n := 39, r := 37 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 39 37)) },
  { key := { q := 12, n := 39, r := 38 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 39 38)) },
  { key := { q := 12, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 39 39)) },
  { key := { q := 12, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 39 40)) },
  { key := { q := 12, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 39 41)) },
  { key := { q := 12, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 39 42)) },
  { key := { q := 12, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 39 43)) },
  { key := { q := 12, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 39 44)) },
  { key := { q := 12, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 39 45)) },
  { key := { q := 12, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 39 46)) },
  { key := { q := 12, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 39 47)) },
  { key := { q := 12, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 39 48)) },
  { key := { q := 12, n := 40, r := 0 }
    lowerValue := 14697715679690864505827555550150426126974976
    upperValue := 14697715679690864505827555550150426126974976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 40 0)) },
  { key := { q := 12, n := 40, r := 1 }
    lowerValue := 33328153468686767586910556803062190764116
    upperValue := 612404819987119354409481481256267755290624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 1))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 40, r := 2 }
    lowerValue := 155004858414178974128384593604269372049
    upperValue := 45363319999045878104406035648612426317824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 2))
    upperTrace := (.lengthenFreeN 31 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 40, r := 3 }
    lowerValue := 1109671846193612604828574395178294687
    upperValue := 3780276666587156508700502970717702193152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 40, r := 4 }
    lowerValue := 10876834874259698500683787139011132
    upperValue := 315023055548929709058375247559808516096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 4))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 40, r := 5 }
    lowerValue := 136946978628760977727505195794413
    upperValue := 26251921295744142421531270629984043008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 5))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 40, r := 6 }
    lowerValue := 2127868397891655489661836313461
    upperValue := 2187660107978678535127605885832003584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 6))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 40, r := 7 }
    lowerValue := 39700219649960323440174677860
    upperValue := 182305008998223211260633823819333632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 7))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 40, r := 8 }
    lowerValue := 871987522835828372329890310
    upperValue := 15192084083185267605052818651611136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 8))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 40, r := 9 }
    lowerValue := 22215075015610909963594792
    upperValue := 1266007006932105633754401554300928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 9))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 40, r := 10 }
    lowerValue := 648970493866359418077313
    upperValue := 105500583911008802812866796191744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 10))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 40, r := 11 }
    lowerValue := 21543584508047701700020
    upperValue := 1648446623609512543951043690496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 11))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 40, r := 12 }
    lowerValue := 806849888615855462490
    upperValue := 137370551967459378662586974208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 12))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 40, r := 13 }
    lowerValue := 33894158178528046547
    upperValue := 11447545997288281555215581184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 13))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 40, r := 14 }
    lowerValue := 1589549975495244683
    upperValue := 953962166440690129601298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 14))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 40, r := 15 }
    lowerValue := 82907859540332508
    upperValue := 79496847203390844133441536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 15))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 40, r := 16 }
    lowerValue := 4794847060318230
    upperValue := 6624737266949237011120128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 16))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 40, r := 17 }
    lowerValue := 306746680849719
    upperValue := 552061438912436417593344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 17))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 40, r := 18 }
    lowerValue := 21668468092891
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 40, r := 19 }
    lowerValue := 1687954469225
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 40, r := 20 }
    lowerValue := 144885497082
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 40, r := 21 }
    lowerValue := 13698208125
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 40, r := 22 }
    lowerValue := 1426625930
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 40, r := 23 }
    lowerValue := 163751744
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 40, r := 24 }
    lowerValue := 20735105
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 40, r := 25 }
    lowerValue := 2900600
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 40, r := 26 }
    lowerValue := 449121
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 40, r := 27 }
    lowerValue := 77162
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 40, r := 28 }
    lowerValue := 14755
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 40, r := 29 }
    lowerValue := 3152
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 40, r := 30 }
    lowerValue := 756
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30))) },
  { key := { q := 12, n := 40, r := 31 }
    lowerValue := 205
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 31))) },
  { key := { q := 12, n := 40, r := 32 }
    lowerValue := 63
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 32))) },
  { key := { q := 12, n := 40, r := 33 }
    lowerValue := 23
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 37 33))) },
  { key := { q := 12, n := 40, r := 34 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 36 35)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 38 34))) },
  { key := { q := 12, n := 40, r := 35 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 37 36))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 39 35))) },
  { key := { q := 12, n := 40, r := 36 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 38 37)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 40 36)) },
  { key := { q := 12, n := 40, r := 37 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 40 37)) },
  { key := { q := 12, n := 40, r := 38 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 40 38)) },
  { key := { q := 12, n := 40, r := 39 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 40 39)) },
  { key := { q := 12, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 40 40)) },
  { key := { q := 12, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 40 41)) },
  { key := { q := 12, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 40 42)) },
  { key := { q := 12, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 40 43)) },
  { key := { q := 12, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 40 44)) },
  { key := { q := 12, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 40 45)) },
  { key := { q := 12, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 40 46)) },
  { key := { q := 12, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 40 47)) },
  { key := { q := 12, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 40 48)) },
  { key := { q := 12, n := 41, r := 0 }
    lowerValue := 176372588156290374069930666601805113523699712
    upperValue := 176372588156290374069930666601805113523699712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 41 0)) },
  { key := { q := 12, n := 41, r := 1 }
    lowerValue := 390204841053739765641439527880099808680752
    upperValue := 7348857839845432252913777775075213063487488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 1))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 41, r := 2 }
    lowerValue := 1769529939765334036338496935968026261375
    upperValue := 544359839988550537252872427783349115813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 2))
    upperTrace := (.lengthenFreeN 32 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 41, r := 3 }
    lowerValue := 12343992073721769512622830374313809078
    upperValue := 45363319999045878104406035648612426317824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 41, r := 4 }
    lowerValue := 117818760918234600407046567278964292
    upperValue := 3780276666587156508700502970717702193152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 41, r := 5 }
    lowerValue := 1443449313453099027144667067693716
    upperValue := 315023055548929709058375247559808516096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 41, r := 6 }
    lowerValue := 21807201588901490749446364660598
    upperValue := 26251921295744142421531270629984043008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 41, r := 7 }
    lowerValue := 395279439288589548045005176718
    upperValue := 2187660107978678535127605885832003584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 41, r := 8 }
    lowerValue := 8427664931712379061347370925
    upperValue := 182305008998223211260633823819333632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 8))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 41, r := 9 }
    lowerValue := 208227277863750470178384399
    upperValue := 15192084083185267605052818651611136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 9))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 41, r := 10 }
    lowerValue := 5893732003873054139882077
    upperValue := 1266007006932105633754401554300928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 10))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 41, r := 11 }
    lowerValue := 189371660510805458931178
    upperValue := 19781359483314150527412524285952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 11))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 41, r := 12 }
    lowerValue := 6857218272221505476792
    upperValue := 1648446623609512543951043690496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 12))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 41, r := 13 }
    lowerValue := 278184259486145995807
    upperValue := 137370551967459378662586974208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 13))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 41, r := 14 }
    lowerValue := 12583251590229176580
    upperValue := 11447545997288281555215581184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 14))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 41, r := 15 }
    lowerValue := 632185169868150670
    upperValue := 953962166440690129601298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 15))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 41, r := 16 }
    lowerValue := 35166418585242369
    upperValue := 79496847203390844133441536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 16))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 41, r := 17 }
    lowerValue := 2160547218852390
    upperValue := 6624737266949237011120128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 41, r := 18 }
    lowerValue := 146323230403332
    upperValue := 552061438912436417593344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 41, r := 19 }
    lowerValue := 10908266425635
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 41, r := 20 }
    lowerValue := 894270041588
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 41, r := 21 }
    lowerValue := 80577865946
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 41, r := 22 }
    lowerValue := 7978833043
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 41, r := 23 }
    lowerValue := 868476113
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 41, r := 24 }
    lowerValue := 103984109
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 41, r := 25 }
    lowerValue := 13710250
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 41, r := 26 }
    lowerValue := 1993722
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 41, r := 27 }
    lowerValue := 320409
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 41, r := 28 }
    lowerValue := 57052
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 41, r := 29 }
    lowerValue := 11291
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 41, r := 30 }
    lowerValue := 2493
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30))) },
  { key := { q := 12, n := 41, r := 31 }
    lowerValue := 617
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 31))) },
  { key := { q := 12, n := 41, r := 32 }
    lowerValue := 172
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 32))) },
  { key := { q := 12, n := 41, r := 33 }
    lowerValue := 55
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 37 33))) },
  { key := { q := 12, n := 41, r := 34 }
    lowerValue := 20
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 34))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 38 34))) },
  { key := { q := 12, n := 41, r := 35 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 37 36)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 39 35))) },
  { key := { q := 12, n := 41, r := 36 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 38 37))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 40 36))) },
  { key := { q := 12, n := 41, r := 37 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 39 38)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 41 37)) },
  { key := { q := 12, n := 41, r := 38 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 41 38)) },
  { key := { q := 12, n := 41, r := 39 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 41 39)) },
  { key := { q := 12, n := 41, r := 40 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 41 40)) },
  { key := { q := 12, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 41 41)) },
  { key := { q := 12, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 41 42)) },
  { key := { q := 12, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 41 43)) },
  { key := { q := 12, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 41 44)) },
  { key := { q := 12, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 41 45)) },
  { key := { q := 12, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 41 46)) },
  { key := { q := 12, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 41 47)) },
  { key := { q := 12, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 41 48)) },
  { key := { q := 12, n := 42, r := 0 }
    lowerValue := 2116471057875484488839167999221661362284396544
    upperValue := 2116471057875484488839167999221661362284396544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 42 0)) },
  { key := { q := 12, n := 42, r := 1 }
    lowerValue := 4571211788068001055808138227260607693918784
    upperValue := 88186294078145187034965333300902556761849856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 1))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 42, r := 2 }
    lowerValue := 20225441094333975085424563273782169663664
    upperValue := 6532318079862606447034469133400189389766656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 2))
    upperTrace := (.lengthenFreeN 33 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 42, r := 3 }
    lowerValue := 137571435936235953016106835624011595178
    upperValue := 544359839988550537252872427783349115813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 42, r := 4 }
    lowerValue := 1279490337392900547702241090417977700
    upperValue := 45363319999045878104406035648612426317824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 42, r := 5 }
    lowerValue := 15264287475524203692631253432965717
    upperValue := 3780276666587156508700502970717702193152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 42, r := 6 }
    lowerValue := 224395342323986346129793119111587
    upperValue := 315023055548929709058375247559808516096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 42, r := 7 }
    lowerValue := 3954814443086272021273682360887
    upperValue := 26251921295744142421531270629984043008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 7))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 42, r := 8 }
    lowerValue := 81919514194577884870744228377
    upperValue := 2187660107978678535127605885832003584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 8))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 42, r := 9 }
    lowerValue := 1964742729086208943355425518
    upperValue := 182305008998223211260633823819333632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 9))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 42, r := 10 }
    lowerValue := 53932906073768330224293778
    upperValue := 15192084083185267605052818651611136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 10))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 42, r := 11 }
    lowerValue := 1679023638701401274290954
    upperValue := 237376313799769806328950291431424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 11))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 42, r := 12 }
    lowerValue := 58847021381895018052799
    upperValue := 19781359483314150527412524285952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 12))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 42, r := 13 }
    lowerValue := 2308185585227420452431
    upperValue := 1648446623609512543951043690496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 13))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 42, r := 14 }
    lowerValue := 100829446918927518086
    upperValue := 137370551967459378662586974208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 14))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 42, r := 15 }
    lowerValue := 4886007632541201427
    upperValue := 11447545997288281555215581184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 15))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 42, r := 16 }
    lowerValue := 261801893955301866
    upperValue := 953962166440690129601298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 16))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 42, r := 17 }
    lowerValue := 15471012663184400
    upperValue := 79496847203390844133441536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 17))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 42, r := 18 }
    lowerValue := 1006248166235628
    upperValue := 6624737266949237011120128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 42, r := 19 }
    lowerValue := 71921047307179
    upperValue := 552061438912436417593344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 42, r := 20 }
    lowerValue := 5642703966256
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 42, r := 21 }
    lowerValue := 485615835681
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 42, r := 22 }
    lowerValue := 45828546875
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 42, r := 23 }
    lowerValue := 4742914529
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 42, r := 24 }
    lowerValue := 538533952
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 42, r := 25 }
    lowerValue := 67142810
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 42, r := 26 }
    lowerValue := 9203203
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 42, r := 27 }
    lowerValue := 1389157
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 42, r := 28 }
    lowerValue := 231396
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 42, r := 29 }
    lowerValue := 42648
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 42, r := 30 }
    lowerValue := 8725
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30))) },
  { key := { q := 12, n := 42, r := 31 }
    lowerValue := 1989
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 31))) },
  { key := { q := 12, n := 42, r := 32 }
    lowerValue := 508
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 32))) },
  { key := { q := 12, n := 42, r := 33 }
    lowerValue := 146
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 37 33))) },
  { key := { q := 12, n := 42, r := 34 }
    lowerValue := 48
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 38 34))) },
  { key := { q := 12, n := 42, r := 35 }
    lowerValue := 18
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 35))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 39 35))) },
  { key := { q := 12, n := 42, r := 36 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 38 37)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 40 36))) },
  { key := { q := 12, n := 42, r := 37 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 39 38))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 41 37))) },
  { key := { q := 12, n := 42, r := 38 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 40 39)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 42 38)) },
  { key := { q := 12, n := 42, r := 39 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 42 39)) },
  { key := { q := 12, n := 42, r := 40 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 42 40)) },
  { key := { q := 12, n := 42, r := 41 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 42 41)) },
  { key := { q := 12, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 42 42)) },
  { key := { q := 12, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 42 43)) },
  { key := { q := 12, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 42 44)) },
  { key := { q := 12, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 42 45)) },
  { key := { q := 12, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 42 46)) },
  { key := { q := 12, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 42 47)) },
  { key := { q := 12, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 42 48)) },
  { key := { q := 12, n := 43, r := 0 }
    lowerValue := 25397652694505813866070015990659936347412758528
    upperValue := 25397652694505813866070015990659936347412758528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 43 0)) },
  { key := { q := 12, n := 43, r := 1 }
    lowerValue := 53581545768999607312383999980295224361630293
    upperValue := 1058235528937742244419583999610830681142198272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 1))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 43, r := 2 }
    lowerValue := 231441106413568931773877689299506423060707
    upperValue := 78387816958351277364413629600802272677199872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 2))
    upperTrace := (.lengthenFreeN 34 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 43, r := 3 }
    lowerValue := 1535937033250051275167506147379638919078
    upperValue := 6532318079862606447034469133400189389766656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 43, r := 4 }
    lowerValue := 13928875463896941976004066084356650139
    upperValue := 544359839988550537252872427783349115813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 4))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 43, r := 5 }
    lowerValue := 161922415954418228139837972561370481
    upperValue := 45363319999045878104406035648612426317824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 5))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 43, r := 6 }
    lowerValue := 2317919321301200518951712424865093
    upperValue := 3780276666587156508700502970717702193152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 6))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 43, r := 7 }
    lowerValue := 39751290851008748711977572270034
    upperValue := 315023055548929709058375247559808516096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 7))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 43, r := 8 }
    lowerValue := 800612540967103625760795352755
    upperValue := 26251921295744142421531270629984043008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 8))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 43, r := 9 }
    lowerValue := 18655247939430961882258125996
    upperValue := 2187660107978678535127605885832003584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 9))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 43, r := 10 }
    lowerValue := 497095029904503966759784014
    upperValue := 182305008998223211260633823819333632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 10))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 43, r := 11 }
    lowerValue := 15008604700134533203536227
    upperValue := 2848515765597237675947403497177088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 11))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 43, r := 12 }
    lowerValue := 509670140309044189477648
    upperValue := 237376313799769806328950291431424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 12))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 43, r := 13 }
    lowerValue := 19349655641979484585304
    upperValue := 19781359483314150527412524285952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 13))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 43, r := 14 }
    lowerValue := 817250211093002775925
    upperValue := 1648446623609512543951043690496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 14))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 43, r := 15 }
    lowerValue := 38245648151635523001
    upperValue := 137370551967459378662586974208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 15))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 43, r := 16 }
    lowerValue := 1976607221246120202
    upperValue := 11447545997288281555215581184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 16))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 43, r := 17 }
    lowerValue := 112513874986779829
    upperValue := 953962166440690129601298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 17))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 43, r := 18 }
    lowerValue := 7038958178420002
    upperValue := 79496847203390844133441536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 43, r := 19 }
    lowerValue := 483172848823539
    upperValue := 6624737266949237011120128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 43, r := 20 }
    lowerValue := 36345409357993
    upperValue := 552061438912436417593344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 43, r := 21 }
    lowerValue := 2993518340120
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 43, r := 22 }
    lowerValue := 269832032157
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 43, r := 23 }
    lowerValue := 26615453290
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 43, r := 24 }
    lowerValue := 2873465381
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 43, r := 25 }
    lowerValue := 339756121
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 43, r := 26 }
    lowerValue := 44038680
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 43, r := 27 }
    lowerValue := 6265999
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 43, r := 28 }
    lowerValue := 980387
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 43, r := 29 }
    lowerValue := 169049
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 43, r := 30 }
    lowerValue := 32211
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30))) },
  { key := { q := 12, n := 43, r := 31 }
    lowerValue := 6805
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 31))) },
  { key := { q := 12, n := 43, r := 32 }
    lowerValue := 1600
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 32))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 35 32))) },
  { key := { q := 12, n := 43, r := 33 }
    lowerValue := 421
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 37 33))) },
  { key := { q := 12, n := 43, r := 34 }
    lowerValue := 125
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 38 34))) },
  { key := { q := 12, n := 43, r := 35 }
    lowerValue := 42
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 39 35))) },
  { key := { q := 12, n := 43, r := 36 }
    lowerValue := 16
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 40 36))) },
  { key := { q := 12, n := 43, r := 37 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 39 38)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 41 37))) },
  { key := { q := 12, n := 43, r := 38 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 40 39))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 42 38))) },
  { key := { q := 12, n := 43, r := 39 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 41 40)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 43 39)) },
  { key := { q := 12, n := 43, r := 40 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 43 40)) },
  { key := { q := 12, n := 43, r := 41 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 43 41)) },
  { key := { q := 12, n := 43, r := 42 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 43 42)) },
  { key := { q := 12, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 43 43)) },
  { key := { q := 12, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 43 44)) },
  { key := { q := 12, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 43 45)) },
  { key := { q := 12, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 43 46)) },
  { key := { q := 12, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 43 47)) },
  { key := { q := 12, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 43 48)) },
  { key := { q := 12, n := 44, r := 0 }
    lowerValue := 304771832334069766392840191887919236168953102336
    upperValue := 304771832334069766392840191887919236168953102336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 44 0)) },
  { key := { q := 12, n := 44, r := 1 }
    lowerValue := 628395530585710858541938539975091208595779593
    upperValue := 12698826347252906933035007995329968173706379264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 1))
    upperTrace := (.lengthenFreeN 41 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 44, r := 2 }
    lowerValue := 2651319539056378512521336846899280877669208
    upperValue := 940653803500215328372963555209627272126398464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 2))
    upperTrace := (.lengthenFreeN 35 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 44, r := 3 }
    lowerValue := 17177294023720144656149872885176774589963
    upperValue := 78387816958351277364413629600802272677199872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 44, r := 4 }
    lowerValue := 151985199134301742534236227814805808386
    upperValue := 6532318079862606447034469133400189389766656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 4))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 44, r := 5 }
    lowerValue := 1722770721252932835565791255308064431
    upperValue := 544359839988550537252872427783349115813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 5))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 44, r := 6 }
    lowerValue := 24030991830080205358918524022632192
    upperValue := 45363319999045878104406035648612426317824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 6))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 44, r := 7 }
    lowerValue := 401310262285836901558194727118937
    upperValue := 3780276666587156508700502970717702193152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 7))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 44, r := 8 }
    lowerValue := 7864911182029474969571065699988
    upperValue := 315023055548929709058375247559808516096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 8))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 44, r := 9 }
    lowerValue := 178190389585887934475276477176
    upperValue := 26251921295744142421531270629984043008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 9))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 44, r := 10 }
    lowerValue := 4613017432980003576186907814
    upperValue := 2187660107978678535127605885832003584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 10))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 44, r := 11 }
    lowerValue := 135200586952259808941922870
    upperValue := 34182189187166852111368841966125056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 11))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 44, r := 12 }
    lowerValue := 4452745949155189591872584
    upperValue := 2848515765597237675947403497177088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 12))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 44, r := 13 }
    lowerValue := 163793248531231718296971
    upperValue := 237376313799769806328950291431424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 13))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 44, r := 14 }
    lowerValue := 6696051030312868454806
    upperValue := 19781359483314150527412524285952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 14))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 44, r := 15 }
    lowerValue := 302980297345847793847
    upperValue := 1648446623609512543951043690496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 15))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 44, r := 16 }
    lowerValue := 15122266753020510224
    upperValue := 137370551967459378662586974208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 16))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 44, r := 17 }
    lowerValue := 830284103106522306
    upperValue := 11447545997288281555215581184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 17))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 44, r := 18 }
    lowerValue := 50034983122747030
    upperValue := 953962166440690129601298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 18))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 44, r := 19 }
    lowerValue := 3303615494304984
    upperValue := 79496847203390844133441536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 44, r := 20 }
    lowerValue := 238663622200076
    upperValue := 6624737266949237011120128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 44, r := 21 }
    lowerValue := 18846980108284
    upperValue := 552061438912436417593344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 44, r := 22 }
    lowerValue := 1625880754225
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 44, r := 23 }
    lowerValue := 153181857449
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 44, r := 24 }
    lowerValue := 15762395958
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 44, r := 25 }
    lowerValue := 1772154664
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 44, r := 26 }
    lowerValue := 217851178
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 44, r := 27 }
    lowerValue := 29313200
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 44, r := 28 }
    lowerValue := 4323526
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 28))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 44, r := 29 }
    lowerValue := 700300
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 29))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 44, r := 30 }
    lowerValue := 124850
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 30))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30))) },
  { key := { q := 12, n := 44, r := 31 }
    lowerValue := 24567
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 44 31))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 34 31))) }]

end CoveringCodes.Database
