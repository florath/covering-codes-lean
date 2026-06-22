import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 114. Do not edit manually.

def precomputedTable_chunk_114 : Array AnyBoundEntry := #[
  { key := { q := 11, n := 42, r := 31 }
    lowerValue := 960
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 31))) },
  { key := { q := 11, n := 42, r := 32 }
    lowerValue := 269
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 32))) },
  { key := { q := 11, n := 42, r := 33 }
    lowerValue := 85
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 37 33))) },
  { key := { q := 11, n := 42, r := 34 }
    lowerValue := 30
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 38 34))) },
  { key := { q := 11, n := 42, r := 35 }
    lowerValue := 13
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 35))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 39 35))) },
  { key := { q := 11, n := 42, r := 36 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 38 37)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 40 36))) },
  { key := { q := 11, n := 42, r := 37 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 39 38))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 41 37))) },
  { key := { q := 11, n := 42, r := 38 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 40 39)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 42 38)) },
  { key := { q := 11, n := 42, r := 39 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 42 39)) },
  { key := { q := 11, n := 42, r := 40 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 42 40)) },
  { key := { q := 11, n := 42, r := 41 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 42 41)) },
  { key := { q := 11, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 42 42)) },
  { key := { q := 11, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 42 43)) },
  { key := { q := 11, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 42 44)) },
  { key := { q := 11, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 42 45)) },
  { key := { q := 11, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 42 46)) },
  { key := { q := 11, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 42 47)) },
  { key := { q := 11, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 42 48)) },
  { key := { q := 11, n := 43, r := 0 }
    lowerValue := 602400691612421918536387328824478011400331731
    upperValue := 602400691612421918536387328824478011400331731
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 43 0)) },
  { key := { q := 11, n := 43, r := 1 }
    lowerValue := 1397681419054343198460295426506909539211907
    upperValue := 27608145896587330601592507181287121484162461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 1))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 43, r := 2 }
    lowerValue := 6639414220194001152157336839938698034854
    upperValue := 2509831445144302781962955198298829225832951
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 2))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 43, r := 3 }
    lowerValue := 48456702579264457905048567156454560624
    upperValue := 228166495013118434723905018027166293257541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 3))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 43, r := 4 }
    lowerValue := 483261417765242526775587816002798578
    upperValue := 20742408637556221338536819820651481205231
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 4))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 43, r := 5 }
    lowerValue := 6178067423091272219612768901001351
    upperValue := 741904332788896143256160470485298880664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 5))
    upperTrace := (.lengthenFreeN 35 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 11, n := 43, r := 6 }
    lowerValue := 97256142976309881378332128284488
    upperValue := 67445848435354194841469133680481716424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 6))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 43, r := 7 }
    lowerValue := 1834154421996845154409354812891
    upperValue := 6131440766850381349224466698225610584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 7))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 43, r := 8 }
    lowerValue := 40622365456435329256380035969
    upperValue := 557403706077307395384042427111419144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 8))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 43, r := 9 }
    lowerValue := 1040862821339883139776321588
    upperValue := 50673064188846126853094766101038104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 9))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 43, r := 10 }
    lowerValue := 30498059381685358415067769
    upperValue := 2111377674535255285545615254209921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 10))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 43, r := 11 }
    lowerValue := 1012518910627715499521380
    upperValue := 191943424957750480504146841291811
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 11))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 43, r := 12 }
    lowerValue := 37806868958430029997019
    upperValue := 17449402268886407318558803753801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 12))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 43, r := 13 }
    lowerValue := 1578195854619809669987
    upperValue := 1586309297171491574414436704891
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 13))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 43, r := 14 }
    lowerValue := 73288338521021971647
    upperValue := 144209936106499234037676064081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 14))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 43, r := 15 }
    lowerValue := 3770843123302835004
    upperValue := 13109994191499930367061460371
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 15))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 43, r := 16 }
    lowerValue := 214257474928391883
    upperValue := 1191817653772720942460132761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 16))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 43, r := 17 }
    lowerValue := 13407914623857107
    upperValue := 108347059433883722041830251
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 17))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 43, r := 18 }
    lowerValue := 922106158660309
    upperValue := 9849732675807611094711841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 43, r := 19 }
    lowerValue := 69577252177975
    upperValue := 895430243255237372246531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 43, r := 20 }
    lowerValue := 5752780354806
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 43, r := 21 }
    lowerValue := 520763608534
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 43, r := 22 }
    lowerValue := 51587507941
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 43, r := 23 }
    lowerValue := 5591558530
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 43, r := 24 }
    lowerValue := 663286125
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 43, r := 25 }
    lowerValue := 86158209
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 43, r := 26 }
    lowerValue := 12266615
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 43, r := 27 }
    lowerValue := 1916697
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 43, r := 28 }
    lowerValue := 329250
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 43, r := 29 }
    lowerValue := 62312
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 43, r := 30 }
    lowerValue := 13027
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 30))) },
  { key := { q := 11, n := 43, r := 31 }
    lowerValue := 3018
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 31))) },
  { key := { q := 11, n := 43, r := 32 }
    lowerValue := 778
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 32))) },
  { key := { q := 11, n := 43, r := 33 }
    lowerValue := 224
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 37 33))) },
  { key := { q := 11, n := 43, r := 34 }
    lowerValue := 73
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 38 34))) },
  { key := { q := 11, n := 43, r := 35 }
    lowerValue := 27
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 39 35))) },
  { key := { q := 11, n := 43, r := 36 }
    lowerValue := 11
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 40 36))) },
  { key := { q := 11, n := 43, r := 37 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 39 38)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 41 37))) },
  { key := { q := 11, n := 43, r := 38 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 40 39))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 42 38))) },
  { key := { q := 11, n := 43, r := 39 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 41 40)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 43 39)) },
  { key := { q := 11, n := 43, r := 40 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 43 40)) },
  { key := { q := 11, n := 43, r := 41 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 43 41)) },
  { key := { q := 11, n := 43, r := 42 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 43 42)) },
  { key := { q := 11, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 43 43)) },
  { key := { q := 11, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 43 44)) },
  { key := { q := 11, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 43 45)) },
  { key := { q := 11, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 43 46)) },
  { key := { q := 11, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 43 47)) },
  { key := { q := 11, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 43 48)) },
  { key := { q := 11, n := 44, r := 0 }
    lowerValue := 6626407607736641103900260617069258125403649041
    upperValue := 6626407607736641103900260617069258125403649041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 44 0)) },
  { key := { q := 11, n := 44, r := 1 }
    lowerValue := 15025867591239548988435965118070880102956121
    upperValue := 303689604862460636617517578994158336325787071
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 1))
    upperTrace := (.lengthenFreeN 41 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 44, r := 2 }
    lowerValue := 69721568667592313884536785356522533700231
    upperValue := 27608145896587330601592507181287121484162461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 2))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 44, r := 3 }
    lowerValue := 496767916654326282069322720956420939512
    upperValue := 2509831445144302781962955198298829225832951
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 3))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 44, r := 4 }
    lowerValue := 4833798186051793797695234786300046094
    upperValue := 228166495013118434723905018027166293257541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 4))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 44, r := 5 }
    lowerValue := 60255599197809260246612114972997827
    upperValue := 8160947660677857575817765175338287687304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 5))
    upperTrace := (.lengthenFreeN 36 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 11, n := 44, r := 6 }
    lowerValue := 924311026456588042957861988677615
    upperValue := 741904332788896143256160470485298880664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 6))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 44, r := 7 }
    lowerValue := 16974480020851934190742119880591
    upperValue := 67445848435354194841469133680481716424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 7))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 44, r := 8 }
    lowerValue := 365824238394091595275416423438
    upperValue := 6131440766850381349224466698225610584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 8))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 44, r := 9 }
    lowerValue := 9114175046492827594227170821
    upperValue := 557403706077307395384042427111419144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 9))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 44, r := 10 }
    lowerValue := 259456080503146169313751109
    upperValue := 23225154419887808141001767796309131
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 10))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 44, r := 11 }
    lowerValue := 8361676949003509363159110
    upperValue := 2111377674535255285545615254209921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 11))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 44, r := 12 }
    lowerValue := 302808587843137556560434
    upperValue := 191943424957750480504146841291811
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 12))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 44, r := 13 }
    lowerValue := 12247573106038785066272
    upperValue := 17449402268886407318558803753801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 13))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 44, r := 14 }
    lowerValue := 550520661765766372917
    upperValue := 1586309297171491574414436704891
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 14))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 44, r := 15 }
    lowerValue := 27387707834823874323
    upperValue := 144209936106499234037676064081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 15))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 44, r := 16 }
    lowerValue := 1502894734811273960
    upperValue := 13109994191499930367061460371
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 16))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 44, r := 17 }
    lowerValue := 90717436309538816
    upperValue := 1191817653772720942460132761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 17))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 44, r := 18 }
    lowerValue := 6009937253859841
    upperValue := 108347059433883722041830251
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 18))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 44, r := 19 }
    lowerValue := 436209308292347
    upperValue := 9849732675807611094711841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 44, r := 20 }
    lowerValue := 34639764083572
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 44, r := 21 }
    lowerValue := 3006658132319
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 44, r := 22 }
    lowerValue := 285069299586
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 44, r := 23 }
    lowerValue := 29515432299
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 44, r := 24 }
    lowerValue := 3337322818
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 44, r := 25 }
    lowerValue := 412247421
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 44, r := 26 }
    lowerValue := 55671499
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 44, r := 27 }
    lowerValue := 8227671
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 44, r := 28 }
    lowerValue := 1332604
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 28))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 44, r := 29 }
    lowerValue := 236965
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 29))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 44, r := 30 }
    lowerValue := 46365
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 30))) },
  { key := { q := 11, n := 44, r := 31 }
    lowerValue := 10009
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 31))) },
  { key := { q := 11, n := 44, r := 32 }
    lowerValue := 2392
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 32))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 32))) },
  { key := { q := 11, n := 44, r := 33 }
    lowerValue := 635
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 33))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 37 33))) },
  { key := { q := 11, n := 44, r := 34 }
    lowerValue := 188
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 34))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 38 34))) },
  { key := { q := 11, n := 44, r := 35 }
    lowerValue := 63
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 35))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 39 35))) },
  { key := { q := 11, n := 44, r := 36 }
    lowerValue := 24
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 36))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 40 36))) },
  { key := { q := 11, n := 44, r := 37 }
    lowerValue := 11
    upperValue := 14641
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 39 38))))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 41 37))) },
  { key := { q := 11, n := 44, r := 38 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 40 39)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 42 38))) },
  { key := { q := 11, n := 44, r := 39 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 41 40))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 43 39))) },
  { key := { q := 11, n := 44, r := 40 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 42 41)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 44 40)) },
  { key := { q := 11, n := 44, r := 41 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 44 41)) },
  { key := { q := 11, n := 44, r := 42 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 44 42)) },
  { key := { q := 11, n := 44, r := 43 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 44 43)) },
  { key := { q := 11, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 44 44)) },
  { key := { q := 11, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 44 45)) },
  { key := { q := 11, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 44 46)) },
  { key := { q := 11, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 44 47)) },
  { key := { q := 11, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 44 48)) },
  { key := { q := 11, n := 45, r := 0 }
    lowerValue := 72890483685103052142902866787761839379440139451
    upperValue := 72890483685103052142902866787761839379440139451
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 45 0)) },
  { key := { q := 11, n := 45, r := 1 }
    lowerValue := 161619697749674173265860015050469710375698758
    upperValue := 3340585653487067002792693368935741699583657781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 1))
    upperTrace := (.lengthenFreeN 42 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 45, r := 2 }
    lowerValue := 732928614947090045780362859978902568897650
    upperValue := 303689604862460636617517578994158336325787071
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 2))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 45, r := 3 }
    lowerValue := 5100999589494589550214551055023866163889
    upperValue := 27608145896587330601592507181287121484162461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 3))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 45, r := 4 }
    lowerValue := 48456702579264457905048567156454560624
    upperValue := 2509831445144302781962955198298829225832951
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 4))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 45, r := 5 }
    lowerValue := 589346713293293472508367011832743146
    upperValue := 89770424267456433333995416928721164560344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 5))
    upperTrace := (.lengthenFreeN 37 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 11, n := 45, r := 6 }
    lowerValue := 8815186165705600387615427155092905
    upperValue := 8160947660677857575817765175338287687304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 6))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 45, r := 7 }
    lowerValue := 157749435962626239395005115683283
    upperValue := 741904332788896143256160470485298880664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 7))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 45, r := 8 }
    lowerValue := 3310587771371147815030720735956
    upperValue := 67445848435354194841469133680481716424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 8))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 45, r := 9 }
    lowerValue := 80259906620808611405051399686
    upperValue := 6131440766850381349224466698225610584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 9))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 45, r := 10 }
    lowerValue := 2221589914595464540879120834
    upperValue := 255476698618765889551019445759400441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 10))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 45, r := 11 }
    lowerValue := 69560640558749646333862130
    upperValue := 23225154419887808141001767796309131
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 11))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 45, r := 12 }
    lowerValue := 2445341830219964885884497
    upperValue := 2111377674535255285545615254209921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 12))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 45, r := 13 }
    lowerValue := 95924941670495637474213
    upperValue := 191943424957750480504146841291811
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 13))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 45, r := 14 }
    lowerValue := 4177822499874330358739
    upperValue := 17449402268886407318558803753801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 14))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 45, r := 15 }
    lowerValue := 201180184498426901949
    upperValue := 1586309297171491574414436704891
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 15))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 45, r := 16 }
    lowerValue := 10674327312840763831
    upperValue := 144209936106499234037676064081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 16))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 45, r := 17 }
    lowerValue := 622275242041668039
    upperValue := 13109994191499930367061460371
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 17))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 45, r := 18 }
    lowerValue := 39765243319819623
    upperValue := 1191817653772720942460132761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 18))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 45, r := 19 }
    lowerValue := 2780313531670221
    upperValue := 108347059433883722041830251
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 45, r := 20 }
    lowerValue := 212382554254773
    upperValue := 895430243255237372246531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 45, r := 21 }
    lowerValue := 17705361120557
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 45, r := 22 }
    lowerValue := 1609629506631
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 45, r := 23 }
    lowerValue := 159513291317
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 45, r := 24 }
    lowerValue := 17229302936
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 24))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 45, r := 25 }
    lowerValue := 2028718732
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 25))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 45, r := 26 }
    lowerValue := 260541325
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 26))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 45, r := 27 }
    lowerValue := 36524683
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 27))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 45, r := 28 }
    lowerValue := 5595625
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 28))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 45, r := 29 }
    lowerValue := 938235
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 29))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 45, r := 30 }
    lowerValue := 172499
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 30))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 30))) },
  { key := { q := 11, n := 45, r := 31 }
    lowerValue := 34855
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 31))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 31))) },
  { key := { q := 11, n := 45, r := 32 }
    lowerValue := 7762
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 32))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 32))) },
  { key := { q := 11, n := 45, r := 33 }
    lowerValue := 1911
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 33))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 37 33))) },
  { key := { q := 11, n := 45, r := 34 }
    lowerValue := 522
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 34))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 38 34))) },
  { key := { q := 11, n := 45, r := 35 }
    lowerValue := 159
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 35))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 39 35))) },
  { key := { q := 11, n := 45, r := 36 }
    lowerValue := 55
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 36))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 40 36))) },
  { key := { q := 11, n := 45, r := 37 }
    lowerValue := 21
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 37))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 41 37))) },
  { key := { q := 11, n := 45, r := 38 }
    lowerValue := 11
    upperValue := 14641
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 40 39))))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 42 38))) },
  { key := { q := 11, n := 45, r := 39 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 41 40)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 43 39))) },
  { key := { q := 11, n := 45, r := 40 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 42 41))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 45 40)) },
  { key := { q := 11, n := 45, r := 41 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 43 42)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 45 41)) },
  { key := { q := 11, n := 45, r := 42 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 45 42)) },
  { key := { q := 11, n := 45, r := 43 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 45 43)) },
  { key := { q := 11, n := 45, r := 44 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 45 44)) },
  { key := { q := 11, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 45 45)) },
  { key := { q := 11, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 45 46)) },
  { key := { q := 11, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 45 47)) },
  { key := { q := 11, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 45 48)) },
  { key := { q := 11, n := 46, r := 0 }
    lowerValue := 801795320536133573571931534665380233173841533961
    upperValue := 801795320536133573571931534665380233173841533961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 46 0)) },
  { key := { q := 11, n := 46, r := 1 }
    lowerValue := 1739252322204194302759070574111453868056055389
    upperValue := 36746442188357737030719627058293158695420235591
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 1))
    upperTrace := (.lengthenFreeN 43 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 46, r := 2 }
    lowerValue := 7712462563231727028134892264073837623472664
    upperValue := 3340585653487067002792693368935741699583657781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 2))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 46, r := 3 }
    lowerValue := 52459916675797168912687721112699792493180
    upperValue := 303689604862460636617517578994158336325787071
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 3))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 46, r := 4 }
    lowerValue := 486782095154756859252161053988115926641
    upperValue := 27608145896587330601592507181287121484162461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 4))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 46, r := 5 }
    lowerValue := 5779849153862397659003006990677502372
    upperValue := 987474666942020766673949586215932810163784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 5))
    upperTrace := (.lengthenFreeN 38 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 11, n := 46, r := 6 }
    lowerValue := 84350304258995964683565852407966482
    upperValue := 89770424267456433333995416928721164560344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 6))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 46, r := 7 }
    lowerValue := 1471852912606797811821598336678480
    upperValue := 8160947660677857575817765175338287687304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 7))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 46, r := 8 }
    lowerValue := 30099643438622566688021694608902
    upperValue := 741904332788896143256160470485298880664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 8))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 46, r := 9 }
    lowerValue := 710588221422200015863777452316
    upperValue := 67445848435354194841469133680481716424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 9))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 46, r := 10 }
    lowerValue := 19139645454565659667190991153
    upperValue := 2810243684806424785061213903353404851
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 10))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 46, r := 11 }
    lowerValue := 582712716637695836059793561
    upperValue := 255476698618765889551019445759400441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 11))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 46, r := 12 }
    lowerValue := 19902289165226800037942869
    upperValue := 23225154419887808141001767796309131
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 12))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 46, r := 13 }
    lowerValue := 757877175135645709679411
    upperValue := 2111377674535255285545615254209921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 13))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 46, r := 14 }
    lowerValue := 32013288309485087024673
    upperValue := 191943424957750480504146841291811
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 14))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 46, r := 15 }
    lowerValue := 1493700683510798090102
    upperValue := 17449402268886407318558803753801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 15))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 46, r := 16 }
    lowerValue := 76714176640481890630
    upperValue := 1586309297171491574414436704891
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 16))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 46, r := 17 }
    lowerValue := 4324183047483550714
    upperValue := 144209936106499234037676064081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 17))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 46, r := 18 }
    lowerValue := 266875972813011822
    upperValue := 13109994191499930367061460371
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 18))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 46, r := 19 }
    lowerValue := 17998926562334780
    upperValue := 1191817653772720942460132761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 19))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 46, r := 20 }
    lowerValue := 1324471204025412
    upperValue := 9849732675807611094711841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 20))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 46, r := 21 }
    lowerValue := 106213576640379
    upperValue := 895430243255237372246531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 21))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 46, r := 22 }
    lowerValue := 9274391373137
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 22))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 46, r := 23 }
    lowerValue := 881291632412
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 23))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 46, r := 24 }
    lowerValue := 91111377688
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 24))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 46, r := 25 }
    lowerValue := 10248493476
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 25))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 46, r := 26 }
    lowerValue := 1254650440
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 26))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 46, r := 27 }
    lowerValue := 167273991
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 27))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 46, r := 28 }
    lowerValue := 24309472
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 28))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 46, r := 29 }
    lowerValue := 3855669
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 29))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 46, r := 30 }
    lowerValue := 668472
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 30))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 30))) },
  { key := { q := 11, n := 46, r := 31 }
    lowerValue := 126930
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 31))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 31))) },
  { key := { q := 11, n := 46, r := 32 }
    lowerValue := 26458
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 32))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 32))) },
  { key := { q := 11, n := 46, r := 33 }
    lowerValue := 6071
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 33))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 37 33))) },
  { key := { q := 11, n := 46, r := 34 }
    lowerValue := 1539
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 34))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 38 34))) },
  { key := { q := 11, n := 46, r := 35 }
    lowerValue := 433
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 35))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 39 35))) },
  { key := { q := 11, n := 46, r := 36 }
    lowerValue := 136
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 36))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 40 36))) },
  { key := { q := 11, n := 46, r := 37 }
    lowerValue := 48
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 37))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 41 37))) },
  { key := { q := 11, n := 46, r := 38 }
    lowerValue := 19
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 38))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 42 38))) },
  { key := { q := 11, n := 46, r := 39 }
    lowerValue := 11
    upperValue := 14641
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 41 40))))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 43 39))) },
  { key := { q := 11, n := 46, r := 40 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 42 41)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 45 40))) },
  { key := { q := 11, n := 46, r := 41 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 43 42))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 46 41)) },
  { key := { q := 11, n := 46, r := 42 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 44 43)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 46 42)) },
  { key := { q := 11, n := 46, r := 43 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 46 43)) },
  { key := { q := 11, n := 46, r := 44 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 46 44)) },
  { key := { q := 11, n := 46, r := 45 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 46 45)) },
  { key := { q := 11, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 46 46)) },
  { key := { q := 11, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 46 47)) },
  { key := { q := 11, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 46 48)) },
  { key := { q := 11, n := 47, r := 0 }
    lowerValue := 8819748525897469309291246881319182564912256873571
    upperValue := 8819748525897469309291246881319182564912256873571
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 47 0)) },
  { key := { q := 11, n := 47, r := 1 }
    lowerValue := 18725580734389531442231946669467478906395449838
    upperValue := 404210864071935107337915897641224745649622591501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 1))
    upperTrace := (.lengthenFreeN 44 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 47, r := 2 }
    lowerValue := 81234846560292060580553249774978424854816267
    upperValue := 36746442188357737030719627058293158695420235591
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 2))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 47, r := 3 }
    lowerValue := 540307542136305181586262398179857983581672
    upperValue := 3340585653487067002792693368935741699583657781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 3))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 47, r := 4 }
    lowerValue := 4899932236781419558571533537988365588571
    upperValue := 303689604862460636617517578994158336325787071
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 4))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 47, r := 5 }
    lowerValue := 56830519935843359137797204233938919402
    upperValue := 10862221336362228433413445448375260911801624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 5))
    upperTrace := (.lengthenFreeN 39 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 11, n := 47, r := 6 }
    lowerValue := 809688541787920549388071370653908037
    upperValue := 987474666942020766673949586215932810163784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 6))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 47, r := 7 }
    lowerValue := 13784997807771644127049882073652277
    upperValue := 89770424267456433333995416928721164560344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 7))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 47, r := 8 }
    lowerValue := 274882198719115186935371041023159
    upperValue := 8160947660677857575817765175338287687304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 8))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 47, r := 9 }
    lowerValue := 6323602984586170301693934162047
    upperValue := 741904332788896143256160470485298880664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 9))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 47, r := 10 }
    lowerValue := 165861435155529988041826246806
    upperValue := 30912680532870672635673352936887453361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 10))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 47, r := 11 }
    lowerValue := 4913813436924842582019674597
    upperValue := 2810243684806424785061213903353404851
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 11))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 47, r := 12 }
    lowerValue := 163188788513318334735300521
    upperValue := 255476698618765889551019445759400441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 12))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 47, r := 13 }
    lowerValue := 6037554303585895985365182
    upperValue := 23225154419887808141001767796309131
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 13))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 47, r := 14 }
    lowerValue := 247570552409156529185240
    upperValue := 2111377674535255285545615254209921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 14))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 47, r := 15 }
    lowerValue := 11203358260101227019531
    upperValue := 191943424957750480504146841291811
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 15))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 47, r := 16 }
    lowerValue := 557521466813603150576
    upperValue := 17449402268886407318558803753801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 16))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 47, r := 17 }
    lowerValue := 30419381664870275876
    upperValue := 1586309297171491574414436704891
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 17))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 47, r := 18 }
    lowerValue := 1815291006795316709
    upperValue := 144209936106499234037676064081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 18))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 47, r := 19 }
    lowerValue := 118242116079406246
    upperValue := 13109994191499930367061460371
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 19))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 47, r := 20 }
    lowerValue := 8393057627585567
    upperValue := 108347059433883722041830251
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 20))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 47, r := 21 }
    lowerValue := 648387053367954
    upperValue := 9849732675807611094711841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 21))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 47, r := 22 }
    lowerValue := 54462533919644
    upperValue := 895430243255237372246531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 22))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 47, r := 23 }
    lowerValue := 4970771777996
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 23))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 47, r := 24 }
    lowerValue := 492775037352
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 24))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 47, r := 25 }
    lowerValue := 53055235547
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 25))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 47, r := 26 }
    lowerValue := 6204915924
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 26))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 47, r := 27 }
    lowerValue := 788611688
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 27))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 47, r := 28 }
    lowerValue := 108998968
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 28))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 47, r := 29 }
    lowerValue := 16400270
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 29))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 47, r := 30 }
    lowerValue := 2689793
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 30))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 30))) },
  { key := { q := 11, n := 47, r := 31 }
    lowerValue := 481657
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 31))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 31))) },
  { key := { q := 11, n := 47, r := 32 }
    lowerValue := 94357
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 32))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 32))) },
  { key := { q := 11, n := 47, r := 33 }
    lowerValue := 20270
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 33))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 37 33))) },
  { key := { q := 11, n := 47, r := 34 }
    lowerValue := 4789
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 34))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 38 34))) },
  { key := { q := 11, n := 47, r := 35 }
    lowerValue := 1249
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 47 35))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 39 35))) }]

end CoveringCodes.Database
