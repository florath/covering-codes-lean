import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 180. Do not edit manually.

def precomputedTable_chunk_180 : Array AnyBoundEntry := #[
  { key := { q := 18, n := 36, r := 18 }
    lowerValue := 11458467774676
    upperValue := 2185911559738696531968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 36, r := 19 }
    lowerValue := 706741076170
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 36, r := 20 }
    lowerValue := 48544090968
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 36, r := 21 }
    lowerValue := 3716232109
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 36, r := 22 }
    lowerValue := 317529476
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 36, r := 23 }
    lowerValue := 30345908
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 36, r := 24 }
    lowerValue := 3253101
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 36, r := 25 }
    lowerValue := 392638
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 36, r := 26 }
    lowerValue := 53609
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 36, r := 27 }
    lowerValue := 8329
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 36, r := 28 }
    lowerValue := 1484
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 36, r := 29 }
    lowerValue := 306
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 36, r := 30 }
    lowerValue := 74
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 36, r := 31 }
    lowerValue := 22
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31))) },
  { key := { q := 18, n := 36, r := 32 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 34 33)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 32))) },
  { key := { q := 18, n := 36, r := 33 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 35 34))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 35 33))) },
  { key := { q := 18, n := 36, r := 34 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 36 34)) },
  { key := { q := 18, n := 36, r := 35 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 36 35)) },
  { key := { q := 18, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 36 36)) },
  { key := { q := 18, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 36 37)) },
  { key := { q := 18, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 36 38)) },
  { key := { q := 18, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 36 39)) },
  { key := { q := 18, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 36 40)) },
  { key := { q := 18, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 36 41)) },
  { key := { q := 18, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 36 42)) },
  { key := { q := 18, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 36 43)) },
  { key := { q := 18, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 36 44)) },
  { key := { q := 18, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 36 45)) },
  { key := { q := 18, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 36 46)) },
  { key := { q := 18, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 36 47)) },
  { key := { q := 18, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 36 48)) },
  { key := { q := 18, n := 37, r := 0 }
    lowerValue := 27866516911699690485530919446962290200798035968
    upperValue := 27866516911699690485530919446962290200798035968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 37 0)) },
  { key := { q := 18, n := 37, r := 1 }
    lowerValue := 44232566526507445215128443566606809842536566
    upperValue := 344031072983946796117665672184719632108617728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 1))
    upperTrace := (.lengthenFreeN 26 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))) },
  { key := { q := 18, n := 37, r := 2 }
    lowerValue := 144308335983199159445329560480167630918045
    upperValue := 19112837387997044228759204010262201783812096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 2))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 37, r := 3 }
    lowerValue := 726312563194085708024088531833858814630
    upperValue := 1061824299333169123819955778347900099100672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 3))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 37, r := 4 }
    lowerValue := 5016915819816316361280061105542527903
    upperValue := 58990238851842729101108654352661116616704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 4))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 37, r := 5 }
    lowerValue := 44624560117062813301232605005366042
    upperValue := 3277235491769040505617147464036728700928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 5))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 37, r := 6 }
    lowerValue := 491134276868084045818471165538468
    upperValue := 182068638431613361423174859113151594496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 6))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 37, r := 7 }
    lowerValue := 6508785901813621032142665907300
    upperValue := 10114924357311853412398603284063977472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 7))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 37, r := 8 }
    lowerValue := 101850726671758532397605671305
    upperValue := 561940242072880745133255738003554304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 8))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 37, r := 9 }
    lowerValue := 1854508473642639431779163846
    upperValue := 31218902337382263618514207666864128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 9))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 37, r := 10 }
    lowerValue := 38851466257920769556993864
    upperValue := 1734383463187903534361900425936896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 10))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 37, r := 11 }
    lowerValue := 928281746389446920316693
    upperValue := 96354636843772418575661134774272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 11))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 37, r := 12 }
    lowerValue := 25120421564478900160255
    upperValue := 5353035380209578809758951931904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 12))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 37, r := 13 }
    lowerValue := 765688757174785509479
    upperValue := 297390854456087711653275107328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 13))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 37, r := 14 }
    lowerValue := 26173311607991613828
    upperValue := 16521714136449317314070839296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 14))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 37, r := 15 }
    lowerValue := 999911141574307534
    upperValue := 917873007580517628559491072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 15))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 37, r := 16 }
    lowerValue := 42582037085222312
    upperValue := 50992944865584312697749504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 16))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 37, r := 17 }
    lowerValue := 2017561209285034
    upperValue := 708235345355337676357632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 17))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 37, r := 18 }
    lowerValue := 106221408619839
    upperValue := 39346408075296537575424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 37, r := 19 }
    lowerValue := 6209970900347
    upperValue := 2185911559738696531968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 37, r := 20 }
    lowerValue := 403100284390
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 37, r := 21 }
    lowerValue := 29065690133
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 37, r := 22 }
    lowerValue := 2330447085
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 37, r := 23 }
    lowerValue := 208112432
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 37, r := 24 }
    lowerValue := 20746735
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 37, r := 25 }
    lowerValue := 2315810
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 37, r := 26 }
    lowerValue := 290554
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 37, r := 27 }
    lowerValue := 41173
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 37, r := 28 }
    lowerValue := 6629
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 37, r := 29 }
    lowerValue := 1222
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 37, r := 30 }
    lowerValue := 261
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 37, r := 31 }
    lowerValue := 65
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31))) },
  { key := { q := 18, n := 37, r := 32 }
    lowerValue := 20
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 32))) },
  { key := { q := 18, n := 37, r := 33 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 35 34)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 35 33))) },
  { key := { q := 18, n := 37, r := 34 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 36 35))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 37 34)) },
  { key := { q := 18, n := 37, r := 35 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 37 35)) },
  { key := { q := 18, n := 37, r := 36 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 37 36)) },
  { key := { q := 18, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 37 37)) },
  { key := { q := 18, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 37 38)) },
  { key := { q := 18, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 37 39)) },
  { key := { q := 18, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 37 40)) },
  { key := { q := 18, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 37 41)) },
  { key := { q := 18, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 37 42)) },
  { key := { q := 18, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 37 43)) },
  { key := { q := 18, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 37 44)) },
  { key := { q := 18, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 37 45)) },
  { key := { q := 18, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 37 46)) },
  { key := { q := 18, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 37 47)) },
  { key := { q := 18, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 37 48)) },
  { key := { q := 18, n := 38, r := 0 }
    lowerValue := 501597304410594428739556550045321223614364647424
    upperValue := 501597304410594428739556550045321223614364647424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 38 0)) },
  { key := { q := 18, n := 38, r := 1 }
    lowerValue := 775266312844813645656192503934035894303500228
    upperValue := 6192559313711042330117982099324953377955119104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 1))
    upperTrace := (.lengthenFreeN 27 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))) },
  { key := { q := 18, n := 38, r := 2 }
    lowerValue := 2461054218113546806105353656006560999805532
    upperValue := 344031072983946796117665672184719632108617728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 2))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 38, r := 3 }
    lowerValue := 12043186686833696881531538313729705731565
    upperValue := 19112837387997044228759204010262201783812096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 38, r := 4 }
    lowerValue := 80814774659218126180673537181858280182
    upperValue := 1061824299333169123819955778347900099100672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 4))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 38, r := 5 }
    lowerValue := 697736065290392872355836706387213472
    upperValue := 58990238851842729101108654352661116616704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 5))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 38, r := 6 }
    lowerValue := 7447066290012641401621007827700780
    upperValue := 3277235491769040505617147464036728700928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 6))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 38, r := 7 }
    lowerValue := 95616394119662383243587621707375
    upperValue := 182068638431613361423174859113151594496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 7))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 38, r := 8 }
    lowerValue := 1448092576790079706655775746373
    upperValue := 10114924357311853412398603284063977472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 8))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 38, r := 9 }
    lowerValue := 25490790704769454570162392589
    upperValue := 561940242072880745133255738003554304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 9))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 38, r := 10 }
    lowerValue := 515672079976161591013356418
    upperValue := 31218902337382263618514207666864128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 10))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 38, r := 11 }
    lowerValue := 11882575848482383341030004
    upperValue := 1734383463187903534361900425936896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 11))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 38, r := 12 }
    lowerValue := 309695243993446765519156
    upperValue := 96354636843772418575661134774272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 12))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 38, r := 13 }
    lowerValue := 9078282362915271815305
    upperValue := 5353035380209578809758951931904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 13))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 38, r := 14 }
    lowerValue := 297968398080707880890
    upperValue := 297390854456087711653275107328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 14))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 38, r := 15 }
    lowerValue := 10911700112675054674
    upperValue := 16521714136449317314070839296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 15))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 38, r := 16 }
    lowerValue := 444602618266282300
    upperValue := 917873007580517628559491072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 16))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 38, r := 17 }
    lowerValue := 20114489766429311
    upperValue := 12748236216396078174437376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 17))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 38, r := 18 }
    lowerValue := 1008950933564106
    upperValue := 708235345355337676357632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 38, r := 19 }
    lowerValue := 56061769588368
    upperValue := 39346408075296537575424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 38, r := 20 }
    lowerValue := 3449395787039
    upperValue := 2185911559738696531968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 38, r := 21 }
    lowerValue := 235054595867
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 38, r := 22 }
    lowerValue := 17751755060
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 38, r := 23 }
    lowerValue := 1487623888
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 38, r := 24 }
    lowerValue := 138582029
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 38, r := 25 }
    lowerValue := 14385954
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 38, r := 26 }
    lowerValue := 1669364
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 38, r := 27 }
    lowerValue := 217399
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 38, r := 28 }
    lowerValue := 31929
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 38, r := 29 }
    lowerValue := 5321
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 38, r := 30 }
    lowerValue := 1014
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 38, r := 31 }
    lowerValue := 223
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31))) },
  { key := { q := 18, n := 38, r := 32 }
    lowerValue := 58
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 32))) },
  { key := { q := 18, n := 38, r := 33 }
    lowerValue := 18
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 35 33))) },
  { key := { q := 18, n := 38, r := 34 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 36 35)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 37 34))) },
  { key := { q := 18, n := 38, r := 35 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 37 36))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 38 35)) },
  { key := { q := 18, n := 38, r := 36 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 38 36)) },
  { key := { q := 18, n := 38, r := 37 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 38 37)) },
  { key := { q := 18, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 38 38)) },
  { key := { q := 18, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 38 39)) },
  { key := { q := 18, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 38 40)) },
  { key := { q := 18, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 38 41)) },
  { key := { q := 18, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 38 42)) },
  { key := { q := 18, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 38 43)) },
  { key := { q := 18, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 38 44)) },
  { key := { q := 18, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 38 45)) },
  { key := { q := 18, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 38 46)) },
  { key := { q := 18, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 38 47)) },
  { key := { q := 18, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 38 48)) },
  { key := { q := 18, n := 39, r := 0 }
    lowerValue := 9028751479390699717312017900815782025058563653632
    upperValue := 9028751479390699717312017900815782025058563653632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 39 0)) },
  { key := { q := 18, n := 39, r := 1 }
    lowerValue := 13597517288239005598361472742192442808823138033
    upperValue := 111466067646798761942123677787849160803192143872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 1))
    upperTrace := (.lengthenFreeN 28 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))) },
  { key := { q := 18, n := 39, r := 2 }
    lowerValue := 42030749905223146258895029168699203609923812
    upperValue := 6192559313711042330117982099324953377955119104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 2))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 39, r := 3 }
    lowerValue := 200128726929718276369930211266207171962025
    upperValue := 344031072983946796117665672184719632108617728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 39, r := 4 }
    lowerValue := 1305713952433208346243813254917492025883
    upperValue := 19112837387997044228759204010262201783812096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 4))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 39, r := 5 }
    lowerValue := 10951807807765446051418495865691976998
    upperValue := 1061824299333169123819955778347900099100672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 5))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 39, r := 6 }
    lowerValue := 113460457084568156581796693099480871
    upperValue := 58990238851842729101108654352661116616704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 6))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 39, r := 7 }
    lowerValue := 1412735816867363071014390286662483
    upperValue := 3277235491769040505617147464036728700928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 7))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 39, r := 8 }
    lowerValue := 20728792975932021555007109333406
    upperValue := 182068638431613361423174859113151594496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 8))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 39, r := 9 }
    lowerValue := 353152825661071360822138511512
    upperValue := 10114924357311853412398603284063977472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 9))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 39, r := 10 }
    lowerValue := 6906807683637435969049207404
    upperValue := 561940242072880745133255738003554304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 10))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 39, r := 11 }
    lowerValue := 153683900436641596664060629
    upperValue := 31218902337382263618514207666864128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 11))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 39, r := 12 }
    lowerValue := 3862953532826050357734101
    upperValue := 1734383463187903534361900425936896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 12))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 39, r := 13 }
    lowerValue := 109060722608626893124393
    upperValue := 96354636843772418575661134774272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 13))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 39, r := 14 }
    lowerValue := 3442563628340116946855
    upperValue := 5353035380209578809758951931904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 14))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 39, r := 15 }
    lowerValue := 121050901380212345930
    upperValue := 297390854456087711653275107328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 15))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 39, r := 16 }
    lowerValue := 4727933391163278579
    upperValue := 16521714136449317314070839296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 16))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 39, r := 17 }
    lowerValue := 204657558619662744
    upperValue := 229468251895129407139872768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 17))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 39, r := 18 }
    lowerValue := 9802371365495059
    upperValue := 12748236216396078174437376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 39, r := 19 }
    lowerValue := 518931609690872
    upperValue := 708235345355337676357632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 39, r := 20 }
    lowerValue := 30346824013990
    upperValue := 39346408075296537575424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 39, r := 21 }
    lowerValue := 1960201349444
    upperValue := 2185911559738696531968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 39, r := 22 }
    lowerValue := 139907883226
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 39, r := 23 }
    lowerValue := 11043861418
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 39, r := 24 }
    lowerValue := 965480712
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 39, r := 25 }
    lowerValue := 93660594
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 39, r := 26 }
    lowerValue := 10108163
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 39, r := 27 }
    lowerValue := 1217585
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 39, r := 28 }
    lowerValue := 164359
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 39, r := 29 }
    lowerValue := 24987
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 39, r := 30 }
    lowerValue := 4305
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 39, r := 31 }
    lowerValue := 847
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31))) },
  { key := { q := 18, n := 39, r := 32 }
    lowerValue := 192
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 32))) },
  { key := { q := 18, n := 39, r := 33 }
    lowerValue := 51
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 35 33))) },
  { key := { q := 18, n := 39, r := 34 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 36 35))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 37 34))) },
  { key := { q := 18, n := 39, r := 35 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 37 36)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 38 35))) },
  { key := { q := 18, n := 39, r := 36 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 39 36)) },
  { key := { q := 18, n := 39, r := 37 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 39 37)) },
  { key := { q := 18, n := 39, r := 38 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 39 38)) },
  { key := { q := 18, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 39 39)) },
  { key := { q := 18, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 39 40)) },
  { key := { q := 18, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 39 41)) },
  { key := { q := 18, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 39 42)) },
  { key := { q := 18, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 39 43)) },
  { key := { q := 18, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 39 44)) },
  { key := { q := 18, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 39 45)) },
  { key := { q := 18, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 39 46)) },
  { key := { q := 18, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 39 47)) },
  { key := { q := 18, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 39 48)) },
  { key := { q := 18, n := 40, r := 0 }
    lowerValue := 162517526629032594911616322214684076451054145765376
    upperValue := 162517526629032594911616322214684076451054145765376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 40 0)) },
  { key := { q := 18, n := 40, r := 1 }
    lowerValue := 238645413552177085039084173589844458812120625207
    upperValue := 2006389217642377714958226200181284894457458589696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 1))
    upperTrace := (.lengthenFreeN 29 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))) },
  { key := { q := 18, n := 40, r := 2 }
    lowerValue := 718782874153730390009846582786825694937457799
    upperValue := 111466067646798761942123677787849160803192143872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 2))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 40, r := 3 }
    lowerValue := 3332562107060916928916822749734988923062109
    upperValue := 6192559313711042330117982099324953377955119104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 40, r := 4 }
    lowerValue := 21156313491556928119699530278169355044002
    upperValue := 344031072983946796117665672184719632108617728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 4))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 40, r := 5 }
    lowerValue := 172531420093428004738373976317067842228
    upperValue := 19112837387997044228759204010262201783812096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 5))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 40, r := 6 }
    lowerValue := 1736463082127319972200700728207314973
    upperValue := 1061824299333169123819955778347900099100672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 6))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 40, r := 7 }
    lowerValue := 20986888290721051522106281601746586
    upperValue := 58990238851842729101108654352661116616704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 7))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 40, r := 8 }
    lowerValue := 298628969713681502819988721596968
    upperValue := 3277235491769040505617147464036728700928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 8))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 40, r := 9 }
    lowerValue := 4929142797436222138008316611723
    upperValue := 182068638431613361423174859113151594496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 9))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 40, r := 10 }
    lowerValue := 93301720035749881256068078393
    upperValue := 10114924357311853412398603284063977472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 10))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 40, r := 11 }
    lowerValue := 2007091242705365770914034820
    upperValue := 561940242072880745133255738003554304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 11))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 40, r := 12 }
    lowerValue := 48716332537578608399961062
    upperValue := 31218902337382263618514207666864128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 12))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 40, r := 13 }
    lowerValue := 1326457211719008836217772
    upperValue := 1734383463187903534361900425936896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 13))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 40, r := 14 }
    lowerValue := 40326405348092425901558
    upperValue := 96354636843772418575661134774272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 14))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 40, r := 15 }
    lowerValue := 1363722322490451617149
    upperValue := 5353035380209578809758951931904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 15))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 40, r := 16 }
    lowerValue := 51144254409935121690
    upperValue := 297390854456087711653275107328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 16))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 40, r := 17 }
    lowerValue := 2122175465749582335
    upperValue := 4130428534112329328517709824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 17))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 40, r := 18 }
    lowerValue := 97254338905699327
    upperValue := 229468251895129407139872768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 40, r := 19 }
    lowerValue := 4916272559705883
    upperValue := 12748236216396078174437376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 40, r := 20 }
    lowerValue := 273922600548591
    upperValue := 708235345355337676357632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 40, r := 21 }
    lowerValue := 16817053303853
    upperValue := 39346408075296537575424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 40, r := 22 }
    lowerValue := 1137790289450
    upperValue := 2185911559738696531968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 40, r := 23 }
    lowerValue := 84883013929
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 40, r := 24 }
    lowerValue := 6990100847
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 40, r := 25 }
    lowerValue := 636387403
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 40, r := 26 }
    lowerValue := 64185680
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 40, r := 27 }
    lowerValue := 7191063
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 40, r := 28 }
    lowerValue := 897920
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 40, r := 29 }
    lowerValue := 125476
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 40, r := 30 }
    lowerValue := 19722
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 40, r := 31 }
    lowerValue := 3509
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31))) },
  { key := { q := 18, n := 40, r := 32 }
    lowerValue := 712
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 32))) },
  { key := { q := 18, n := 40, r := 33 }
    lowerValue := 167
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 35 33))) },
  { key := { q := 18, n := 40, r := 34 }
    lowerValue := 46
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 34))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 37 34))) },
  { key := { q := 18, n := 40, r := 35 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 37 36))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 38 35))) },
  { key := { q := 18, n := 40, r := 36 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 38 37)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 39 36))) },
  { key := { q := 18, n := 40, r := 37 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 40 37)) },
  { key := { q := 18, n := 40, r := 38 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 40 38)) },
  { key := { q := 18, n := 40, r := 39 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 40 39)) },
  { key := { q := 18, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 40 40)) },
  { key := { q := 18, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 40 41)) },
  { key := { q := 18, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 40 42)) },
  { key := { q := 18, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 40 43)) },
  { key := { q := 18, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 40 44)) },
  { key := { q := 18, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 40 45)) },
  { key := { q := 18, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 40 46)) },
  { key := { q := 18, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 40 47)) },
  { key := { q := 18, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 40 48)) },
  { key := { q := 18, n := 41, r := 0 }
    lowerValue := 2925315479322586708409093799864313376118974623776768
    upperValue := 2925315479322586708409093799864313376118974623776768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 41 0)) },
  { key := { q := 18, n := 41, r := 1 }
    lowerValue := 4190996388714307605170621489776953260915436423749
    upperValue := 36115005917562798869248071603263128100234254614528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 1))
    upperTrace := (.lengthenFreeN 30 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))) },
  { key := { q := 18, n := 41, r := 2 }
    lowerValue := 12307893365488546303861080116225790254541752387
    upperValue := 2006389217642377714958226200181284894457458589696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 2))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 41, r := 3 }
    lowerValue := 55603518981461499550317616763337548660547809
    upperValue := 111466067646798761942123677787849160803192143872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 41, r := 4 }
    lowerValue := 343718768036866413340569122835632521228310
    upperValue := 6192559313711042330117982099324953377955119104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 4))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 41, r := 5 }
    lowerValue := 2727442834571391874472952234925479580222
    upperValue := 344031072983946796117665672184719632108617728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 5))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 41, r := 6 }
    lowerValue := 26689757242033225973873976712148820136
    upperValue := 19112837387997044228759204010262201783812096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 6))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 41, r := 7 }
    lowerValue := 313376948505868717696110748529586971
    upperValue := 1061824299333169123819955778347900099100672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 7))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 41, r := 8 }
    lowerValue := 4328310521480138529538833220852768
    upperValue := 58990238851842729101108654352661116616704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 8))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 41, r := 9 }
    lowerValue := 69283568784306846337383115899158
    upperValue := 3277235491769040505617147464036728700928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 9))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 41, r := 10 }
    lowerValue := 1270577034252675592546054331810
    upperValue := 182068638431613361423174859113151594496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 10))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 41, r := 11 }
    lowerValue := 26453548057993711426041813980
    upperValue := 10114924357311853412398603284063977472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 11))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 41, r := 12 }
    lowerValue := 620754610616251458698746969
    upperValue := 561940242072880745133255738003554304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 12))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 41, r := 13 }
    lowerValue := 16321396391464218780561135
    upperValue := 31218902337382263618514207666864128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 13))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 41, r := 14 }
    lowerValue := 478548509509255577278831
    upperValue := 1734383463187903534361900425936896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 14))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 41, r := 15 }
    lowerValue := 15586478621407948488157
    upperValue := 96354636843772418575661134774272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 15))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 41, r := 16 }
    lowerValue := 562176409594995477519
    upperValue := 5353035380209578809758951931904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 16))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 11 1 387420489 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))))) },
  { key := { q := 18, n := 41, r := 17 }
    lowerValue := 22398988302253605742
    upperValue := 74347713614021927913318776832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 41, r := 18 }
    lowerValue := 983984811499615321
    upperValue := 4130428534112329328517709824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 41, r := 19 }
    lowerValue := 47593169261498249
    upperValue := 229468251895129407139872768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 41, r := 20 }
    lowerValue := 2532154646357704
    upperValue := 12748236216396078174437376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 41, r := 21 }
    lowerValue := 148117944039341
    upperValue := 708235345355337676357632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 41, r := 22 }
    lowerValue := 9524942302686
    upperValue := 39346408075296537575424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 41 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) }]

end CoveringCodes.Database
