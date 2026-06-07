import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 113. Do not edit manually.

def precomputedTable_chunk_113 : Array AnyBoundEntry := #[
  { key := { q := 11, n := 37, r := 26 }
    lowerValue := 3140
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 37, r := 27 }
    lowerValue := 745
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 37, r := 28 }
    lowerValue := 200
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 37, r := 29 }
    lowerValue := 62
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 37, r := 30 }
    lowerValue := 22
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 30))) },
  { key := { q := 11, n := 37, r := 31 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 33 32)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 31))) },
  { key := { q := 11, n := 37, r := 32 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 34 33))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 32))) },
  { key := { q := 11, n := 37, r := 33 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 35 34)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 37 33)) },
  { key := { q := 11, n := 37, r := 34 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 36 35))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 37 34)) },
  { key := { q := 11, n := 37, r := 35 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 37 35)) },
  { key := { q := 11, n := 37, r := 36 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 37 36)) },
  { key := { q := 11, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 37 37)) },
  { key := { q := 11, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 37 38)) },
  { key := { q := 11, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 37 39)) },
  { key := { q := 11, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 37 40)) },
  { key := { q := 11, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 37 41)) },
  { key := { q := 11, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 37 42)) },
  { key := { q := 11, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 37 43)) },
  { key := { q := 11, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 37 44)) },
  { key := { q := 11, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 37 45)) },
  { key := { q := 11, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 37 46)) },
  { key := { q := 11, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 37 47)) },
  { key := { q := 11, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 37 48)) },
  { key := { q := 11, n := 38, r := 0 }
    lowerValue := 3740434344477351388916475705363381856681
    upperValue := 3740434344477351388916475705363381856681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 38 0)) },
  { key := { q := 11, n := 38, r := 1 }
    lowerValue := 9817412977630843540463190827725411698
    upperValue := 171424864773191911888734048104557695911
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 1))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 38, r := 2 }
    lowerValue := 52919940924397665411022420528336921
    upperValue := 15584078615744719262612186191323426901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 2))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 38, r := 3 }
    lowerValue := 439705490834480732134715725835186
    upperValue := 1416734419613156296601107835574856991
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 38, r := 4 }
    lowerValue := 5009577279169020639777112910296
    upperValue := 128794038146650572418282530506805181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 4))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 38, r := 5 }
    lowerValue := 73427001196712587121724139765
    upperValue := 11708548922422779310752957318800471
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 5))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 38, r := 6 }
    lowerValue := 1330347584113880456382013242
    upperValue := 1064413538402070846432087028981861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 6))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 38, r := 7 }
    lowerValue := 28992427736607415297174956
    upperValue := 96764867127460986039280638998351
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 7))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 38, r := 8 }
    lowerValue := 745200946796912510011706
    upperValue := 8796806102496453276298239908941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 8))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 38, r := 9 }
    lowerValue := 22260382127083272555820
    upperValue := 799709645681495752390749082631
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 9))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 38, r := 10 }
    lowerValue := 764076145860885982045
    upperValue := 13109994191499930367061460371
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 10))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 38, r := 11 }
    lowerValue := 29869089747234118844
    upperValue := 1191817653772720942460132761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 11))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 38, r := 12 }
    lowerValue := 1320447177382011131
    upperValue := 108347059433883722041830251
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 12))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 38, r := 13 }
    lowerValue := 65642147371723933
    upperValue := 9849732675807611094711841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 13))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 38, r := 14 }
    lowerValue := 3652990462608082
    upperValue := 895430243255237372246531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 14))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 38, r := 15 }
    lowerValue := 226758624474251
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 15))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 38, r := 16 }
    lowerValue := 15657233671951
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 16))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 38, r := 17 }
    lowerValue := 1200007435559
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 17))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 38, r := 18 }
    lowerValue := 101933051742
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 38, r := 19 }
    lowerValue := 9587227719
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 38, r := 20 }
    lowerValue := 997995340
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 38, r := 21 }
    lowerValue := 114987362
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 38, r := 22 }
    lowerValue := 14672465
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 38, r := 23 }
    lowerValue := 2075647
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 38, r := 24 }
    lowerValue := 326061
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 38, r := 25 }
    lowerValue := 57001
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 38, r := 26 }
    lowerValue := 11121
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 38, r := 27 }
    lowerValue := 2430
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 38, r := 28 }
    lowerValue := 597
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 38, r := 29 }
    lowerValue := 166
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 38, r := 30 }
    lowerValue := 53
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 30))) },
  { key := { q := 11, n := 38, r := 31 }
    lowerValue := 19
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 31))) },
  { key := { q := 11, n := 38, r := 32 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 34 33)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 32))) },
  { key := { q := 11, n := 38, r := 33 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 35 34))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 37 33))) },
  { key := { q := 11, n := 38, r := 34 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 36 35)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 38 34)) },
  { key := { q := 11, n := 38, r := 35 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 37 36))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 38 35)) },
  { key := { q := 11, n := 38, r := 36 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 38 36)) },
  { key := { q := 11, n := 38, r := 37 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 38 37)) },
  { key := { q := 11, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 38 38)) },
  { key := { q := 11, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 38 39)) },
  { key := { q := 11, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 38 40)) },
  { key := { q := 11, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 38 41)) },
  { key := { q := 11, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 38 42)) },
  { key := { q := 11, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 38 43)) },
  { key := { q := 11, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 38 44)) },
  { key := { q := 11, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 38 45)) },
  { key := { q := 11, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 38 46)) },
  { key := { q := 11, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 38 47)) },
  { key := { q := 11, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 38 48)) },
  { key := { q := 11, n := 39, r := 0 }
    lowerValue := 41144777789250865278081232758997200423491
    upperValue := 41144777789250865278081232758997200423491
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 39 0)) },
  { key := { q := 11, n := 39, r := 1 }
    lowerValue := 105229610714196586388954559485926343795
    upperValue := 1885673512505111030776074529150134655021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 1))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 39, r := 2 }
    lowerValue := 552345622816861973635489290773344437
    upperValue := 171424864773191911888734048104557695911
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 2))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 39, r := 3 }
    lowerValue := 4465709880136732675820840630223355
    upperValue := 15584078615744719262612186191323426901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 39, r := 4 }
    lowerValue := 49469298672545086595469542604271
    upperValue := 1416734419613156296601107835574856991
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 4))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 39, r := 5 }
    lowerValue := 704444321115977049871494951457
    upperValue := 128794038146650572418282530506805181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 5))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 39, r := 6 }
    lowerValue := 12389160152890230732768005562
    upperValue := 11708548922422779310752957318800471
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 6))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 39, r := 7 }
    lowerValue := 261851161063417742385772516
    upperValue := 1064413538402070846432087028981861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 7))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 39, r := 8 }
    lowerValue := 6521078354367510036240526
    upperValue := 96764867127460986039280638998351
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 8))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 39, r := 9 }
    lowerValue := 188543229202220522318748
    upperValue := 8796806102496453276298239908941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 9))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 39, r := 10 }
    lowerValue := 6257115091782031090015
    upperValue := 144209936106499234037676064081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 10))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 39, r := 11 }
    lowerValue := 236218134814819202011
    upperValue := 13109994191499930367061460371
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 11))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 39, r := 12 }
    lowerValue := 10072213497198163301
    upperValue := 1191817653772720942460132761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 12))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 39, r := 13 }
    lowerValue := 482301578219162569
    upperValue := 108347059433883722041830251
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 13))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 39, r := 14 }
    lowerValue := 25816174478818449
    upperValue := 9849732675807611094711841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 14))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 39, r := 15 }
    lowerValue := 1539008523678377
    upperValue := 895430243255237372246531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 15))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 39, r := 16 }
    lowerValue := 101882040402203
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 16))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 39, r := 17 }
    lowerValue := 7472772291760
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 17))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 39, r := 18 }
    lowerValue := 606272973617
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 39, r := 19 }
    lowerValue := 54345397207
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 39, r := 20 }
    lowerValue := 5378807186
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 39, r := 21 }
    lowerValue := 587710603
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 39, r := 22 }
    lowerValue := 70912406
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 39, r := 23 }
    lowerValue := 9455645
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 39, r := 24 }
    lowerValue := 1395108
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 39, r := 25 }
    lowerValue := 228155
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 39, r := 26 }
    lowerValue := 41453
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 39, r := 27 }
    lowerValue := 8392
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 39, r := 28 }
    lowerValue := 1900
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 39, r := 29 }
    lowerValue := 483
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 39, r := 30 }
    lowerValue := 139
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 30))) },
  { key := { q := 11, n := 39, r := 31 }
    lowerValue := 46
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 31))) },
  { key := { q := 11, n := 39, r := 32 }
    lowerValue := 17
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 32))) },
  { key := { q := 11, n := 39, r := 33 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 35 34)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 37 33))) },
  { key := { q := 11, n := 39, r := 34 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 36 35))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 38 34))) },
  { key := { q := 11, n := 39, r := 35 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 37 36)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 39 35)) },
  { key := { q := 11, n := 39, r := 36 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 39 36)) },
  { key := { q := 11, n := 39, r := 37 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 39 37)) },
  { key := { q := 11, n := 39, r := 38 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 39 38)) },
  { key := { q := 11, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 39 39)) },
  { key := { q := 11, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 39 40)) },
  { key := { q := 11, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 39 41)) },
  { key := { q := 11, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 39 42)) },
  { key := { q := 11, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 39 43)) },
  { key := { q := 11, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 39 44)) },
  { key := { q := 11, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 39 45)) },
  { key := { q := 11, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 39 46)) },
  { key := { q := 11, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 39 47)) },
  { key := { q := 11, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 39 48)) },
  { key := { q := 11, n := 40, r := 0 }
    lowerValue := 452592555681759518058893560348969204658401
    upperValue := 452592555681759518058893560348969204658401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 40 0)) },
  { key := { q := 11, n := 40, r := 1 }
    lowerValue := 1128659739854761890421180948501170086430
    upperValue := 20742408637556221338536819820651481205231
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 1))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 40, r := 2 }
    lowerValue := 5772790598101548679977214070598196511
    upperValue := 1885673512505111030776074529150134655021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 2))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 40, r := 3 }
    lowerValue := 45448316017979143243869528888118606
    upperValue := 171424864773191911888734048104557695911
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 3))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 40, r := 4 }
    lowerValue := 489893857318248836337521771747107
    upperValue := 15584078615744719262612186191323426901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 4))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 40, r := 5 }
    lowerValue := 6782987976675449417995343546502
    upperValue := 1416734419613156296601107835574856991
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 5))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 40, r := 6 }
    lowerValue := 115897676316588119942761780971
    upperValue := 128794038146650572418282530506805181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 6))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 40, r := 7 }
    lowerValue := 2377802249361293416657577423
    upperValue := 11708548922422779310752957318800471
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 7))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 40, r := 8 }
    lowerValue := 57429706002047215936816591
    upperValue := 1064413538402070846432087028981861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 8))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 40, r := 9 }
    lowerValue := 1608819336326300023701761
    upperValue := 96764867127460986039280638998351
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 9))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 40, r := 10 }
    lowerValue := 51678058132857151829139
    upperValue := 1586309297171491574414436704891
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 10))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 40, r := 11 }
    lowerValue := 1886289064616288272947
    upperValue := 144209936106499234037676064081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 11))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 40, r := 12 }
    lowerValue := 77674403121873465846
    upperValue := 13109994191499930367061460371
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 12))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 40, r := 13 }
    lowerValue := 3587476776768245351
    upperValue := 1191817653772720942460132761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 13))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 40, r := 14 }
    lowerValue := 184969321756008796
    upperValue := 108347059433883722041830251
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 14))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 40, r := 15 }
    lowerValue := 10606263254776465
    upperValue := 9849732675807611094711841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 15))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 40, r := 16 }
    lowerValue := 674310387140209
    upperValue := 895430243255237372246531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 16))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 40, r := 17 }
    lowerValue := 47419542479292
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 17))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 40, r := 18 }
    lowerValue := 3681868508500
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 40, r := 19 }
    lowerValue := 315231022980
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 40, r := 20 }
    lowerValue := 29735914060
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 40, r := 21 }
    lowerValue := 3089309724
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 40, r := 22 }
    lowerValue := 353503583
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 40, r := 23 }
    lowerValue := 44574839
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 40, r := 24 }
    lowerValue := 6199419
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 40, r := 25 }
    lowerValue := 952307
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 40, r := 26 }
    lowerValue := 161875
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 40, r := 27 }
    lowerValue := 30521
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 40, r := 28 }
    lowerValue := 6402
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 40, r := 29 }
    lowerValue := 1500
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 40, r := 30 }
    lowerValue := 394
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 30))) },
  { key := { q := 11, n := 40, r := 31 }
    lowerValue := 117
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 31))) },
  { key := { q := 11, n := 40, r := 32 }
    lowerValue := 40
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 32))) },
  { key := { q := 11, n := 40, r := 33 }
    lowerValue := 15
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 37 33))) },
  { key := { q := 11, n := 40, r := 34 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 36 35)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 38 34))) },
  { key := { q := 11, n := 40, r := 35 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 37 36))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 39 35))) },
  { key := { q := 11, n := 40, r := 36 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 38 37)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 40 36)) },
  { key := { q := 11, n := 40, r := 37 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 40 37)) },
  { key := { q := 11, n := 40, r := 38 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 40 38)) },
  { key := { q := 11, n := 40, r := 39 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 40 39)) },
  { key := { q := 11, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 40 40)) },
  { key := { q := 11, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 40 41)) },
  { key := { q := 11, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 40 42)) },
  { key := { q := 11, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 40 43)) },
  { key := { q := 11, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 40 44)) },
  { key := { q := 11, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 40 45)) },
  { key := { q := 11, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 40 46)) },
  { key := { q := 11, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 40 47)) },
  { key := { q := 11, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 40 48)) },
  { key := { q := 11, n := 41, r := 0 }
    lowerValue := 4978518112499354698647829163838661251242411
    upperValue := 4978518112499354698647829163838661251242411
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 41 0)) },
  { key := { q := 11, n := 41, r := 1 }
    lowerValue := 12113182755472882478461871444862922752415
    upperValue := 228166495013118434723905018027166293257541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 1))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 41, r := 2 }
    lowerValue := 60410844577779115635629092764784570643
    upperValue := 20742408637556221338536819820651481205231
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 2))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 41, r := 3 }
    lowerValue := 463445134662912701687528913559410570
    upperValue := 1885673512505111030776074529150134655021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 3))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 41, r := 4 }
    lowerValue := 4864482904939293842345789951671899
    upperValue := 171424864773191911888734048104557695911
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 4))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 41, r := 5 }
    lowerValue := 65538515135557602688069243530210
    upperValue := 15584078615744719262612186191323426901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 5))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 41, r := 6 }
    lowerValue := 1088831073676260920850508431997
    upperValue := 1416734419613156296601107835574856991
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 6))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 41, r := 7 }
    lowerValue := 21703126139170881467857475906
    upperValue := 128794038146650572418282530506805181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 7))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 41, r := 8 }
    lowerValue := 508831569607547948403138158
    upperValue := 11708548922422779310752957318800471
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 8))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 41, r := 9 }
    lowerValue := 13824310069058798067250248
    upperValue := 1064413538402070846432087028981861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 9))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 41, r := 10 }
    lowerValue := 430253710244911638057824
    upperValue := 17449402268886407318558803753801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 10))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 41, r := 11 }
    lowerValue := 15200778184339617847748
    upperValue := 1586309297171491574414436704891
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 11))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 41, r := 12 }
    lowerValue := 605204701294896755116
    upperValue := 144209936106499234037676064081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 12))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 41, r := 13 }
    lowerValue := 26994528157506331369
    upperValue := 13109994191499930367061460371
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 13))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 41, r := 14 }
    lowerValue := 1342482323703492137
    upperValue := 1191817653772720942460132761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 14))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 41, r := 15 }
    lowerValue := 74150505494298870
    upperValue := 108347059433883722041830251
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 15))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 41, r := 16 }
    lowerValue := 4534519773757338
    upperValue := 9849732675807611094711841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 16))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 41, r := 17 }
    lowerValue := 306250422823226
    upperValue := 895430243255237372246531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 41, r := 18 }
    lowerValue := 22798648275166
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 41, r := 19 }
    lowerValue := 1868114872235
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 41, r := 20 }
    lowerValue := 168318910133
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 41, r := 21 }
    lowerValue := 16666904364
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 41, r := 22 }
    lowerValue := 1813447460
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 41, r := 23 }
    lowerValue := 216866550
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 41, r := 24 }
    lowerValue := 28523476
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 41, r := 25 }
    lowerValue := 4130469
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 41, r := 26 }
    lowerValue := 659534
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 41, r := 27 }
    lowerValue := 116352
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 41, r := 28 }
    lowerValue := 22735
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 41, r := 29 }
    lowerValue := 4935
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 41, r := 30 }
    lowerValue := 1195
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 30))) },
  { key := { q := 11, n := 41, r := 31 }
    lowerValue := 324
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 31))) },
  { key := { q := 11, n := 41, r := 32 }
    lowerValue := 99
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 32))) },
  { key := { q := 11, n := 41, r := 33 }
    lowerValue := 35
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 37 33))) },
  { key := { q := 11, n := 41, r := 34 }
    lowerValue := 14
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 34))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 38 34))) },
  { key := { q := 11, n := 41, r := 35 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 37 36)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 39 35))) },
  { key := { q := 11, n := 41, r := 36 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 38 37))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 40 36))) },
  { key := { q := 11, n := 41, r := 37 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 39 38)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 41 37)) },
  { key := { q := 11, n := 41, r := 38 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 41 38)) },
  { key := { q := 11, n := 41, r := 39 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 41 39)) },
  { key := { q := 11, n := 41, r := 40 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 41 40)) },
  { key := { q := 11, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 41 41)) },
  { key := { q := 11, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 41 42)) },
  { key := { q := 11, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 41 43)) },
  { key := { q := 11, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 41 44)) },
  { key := { q := 11, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 41 45)) },
  { key := { q := 11, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 41 46)) },
  { key := { q := 11, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 41 47)) },
  { key := { q := 11, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 41 48)) },
  { key := { q := 11, n := 42, r := 0 }
    lowerValue := 54763699237492901685126120802225273763666521
    upperValue := 54763699237492901685126120802225273763666521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 42 0)) },
  { key := { q := 11, n := 42, r := 1 }
    lowerValue := 130080045694757486187948030409086160958828
    upperValue := 2509831445144302781962955198298829225832951
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 1))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 42, r := 2 }
    lowerValue := 632952684752752530427597008844387764401
    upperValue := 228166495013118434723905018027166293257541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 2))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 42, r := 3 }
    lowerValue := 4734673393796881679904106066312011518
    upperValue := 20742408637556221338536819820651481205231
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 3))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 42, r := 4 }
    lowerValue := 48426315768077196163742582668804000
    upperValue := 1885673512505111030776074529150134655021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 4))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 42, r := 5 }
    lowerValue := 635326934565578246358316180504732
    upperValue := 171424864773191911888734048104557695911
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 5))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 42, r := 6 }
    lowerValue := 10270792759803217795016524405652
    upperValue := 15584078615744719262612186191323426901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 6))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 42, r := 7 }
    lowerValue := 199057291506276904357250917894
    upperValue := 1416734419613156296601107835574856991
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 7))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 42, r := 8 }
    lowerValue := 4534119286063317956355366459
    upperValue := 128794038146650572418282530506805181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 8))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 42, r := 9 }
    lowerValue := 119579243099310203254239854
    upperValue := 11708548922422779310752957318800471
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 9))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 42, r := 10 }
    lowerValue := 3609428990470840571639397
    upperValue := 191943424957750480504146841291811
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 10))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 42, r := 11 }
    lowerValue := 123556347644799014671618
    upperValue := 17449402268886407318558803753801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 11))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 42, r := 12 }
    lowerValue := 4761503738262810671439
    upperValue := 1586309297171491574414436704891
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 12))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 42, r := 13 }
    lowerValue := 205346937518556279259
    upperValue := 144209936106499234037676064081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 13))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 42, r := 14 }
    lowerValue := 9862514662313208273
    upperValue := 13109994191499930367061460371
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 14))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 42, r := 15 }
    lowerValue := 525436566141159856
    upperValue := 1191817653772720942460132761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 15))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 42, r := 16 }
    lowerValue := 30951792971176057
    upperValue := 108347059433883722041830251
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 16))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 42, r := 17 }
    lowerValue := 2010745862346559
    upperValue := 9849732675807611094711841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 17))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 42, r := 18 }
    lowerValue := 143762161717554
    upperValue := 895430243255237372246531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 42, r := 19 }
    lowerValue := 11294544981369
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 42, r := 20 }
    lowerValue := 973960460162
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 42, r := 21 }
    lowerValue := 92119452680
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 42, r := 22 }
    lowerValue := 9553360214
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 42, r := 23 }
    lowerValue := 1086367232
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 42, r := 24 }
    lowerValue := 135517801
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 42, r := 25 }
    lowerValue := 18559397
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 42, r := 26 }
    lowerValue := 2793825
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 42, r := 27 }
    lowerValue := 463024
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 42, r := 28 }
    lowerValue := 84659
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 42, r := 29 }
    lowerValue := 17121
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 42, r := 30 }
    lowerValue := 3842
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 30))) }]

end CoveringCodes.Database
