import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 181. Do not edit manually.

def precomputedTable_chunk_181 : Array AnyBoundEntry := #[
  { key := { q := 18, n := 41, r := 23 }
    lowerValue := 673598191918
    upperValue := 2185911559738696531968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 41, r := 24 }
    lowerValue := 52426915734
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 41, r := 25 }
    lowerValue := 4496200062
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 41, r := 26 }
    lowerValue := 425601469
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 41, r := 27 }
    lowerValue := 44563491
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 41, r := 28 }
    lowerValue := 5175789
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 41, r := 29 }
    lowerValue := 669088
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 41, r := 30 }
    lowerValue := 96676
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 41, r := 31 }
    lowerValue := 15693
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31))) },
  { key := { q := 18, n := 41, r := 32 }
    lowerValue := 2880
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 32))) },
  { key := { q := 18, n := 41, r := 33 }
    lowerValue := 602
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 35 33))) },
  { key := { q := 18, n := 41, r := 34 }
    lowerValue := 145
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 37 34))) },
  { key := { q := 18, n := 41, r := 35 }
    lowerValue := 41
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 35))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 38 35))) },
  { key := { q := 18, n := 41, r := 36 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 38 37))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 39 36))) },
  { key := { q := 18, n := 41, r := 37 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 39 38)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 40 37))) },
  { key := { q := 18, n := 41, r := 38 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 41 38)) },
  { key := { q := 18, n := 41, r := 39 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 41 39)) },
  { key := { q := 18, n := 41, r := 40 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 41 40)) },
  { key := { q := 18, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 41 41)) },
  { key := { q := 18, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 41 42)) },
  { key := { q := 18, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 41 43)) },
  { key := { q := 18, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 41 44)) },
  { key := { q := 18, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 41 45)) },
  { key := { q := 18, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 41 46)) },
  { key := { q := 18, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 41 47)) },
  { key := { q := 18, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 41 48)) },
  { key := { q := 18, n := 42, r := 0 }
    lowerValue := 52655678627806560751363688397557640770141543227981824
    upperValue := 52655678627806560751363688397557640770141543227981824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 42 0)) },
  { key := { q := 18, n := 42, r := 1 }
    lowerValue := 73644305773156029022886277479101595482715445074101
    upperValue := 650070106516130379646465288858736305804216583061504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 1))
    upperTrace := (.lengthenFreeN 31 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))) },
  { key := { q := 18, n := 42, r := 2 }
    lowerValue := 211007592359690318145752606344202388236709931828
    upperValue := 36115005917562798869248071603263128100234254614528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 42, r := 3 }
    lowerValue := 929478374523582246476300988130325623916194050
    upperValue := 2006389217642377714958226200181284894457458589696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 42, r := 4 }
    lowerValue := 5598596862172955560657967007772757871267162
    upperValue := 111466067646798761942123677787849160803192143872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 4))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 42, r := 5 }
    lowerValue := 43258537045965537602908304651601957953159
    upperValue := 6192559313711042330117982099324953377955119104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 5))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 42, r := 6 }
    lowerValue := 411894586246368477723797652569774828738
    upperValue := 344031072983946796117665672184719632108617728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 6))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 42, r := 7 }
    lowerValue := 4702202163486106110304455368516980824
    upperValue := 19112837387997044228759204010262201783812096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 7))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 42, r := 8 }
    lowerValue := 63094845010030223865797977217588920
    upperValue := 1061824299333169123819955778347900099100672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 8))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 42, r := 9 }
    lowerValue := 980335231429381791121232707862239
    upperValue := 58990238851842729101108654352661116616704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 9))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 42, r := 10 }
    lowerValue := 17434893296765803379545729573863
    upperValue := 3277235491769040505617147464036728700928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 10))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 42, r := 11 }
    lowerValue := 351687101012609511582809760435
    upperValue := 182068638431613361423174859113151594496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 11))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 42, r := 12 }
    lowerValue := 7987296868319592157079251756
    upperValue := 10114924357311853412398603284063977472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 12))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 42, r := 13 }
    lowerValue := 203033568907299580398608874
    upperValue := 561940242072880745133255738003554304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 13))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 42, r := 14 }
    lowerValue := 5748539969321217142169777
    upperValue := 31218902337382263618514207666864128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 14))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 42, r := 15 }
    lowerValue := 180573749883727042025991
    upperValue := 1734383463187903534361900425936896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 15))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 42, r := 16 }
    lowerValue := 6272891650839393226868
    upperValue := 96354636843772418575661134774272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 16))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 42, r := 17 }
    lowerValue := 240370196527925257739
    upperValue := 1338258845052394702439737982976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 17))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 42, r := 18 }
    lowerValue := 10139481528143222781
    upperValue := 74347713614021927913318776832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 42, r := 19 }
    lowerValue := 470119860726551283
    upperValue := 4130428534112329328517709824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 42, r := 20 }
    lowerValue := 23932519777614536
    upperValue := 229468251895129407139872768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 42, r := 21 }
    lowerValue := 1336796483959817
    upperValue := 12748236216396078174437376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 42, r := 22 }
    lowerValue := 81907195453591
    upperValue := 708235345355337676357632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 42, r := 23 }
    lowerValue := 5505677736233
    upperValue := 39346408075296537575424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 42, r := 24 }
    lowerValue := 406212622354
    upperValue := 2185911559738696531968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 42, r := 25 }
    lowerValue := 32926571067
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 42, r := 26 }
    lowerValue := 2936097550
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 42, r := 27 }
    lowerValue := 288538458
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 42, r := 28 }
    lowerValue := 31321482
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 42, r := 29 }
    lowerValue := 3766403
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 42, r := 30 }
    lowerValue := 503475
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 42, r := 31 }
    lowerValue := 75135
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31))) },
  { key := { q := 18, n := 42, r := 32 }
    lowerValue := 12582
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 32))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 32))) },
  { key := { q := 18, n := 42, r := 33 }
    lowerValue := 2379
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 33))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 35 33))) },
  { key := { q := 18, n := 42, r := 34 }
    lowerValue := 512
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 37 34))) },
  { key := { q := 18, n := 42, r := 35 }
    lowerValue := 127
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 38 35))) },
  { key := { q := 18, n := 42, r := 36 }
    lowerValue := 37
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 39 36))) },
  { key := { q := 18, n := 42, r := 37 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 39 38))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 40 37))) },
  { key := { q := 18, n := 42, r := 38 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 40 39)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 41 38))) },
  { key := { q := 18, n := 42, r := 39 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 42 39)) },
  { key := { q := 18, n := 42, r := 40 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 42 40)) },
  { key := { q := 18, n := 42, r := 41 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 42 41)) },
  { key := { q := 18, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 42 42)) },
  { key := { q := 18, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 42 43)) },
  { key := { q := 18, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 42 44)) },
  { key := { q := 18, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 42 45)) },
  { key := { q := 18, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 42 46)) },
  { key := { q := 18, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 42 47)) },
  { key := { q := 18, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 42 48)) },
  { key := { q := 18, n := 43, r := 0 }
    lowerValue := 947802215300518093524546391156037533862547778103672832
    upperValue := 947802215300518093524546391156037533862547778103672832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 43 0)) },
  { key := { q := 18, n := 43, r := 1 }
    lowerValue := 1294811769536226903722057911415351822216595325278242
    upperValue := 11701261917290346833636375199457253504475898495107072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 1))
    upperTrace := (.lengthenFreeN 32 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))) },
  { key := { q := 18, n := 43, r := 2 }
    lowerValue := 3621726545766388459736362734118347925909337743376
    upperValue := 650070106516130379646465288858736305804216583061504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 43, r := 3 }
    lowerValue := 15565035672727186478816597458245099929702100860
    upperValue := 36115005917562798869248071603263128100234254614528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 43, r := 4 }
    lowerValue := 91414172155566888551505706147736094985645539
    upperValue := 2006389217642377714958226200181284894457458589696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 4))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 43, r := 5 }
    lowerValue := 688249682247252022662838602697872463212015
    upperValue := 111466067646798761942123677787849160803192143872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 5))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 43, r := 6 }
    lowerValue := 6381187343114900471510156407948514085829
    upperValue := 6192559313711042330117982099324953377955119104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 6))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 43, r := 7 }
    lowerValue := 70883162198141566927485969230570490861
    upperValue := 344031072983946796117665672184719632108617728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 7))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 43, r := 8 }
    lowerValue := 924761284418259899116514178134700766
    upperValue := 19112837387997044228759204010262201783812096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 8))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 43, r := 9 }
    lowerValue := 13958954335936577298072416201724580
    upperValue := 1061824299333169123819955778347900099100672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 9))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 43, r := 10 }
    lowerValue := 240972722608593032103076442681413
    upperValue := 58990238851842729101108654352661116616704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 10))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 43, r := 11 }
    lowerValue := 4713901746660559358676552874962
    upperValue := 3277235491769040505617147464036728700928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 11))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 43, r := 12 }
    lowerValue := 103724143019993987998103681694
    upperValue := 182068638431613361423174859113151594496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 12))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 43, r := 13 }
    lowerValue := 2551861790717135397640015244
    upperValue := 10114924357311853412398603284063977472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 13))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 43, r := 14 }
    lowerValue := 69852127861130865550917292
    upperValue := 561940242072880745133255738003554304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 14))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 43, r := 15 }
    lowerValue := 2118849534162392933796716
    upperValue := 31218902337382263618514207666864128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 15))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 43, r := 16 }
    lowerValue := 70988982945734177607923
    upperValue := 1734383463187903534361900425936896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 16))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 43, r := 17 }
    lowerValue := 2619963983830614102360
    upperValue := 24088659210943104643915283693568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 17))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 43, r := 18 }
    lowerValue := 106289620756220081658
    upperValue := 1338258845052394702439737982976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 43, r := 19 }
    lowerValue := 4732195290963244614
    upperValue := 74347713614021927913318776832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 43, r := 20 }
    lowerValue := 230931649605104086
    upperValue := 4130428534112329328517709824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 43, r := 21 }
    lowerValue := 12342398058928821
    upperValue := 229468251895129407139872768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 43, r := 22 }
    lowerValue := 722140163794621
    upperValue := 12748236216396078174437376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 43, r := 23 }
    lowerValue := 46250776588615
    upperValue := 708235345355337676357632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 43, r := 24 }
    lowerValue := 3243543316319
    upperValue := 39346408075296537575424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 43, r := 25 }
    lowerValue := 249236323132
    upperValue := 2185911559738696531968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 43, r := 26 }
    lowerValue := 21006233995
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 43, r := 27 }
    lowerValue := 1944738972
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 43, r := 28 }
    lowerValue := 198140577
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 28))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 43, r := 29 }
    lowerValue := 22269957
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 29))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 43, r := 30 }
    lowerValue := 2769321
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 30))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 43, r := 31 }
    lowerValue := 382370
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 31))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31))) },
  { key := { q := 18, n := 43, r := 32 }
    lowerValue := 58874
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 32))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 32))) },
  { key := { q := 18, n := 43, r := 33 }
    lowerValue := 10161
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 33))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 35 33))) },
  { key := { q := 18, n := 43, r := 34 }
    lowerValue := 1978
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 34))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 37 34))) },
  { key := { q := 18, n := 43, r := 35 }
    lowerValue := 438
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 35))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 38 35))) },
  { key := { q := 18, n := 43, r := 36 }
    lowerValue := 111
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 36))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 39 36))) },
  { key := { q := 18, n := 43, r := 37 }
    lowerValue := 33
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 37))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 40 37))) },
  { key := { q := 18, n := 43, r := 38 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 40 39))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 41 38))) },
  { key := { q := 18, n := 43, r := 39 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 41 40)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 42 39))) },
  { key := { q := 18, n := 43, r := 40 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 43 40)) },
  { key := { q := 18, n := 43, r := 41 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 43 41)) },
  { key := { q := 18, n := 43, r := 42 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 43 42)) },
  { key := { q := 18, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 43 43)) },
  { key := { q := 18, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 43 44)) },
  { key := { q := 18, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 43 45)) },
  { key := { q := 18, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 43 46)) },
  { key := { q := 18, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 43 47)) },
  { key := { q := 18, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 43 48)) },
  { key := { q := 18, n := 44, r := 0 }
    lowerValue := 17060439875409325683441835040808675609525860005866110976
    upperValue := 17060439875409325683441835040808675609525860005866110976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 44 0)) },
  { key := { q := 18, n := 44, r := 1 }
    lowerValue := 22777623331654640431831555461693825913919706282865302
    upperValue := 210622714511226243005454753590230563080566172911927296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 1))
    upperTrace := (.lengthenFreeN 33 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))) },
  { key := { q := 18, n := 44, r := 2 }
    lowerValue := 62231900414781065660774978900824298302440186347513
    upperValue := 11701261917290346833636375199457253504475898495107072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 44, r := 3 }
    lowerValue := 261094886420291258427945294238907378357764078477
    upperValue := 650070106516130379646465288858736305804216583061504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 44, r := 4 }
    lowerValue := 1496083457657746365237968138325276983684458790
    upperValue := 36115005917562798869248071603263128100234254614528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 44, r := 5 }
    lowerValue := 10982789648179376095174806196073766391338295
    upperValue := 2006389217642377714958226200181284894457458589696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 44, r := 6 }
    lowerValue := 99222215921653340578638529309105181436449
    upperValue := 111466067646798761942123677787849160803192143872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 44, r := 7 }
    lowerValue := 1073229824310701176070343300668727241793
    upperValue := 6192559313711042330117982099324953377955119104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 44, r := 8 }
    lowerValue := 13624066518494725142306601505353959747
    upperValue := 344031072983946796117665672184719632108617728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 8))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 44, r := 9 }
    lowerValue := 199951730787184951349306543864267025
    upperValue := 19112837387997044228759204010262201783812096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 9))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 44, r := 10 }
    lowerValue := 3353389361337999861750479129775039
    upperValue := 1061824299333169123819955778347900099100672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 10))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 44, r := 11 }
    lowerValue := 63674913981624611612131933554997
    upperValue := 58990238851842729101108654352661116616704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 11))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 44, r := 12 }
    lowerValue := 1358766286990410013330157093291
    upperValue := 3277235491769040505617147464036728700928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 12))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 44, r := 13 }
    lowerValue := 32387672029256744175262264227
    upperValue := 182068638431613361423174859113151594496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 13))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 44, r := 14 }
    lowerValue := 858051617605000053977432770
    upperValue := 10114924357311853412398603284063977472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 14))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 44, r := 15 }
    lowerValue := 25163370227819796314773351
    upperValue := 561940242072880745133255738003554304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 15))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 44, r := 16 }
    lowerValue := 814114399832261407955245
    upperValue := 31218902337382263618514207666864128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 16))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 44, r := 17 }
    lowerValue := 28978115027144449775322
    upperValue := 433595865796975883590475106484224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 17))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 44, r := 18 }
    lowerValue := 1132296577835730439632
    upperValue := 24088659210943104643915283693568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 18))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 44, r := 19 }
    lowerValue := 48483702992621329745
    upperValue := 1338258845052394702439737982976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 44, r := 20 }
    lowerValue := 2271953133803173252
    upperValue := 74347713614021927913318776832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 44, r := 21 }
    lowerValue := 116402098447757733
    upperValue := 4130428534112329328517709824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 44, r := 22 }
    lowerValue := 6516689247381859
    upperValue := 229468251895129407139872768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 44, r := 23 }
    lowerValue := 398561680843687
    upperValue := 12748236216396078174437376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 44, r := 24 }
    lowerValue := 26632490119402
    upperValue := 708235345355337676357632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 24))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 44, r := 25 }
    lowerValue := 1945222952107
    upperValue := 39346408075296537575424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 25))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 44, r := 26 }
    lowerValue := 155422600838
    upperValue := 2185911559738696531968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 26))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 44, r := 27 }
    lowerValue := 13600390656
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 27))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 44, r := 28 }
    lowerValue := 1305439962
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 28))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 44, r := 29 }
    lowerValue := 137718689
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 29))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 44, r := 30 }
    lowerValue := 16007689
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 30))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 44, r := 31 }
    lowerValue := 2056213
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 31))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31))) },
  { key := { q := 18, n := 44, r := 32 }
    lowerValue := 292944
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 32))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 32))) },
  { key := { q := 18, n := 44, r := 33 }
    lowerValue := 46491
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 33))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 35 33))) },
  { key := { q := 18, n := 44, r := 34 }
    lowerValue := 8262
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 34))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 37 34))) },
  { key := { q := 18, n := 44, r := 35 }
    lowerValue := 1655
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 35))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 38 35))) },
  { key := { q := 18, n := 44, r := 36 }
    lowerValue := 377
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 36))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 39 36))) },
  { key := { q := 18, n := 44, r := 37 }
    lowerValue := 98
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 37))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 40 37))) },
  { key := { q := 18, n := 44, r := 38 }
    lowerValue := 30
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 38))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 41 38))) },
  { key := { q := 18, n := 44, r := 39 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 41 40))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 42 39))) },
  { key := { q := 18, n := 44, r := 40 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 42 41)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 43 40))) },
  { key := { q := 18, n := 44, r := 41 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 44 41)) },
  { key := { q := 18, n := 44, r := 42 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 44 42)) },
  { key := { q := 18, n := 44, r := 43 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 44 43)) },
  { key := { q := 18, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 44 44)) },
  { key := { q := 18, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 44 45)) },
  { key := { q := 18, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 44 46)) },
  { key := { q := 18, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 44 47)) },
  { key := { q := 18, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 44 48)) },
  { key := { q := 18, n := 45, r := 0 }
    lowerValue := 307087917757367862301953030734556160971465480105589997568
    upperValue := 307087917757367862301953030734556160971465480105589997568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 45 0)) },
  { key := { q := 18, n := 45, r := 1 }
    lowerValue := 400898064957399298044325105397592899440555457056906003
    upperValue := 3791208861202072374098185564624150135450191112414691328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 1))
    upperTrace := (.lengthenFreeN 34 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))) },
  { key := { q := 18, n := 45, r := 2 }
    lowerValue := 1070455241140311013476042020714720509807252890118344
    upperValue := 210622714511226243005454753590230563080566172911927296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 2))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 45, r := 3 }
    lowerValue := 4386823232429494038699117751490159500818236578894
    upperValue := 11701261917290346833636375199457253504475898495107072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 45, r := 4 }
    lowerValue := 24539129993541946032672691484801463003193360601
    upperValue := 650070106516130379646465288858736305804216583061504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 45, r := 5 }
    lowerValue := 175756275856248345568028217153552246987905574
    upperValue := 36115005917562798869248071603263128100234254614528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 45, r := 6 }
    lowerValue := 1548218701747417355392248309934921319921310
    upperValue := 2006389217642377714958226200181284894457458589696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 45, r := 7 }
    lowerValue := 16317658052843983073282366641314939542896
    upperValue := 111466067646798761942123677787849160803192143872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 7))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 45, r := 8 }
    lowerValue := 201704264158414612968862549266754273732
    upperValue := 6192559313711042330117982099324953377955119104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 8))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 45, r := 9 }
    lowerValue := 2880461365629743357056600297553780768
    upperValue := 344031072983946796117665672184719632108617728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 9))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 45, r := 10 }
    lowerValue := 46969639850593889658465867631883181
    upperValue := 19112837387997044228759204010262201783812096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 10))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 45, r := 11 }
    lowerValue := 866456450938986315516287203474531
    upperValue := 1061824299333169123819955778347900099100672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 11))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 45, r := 12 }
    lowerValue := 17947183919176223442731566722016
    upperValue := 58990238851842729101108654352661116616704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 12))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 45, r := 13 }
    lowerValue := 414867991323100706023186394280
    upperValue := 3277235491769040505617147464036728700928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 13))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 45, r := 14 }
    lowerValue := 10648857812867675639984432768
    upperValue := 182068638431613361423174859113151594496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 14))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 45, r := 15 }
    lowerValue := 302253640466075097150740829
    upperValue := 10114924357311853412398603284063977472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 15))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 45, r := 16 }
    lowerValue := 9454209640333345388173434
    upperValue := 561940242072880745133255738003554304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 16))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 45, r := 17 }
    lowerValue := 324966135293933141197397
    upperValue := 7804725584345565904628551916716032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 17))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 45, r := 18 }
    lowerValue := 12246477030052737653628
    upperValue := 433595865796975883590475106484224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 18))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 45, r := 19 }
    lowerValue := 505061535613531582393
    upperValue := 24088659210943104643915283693568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 45, r := 20 }
    lowerValue := 22762243570683647495
    upperValue := 1338258845052394702439737982976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 20))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 45, r := 21 }
    lowerValue := 1119858510493361593
    upperValue := 74347713614021927913318776832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 21))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 45, r := 22 }
    lowerValue := 60100642377820411
    upperValue := 4130428534112329328517709824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 22))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 45, r := 23 }
    lowerValue := 3517199119255552
    upperValue := 229468251895129407139872768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 23))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 45, r := 24 }
    lowerValue := 224434718091663
    upperValue := 12748236216396078174437376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 24))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 45, r := 25 }
    lowerValue := 15619604038121
    upperValue := 708235345355337676357632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 25))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 45, r := 26 }
    lowerValue := 1186284275699
    upperValue := 39346408075296537575424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 26))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 45, r := 27 }
    lowerValue := 98410935995
    upperValue := 2185911559738696531968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 27))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 45, r := 28 }
    lowerValue := 8928618526
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 28))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 45, r := 29 }
    lowerValue := 887416074
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 29))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 45, r := 30 }
    lowerValue := 96821033
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 30))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 45, r := 31 }
    lowerValue := 11625498
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 31))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31))) },
  { key := { q := 18, n := 45, r := 32 }
    lowerValue := 1540931
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 32))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 32))) },
  { key := { q := 18, n := 45, r := 33 }
    lowerValue := 226298
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 33))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 35 33))) },
  { key := { q := 18, n := 45, r := 34 }
    lowerValue := 36984
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 34))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 37 34))) },
  { key := { q := 18, n := 45, r := 35 }
    lowerValue := 6762
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 35))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 38 35))) },
  { key := { q := 18, n := 45, r := 36 }
    lowerValue := 1392
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 36))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 39 36))) },
  { key := { q := 18, n := 45, r := 37 }
    lowerValue := 325
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 37))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 40 37))) },
  { key := { q := 18, n := 45, r := 38 }
    lowerValue := 87
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 38))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 41 38))) },
  { key := { q := 18, n := 45, r := 39 }
    lowerValue := 27
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 39))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 42 39))) },
  { key := { q := 18, n := 45, r := 40 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 42 41))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 43 40))) },
  { key := { q := 18, n := 45, r := 41 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 43 42)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 44 41))) },
  { key := { q := 18, n := 45, r := 42 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 45 42)) },
  { key := { q := 18, n := 45, r := 43 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 45 43)) },
  { key := { q := 18, n := 45, r := 44 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 45 44)) },
  { key := { q := 18, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 45 45)) },
  { key := { q := 18, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 45 46)) },
  { key := { q := 18, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 45 47)) },
  { key := { q := 18, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 45 48)) },
  { key := { q := 18, n := 46, r := 0 }
    lowerValue := 5527582519632621521435154553222010897486378641900619956224
    upperValue := 5527582519632621521435154553222010897486378641900619956224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 46 0)) },
  { key := { q := 18, n := 46, r := 1 }
    lowerValue := 7059492362238341662113862775507038183252080002427356266
    upperValue := 68241759501637302733767340163234702438103440023464443904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 1))
    upperTrace := (.lengthenFreeN 35 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))) },
  { key := { q := 18, n := 46, r := 2 }
    lowerValue := 18431541789650552926112059944454484182910118246539224
    upperValue := 3791208861202072374098185564624150135450191112414691328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 2))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 46, r := 3 }
    lowerValue := 73819962212123760146105580738174858262932358391530
    upperValue := 210622714511226243005454753590230563080566172911927296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 46, r := 4 }
    lowerValue := 403347943762192113469407479691242641962477830735
    upperValue := 11701261917290346833636375199457253504475898495107072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 4))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 46, r := 5 }
    lowerValue := 2820225500932810236475413080556126809129944680
    upperValue := 650070106516130379646465288858736305804216583061504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 5))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 46, r := 6 }
    lowerValue := 24238231698765156994572864379202649902921118
    upperValue := 36115005917562798869248071603263128100234254614528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 6))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 46, r := 7 }
    lowerValue := 249087837236229890371926712066255904823349
    upperValue := 2006389217642377714958226200181284894457458589696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 7))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 46, r := 8 }
    lowerValue := 3000215234465189917150199768135513166609
    upperValue := 111466067646798761942123677787849160803192143872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 8))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 46, r := 9 }
    lowerValue := 41719935388867727075230486734143942457
    upperValue := 6192559313711042330117982099324953377955119104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 9))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 46, r := 10 }
    lowerValue := 661954998548411482551353104597905876
    upperValue := 344031072983946796117665672184719632108617728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 10))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 46, r := 11 }
    lowerValue := 11872865210727510280671466542695247
    upperValue := 19112837387997044228759204010262201783812096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 11))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 46, r := 12 }
    lowerValue := 238919473983989250531657902926709
    upperValue := 1061824299333169123819955778347900099100672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 12))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 46, r := 13 }
    lowerValue := 5360925657751736774376215970633
    upperValue := 58990238851842729101108654352661116616704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 13))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 46, r := 14 }
    lowerValue := 133448321515609394431226504685
    upperValue := 3277235491769040505617147464036728700928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 14))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 46, r := 15 }
    lowerValue := 3669803380304758675676062300
    upperValue := 182068638431613361423174859113151594496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 15))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 46, r := 16 }
    lowerValue := 111099356043019496531365128
    upperValue := 10114924357311853412398603284063977472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 16))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 46, r := 17 }
    lowerValue := 3692016485862580329580702
    upperValue := 140485060518220186283313934500888576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 17))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 46, r := 18 }
    lowerValue := 134359160759378978234978
    upperValue := 7804725584345565904628551916716032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 18))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 46, r := 19 }
    lowerValue := 5344241798255750569733
    upperValue := 433595865796975883590475106484224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 19))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 46, r := 20 }
    lowerValue := 231983679225060567469
    upperValue := 24088659210943104643915283693568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 20))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 46, r := 21 }
    lowerValue := 10976809443997110616
    upperValue := 1338258845052394702439737982976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 21))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 46, r := 22 }
    lowerValue := 565695357742481210
    upperValue := 74347713614021927913318776832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 22))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 46, r := 23 }
    lowerValue := 31736179811566093
    upperValue := 4130428534112329328517709824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 23))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 46, r := 24 }
    lowerValue := 1937769597771356
    upperValue := 229468251895129407139872768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 24))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 46, r := 25 }
    lowerValue := 128784874583048
    upperValue := 12748236216396078174437376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 25))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 46, r := 26 }
    lowerValue := 9319934099561
    upperValue := 708235345355337676357632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 26))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 46, r := 27 }
    lowerValue := 734935871326
    upperValue := 39346408075296537575424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 46 27))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) }]

end CoveringCodes.Database
