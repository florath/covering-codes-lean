import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 171. Do not edit manually.

def precomputedTable_chunk_171 : Array AnyBoundEntry := #[
  { key := { q := 17, n := 39, r := 22 }
    lowerValue := 56870229635
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 39, r := 23 }
    lowerValue := 4767118549
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 39, r := 24 }
    lowerValue := 442525082
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 39, r := 25 }
    lowerValue := 45579580
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 39, r := 26 }
    lowerValue := 5222220
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 39, r := 27 }
    lowerValue := 667713
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 39, r := 28 }
    lowerValue := 95656
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 39, r := 29 }
    lowerValue := 15430
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 39, r := 30 }
    lowerValue := 2820
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 39, r := 31 }
    lowerValue := 588
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31))) },
  { key := { q := 17, n := 39, r := 32 }
    lowerValue := 142
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 32))) },
  { key := { q := 17, n := 39, r := 33 }
    lowerValue := 40
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 36 33))) },
  { key := { q := 17, n := 39, r := 34 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 36 35))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 37 34))) },
  { key := { q := 17, n := 39, r := 35 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 37 36)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 38 35))) },
  { key := { q := 17, n := 39, r := 36 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 39 36)) },
  { key := { q := 17, n := 39, r := 37 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 39 37)) },
  { key := { q := 17, n := 39, r := 38 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 39 38)) },
  { key := { q := 17, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 39 39)) },
  { key := { q := 17, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 39 40)) },
  { key := { q := 17, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 39 41)) },
  { key := { q := 17, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 39 42)) },
  { key := { q := 17, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 39 43)) },
  { key := { q := 17, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 39 44)) },
  { key := { q := 17, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 39 45)) },
  { key := { q := 17, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 39 46)) },
  { key := { q := 17, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 39 47)) },
  { key := { q := 17, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 39 48)) },
  { key := { q := 17, n := 40, r := 0 }
    lowerValue := 16517976926780506002833800829531584028976727363201
    upperValue := 16517976926780506002833800829531584028976727363201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 40 0)) },
  { key := { q := 17, n := 40, r := 1 }
    lowerValue := 25769074768768340098024650280080474304175861722
    upperValue := 361166677117143767647631159009414770446176388096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 1))
    upperTrace := (.lengthenFreeN 30 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 40, r := 2 }
    lowerValue := 82457540281750320749366271282249909040873036
    upperValue := 21245098653949633391037127000553810026245669888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 2))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 40, r := 3 }
    lowerValue := 406158443834636433044431303237378058649350
    upperValue := 1249711685526449023002183941209047648602686464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 40, r := 4 }
    lowerValue := 2739297911299706252182767196604109763283
    upperValue := 73512452089791119000128467129943979329569792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 4))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 40, r := 5 }
    lowerValue := 23732677716057085098283091988611625963
    upperValue := 4324261887634771705889909831173175254680576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 5))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 40, r := 6 }
    lowerValue := 253758357155320565257418034229142218
    upperValue := 254368346331457159169994695951363250275328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 6))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 40, r := 7 }
    lowerValue := 3258185492556440011438123389685550
    upperValue := 14962843901850421127646746820668426486784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 7))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 40, r := 8 }
    lowerValue := 49252584822423619686655979355028
    upperValue := 880167288344142419273338048274613322752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 8))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 40, r := 9 }
    lowerValue := 863642188707620733769418320618
    upperValue := 51774546373184848192549296957330195456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 9))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 40, r := 10 }
    lowerValue := 17366530684828551813350521253
    upperValue := 3045561551363814599561723350431187968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 10))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 40, r := 11 }
    lowerValue := 396868513535772387006692913
    upperValue := 179150679491989094091866079437128704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 11))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 40, r := 12 }
    lowerValue := 10233043740464280018373756
    upperValue := 10538275264234652593639181143360512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 12))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 40, r := 13 }
    lowerValue := 295983970230280898539611
    upperValue := 619898544954979564331716537844736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 13))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 40, r := 14 }
    lowerValue := 9558779175319651271391
    upperValue := 36464620291469386137159796343808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 14))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 40, r := 15 }
    lowerValue := 343375475232690593976
    upperValue := 2144977664204081537479988020224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 15))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 40, r := 16 }
    lowerValue := 13679242228704943834
    upperValue := 19967568900859523802559065713
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 16))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 40, r := 17 }
    lowerValue := 602918552081097221
    upperValue := 1174562876521148458974062689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 17))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 40, r := 18 }
    lowerValue := 29348604295643551
    upperValue := 69091933913008732880827217
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 40, r := 19 }
    lowerValue := 1575806298324094
    upperValue := 4064231406647572522401601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 40, r := 20 }
    lowerValue := 93254219942594
    upperValue := 239072435685151324847153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 40, r := 21 }
    lowerValue := 6080610941136
    upperValue := 14063084452067724991009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 40, r := 22 }
    lowerValue := 436914269213
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 40, r := 23 }
    lowerValue := 34615279514
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 40, r := 24 }
    lowerValue := 3027020199
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 40, r := 25 }
    lowerValue := 292620160
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 40, r := 26 }
    lowerValue := 31335027
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 40, r := 27 }
    lowerValue := 3726859
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 40, r := 28 }
    lowerValue := 493948
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 40, r := 29 }
    lowerValue := 73252
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 40, r := 30 }
    lowerValue := 12216
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 40, r := 31 }
    lowerValue := 2305
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31))) },
  { key := { q := 17, n := 40, r := 32 }
    lowerValue := 496
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 32))) },
  { key := { q := 17, n := 40, r := 33 }
    lowerValue := 123
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 36 33))) },
  { key := { q := 17, n := 40, r := 34 }
    lowerValue := 36
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 34))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 37 34))) },
  { key := { q := 17, n := 40, r := 35 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 37 36))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 38 35))) },
  { key := { q := 17, n := 40, r := 36 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 38 37)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 39 36))) },
  { key := { q := 17, n := 40, r := 37 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 40 37)) },
  { key := { q := 17, n := 40, r := 38 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 40 38)) },
  { key := { q := 17, n := 40, r := 39 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 40 39)) },
  { key := { q := 17, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 40 40)) },
  { key := { q := 17, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 40 41)) },
  { key := { q := 17, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 40 42)) },
  { key := { q := 17, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 40 43)) },
  { key := { q := 17, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 40 44)) },
  { key := { q := 17, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 40 45)) },
  { key := { q := 17, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 40 46)) },
  { key := { q := 17, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 40 47)) },
  { key := { q := 17, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 40 48)) },
  { key := { q := 17, n := 41, r := 0 }
    lowerValue := 280805607755268602048174614102036928492604365174417
    upperValue := 280805607755268602048174614102036928492604365174417
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 41 0)) },
  { key := { q := 17, n := 41, r := 1 }
    lowerValue := 427405795670119637820661513092902478679763112899
    upperValue := 6139833510991444050009729703160051097584998597632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 1))
    upperTrace := (.lengthenFreeN 31 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 41, r := 2 }
    lowerValue := 1333505595365441629656489617109356332802748473
    upperValue := 361166677117143767647631159009414770446176388096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 41, r := 3 }
    lowerValue := 6400282877628889380229875748375098603359995
    upperValue := 21245098653949633391037127000553810026245669888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 41, r := 4 }
    lowerValue := 42032333739082787603040511734155669694741
    upperValue := 1249711685526449023002183941209047648602686464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 4))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 41, r := 5 }
    lowerValue := 354337131218509978866777658572385389196
    upperValue := 73512452089791119000128467129943979329569792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 5))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 41, r := 6 }
    lowerValue := 3683693911066099081099479469871864884
    upperValue := 4324261887634771705889909831173175254680576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 6))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 41, r := 7 }
    lowerValue := 45949496807738234306682729482453744
    upperValue := 254368346331457159169994695951363250275328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 7))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 41, r := 8 }
    lowerValue := 674222943026674600664201807371051
    upperValue := 14962843901850421127646746820668426486784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 8))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 41, r := 9 }
    lowerValue := 11465237265810253786602865456942
    upperValue := 880167288344142419273338048274613322752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 9))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 41, r := 10 }
    lowerValue := 223366161799607318881533562653
    upperValue := 51774546373184848192549296957330195456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 10))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 41, r := 11 }
    lowerValue := 4940368850495808048476640253
    upperValue := 3045561551363814599561723350431187968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 11))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 41, r := 12 }
    lowerValue := 123154266453025269467373155
    upperValue := 179150679491989094091866079437128704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 12))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 41, r := 13 }
    lowerValue := 3439816908791820550046138
    upperValue := 10538275264234652593639181143360512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 13))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 41, r := 14 }
    lowerValue := 107138680848696332925693
    upperValue := 619898544954979564331716537844736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 14))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 41, r := 15 }
    lowerValue := 3706838915115091408670
    upperValue := 36464620291469386137159796343808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 15))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 41, r := 16 }
    lowerValue := 142022092377081281312
    upperValue := 339448671314611904643504117121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 16))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 41, r := 17 }
    lowerValue := 6010775010385326392
    upperValue := 19967568900859523802559065713
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 41, r := 18 }
    lowerValue := 280478290077740080
    upperValue := 1174562876521148458974062689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 41, r := 19 }
    lowerValue := 14409631157385448
    upperValue := 69091933913008732880827217
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 41, r := 20 }
    lowerValue := 814296848537560
    upperValue := 4064231406647572522401601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 41, r := 21 }
    lowerValue := 50590545829015
    upperValue := 239072435685151324847153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 41, r := 22 }
    lowerValue := 3455219187587
    upperValue := 14063084452067724991009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 41, r := 23 }
    lowerValue := 259504611604
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 41, r := 24 }
    lowerValue := 21448897944
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 41, r := 25 }
    lowerValue := 1953321196
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 41, r := 26 }
    lowerValue := 196323981
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 41, r := 27 }
    lowerValue := 21824721
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 41, r := 28 }
    lowerValue := 2690867
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 41, r := 29 }
    lowerValue := 369215
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 41, r := 30 }
    lowerValue := 56612
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 41, r := 31 }
    lowerValue := 9750
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31))) },
  { key := { q := 17, n := 41, r := 32 }
    lowerValue := 1898
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 32))) },
  { key := { q := 17, n := 41, r := 33 }
    lowerValue := 421
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 36 33))) },
  { key := { q := 17, n := 41, r := 34 }
    lowerValue := 107
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 37 34))) },
  { key := { q := 17, n := 41, r := 35 }
    lowerValue := 32
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 35))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 38 35))) },
  { key := { q := 17, n := 41, r := 36 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 38 37))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 39 36))) },
  { key := { q := 17, n := 41, r := 37 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 39 38)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 40 37))) },
  { key := { q := 17, n := 41, r := 38 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 41 38)) },
  { key := { q := 17, n := 41, r := 39 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 41 39)) },
  { key := { q := 17, n := 41, r := 40 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 41 40)) },
  { key := { q := 17, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 41 41)) },
  { key := { q := 17, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 41 42)) },
  { key := { q := 17, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 41 43)) },
  { key := { q := 17, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 41 44)) },
  { key := { q := 17, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 41 45)) },
  { key := { q := 17, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 41 46)) },
  { key := { q := 17, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 41 47)) },
  { key := { q := 17, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 41 48)) },
  { key := { q := 17, n := 42, r := 0 }
    lowerValue := 4773695331839566234818968439734627784374274207965089
    upperValue := 4773695331839566234818968439734627784374274207965089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 42 0)) },
  { key := { q := 17, n := 42, r := 1 }
    lowerValue := 7093157996789845816967263654880576202636365836501
    upperValue := 104377169686854548850165404953720868658944976159744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 1))
    upperTrace := (.lengthenFreeN 32 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 42, r := 2 }
    lowerValue := 21591736051271507107178414302541636102991438778
    upperValue := 6139833510991444050009729703160051097584998597632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 42, r := 3 }
    lowerValue := 101045197282162977568650579721581077348436855
    upperValue := 361166677117143767647631159009414770446176388096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 42, r := 4 }
    lowerValue := 646606704603867798663111020062962951498732
    upperValue := 21245098653949633391037127000553810026245669888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 4))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 42, r := 5 }
    lowerValue := 5307805249753769993836733730279221871863
    upperValue := 1249711685526449023002183941209047648602686464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 5))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 42, r := 6 }
    lowerValue := 53691889932046495750152920809530660831
    upperValue := 73512452089791119000128467129943979329569792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 6))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 42, r := 7 }
    lowerValue := 651179070583472867042344818819450501
    upperValue := 4324261887634771705889909831173175254680576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 7))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 42, r := 8 }
    lowerValue := 9282529766169928582980933290475655
    upperValue := 254368346331457159169994695951363250275328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 8))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 42, r := 9 }
    lowerValue := 153220518160570062691207816412035
    upperValue := 14962843901850421127646746820668426486784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 9))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 42, r := 10 }
    lowerValue := 2894860378447004633940936246165
    upperValue := 880167288344142419273338048274613322752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 10))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 42, r := 11 }
    lowerValue := 62033540146451794372592249363
    upperValue := 51774546373184848192549296957330195456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 11))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 42, r := 12 }
    lowerValue := 1496673609896343450913307266
    upperValue := 3045561551363814599561723350431187968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 12))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 42, r := 13 }
    lowerValue := 40415422544078708864243351
    upperValue := 179150679491989094091866079437128704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 13))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 42, r := 14 }
    lowerValue := 1215578785578253415572591
    upperValue := 10538275264234652593639181143360512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 14))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 42, r := 15 }
    lowerValue := 40562067056609910128673
    upperValue := 619898544954979564331716537844736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 15))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 42, r := 16 }
    lowerValue := 1496807717770704194912
    upperValue := 5770627412348402378939569991057
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 16))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 42, r := 17 }
    lowerValue := 60926128851080378522
    upperValue := 339448671314611904643504117121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 17))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 42, r := 18 }
    lowerValue := 2729948064535695596
    upperValue := 19967568900859523802559065713
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 42, r := 19 }
    lowerValue := 134447462751316917
    upperValue := 1174562876521148458974062689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 42, r := 20 }
    lowerValue := 7269860237551584
    upperValue := 69091933913008732880827217
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 42, r := 21 }
    lowerValue := 431303575161712
    upperValue := 4064231406647572522401601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 42, r := 22 }
    lowerValue := 28067540060656
    upperValue := 239072435685151324847153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 42, r := 23 }
    lowerValue := 2003731206273
    upperValue := 14063084452067724991009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 42, r := 24 }
    lowerValue := 157002719748
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 42, r := 25 }
    lowerValue := 13514505666
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 42, r := 26 }
    lowerValue := 1279658107
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 42, r := 27 }
    lowerValue := 133524414
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 42, r := 28 }
    lowerValue := 15388222
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 42, r := 29 }
    lowerValue := 1964298
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 42, r := 30 }
    lowerValue := 278692
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 42, r := 31 }
    lowerValue := 44133
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31))) },
  { key := { q := 17, n := 42, r := 32 }
    lowerValue := 7841
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 32))) },
  { key := { q := 17, n := 42, r := 33 }
    lowerValue := 1573
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 36 33))) },
  { key := { q := 17, n := 42, r := 34 }
    lowerValue := 359
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 37 34))) },
  { key := { q := 17, n := 42, r := 35 }
    lowerValue := 94
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 38 35))) },
  { key := { q := 17, n := 42, r := 36 }
    lowerValue := 29
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 39 36))) },
  { key := { q := 17, n := 42, r := 37 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 39 38))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 40 37))) },
  { key := { q := 17, n := 42, r := 38 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 40 39)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 41 38))) },
  { key := { q := 17, n := 42, r := 39 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 42 39)) },
  { key := { q := 17, n := 42, r := 40 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 42 40)) },
  { key := { q := 17, n := 42, r := 41 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 42 41)) },
  { key := { q := 17, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 42 42)) },
  { key := { q := 17, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 42 43)) },
  { key := { q := 17, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 42 44)) },
  { key := { q := 17, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 42 45)) },
  { key := { q := 17, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 42 46)) },
  { key := { q := 17, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 42 47)) },
  { key := { q := 17, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 42 48)) },
  { key := { q := 17, n := 43, r := 0 }
    lowerValue := 81152820641272625991922463475488672334362661535406513
    upperValue := 81152820641272625991922463475488672334362661535406513
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 43 0)) },
  { key := { q := 17, n := 43, r := 1 }
    lowerValue := 117783484239873187216142907801870351718958870152985
    upperValue := 1774411884676527330452811884213254767202064594715648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 1))
    upperTrace := (.lengthenFreeN 33 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 43, r := 2 }
    lowerValue := 350012381085206079574575982072953037149461355644
    upperValue := 104377169686854548850165404953720868658944976159744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 43, r := 3 }
    lowerValue := 1598106990228976372763556807528590151248581551
    upperValue := 6139833510991444050009729703160051097584998597632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 43, r := 4 }
    lowerValue := 9971375481242187654087756065311505434905366
    upperValue := 361166677117143767647631159009414770446176388096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 43, r := 5 }
    lowerValue := 79757405900197435388043185817910600913217
    upperValue := 21245098653949633391037127000553810026245669888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 43, r := 6 }
    lowerValue := 785610740505871089857157749151370695579
    upperValue := 1249711685526449023002183941209047648602686464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 43, r := 7 }
    lowerValue := 9271012237429880475899059840700862361
    upperValue := 73512452089791119000128467129943979329569792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 43, r := 8 }
    lowerValue := 128495777200737798894570686727432245
    upperValue := 4324261887634771705889909831173175254680576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 8))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 43, r := 9 }
    lowerValue := 2060553836832505252416280184255143
    upperValue := 254368346331457159169994695951363250275328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 9))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 43, r := 10 }
    lowerValue := 37789159868923497658626595494091
    upperValue := 14962843901850421127646746820668426486784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 10))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 43, r := 11 }
    lowerValue := 785315577815723254628775575406
    upperValue := 880167288344142419273338048274613322752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 11))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 43, r := 12 }
    lowerValue := 18357077530971597090372730617
    upperValue := 51774546373184848192549296957330195456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 12))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 43, r := 13 }
    lowerValue := 479773277075893638870568262
    upperValue := 3045561551363814599561723350431187968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 13))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 43, r := 14 }
    lowerValue := 13951100563747825661207856
    upperValue := 179150679491989094091866079437128704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 14))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 43, r := 15 }
    lowerValue := 449544808804635169018702
    upperValue := 10538275264234652593639181143360512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 15))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 43, r := 16 }
    lowerValue := 15999311848561689585799
    upperValue := 98100666009922840441972689847969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 16))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 43, r := 17 }
    lowerValue := 627242971350258342847
    upperValue := 5770627412348402378939569991057
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 17))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 43, r := 18 }
    lowerValue := 27030445927013748611
    upperValue := 339448671314611904643504117121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 43, r := 19 }
    lowerValue := 1278314006079378713
    upperValue := 19967568900859523802559065713
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 43, r := 20 }
    lowerValue := 66261350139663101
    upperValue := 1174562876521148458974062689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 43, r := 21 }
    lowerValue := 3761544489096151
    upperValue := 69091933913008732880827217
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 43, r := 22 }
    lowerValue := 233756708252637
    upperValue := 4064231406647572522401601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 43, r := 23 }
    lowerValue := 15900891351553
    upperValue := 239072435685151324847153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 43, r := 24 }
    lowerValue := 1184304258390
    upperValue := 14063084452067724991009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 43, r := 25 }
    lowerValue := 96643827076
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 43, r := 26 }
    lowerValue := 8649762819
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 43, r := 27 }
    lowerValue := 850314328
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 43, r := 28 }
    lowerValue := 91984851
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 28))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 43, r := 29 }
    lowerValue := 10975927
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 29))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 43, r := 30 }
    lowerValue := 1448830
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 30))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 43, r := 31 }
    lowerValue := 212314
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 31))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31))) },
  { key := { q := 17, n := 43, r := 32 }
    lowerValue := 34688
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 32))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 32))) },
  { key := { q := 17, n := 43, r := 33 }
    lowerValue := 6351
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 33))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 36 33))) },
  { key := { q := 17, n := 43, r := 34 }
    lowerValue := 1311
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 34))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 37 34))) },
  { key := { q := 17, n := 43, r := 35 }
    lowerValue := 308
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 35))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 38 35))) },
  { key := { q := 17, n := 43, r := 36 }
    lowerValue := 83
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 36))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 39 36))) },
  { key := { q := 17, n := 43, r := 37 }
    lowerValue := 26
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 37))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 40 37))) },
  { key := { q := 17, n := 43, r := 38 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 40 39))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 41 38))) },
  { key := { q := 17, n := 43, r := 39 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 41 40)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 42 39))) },
  { key := { q := 17, n := 43, r := 40 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 43 40)) },
  { key := { q := 17, n := 43, r := 41 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 43 41)) },
  { key := { q := 17, n := 43, r := 42 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 43 42)) },
  { key := { q := 17, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 43 43)) },
  { key := { q := 17, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 43 44)) },
  { key := { q := 17, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 43 45)) },
  { key := { q := 17, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 43 46)) },
  { key := { q := 17, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 43 47)) },
  { key := { q := 17, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 43 48)) },
  { key := { q := 17, n := 44, r := 0 }
    lowerValue := 1379597950901634641862681879083307429684165246101910721
    upperValue := 1379597950901634641862681879083307429684165246101910721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 44 0)) },
  { key := { q := 17, n := 44, r := 1 }
    lowerValue := 1956876526101609421081818268203272949906617370357321
    upperValue := 30165002039500964617697802031625331042435098110166016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 1))
    upperTrace := (.lengthenFreeN 34 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 44, r := 2 }
    lowerValue := 5680139454719120235270284127137600016815499137858
    upperValue := 1774411884676527330452811884213254767202064594715648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 2))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 44, r := 3 }
    lowerValue := 25318227726962340215616005068852292709394180233
    upperValue := 104377169686854548850165404953720868658944976159744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 44, r := 4 }
    lowerValue := 154126633314345208733032758508316106246363690
    upperValue := 6139833510991444050009729703160051097584998597632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 44, r := 5 }
    lowerValue := 1202040893479681269209075041304780085767575
    upperValue := 361166677117143767647631159009414770446176388096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 44, r := 6 }
    lowerValue := 11537130193401770268027919286586867877790
    upperValue := 21245098653949633391037127000553810026245669888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 44, r := 7 }
    lowerValue := 132574893285012811580111133757023189502
    upperValue := 1249711685526449023002183941209047648602686464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 7))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 44, r := 8 }
    lowerValue := 1787936753851963014569304473557495781
    upperValue := 73512452089791119000128467129943979329569792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 8))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 44, r := 9 }
    lowerValue := 27876889786374505236678901699436689
    upperValue := 4324261887634771705889909831173175254680576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 9))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 44, r := 10 }
    lowerValue := 496676388101475106433146916081014
    upperValue := 254368346331457159169994695951363250275328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 10))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 44, r := 11 }
    lowerValue := 10019004954637813248607532605978
    upperValue := 14962843901850421127646746820668426486784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 11))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 44, r := 12 }
    lowerValue := 227124315830306320691961754831
    upperValue := 880167288344142419273338048274613322752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 12))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 44, r := 13 }
    lowerValue := 5751177787180406038219741255
    upperValue := 51774546373184848192549296957330195456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 13))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 44, r := 14 }
    lowerValue := 161861570707935240120695124
    upperValue := 3045561551363814599561723350431187968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 14))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 44, r := 15 }
    lowerValue := 5042512412006293935542521
    upperValue := 179150679491989094091866079437128704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 15))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 44, r := 16 }
    lowerValue := 173302723755991648079079
    upperValue := 1667711322168688287513535727415473
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 16))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 44, r := 17 }
    lowerValue := 6552772951802781914014
    upperValue := 98100666009922840441972689847969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 17))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 44, r := 18 }
    lowerValue := 271983565496131106702
    upperValue := 5770627412348402378939569991057
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 18))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 44, r := 19 }
    lowerValue := 12370784174447039199
    upperValue := 339448671314611904643504117121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 44, r := 20 }
    lowerValue := 615758181435121375
    upperValue := 19967568900859523802559065713
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 44, r := 21 }
    lowerValue := 33509665812690385
    upperValue := 1174562876521148458974062689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 44, r := 22 }
    lowerValue := 1992609992784242
    upperValue := 69091933913008732880827217
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 44, r := 23 }
    lowerValue := 129438217857219
    upperValue := 4064231406647572522401601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 44, r := 24 }
    lowerValue := 9186157709574
    upperValue := 239072435685151324847153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 24))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 44, r := 25 }
    lowerValue := 712569734873
    upperValue := 14063084452067724991009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 25))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 44, r := 26 }
    lowerValue := 60462402784
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 26))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) }]

end CoveringCodes.Database
