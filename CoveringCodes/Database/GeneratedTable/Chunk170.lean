import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 170. Do not edit manually.

def precomputedTable_chunk_170 : Array AnyBoundEntry := #[
  { key := { q := 17, n := 34, r := 17 }
    lowerValue := 935307494470
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 34, r := 18 }
    lowerValue := 61432018648
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 34, r := 19 }
    lowerValue := 4520810506
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 34, r := 20 }
    lowerValue := 373099151
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 34, r := 21 }
    lowerValue := 34589921
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 34, r := 22 }
    lowerValue := 3611387
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 34, r := 23 }
    lowerValue := 426059
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 34, r := 24 }
    lowerValue := 57050
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 34, r := 25 }
    lowerValue := 8720
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 34, r := 26 }
    lowerValue := 1532
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 34, r := 27 }
    lowerValue := 313
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 34, r := 28 }
    lowerValue := 75
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 34, r := 29 }
    lowerValue := 22
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 34, r := 30 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 32 31)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 34, r := 31 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 33 32))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31))) },
  { key := { q := 17, n := 34, r := 32 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 34 32)) },
  { key := { q := 17, n := 34, r := 33 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 34 33)) },
  { key := { q := 17, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 34 34)) },
  { key := { q := 17, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 34 35)) },
  { key := { q := 17, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 34 36)) },
  { key := { q := 17, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 34 37)) },
  { key := { q := 17, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 34 38)) },
  { key := { q := 17, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 34 39)) },
  { key := { q := 17, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 34 40)) },
  { key := { q := 17, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 34 41)) },
  { key := { q := 17, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 34 42)) },
  { key := { q := 17, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 34 43)) },
  { key := { q := 17, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 34 44)) },
  { key := { q := 17, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 34 45)) },
  { key := { q := 17, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 34 46)) },
  { key := { q := 17, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 34 47)) },
  { key := { q := 17, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 34 48)) },
  { key := { q := 17, n := 35, r := 0 }
    lowerValue := 11633549665058175578832094238737833478284593
    upperValue := 11633549665058175578832094238737833478284593
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 35 0)) },
  { key := { q := 17, n := 35, r := 1 }
    lowerValue := 20737165178356819213604446058356209408707
    upperValue := 254368346331457159169994695951363250275328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 1))
    upperTrace := (.lengthenFreeN 25 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 35, r := 2 }
    lowerValue := 76095457676612368959073359271183688479
    upperValue := 14962843901850421127646746820668426486784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 2))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 35, r := 3 }
    lowerValue := 431492264200625765107129101509158791
    upperValue := 880167288344142419273338048274613322752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 3))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 35, r := 4 }
    lowerValue := 3363827684467419103250327928206369
    upperValue := 51774546373184848192549296957330195456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 4))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 35, r := 5 }
    lowerValue := 33832251836769354291497067803019
    upperValue := 3045561551363814599561723350431187968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 5))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 35, r := 6 }
    lowerValue := 421872793254632731742956595009
    upperValue := 179150679491989094091866079437128704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 6))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 35, r := 7 }
    lowerValue := 6347850066894725203073467119
    upperValue := 10538275264234652593639181143360512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 7))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 35, r := 8 }
    lowerValue := 113036797215471826353480380
    upperValue := 619898544954979564331716537844736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 8))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 35, r := 9 }
    lowerValue := 2347828197996156267225985
    upperValue := 36464620291469386137159796343808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 9))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 35, r := 10 }
    lowerValue := 56254339525292323613185
    upperValue := 2144977664204081537479988020224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 10))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 35, r := 11 }
    lowerValue := 1541537540860252533568
    upperValue := 126175156717887149263528707072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 11))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 35, r := 12 }
    lowerValue := 47988436529790945816
    upperValue := 7422068042228655839031100416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 12))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 35, r := 13 }
    lowerValue := 1688160422180340280
    upperValue := 436592237778156225825358848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 13))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 35, r := 14 }
    lowerValue := 66835684635398907
    upperValue := 25681896339891542695609344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 14))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 35, r := 15 }
    lowerValue := 2968737798997577
    upperValue := 1510699784699502511506432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 15))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 35, r := 16 }
    lowerValue := 147612981338490
    upperValue := 14063084452067724991009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 16))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 35, r := 17 }
    lowerValue := 8203821248970
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 35, r := 18 }
    lowerValue := 509213318598
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 35, r := 19 }
    lowerValue := 35295355495
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 35, r := 20 }
    lowerValue := 2733364596
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 35, r := 21 }
    lowerValue := 236787935
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 35, r := 22 }
    lowerValue := 22989611
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 35, r := 23 }
    lowerValue := 2508290
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 35, r := 24 }
    lowerValue := 308631
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 35, r := 25 }
    lowerValue := 43023
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 35, r := 26 }
    lowerValue := 6834
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 35, r := 27 }
    lowerValue := 1246
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 35, r := 28 }
    lowerValue := 263
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 35, r := 29 }
    lowerValue := 65
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 35, r := 30 }
    lowerValue := 20
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 35, r := 31 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 33 32)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31))) },
  { key := { q := 17, n := 35, r := 32 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 34 33))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 32)) },
  { key := { q := 17, n := 35, r := 33 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 33)) },
  { key := { q := 17, n := 35, r := 34 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 34)) },
  { key := { q := 17, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 35 35)) },
  { key := { q := 17, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 35 36)) },
  { key := { q := 17, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 35 37)) },
  { key := { q := 17, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 35 38)) },
  { key := { q := 17, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 35 39)) },
  { key := { q := 17, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 35 40)) },
  { key := { q := 17, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 35 41)) },
  { key := { q := 17, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 35 42)) },
  { key := { q := 17, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 35 43)) },
  { key := { q := 17, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 35 44)) },
  { key := { q := 17, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 35 45)) },
  { key := { q := 17, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 35 46)) },
  { key := { q := 17, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 35 47)) },
  { key := { q := 17, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 35 48)) },
  { key := { q := 17, n := 36, r := 0 }
    lowerValue := 197770344305988984840145602058543169130838081
    upperValue := 197770344305988984840145602058543169130838081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 36 0)) },
  { key := { q := 17, n := 36, r := 1 }
    lowerValue := 342756229299807599376335532163852979429529
    upperValue := 4324261887634771705889909831173175254680576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 1))
    upperTrace := (.lengthenFreeN 26 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 36, r := 2 }
    lowerValue := 1221883170366366513898970091244389610155
    upperValue := 254368346331457159169994695951363250275328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 2))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 36, r := 3 }
    lowerValue := 6725213279751246258374090011011320393
    upperValue := 14962843901850421127646746820668426486784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 3))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 36, r := 4 }
    lowerValue := 50843249247220366737681539807934501
    upperValue := 880167288344142419273338048274613322752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 4))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 36, r := 5 }
    lowerValue := 495423434531825502408068314964493
    upperValue := 51774546373184848192549296957330195456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 5))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 36, r := 6 }
    lowerValue := 5978959078382797362213601414159
    upperValue := 3045561551363814599561723350431187968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 6))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 36, r := 7 }
    lowerValue := 86974416769168163907026266532
    upperValue := 179150679491989094091866079437128704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 7))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 36, r := 8 }
    lowerValue := 1495529011951276070758050186
    upperValue := 10538275264234652593639181143360512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 8))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 36, r := 9 }
    lowerValue := 29957405672505927007124379
    upperValue := 619898544954979564331716537844736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 9))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 36, r := 10 }
    lowerValue := 691303782833244577003101
    upperValue := 36464620291469386137159796343808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 10))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 36, r := 11 }
    lowerValue := 18218342855022766644629
    upperValue := 2144977664204081537479988020224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 11))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 36, r := 12 }
    lowerValue := 544564584941482759860
    upperValue := 126175156717887149263528707072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 12))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 36, r := 13 }
    lowerValue := 18363004670807344058
    upperValue := 7422068042228655839031100416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 13))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 36, r := 14 }
    lowerValue := 695585586258999412
    upperValue := 436592237778156225825358848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 14))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 36, r := 15 }
    lowerValue := 29501772487376754
    upperValue := 25681896339891542695609344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 15))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 36, r := 16 }
    lowerValue := 1397570292552852
    upperValue := 239072435685151324847153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 16))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 36, r := 17 }
    lowerValue := 73821258932854
    upperValue := 14063084452067724991009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 17))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 36, r := 18 }
    lowerValue := 4343244933820
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 36, r := 19 }
    lowerValue := 284502848755
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 36, r := 20 }
    lowerValue := 20752791431
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 36, r := 21 }
    lowerValue := 1687046898
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 36, r := 22 }
    lowerValue := 153058120
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 36, r := 23 }
    lowerValue := 15530156
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 36, r := 24 }
    lowerValue := 1767342
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 36, r := 25 }
    lowerValue := 226408
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 36, r := 26 }
    lowerValue := 32803
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 36, r := 27 }
    lowerValue := 5407
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 36, r := 28 }
    lowerValue := 1022
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 36, r := 29 }
    lowerValue := 223
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 36, r := 30 }
    lowerValue := 57
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 36, r := 31 }
    lowerValue := 18
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31))) },
  { key := { q := 17, n := 36, r := 32 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 34 33)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 32))) },
  { key := { q := 17, n := 36, r := 33 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 35 34))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 36 33)) },
  { key := { q := 17, n := 36, r := 34 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 36 34)) },
  { key := { q := 17, n := 36, r := 35 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 36 35)) },
  { key := { q := 17, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 36 36)) },
  { key := { q := 17, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 36 37)) },
  { key := { q := 17, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 36 38)) },
  { key := { q := 17, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 36 39)) },
  { key := { q := 17, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 36 40)) },
  { key := { q := 17, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 36 41)) },
  { key := { q := 17, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 36 42)) },
  { key := { q := 17, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 36 43)) },
  { key := { q := 17, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 36 44)) },
  { key := { q := 17, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 36 45)) },
  { key := { q := 17, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 36 46)) },
  { key := { q := 17, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 36 47)) },
  { key := { q := 17, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 36 48)) },
  { key := { q := 17, n := 37, r := 0 }
    lowerValue := 3362095853201812742282475234995233875224247377
    upperValue := 3362095853201812742282475234995233875224247377
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 37 0)) },
  { key := { q := 17, n := 37, r := 1 }
    lowerValue := 5669638875551117609245320801003767074577146
    upperValue := 73512452089791119000128467129943979329569792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 1))
    upperTrace := (.lengthenFreeN 27 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 37, r := 2 }
    lowerValue := 19651151466206551808020826791875771529580
    upperValue := 4324261887634771705889909831173175254680576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 2))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 37, r := 3 }
    lowerValue := 105075316671061746498945424398737828128
    upperValue := 254368346331457159169994695951363250275328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 37, r := 4 }
    lowerValue := 771065933601763197226035781952942467
    upperValue := 14962843901850421127646746820668426486784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 4))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 37, r := 5 }
    lowerValue := 7286230312694596371867843107914988
    upperValue := 880167288344142419273338048274613322752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 5))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 37, r := 6 }
    lowerValue := 85192193816913494992887862235536
    upperValue := 51774546373184848192549296957330195456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 6))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 37, r := 7 }
    lowerValue := 1199405803124086686555287895478
    upperValue := 3045561551363814599561723350431187968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 7))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 37, r := 8 }
    lowerValue := 19938498996964251745089269837
    upperValue := 179150679491989094091866079437128704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 8))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 37, r := 9 }
    lowerValue := 385668704624917575290286819
    upperValue := 10538275264234652593639181143360512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 9))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 37, r := 10 }
    lowerValue := 8583111534056177395400795
    upperValue := 619898544954979564331716537844736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 10))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 37, r := 11 }
    lowerValue := 217852618758829564374190
    upperValue := 36464620291469386137159796343808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 11))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 37, r := 12 }
    lowerValue := 6262512989203421559669
    upperValue := 2144977664204081537479988020224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 12))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 37, r := 13 }
    lowerValue := 202770584565873281777
    upperValue := 126175156717887149263528707072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 13))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 37, r := 14 }
    lowerValue := 7362638996270979139
    upperValue := 7422068042228655839031100416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 14))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 37, r := 15 }
    lowerValue := 298777804316546160
    upperValue := 436592237778156225825358848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 15))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 37, r := 16 }
    lowerValue := 13514933641841668
    upperValue := 4064231406647572522401601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 16))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 37, r := 17 }
    lowerValue := 680144908636272
    upperValue := 239072435685151324847153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 17))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 37, r := 18 }
    lowerValue := 38032823161276
    upperValue := 14063084452067724991009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 37, r := 19 }
    lowerValue := 2361509658159
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 37, r := 20 }
    lowerValue := 162796668370
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 37, r := 21 }
    lowerValue := 12465789024
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 37, r := 22 }
    lowerValue := 1061339568
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 37, r := 23 }
    lowerValue := 100635598
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 37, r := 24 }
    lowerValue := 10651127
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 37, r := 25 }
    lowerValue := 1262069
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 37, r := 26 }
    lowerValue := 168061
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 37, r := 27 }
    lowerValue := 25271
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 37, r := 28 }
    lowerValue := 4316
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 37, r := 29 }
    lowerValue := 844
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 37, r := 30 }
    lowerValue := 191
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 37, r := 31 }
    lowerValue := 51
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31))) },
  { key := { q := 17, n := 37, r := 32 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 34 33))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 32))) },
  { key := { q := 17, n := 37, r := 33 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 35 34)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 36 33))) },
  { key := { q := 17, n := 37, r := 34 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 36 35))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 37 34)) },
  { key := { q := 17, n := 37, r := 35 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 37 35)) },
  { key := { q := 17, n := 37, r := 36 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 37 36)) },
  { key := { q := 17, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 37 37)) },
  { key := { q := 17, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 37 38)) },
  { key := { q := 17, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 37 39)) },
  { key := { q := 17, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 37 40)) },
  { key := { q := 17, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 37 41)) },
  { key := { q := 17, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 37 42)) },
  { key := { q := 17, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 37 43)) },
  { key := { q := 17, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 37 44)) },
  { key := { q := 17, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 37 45)) },
  { key := { q := 17, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 37 46)) },
  { key := { q := 17, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 37 47)) },
  { key := { q := 17, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 37 48)) },
  { key := { q := 17, n := 38, r := 0 }
    lowerValue := 57155629504430816618802078994918975878812205409
    upperValue := 57155629504430816618802078994918975878812205409
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 38 0)) },
  { key := { q := 17, n := 38, r := 1 }
    lowerValue := 93851608381659797403615893259308663183599681
    upperValue := 1249711685526449023002183941209047648602686464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 1))
    upperTrace := (.lengthenFreeN 28 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 38, r := 2 }
    lowerValue := 316516663276224638900868211316607186290681
    upperValue := 73512452089791119000128467129943979329569792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 2))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 38, r := 3 }
    lowerValue := 1645503454869432203450739472123209147500
    upperValue := 4324261887634771705889909831173175254680576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 38, r := 4 }
    lowerValue := 11730790653794299773156895717089483292
    upperValue := 254368346331457159169994695951363250275328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 4))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 38, r := 5 }
    lowerValue := 107597880992791749076901515235954153
    upperValue := 14962843901850421127646746820668426486784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 5))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 38, r := 6 }
    lowerValue := 1220029650947433711206612413510885
    upperValue := 880167288344142419273338048274613322752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 6))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 38, r := 7 }
    lowerValue := 16641267373258464497540431811835
    upperValue := 51774546373184848192549296957330195456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 7))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 38, r := 8 }
    lowerValue := 267741135765860552034818937039
    upperValue := 3045561551363814599561723350431187968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 8))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 38, r := 9 }
    lowerValue := 5006823074720705626949808439
    upperValue := 179150679491989094091866079437128704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 9))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 38, r := 10 }
    lowerValue := 107598853121292181137922474
    upperValue := 10538275264234652593639181143360512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 10))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 38, r := 11 }
    lowerValue := 2633868252823338427353156
    upperValue := 619898544954979564331716537844736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 11))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 38, r := 12 }
    lowerValue := 72922422287538113624233
    upperValue := 36464620291469386137159796343808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 12))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 38, r := 13 }
    lowerValue := 2270733789122734885409
    upperValue := 2144977664204081537479988020224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 13))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 38, r := 14 }
    lowerValue := 79170009905165034404
    upperValue := 126175156717887149263528707072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 14))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 38, r := 15 }
    lowerValue := 3079652857585439022
    upperValue := 7422068042228655839031100416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 15))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 38, r := 16 }
    lowerValue := 133287622919212669
    upperValue := 69091933913008732880827217
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 16))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 38, r := 17 }
    lowerValue := 6405062548310534
    upperValue := 4064231406647572522401601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 17))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 38, r := 18 }
    lowerValue := 341245703360158
    upperValue := 239072435685151324847153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 38, r := 19 }
    lowerValue := 20138668056476
    upperValue := 14063084452067724991009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 38, r := 20 }
    lowerValue := 1315997386375
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 38, r := 21 }
    lowerValue := 95237209179
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 38, r := 22 }
    lowerValue := 7637983523
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 38, r := 23 }
    lowerValue := 679670223
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 38, r := 24 }
    lowerValue := 67226560
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 38, r := 25 }
    lowerValue := 7408897
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 38, r := 26 }
    lowerValue := 912613
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 38, r := 27 }
    lowerValue := 126136
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 38, r := 28 }
    lowerValue := 19657
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 38, r := 29 }
    lowerValue := 3475
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 38, r := 30 }
    lowerValue := 702
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 38, r := 31 }
    lowerValue := 164
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31))) },
  { key := { q := 17, n := 38, r := 32 }
    lowerValue := 45
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 32))) },
  { key := { q := 17, n := 38, r := 33 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 35 34))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 36 33))) },
  { key := { q := 17, n := 38, r := 34 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 36 35)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 37 34))) },
  { key := { q := 17, n := 38, r := 35 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 37 36))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 38 35)) },
  { key := { q := 17, n := 38, r := 36 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 38 36)) },
  { key := { q := 17, n := 38, r := 37 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 38 37)) },
  { key := { q := 17, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 38 38)) },
  { key := { q := 17, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 38 39)) },
  { key := { q := 17, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 38 40)) },
  { key := { q := 17, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 38 41)) },
  { key := { q := 17, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 38 42)) },
  { key := { q := 17, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 38 43)) },
  { key := { q := 17, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 38 44)) },
  { key := { q := 17, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 38 45)) },
  { key := { q := 17, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 38 46)) },
  { key := { q := 17, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 38 47)) },
  { key := { q := 17, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 38 48)) },
  { key := { q := 17, n := 39, r := 0 }
    lowerValue := 971645701575323882519635342913622589939807491953
    upperValue := 971645701575323882519635342913622589939807491953
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 39 0)) },
  { key := { q := 17, n := 39, r := 1 }
    lowerValue := 1554633122520518212031416548661796143903691988
    upperValue := 21245098653949633391037127000553810026245669888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 1))
    upperTrace := (.lengthenFreeN 29 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 39, r := 2 }
    lowerValue := 5105299476018536485829915473928902170227182
    upperValue := 1249711685526449023002183941209047648602686464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 2))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 39, r := 3 }
    lowerValue := 25825386803101821221288126579737050867847
    upperValue := 73512452089791119000128467129943979329569792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 39, r := 4 }
    lowerValue := 179005377756226795845275100614556374817
    upperValue := 4324261887634771705889909831173175254680576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 4))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 39, r := 5 }
    lowerValue := 1595076616201349873592956848518080335
    upperValue := 254368346331457159169994695951363250275328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 5))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 39, r := 6 }
    lowerValue := 17555562932462608747730589410222115
    upperValue := 14962843901850421127646746820668426486784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 6))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 39, r := 7 }
    lowerValue := 232221363345393608496574853135849
    upperValue := 880167288344142419273338048274613322752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 7))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 39, r := 8 }
    lowerValue := 3619781439110055759941855067605
    upperValue := 51774546373184848192549296957330195456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 8))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 39, r := 9 }
    lowerValue := 65513964246214619127940967239
    upperValue := 3045561551363814599561723350431187968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 9))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 39, r := 10 }
    lowerValue := 1361152238210640303306045982
    upperValue := 179150679491989094091866079437128704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 10))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 39, r := 11 }
    lowerValue := 32174412183820814958198248
    upperValue := 10538275264234652593639181143360512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 11))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 39, r := 12 }
    lowerValue := 859110060682064801275642
    upperValue := 619898544954979564331716537844736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 12))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 39, r := 13 }
    lowerValue := 25765479919236476808690
    upperValue := 36464620291469386137159796343808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 13))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 39, r := 14 }
    lowerValue := 863942916875312653459
    upperValue := 2144977664204081537479988020224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 14))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 39, r := 15 }
    lowerValue := 32269781384129043255
    upperValue := 126175156717887149263528707072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 15))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 39, r := 16 }
    lowerValue := 1338797427390447175
    upperValue := 1174562876521148458974062689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 16))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 39, r := 17 }
    lowerValue := 61556810748797946
    upperValue := 69091933913008732880827217
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 17))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 39, r := 18 }
    lowerValue := 3131641017603944
    upperValue := 4064231406647572522401601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 39, r := 19 }
    lowerValue := 176087787737556
    upperValue := 239072435685151324847153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 39, r := 20 }
    lowerValue := 10936897068990
    upperValue := 14063084452067724991009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 39, r := 21 }
    lowerValue := 750281028355
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) }]

end CoveringCodes.Database
