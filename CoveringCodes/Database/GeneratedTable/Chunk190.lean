import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 190. Do not edit manually.

def precomputedTable_chunk_190 : Array AnyBoundEntry := #[
  { key := { q := 19, n := 38, r := 19 }
    lowerValue := 148152709621385
    upperValue := 104127350297911241532841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 38, r := 20 }
    lowerValue := 8612358770660
    upperValue := 5480386857784802185939
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 38, r := 21 }
    lowerValue := 554502596523
    upperValue := 288441413567621167681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 38, r := 22 }
    lowerValue := 39569000802
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 38, r := 23 }
    lowerValue := 3133385392
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 38, r := 24 }
    lowerValue := 275847151
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 38, r := 25 }
    lowerValue := 27063450
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 38, r := 26 }
    lowerValue := 2968458
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 38, r := 27 }
    lowerValue := 365461
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 38, r := 28 }
    lowerValue := 50753
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) },
  { key := { q := 19, n := 38, r := 29 }
    lowerValue := 7999
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 38, r := 30 }
    lowerValue := 1442
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 38, r := 31 }
    lowerValue := 300
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31))) },
  { key := { q := 19, n := 38, r := 32 }
    lowerValue := 73
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 32))) },
  { key := { q := 19, n := 38, r := 33 }
    lowerValue := 21
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 35 33))) },
  { key := { q := 19, n := 38, r := 34 }
    lowerValue := 19
    upperValue := 6859
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 36 35)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 36 34))) },
  { key := { q := 19, n := 38, r := 35 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 37 36))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 37 35))) },
  { key := { q := 19, n := 38, r := 36 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 38 36)) },
  { key := { q := 19, n := 38, r := 37 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 38 37)) },
  { key := { q := 19, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 38 38)) },
  { key := { q := 19, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 38 39)) },
  { key := { q := 19, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 38 40)) },
  { key := { q := 19, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 38 41)) },
  { key := { q := 19, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 38 42)) },
  { key := { q := 19, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 38 43)) },
  { key := { q := 19, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 38 44)) },
  { key := { q := 19, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 38 45)) },
  { key := { q := 19, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 38 46)) },
  { key := { q := 19, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 38 47)) },
  { key := { q := 19, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 38 48)) },
  { key := { q := 19, n := 39, r := 0 }
    lowerValue := 74368742344158402044370289529129338200416023056379
    upperValue := 74368742344158402044370289529129338200416023056379
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 39 0)) },
  { key := { q := 19, n := 39, r := 1 }
    lowerValue := 105787684700083075454296286670169755619368453850
    upperValue := 1962493419491568854064881528615309843165957161861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 1))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 39, r := 2 }
    lowerValue := 308856966298672279003311181787759879895575854
    upperValue := 103289127341661518634993764663963675956103008519
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 2))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 3 }
    lowerValue := 1389046080597570782066906188478256040625308
    upperValue := 5436269860087448349210198140208614524005421501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 4 }
    lowerValue := 8560016531689012734945309748087808328844
    upperValue := 286119466320392018379484112642558659158180079
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 4))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 5 }
    lowerValue := 67816333406076082219982470362246119954
    upperValue := 15058919280020632546288637507503087324114741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 5))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 6 }
    lowerValue := 663617438800960016451773268573280331
    upperValue := 792574698948454344541507237237004596006039
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 6))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 7 }
    lowerValue := 7804805710876894644239807564988137
    upperValue := 41714457839392333923237223012473926105581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 7))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 8 }
    lowerValue := 108169905941910726990817563702247
    upperValue := 2195497781020649153854590684867048742399
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 8))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 9 }
    lowerValue := 1740725092379187589724746186002
    upperValue := 115552514790560481781820562361423618021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 9))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 10 }
    lowerValue := 32157635102516941130776561637
    upperValue := 6081711304766341146411608545338085159
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 10))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 11 }
    lowerValue := 675894599601107238661525586
    upperValue := 320090068671912691916400449754636061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 11))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 12 }
    lowerValue := 16047933081937222835607505
    upperValue := 16846845719574352206126339460770319
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 12))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 13 }
    lowerValue := 427979312365563757046915
    upperValue := 886676090503913274006649445303701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 13))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 14 }
    lowerValue := 12761380104143631413975
    upperValue := 46667162658100698631928918173879
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 14))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 15 }
    lowerValue := 423889119245198282543
    upperValue := 2456166455689510454312048324941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 15))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 16 }
    lowerValue := 15639845304101269073
    upperValue := 129271918720500550226949911839
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 16))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 17 }
    lowerValue := 639551036305682119
    upperValue := 6803785195815818432997363781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 17))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 39, r := 18 }
    lowerValue := 28938480511456091
    upperValue := 37589973457545958193355601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 39, r := 19 }
    lowerValue := 1447319328314687
    upperValue := 1978419655660313589123979
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 39, r := 20 }
    lowerValue := 79963480104380
    upperValue := 104127350297911241532841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 39, r := 21 }
    lowerValue := 4880006014519
    upperValue := 5480386857784802185939
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 39, r := 22 }
    lowerValue := 329096454355
    upperValue := 288441413567621167681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 39, r := 23 }
    lowerValue := 24546370511
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 39, r := 24 }
    lowerValue := 2027795430
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 39, r := 25 }
    lowerValue := 185903190
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 39, r := 26 }
    lowerValue := 18962475
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 39, r := 27 }
    lowerValue := 2159084
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 39, r := 28 }
    lowerValue := 275537
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) },
  { key := { q := 19, n := 39, r := 29 }
    lowerValue := 39610
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 39, r := 30 }
    lowerValue := 6454
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 39, r := 31 }
    lowerValue := 1201
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31))) },
  { key := { q := 19, n := 39, r := 32 }
    lowerValue := 258
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 32))) },
  { key := { q := 19, n := 39, r := 33 }
    lowerValue := 65
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 35 33))) },
  { key := { q := 19, n := 39, r := 34 }
    lowerValue := 20
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 34))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 36 34))) },
  { key := { q := 19, n := 39, r := 35 }
    lowerValue := 19
    upperValue := 6859
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 37 36)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 37 35))) },
  { key := { q := 19, n := 39, r := 36 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 39 36)) },
  { key := { q := 19, n := 39, r := 37 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 39 37)) },
  { key := { q := 19, n := 39, r := 38 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 39 38)) },
  { key := { q := 19, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 39 39)) },
  { key := { q := 19, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 39 40)) },
  { key := { q := 19, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 39 41)) },
  { key := { q := 19, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 39 42)) },
  { key := { q := 19, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 39 43)) },
  { key := { q := 19, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 39 44)) },
  { key := { q := 19, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 39 45)) },
  { key := { q := 19, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 39 46)) },
  { key := { q := 19, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 39 47)) },
  { key := { q := 19, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 39 48)) },
  { key := { q := 19, n := 40, r := 0 }
    lowerValue := 1413006104539009638843035501053457425807904438071201
    upperValue := 1413006104539009638843035501053457425807904438071201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 40 0)) },
  { key := { q := 19, n := 40, r := 1 }
    lowerValue := 1959786552758681884664404301045017234130241939073
    upperValue := 37287374970339808227232749043690887020153186075359
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 1))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 40, r := 2 }
    lowerValue := 5575286179185726219684405842201764615069797066
    upperValue := 1962493419491568854064881528615309843165957161861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 2))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 3 }
    lowerValue := 24415382490870226631362294201348511660919535
    upperValue := 103289127341661518634993764663963675956103008519
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 3))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 4 }
    lowerValue := 146400770569989103547863060023898549783649
    upperValue := 5436269860087448349210198140208614524005421501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 4))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 5 }
    lowerValue := 1127696165754441676110155842792447355166
    upperValue := 286119466320392018379484112642558659158180079
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 5))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 6 }
    lowerValue := 10720441480056504340680634388747600976
    upperValue := 15058919280020632546288637507503087324114741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 6))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 7 }
    lowerValue := 122383056787682149858422218906351304
    upperValue := 792574698948454344541507237237004596006039
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 7))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 8 }
    lowerValue := 1644881108251513549185901136590010
    upperValue := 41714457839392333923237223012473926105581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 8))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 9 }
    lowerValue := 25645243528749189351046283704648
    upperValue := 2195497781020649153854590684867048742399
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 9))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 10 }
    lowerValue := 458523723007451037753426962400
    upperValue := 115552514790560481781820562361423618021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 10))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 11 }
    lowerValue := 9317090248753514350997665699
    upperValue := 6081711304766341146411608545338085159
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 11))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 12 }
    lowerValue := 213615895399024302806401342
    upperValue := 320090068671912691916400449754636061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 12))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 13 }
    lowerValue := 5494185648011170584032022
    upperValue := 16846845719574352206126339460770319
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 13))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 14 }
    lowerValue := 157781704615071872123667
    upperValue := 886676090503913274006649445303701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 14))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 15 }
    lowerValue := 5040304866917787203884
    upperValue := 46667162658100698631928918173879
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 15))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 16 }
    lowerValue := 178566081095400715420
    upperValue := 2456166455689510454312048324941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 16))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 17 }
    lowerValue := 6999438653887213453
    upperValue := 129271918720500550226949911839
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 17))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 40, r := 18 }
    lowerValue := 303026396881069097
    upperValue := 714209495693373205673756419
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 40, r := 19 }
    lowerValue := 14471320527263651
    upperValue := 37589973457545958193355601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 40, r := 20 }
    lowerValue := 761752203298580
    upperValue := 1978419655660313589123979
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 40, r := 21 }
    lowerValue := 44183936025339
    upperValue := 104127350297911241532841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 40, r := 22 }
    lowerValue := 2824378841212
    upperValue := 5480386857784802185939
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 40, r := 23 }
    lowerValue := 199089570853
    upperValue := 288441413567621167681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 40, r := 24 }
    lowerValue := 15491836952
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 40, r := 25 }
    lowerValue := 1332792837
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 40, r := 26 }
    lowerValue := 127039041
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 40, r := 27 }
    lowerValue := 13452254
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 40, r := 28 }
    lowerValue := 1587812
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) },
  { key := { q := 19, n := 40, r := 29 }
    lowerValue := 209775
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 40, r := 30 }
    lowerValue := 31180
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 40, r := 31 }
    lowerValue := 5246
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31))) },
  { key := { q := 19, n := 40, r := 32 }
    lowerValue := 1007
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 32))) },
  { key := { q := 19, n := 40, r := 33 }
    lowerValue := 223
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 35 33))) },
  { key := { q := 19, n := 40, r := 34 }
    lowerValue := 58
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 36 34))) },
  { key := { q := 19, n := 40, r := 35 }
    lowerValue := 19
    upperValue := 130321
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 37 36))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 37 35))) },
  { key := { q := 19, n := 40, r := 36 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 38 37)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 39 36))) },
  { key := { q := 19, n := 40, r := 37 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 40 37)) },
  { key := { q := 19, n := 40, r := 38 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 40 38)) },
  { key := { q := 19, n := 40, r := 39 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 40 39)) },
  { key := { q := 19, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 40 40)) },
  { key := { q := 19, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 40 41)) },
  { key := { q := 19, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 40 42)) },
  { key := { q := 19, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 40 43)) },
  { key := { q := 19, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 40 44)) },
  { key := { q := 19, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 40 45)) },
  { key := { q := 19, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 40 46)) },
  { key := { q := 19, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 40 47)) },
  { key := { q := 19, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 40 48)) },
  { key := { q := 19, n := 41, r := 0 }
    lowerValue := 26847115986241183138017674520015691090350184323352819
    upperValue := 26847115986241183138017674520015691090350184323352819
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 41 0)) },
  { key := { q := 19, n := 41, r := 1 }
    lowerValue := 36328979683682250525057746305839906752841927365837
    upperValue := 708460124436456356317422231830126853382910535431821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 1))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 41, r := 2 }
    lowerValue := 100770275341627973748184906181675072312223168481
    upperValue := 37287374970339808227232749043690887020153186075359
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 2))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 3 }
    lowerValue := 429997344721268172891366798643568866929301024
    upperValue := 1962493419491568854064881528615309843165957161861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 3))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 4 }
    lowerValue := 2510635421541105973484694194143814886522061
    upperValue := 103289127341661518634993764663963675956103008519
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 4))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 5 }
    lowerValue := 18817212404829156988863074055108283878429
    upperValue := 5436269860087448349210198140208614524005421501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 5))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 6 }
    lowerValue := 173926596578900940380108931777074136365
    upperValue := 286119466320392018379484112642558659158180079
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 6))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 7 }
    lowerValue := 1928914221656465085137998425274494770
    upperValue := 15058919280020632546288637507503087324114741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 7))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 8 }
    lowerValue := 25164701060134349108522741446043169
    upperValue := 792574698948454344541507237237004596006039
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 8))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 9 }
    lowerValue := 380482255230917592690416327604767
    upperValue := 41714457839392333923237223012473926105581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 9))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 10 }
    lowerValue := 6590821843052084519402629289475
    upperValue := 2195497781020649153854590684867048742399
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 10))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 11 }
    lowerValue := 129616684930620001865697830731
    upperValue := 115552514790560481781820562361423618021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 11))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 12 }
    lowerValue := 2873027369689859468609549729
    upperValue := 6081711304766341146411608545338085159
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 12))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 13 }
    lowerValue := 71355073681935057893964822
    upperValue := 320090068671912691916400449754636061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 13))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 14 }
    lowerValue := 1976272016239174819609099
    upperValue := 16846845719574352206126339460770319
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 14))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 15 }
    lowerValue := 60803431260873720741279
    upperValue := 886676090503913274006649445303701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 15))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 16 }
    lowerValue := 2071662004714375760587
    upperValue := 46667162658100698631928918173879
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 16))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 17 }
    lowerValue := 77973791616151381788
    upperValue := 2456166455689510454312048324941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 17))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 41, r := 18 }
    lowerValue := 3235872633176978487
    upperValue := 13569980418174090907801371961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 41, r := 19 }
    lowerValue := 147856516535838578
    upperValue := 714209495693373205673756419
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 41, r := 20 }
    lowerValue := 7431738448203360
    upperValue := 37589973457545958193355601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 41, r := 21 }
    lowerValue := 410700774779643
    upperValue := 1978419655660313589123979
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 41, r := 22 }
    lowerValue := 24952457992046
    upperValue := 104127350297911241532841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 41, r := 23 }
    lowerValue := 1667259342699
    upperValue := 5480386857784802185939
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 41, r := 24 }
    lowerValue := 122610949152
    upperValue := 288441413567621167681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 41, r := 25 }
    lowerValue := 9936165943
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 41, r := 26 }
    lowerValue := 888802785
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 41, r := 27 }
    lowerValue := 87952493
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 41, r := 28 }
    lowerValue := 9655142
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) },
  { key := { q := 19, n := 41, r := 29 }
    lowerValue := 1179877
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 41, r := 30 }
    lowerValue := 161183
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 41, r := 31 }
    lowerValue := 24742
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31))) },
  { key := { q := 19, n := 41, r := 32 }
    lowerValue := 4295
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 32))) },
  { key := { q := 19, n := 41, r := 33 }
    lowerValue := 850
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 35 33))) },
  { key := { q := 19, n := 41, r := 34 }
    lowerValue := 194
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 36 34))) },
  { key := { q := 19, n := 41, r := 35 }
    lowerValue := 52
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 37 35))) },
  { key := { q := 19, n := 41, r := 36 }
    lowerValue := 19
    upperValue := 6859
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 38 37))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 39 36))) },
  { key := { q := 19, n := 41, r := 37 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 39 38)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 40 37))) },
  { key := { q := 19, n := 41, r := 38 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 41 38)) },
  { key := { q := 19, n := 41, r := 39 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 41 39)) },
  { key := { q := 19, n := 41, r := 40 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 41 40)) },
  { key := { q := 19, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 41 41)) },
  { key := { q := 19, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 41 42)) },
  { key := { q := 19, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 41 43)) },
  { key := { q := 19, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 41 44)) },
  { key := { q := 19, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 41 45)) },
  { key := { q := 19, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 41 46)) },
  { key := { q := 19, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 41 47)) },
  { key := { q := 19, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 41 48)) },
  { key := { q := 19, n := 42, r := 0 }
    lowerValue := 510095203738582479622335815880298130716653502143703561
    upperValue := 510095203738582479622335815880298130716653502143703561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 42 0)) },
  { key := { q := 19, n := 42, r := 1 }
    lowerValue := 673837785652024411654340575799601229480387717494985
    upperValue := 13460742364292670770031022404772410214275300173204599
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 1))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 42, r := 2 }
    lowerValue := 1823585657632363961312650161697899445220964826180
    upperValue := 708460124436456356317422231830126853382910535431821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 2))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 3 }
    lowerValue := 7587193246804740200776123410544270896323286876
    upperValue := 37287374970339808227232749043690887020153186075359
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 3))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 4 }
    lowerValue := 43165507047580975349411507924651198927350361
    upperValue := 1962493419491568854064881528615309843165957161861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 4))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 5 }
    lowerValue := 315026773816060925954473706264320471514124
    upperValue := 103289127341661518634993764663963675956103008519
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 5))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 6 }
    lowerValue := 2833231680299093352892621162590683195493
    upperValue := 5436269860087448349210198140208614524005421501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 6))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 7 }
    lowerValue := 30550636345760349968172727050405386534
    upperValue := 286119466320392018379484112642558659158180079
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 7))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 8 }
    lowerValue := 387202921340788655297929605050027352
    upperValue := 15058919280020632546288637507503087324114741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 8))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 9 }
    lowerValue := 5682614975962106170113847681053900
    upperValue := 792574698948454344541507237237004596006039
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 9))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 10 }
    lowerValue := 95460823401848788387846535740966
    upperValue := 41714457839392333923237223012473926105581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 10))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 11 }
    lowerValue := 1818855966529572839890302012946
    upperValue := 2195497781020649153854590684867048742399
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 11))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 12 }
    lowerValue := 39019508273972961957086054416
    upperValue := 115552514790560481781820562361423618021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 12))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 13 }
    lowerValue := 936902630763405184448123379
    upperValue := 6081711304766341146411608545338085159
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 13))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 14 }
    lowerValue := 25057276145773936973874538
    upperValue := 320090068671912691916400449754636061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 14))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 15 }
    lowerValue := 743509023743329108355059
    upperValue := 16846845719574352206126339460770319
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 15))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 16 }
    lowerValue := 24398382484120560614508
    upperValue := 886676090503913274006649445303701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 16))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 17 }
    lowerValue := 883166463844305707749
    upperValue := 46667162658100698631928918173879
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 17))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 42, r := 18 }
    lowerValue := 35192846429789468197
    upperValue := 257829627945307727248226067259
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 42, r := 19 }
    lowerValue := 1541462665231654077
    upperValue := 13569980418174090907801371961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 42, r := 20 }
    lowerValue := 74132552179081742
    upperValue := 714209495693373205673756419
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 42, r := 21 }
    lowerValue := 3911954633285946
    upperValue := 37589973457545958193355601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 42, r := 22 }
    lowerValue := 226449974762400
    upperValue := 1978419655660313589123979
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 42, r := 23 }
    lowerValue := 14381317270604
    upperValue := 104127350297911241532841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 42, r := 24 }
    lowerValue := 1002530635769
    upperValue := 5480386857784802185939
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 42, r := 25 }
    lowerValue := 76783730324
    upperValue := 288441413567621167681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 42, r := 26 }
    lowerValue := 6469906737
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 42, r := 27 }
    lowerValue := 600852524
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 42, r := 28 }
    lowerValue := 61642740
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) },
  { key := { q := 19, n := 42, r := 29 }
    lowerValue := 7006318
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 42, r := 30 }
    lowerValue := 885369
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 42, r := 31 }
    lowerValue := 124925
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31))) },
  { key := { q := 19, n := 42, r := 32 }
    lowerValue := 19784
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 32))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 32))) },
  { key := { q := 19, n := 42, r := 33 }
    lowerValue := 3539
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 33))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 35 33))) },
  { key := { q := 19, n := 42, r := 34 }
    lowerValue := 721
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 34))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 36 34))) },
  { key := { q := 19, n := 42, r := 35 }
    lowerValue := 169
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 35))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 37 35))) },
  { key := { q := 19, n := 42, r := 36 }
    lowerValue := 46
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 39 36))) },
  { key := { q := 19, n := 42, r := 37 }
    lowerValue := 19
    upperValue := 6859
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 39 38))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 40 37))) },
  { key := { q := 19, n := 42, r := 38 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 40 39)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 41 38))) },
  { key := { q := 19, n := 42, r := 39 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 42 39)) },
  { key := { q := 19, n := 42, r := 40 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 42 40)) },
  { key := { q := 19, n := 42, r := 41 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 42 41)) },
  { key := { q := 19, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 42 42)) },
  { key := { q := 19, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 42 43)) },
  { key := { q := 19, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 42 44)) },
  { key := { q := 19, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 42 45)) },
  { key := { q := 19, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 42 46)) },
  { key := { q := 19, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 42 47)) },
  { key := { q := 19, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 42 48)) },
  { key := { q := 19, n := 43, r := 0 }
    lowerValue := 9691808871033067112824380501725664483616416540730367659
    upperValue := 9691808871033067112824380501725664483616416540730367659
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 43 0)) },
  { key := { q := 19, n := 43, r := 1 }
    lowerValue := 12505559833591054339128232905452470301440537471910152
    upperValue := 255754104921560744630589425690675794071230703290887381
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 1))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 43, r := 2 }
    lowerValue := 33038718210968808656043458776553584947575453441591
    upperValue := 13460742364292670770031022404772410214275300173204599
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 2))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 3 }
    lowerValue := 134112874081497471902049902869695225577700543221
    upperValue := 708460124436456356317422231830126853382910535431821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 3))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 4 }
    lowerValue := 743958343966563723081980051111840001440312149
    upperValue := 37287374970339808227232749043690887020153186075359
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 4))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 5 }
    lowerValue := 5290514710511691955818911842329995989789932
    upperValue := 1962493419491568854064881528615309843165957161861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 5))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 6 }
    lowerValue := 46331085227341059114577994573795315842202
    upperValue := 103289127341661518634993764663963675956103008519
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 6))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 7 }
    lowerValue := 486111145411522758364340522429573585821
    upperValue := 5436269860087448349210198140208614524005421501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 7))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 8 }
    lowerValue := 5990268828047185576979025738917441838
    upperValue := 286119466320392018379484112642558659158180079
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 8))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 9 }
    lowerValue := 85407624359881583489082154915540172
    upperValue := 15058919280020632546288637507503087324114741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 9))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 10 }
    lowerValue := 1392649724341353772096496563252506
    upperValue := 792574698948454344541507237237004596006039
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 10))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 11 }
    lowerValue := 25732873143058478917286629754626
    upperValue := 41714457839392333923237223012473926105581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 11))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 12 }
    lowerValue := 534841598295878722911155671447
    upperValue := 2195497781020649153854590684867048742399
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 12))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 13 }
    lowerValue := 12429231201529123078722541083
    upperValue := 115552514790560481781820562361423618021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 13))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 14 }
    lowerValue := 321375842783990082336669869
    upperValue := 6081711304766341146411608545338085159
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 14))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 15 }
    lowerValue := 9208425312260277963607100
    upperValue := 320090068671912691916400449754636061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 15))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 16 }
    lowerValue := 291429600543009098629325
    upperValue := 16846845719574352206126339460770319
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 16))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 17 }
    lowerValue := 10160193111769245731279
    upperValue := 886676090503913274006649445303701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 17))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 43, r := 18 }
    lowerValue := 389375585948826923881
    upperValue := 4898762930960846817716295277921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 43, r := 19 }
    lowerValue := 16376457556066092607
    upperValue := 257829627945307727248226067259
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 43, r := 20 }
    lowerValue := 754969738122501739
    upperValue := 13569980418174090907801371961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 43, r := 21 }
    lowerValue := 38119313432821792
    upperValue := 714209495693373205673756419
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 43, r := 22 }
    lowerValue := 2107068649563621
    upperValue := 37589973457545958193355601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 43, r := 23 }
    lowerValue := 127497599095822
    upperValue := 1978419655660313589123979
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) }]

end CoveringCodes.Database
