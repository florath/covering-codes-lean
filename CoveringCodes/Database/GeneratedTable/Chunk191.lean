import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 191. Do not edit manually.

def precomputedTable_chunk_191 : Array AnyBoundEntry := #[
  { key := { q := 19, n := 43, r := 24 }
    lowerValue := 8447824987223
    upperValue := 104127350297911241532841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 43, r := 25 }
    lowerValue := 613335412560
    upperValue := 5480386857784802185939
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 43, r := 26 }
    lowerValue := 48844895976
    upperValue := 288441413567621167681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 43, r := 27 }
    lowerValue := 4273107233
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 43, r := 28 }
    lowerValue := 411434012
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 28))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) },
  { key := { q := 19, n := 43, r := 29 }
    lowerValue := 43704935
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 29))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 43, r := 30 }
    lowerValue := 5137102
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 30))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 43, r := 31 }
    lowerValue := 670540
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 31))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31))) },
  { key := { q := 19, n := 43, r := 32 }
    lowerValue := 97620
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 32))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 32))) },
  { key := { q := 19, n := 43, r := 33 }
    lowerValue := 15934
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 33))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 35 33))) },
  { key := { q := 19, n := 43, r := 34 }
    lowerValue := 2935
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 34))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 36 34))) },
  { key := { q := 19, n := 43, r := 35 }
    lowerValue := 615
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 35))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 37 35))) },
  { key := { q := 19, n := 43, r := 36 }
    lowerValue := 148
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 36))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 39 36))) },
  { key := { q := 19, n := 43, r := 37 }
    lowerValue := 42
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 37))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 40 37))) },
  { key := { q := 19, n := 43, r := 38 }
    lowerValue := 19
    upperValue := 6859
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 40 39))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 41 38))) },
  { key := { q := 19, n := 43, r := 39 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 41 40)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 42 39))) },
  { key := { q := 19, n := 43, r := 40 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 43 40)) },
  { key := { q := 19, n := 43, r := 41 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 43 41)) },
  { key := { q := 19, n := 43, r := 42 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 43 42)) },
  { key := { q := 19, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 43 43)) },
  { key := { q := 19, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 43 44)) },
  { key := { q := 19, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 43 45)) },
  { key := { q := 19, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 43 46)) },
  { key := { q := 19, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 43 47)) },
  { key := { q := 19, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 43 48)) },
  { key := { q := 19, n := 44, r := 0 }
    lowerValue := 184144368549628275143663229532787625188711914273876985521
    upperValue := 184144368549628275143663229532787625188711914273876985521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 44 0)) },
  { key := { q := 19, n := 44, r := 1 }
    lowerValue := 232212318473680044317355901050173550048817041959491786
    upperValue := 4859327993509654147981199088122840087353383362526860239
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 1))
    upperTrace := (.lengthenFreeN 41 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 44, r := 2 }
    lowerValue := 599239070181707843368673399131093454178569638733464
    upperValue := 255754104921560744630589425690675794071230703290887381
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 2))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 3 }
    lowerValue := 2374637560740363775471484160757725660670897398321
    upperValue := 13460742364292670770031022404772410214275300173204599
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 3))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 4 }
    lowerValue := 12851935169703044732112714104620184331663923028
    upperValue := 708460124436456356317422231830126853382910535431821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 4))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 5 }
    lowerValue := 89113003948394960742608493487281258703536753
    upperValue := 37287374970339808227232749043690887020153186075359
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 5))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 6 }
    lowerValue := 760422900812837588311708850956882218958681
    upperValue := 1962493419491568854064881528615309843165957161861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 6))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 7 }
    lowerValue := 7768893344959535022824734135417872072245
    upperValue := 103289127341661518634993764663963675956103008519
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 7))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 8 }
    lowerValue := 93152787246686250069562519696278336626
    upperValue := 5436269860087448349210198140208614524005421501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 8))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 9 }
    lowerValue := 1291337230166456778443943870267604143
    upperValue := 286119466320392018379484112642558659158180079
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 9))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 10 }
    lowerValue := 20456290130877162285894902196386450
    upperValue := 15058919280020632546288637507503087324114741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 10))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 11 }
    lowerValue := 366895942768909786827547844322608
    upperValue := 792574698948454344541507237237004596006039
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 11))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 12 }
    lowerValue := 7395278477454958137858276770435
    upperValue := 41714457839392333923237223012473926105581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 12))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 13 }
    lowerValue := 166505531107248505871192013188
    upperValue := 2195497781020649153854590684867048742399
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 13))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 14 }
    lowerValue := 4166830653188700865773897801
    upperValue := 115552514790560481781820562361423618021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 14))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 15 }
    lowerValue := 115427570086937982223613275
    upperValue := 6081711304766341146411608545338085159
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 15))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 16 }
    lowerValue := 3527604033854590288115448
    upperValue := 320090068671912691916400449754636061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 16))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 17 }
    lowerValue := 118610770313741662171434
    upperValue := 16846845719574352206126339460770319
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 17))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 44, r := 18 }
    lowerValue := 4378047333128060812803
    upperValue := 93076495688256089536609610280499
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 18))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 44, r := 19 }
    lowerValue := 177088269720287347891
    upperValue := 4898762930960846817716295277921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 44, r := 20 }
    lowerValue := 7839269533137580204
    upperValue := 257829627945307727248226067259
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 44, r := 21 }
    lowerValue := 379427547774666513
    upperValue := 13569980418174090907801371961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 44, r := 22 }
    lowerValue := 20067711327160615
    upperValue := 714209495693373205673756419
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 44, r := 23 }
    lowerValue := 1159529349022023
    upperValue := 37589973457545958193355601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 44, r := 24 }
    lowerValue := 73202833785290
    upperValue := 1978419655660313589123979
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 24))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 44, r := 25 }
    lowerValue := 5051639434014
    upperValue := 104127350297911241532841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 25))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 44, r := 26 }
    lowerValue := 381367624305
    upperValue := 5480386857784802185939
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 26))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 44, r := 27 }
    lowerValue := 31533429035
    upperValue := 288441413567621167681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 27))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 44, r := 28 }
    lowerValue := 2860190236
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 28))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) },
  { key := { q := 19, n := 44, r := 29 }
    lowerValue := 285156267
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 29))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 44, r := 30 }
    lowerValue := 31326508
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 30))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 44, r := 31 }
    lowerValue := 3803608
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 31))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31))) },
  { key := { q := 19, n := 44, r := 32 }
    lowerValue := 512296
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 32))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 32))) },
  { key := { q := 19, n := 44, r := 33 }
    lowerValue := 76877
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 33))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 35 33))) },
  { key := { q := 19, n := 44, r := 34 }
    lowerValue := 12922
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 34))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 36 34))) },
  { key := { q := 19, n := 44, r := 35 }
    lowerValue := 2448
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 35))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 37 35))) },
  { key := { q := 19, n := 44, r := 36 }
    lowerValue := 527
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 36))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 39 36))) },
  { key := { q := 19, n := 44, r := 37 }
    lowerValue := 130
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 37))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 40 37))) },
  { key := { q := 19, n := 44, r := 38 }
    lowerValue := 38
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 38))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 41 38))) },
  { key := { q := 19, n := 44, r := 39 }
    lowerValue := 19
    upperValue := 6859
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 41 40))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 42 39))) },
  { key := { q := 19, n := 44, r := 40 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 42 41)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 43 40))) },
  { key := { q := 19, n := 44, r := 41 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 44 41)) },
  { key := { q := 19, n := 44, r := 42 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 44 42)) },
  { key := { q := 19, n := 44, r := 43 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 44 43)) },
  { key := { q := 19, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 44 44)) },
  { key := { q := 19, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 44 45)) },
  { key := { q := 19, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 44 46)) },
  { key := { q := 19, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 44 47)) },
  { key := { q := 19, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 44 48)) },
  { key := { q := 19, n := 45, r := 0 }
    lowerValue := 3498743002442937227729601361122964878585526371203662724899
    upperValue := 3498743002442937227729601361122964878585526371203662724899
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 45 0)) },
  { key := { q := 19, n := 45, r := 1 }
    lowerValue := 4314109744072672290665353096329179874951327214801063780
    upperValue := 92327231876683428811642782674333961659714283888010344541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 1))
    upperTrace := (.lengthenFreeN 42 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 45, r := 2 }
    lowerValue := 10880157111315812768345408513587869797293681243655873
    upperValue := 4859327993509654147981199088122840087353383362526860239
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 2))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 3 }
    lowerValue := 42114130097912099461377421000058907281640959867819
    upperValue := 255754104921560744630589425690675794071230703290887381
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 3))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 4 }
    lowerValue := 222510059217063265129241099482603965911539718288
    upperValue := 13460742364292670770031022404772410214275300173204599
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 4))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 5 }
    lowerValue := 1505275507888234211698742568517060124200504699
    upperValue := 708460124436456356317422231830126853382910535431821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 5))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 6 }
    lowerValue := 12524319973406699343542334346575608849798101
    upperValue := 37287374970339808227232749043690887020153186075359
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 6))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 7 }
    lowerValue := 124680505832503295603742744551222972164404
    upperValue := 1962493419491568854064881528615309843165957161861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 7))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 8 }
    lowerValue := 1455717367141915650774256857113155159783
    upperValue := 103289127341661518634993764663963675956103008519
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 8))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 9 }
    lowerValue := 19635767101437162579258696372711222888
    upperValue := 5436269860087448349210198140208614524005421501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 9))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 10 }
    lowerValue := 302433355335396544970745785300309118
    upperValue := 286119466320392018379484112642558659158180079
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 10))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 11 }
    lowerValue := 5269736481835184594106372279737339
    upperValue := 15058919280020632546288637507503087324114741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 11))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 12 }
    lowerValue := 103103052360179206982431372642834
    upperValue := 792574698948454344541507237237004596006039
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 12))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 13 }
    lowerValue := 2251240337558411102607832649061
    upperValue := 41714457839392333923237223012473926105581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 13))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 14 }
    lowerValue := 54582789438944286876633673193
    upperValue := 2195497781020649153854590684867048742399
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 14))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 15 }
    lowerValue := 1463421606266881818880760967
    upperValue := 115552514790560481781820562361423618021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 15))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 16 }
    lowerValue := 43238768044723348899200589
    upperValue := 6081711304766341146411608545338085159
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 16))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 17 }
    lowerValue := 1403918297859183570990941
    upperValue := 320090068671912691916400449754636061
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 17))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 45, r := 18 }
    lowerValue := 49977745686706867443737
    upperValue := 1768453418076865701195582595329481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 18))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 45, r := 19 }
    lowerValue := 1947055785705015478695
    upperValue := 93076495688256089536609610280499
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 45, r := 20 }
    lowerValue := 82894454079745984284
    upperValue := 4898762930960846817716295277921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 20))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 45, r := 21 }
    lowerValue := 3852641271988554197
    upperValue := 257829627945307727248226067259
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 21))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 45, r := 22 }
    lowerValue := 195330210083437944
    upperValue := 13569980418174090907801371961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 22))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 45, r := 23 }
    lowerValue := 10799245638068354
    upperValue := 714209495693373205673756419
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 23))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 45, r := 24 }
    lowerValue := 651036911885417
    upperValue := 37589973457545958193355601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 24))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 45, r := 25 }
    lowerValue := 42807480602502
    upperValue := 1978419655660313589123979
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 25))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 45, r := 26 }
    lowerValue := 3071778652907
    upperValue := 104127350297911241532841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 26))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 45, r := 27 }
    lowerValue := 240777797686
    upperValue := 5480386857784802185939
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 27))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 45, r := 28 }
    lowerValue := 20642079807
    upperValue := 288441413567621167681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 28))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) },
  { key := { q := 19, n := 45, r := 29 }
    lowerValue := 1938748448
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 29))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 45, r := 30 }
    lowerValue := 199905033
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 30))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 45, r := 31 }
    lowerValue := 22686526
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 31))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31))) },
  { key := { q := 19, n := 45, r := 32 }
    lowerValue := 2842463
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 32))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 32))) },
  { key := { q := 19, n := 45, r := 33 }
    lowerValue := 394652
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 33))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 35 33))) },
  { key := { q := 19, n := 45, r := 34 }
    lowerValue := 60989
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 34))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 36 34))) },
  { key := { q := 19, n := 45, r := 35 }
    lowerValue := 10547
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 35))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 37 35))) },
  { key := { q := 19, n := 45, r := 36 }
    lowerValue := 2054
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 36))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 39 36))) },
  { key := { q := 19, n := 45, r := 37 }
    lowerValue := 454
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 37))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 40 37))) },
  { key := { q := 19, n := 45, r := 38 }
    lowerValue := 115
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 38))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 41 38))) },
  { key := { q := 19, n := 45, r := 39 }
    lowerValue := 34
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 39))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 42 39))) },
  { key := { q := 19, n := 45, r := 40 }
    lowerValue := 19
    upperValue := 6859
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 42 41))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 43 40))) },
  { key := { q := 19, n := 45, r := 41 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 43 42)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 44 41))) },
  { key := { q := 19, n := 45, r := 42 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 45 42)) },
  { key := { q := 19, n := 45, r := 43 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 45 43)) },
  { key := { q := 19, n := 45, r := 44 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 45 44)) },
  { key := { q := 19, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 45 45)) },
  { key := { q := 19, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 45 46)) },
  { key := { q := 19, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 45 47)) },
  { key := { q := 19, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 45 48)) },
  { key := { q := 19, n := 46, r := 0 }
    lowerValue := 66476117046415807326862425861336332693125001052869591773081
    upperValue := 66476117046415807326862425861336332693125001052869591773081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 46 0)) },
  { key := { q := 19, n := 46, r := 1 }
    lowerValue := 80188319718233784471486641569766384430790109834583343514
    upperValue := 1754217405656985147421212870812345271534571393872196546279
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 1))
    upperTrace := (.lengthenFreeN 43 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 46, r := 2 }
    lowerValue := 197746124855105043376582688651649416493266782638701343
    upperValue := 92327231876683428811642782674333961659714283888010344541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 2))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 3 }
    lowerValue := 748049537032531414000774423472648698615697823322925
    upperValue := 4859327993509654147981199088122840087353383362526860239
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 3))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 4 }
    lowerValue := 3860541919735921211537478274152675737948810752116
    upperValue := 255754104921560744630589425690675794071230703290887381
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 4))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 5 }
    lowerValue := 25495640862523308503890348923836239055552743260
    upperValue := 13460742364292670770031022404772410214275300173204599
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 5))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 6 }
    lowerValue := 206965819708367750543401458381074555093084751
    upperValue := 708460124436456356317422231830126853382910535431821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 6))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 7 }
    lowerValue := 2008944284505308735943164153303684867128283
    upperValue := 37287374970339808227232749043690887020153186075359
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 7))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 8 }
    lowerValue := 22855340975396907208970423565520600764157
    upperValue := 1962493419491568854064881528615309843165957161861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 8))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 9 }
    lowerValue := 300193495229784558762440516971426306952
    upperValue := 103289127341661518634993764663963675956103008519
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 9))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 10 }
    lowerValue := 4498949499975693641565506536452626331
    upperValue := 5436269860087448349210198140208614524005421501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 10))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 11 }
    lowerValue := 76219495644939285978241503919628224
    upperValue := 286119466320392018379484112642558659158180079
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 11))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 12 }
    lowerValue := 1448748854246360983571452354585754
    upperValue := 15058919280020632546288637507503087324114741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 12))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 13 }
    lowerValue := 30705473542282671801724599501915
    upperValue := 792574698948454344541507237237004596006039
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 13))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 14 }
    lowerValue := 721983645465151488102115092844
    upperValue := 41714457839392333923237223012473926105581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 14))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 15 }
    lowerValue := 18754237788683421933272392346
    upperValue := 2195497781020649153854590684867048742399
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 15))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 16 }
    lowerValue := 536309041912672510835103535
    upperValue := 115552514790560481781820562361423618021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 16))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 17 }
    lowerValue := 16835236949291173923837532
    upperValue := 6081711304766341146411608545338085159
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 17))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 46, r := 18 }
    lowerValue := 578736056488345269539845
    upperValue := 33600614943460448322716069311260139
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 18))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 46, r := 19 }
    lowerValue := 21745194460788482288150
    upperValue := 1768453418076865701195582595329481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 19))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 46, r := 20 }
    lowerValue := 891672968132616553017
    upperValue := 93076495688256089536609610280499
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 20))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 46, r := 21 }
    lowerValue := 39856868838235868273
    upperValue := 4898762930960846817716295277921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 21))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 46, r := 22 }
    lowerValue := 1940427809117351264
    upperValue := 257829627945307727248226067259
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 22))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 46, r := 23 }
    lowerValue := 102841285741335798
    upperValue := 13569980418174090907801371961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 23))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 46, r := 24 }
    lowerValue := 5932319774729808
    upperValue := 714209495693373205673756419
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 24))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 46, r := 25 }
    lowerValue := 372486171956657
    upperValue := 37589973457545958193355601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 25))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 46, r := 26 }
    lowerValue := 25468091985444
    upperValue := 1978419655660313589123979
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 26))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 46, r := 27 }
    lowerValue := 1897532435160
    upperValue := 104127350297911241532841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 27))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 46, r := 28 }
    lowerValue := 154217707098
    upperValue := 5480386857784802185939
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 28))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) },
  { key := { q := 19, n := 46, r := 29 }
    lowerValue := 13690715498
    upperValue := 288441413567621167681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 29))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 46, r := 30 }
    lowerValue := 1329906799
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 30))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 46, r := 31 }
    lowerValue := 141662298
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 31))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31))) },
  { key := { q := 19, n := 46, r := 32 }
    lowerValue := 16590552
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 32))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 32))) },
  { key := { q := 19, n := 46, r := 33 }
    lowerValue := 2142917
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 33))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 35 33))) },
  { key := { q := 19, n := 46, r := 34 }
    lowerValue := 306421
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 34))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 36 34))) },
  { key := { q := 19, n := 46, r := 35 }
    lowerValue := 48724
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 35))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 37 35))) },
  { key := { q := 19, n := 46, r := 36 }
    lowerValue := 8662
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 36))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 39 36))) },
  { key := { q := 19, n := 46, r := 37 }
    lowerValue := 1733
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 37))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 40 37))) },
  { key := { q := 19, n := 46, r := 38 }
    lowerValue := 393
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 38))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 41 38))) },
  { key := { q := 19, n := 46, r := 39 }
    lowerValue := 102
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 39))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 42 39))) },
  { key := { q := 19, n := 46, r := 40 }
    lowerValue := 31
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 40))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 43 40))) },
  { key := { q := 19, n := 46, r := 41 }
    lowerValue := 19
    upperValue := 6859
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 43 42))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 44 41))) },
  { key := { q := 19, n := 46, r := 42 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 44 43)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 45 42))) },
  { key := { q := 19, n := 46, r := 43 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 46 43)) },
  { key := { q := 19, n := 46, r := 44 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 46 44)) },
  { key := { q := 19, n := 46, r := 45 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 46 45)) },
  { key := { q := 19, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 46 46)) },
  { key := { q := 19, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 46 47)) },
  { key := { q := 19, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 46 48)) },
  { key := { q := 19, n := 47, r := 0 }
    lowerValue := 1263046223881900339210386091365390321169375020004522243688539
    upperValue := 1263046223881900339210386091365390321169375020004522243688539
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 47 0)) },
  { key := { q := 19, n := 47, r := 1 }
    lowerValue := 1491199792068359314297976495118524582254279834716082932336
    upperValue := 33330130707482717801003044545434560159156856483571734379301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 1))
    upperTrace := (.lengthenFreeN 44 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 47, r := 2 }
    lowerValue := 3597489607770920756186817922890049363752915967667989905
    upperValue := 1754217405656985147421212870812345271534571393872196546279
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 2))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 3 }
    lowerValue := 13306853459134303171246226255633361089550308342693766
    upperValue := 92327231876683428811642782674333961659714283888010344541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 3))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 4 }
    lowerValue := 67115618642309998181247969806732087491381939700228
    upperValue := 4859327993509654147981199088122840087353383362526860239
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 4))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 5 }
    lowerValue := 432950257701072678072995577402994622243140988021
    upperValue := 255754104921560744630589425690675794071230703290887381
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 5))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 6 }
    lowerValue := 3431015711258144314527862870222780347115354046
    upperValue := 13460742364292670770031022404772410214275300173204599
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 6))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 7 }
    lowerValue := 32492808955631439484587098092743702597141910
    upperValue := 708460124436456356317422231830126853382910535431821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 7))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 8 }
    lowerValue := 360439803377963796607554636777481958882284
    upperValue := 37287374970339808227232749043690887020153186075359
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 8))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 9 }
    lowerValue := 4613053595541533011924817567678038440357
    upperValue := 1962493419491568854064881528615309843165957161861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 9))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 10 }
    lowerValue := 67319682520755292631243581050581302353
    upperValue := 103289127341661518634993764663963675956103008519
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 10))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 11 }
    lowerValue := 1109752355981072759730101624008487570
    upperValue := 5436269860087448349210198140208614524005421501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 11))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 12 }
    lowerValue := 20509259753884453129293402607945518
    upperValue := 286119466320392018379484112642558659158180079
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 12))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 13 }
    lowerValue := 422297324398033582849166472156502
    upperValue := 15058919280020632546288637507503087324114741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 13))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 14 }
    lowerValue := 9638370241763335944153881017346
    upperValue := 792574698948454344541507237237004596006039
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 14))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 15 }
    lowerValue := 242803450880498445827576634272
    upperValue := 41714457839392333923237223012473926105581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 15))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 16 }
    lowerValue := 6727140963087104020371966494
    upperValue := 2195497781020649153854590684867048742399
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 16))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 17 }
    lowerValue := 204384671616037487679083804
    upperValue := 115552514790560481781820562361423618021
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 17))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 47, r := 18 }
    lowerValue := 6792775324420492772922582
    upperValue := 638411683925748518131605316913942641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 18))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 47, r := 19 }
    lowerValue := 246466982368541136303052
    upperValue := 33600614943460448322716069311260139
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 19))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 47, r := 20 }
    lowerValue := 9747306220171719126008
    upperValue := 1768453418076865701195582595329481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 20))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 47, r := 21 }
    lowerValue := 419643267645705678436
    upperValue := 93076495688256089536609610280499
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 21))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 47, r := 22 }
    lowerValue := 19649082272270429772
    upperValue := 4898762930960846817716295277921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 22))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 47, r := 23 }
    lowerValue := 999998621235920801
    upperValue := 257829627945307727248226067259
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 23))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 47, r := 24 }
    lowerValue := 55297644643066842
    upperValue := 13569980418174090907801371961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 24))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 47, r := 25 }
    lowerValue := 3322323267994229
    upperValue := 714209495693373205673756419
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 25))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 47, r := 26 }
    lowerValue := 216922811441190
    upperValue := 37589973457545958193355601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 26))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 47, r := 27 }
    lowerValue := 15399991175889
    upperValue := 1978419655660313589123979
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 27))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 47, r := 28 }
    lowerValue := 1189705151666
    upperValue := 104127350297911241532841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 28))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) },
  { key := { q := 19, n := 47, r := 29 }
    lowerValue := 100126308798
    upperValue := 5480386857784802185939
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 29))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 47, r := 30 }
    lowerValue := 9193435611
    upperValue := 288441413567621167681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 30))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 47, r := 31 }
    lowerValue := 922606687
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 31))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31))) },
  { key := { q := 19, n := 47, r := 32 }
    lowerValue := 101420953
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 32))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 32))) },
  { key := { q := 19, n := 47, r := 33 }
    lowerValue := 12245356
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 33))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 35 33))) },
  { key := { q := 19, n := 47, r := 34 }
    lowerValue := 1629047
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 34))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 36 34))) },
  { key := { q := 19, n := 47, r := 35 }
    lowerValue := 239697
    upperValue := 116490258898219
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 35))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 37 35))) },
  { key := { q := 19, n := 47, r := 36 }
    lowerValue := 39185
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 36))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 39 36))) },
  { key := { q := 19, n := 47, r := 37 }
    lowerValue := 7155
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 37))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 40 37))) },
  { key := { q := 19, n := 47, r := 38 }
    lowerValue := 1469
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 38))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 41 38))) },
  { key := { q := 19, n := 47, r := 39 }
    lowerValue := 342
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 39))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 42 39))) },
  { key := { q := 19, n := 47, r := 40 }
    lowerValue := 91
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 40))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 43 40))) },
  { key := { q := 19, n := 47, r := 41 }
    lowerValue := 28
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 41))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 44 41))) },
  { key := { q := 19, n := 47, r := 42 }
    lowerValue := 19
    upperValue := 6859
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 44 43))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 45 42))) },
  { key := { q := 19, n := 47, r := 43 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 45 44)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 46 43))) },
  { key := { q := 19, n := 47, r := 44 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 47 44)) },
  { key := { q := 19, n := 47, r := 45 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 47 45)) },
  { key := { q := 19, n := 47, r := 46 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 47 46)) },
  { key := { q := 19, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 47 47)) },
  { key := { q := 19, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 47 48)) },
  { key := { q := 19, n := 48, r := 0 }
    lowerValue := 23997878253756106444997335735942416102218125380085922630082241
    upperValue := 23997878253756106444997335735942416102218125380085922630082241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 19 48 0)) },
  { key := { q := 19, n := 48, r := 1 }
    lowerValue := 27743211854053302248551833220742677574818642057902800728419
    upperValue := 633272483442171638219057846363256643023980273187862953206719
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 1))
    upperTrace := (.lengthenFreeN 45 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))) },
  { key := { q := 19, n := 48, r := 2 }
    lowerValue := 65507656212056402833995298689300878978148877618383954201
    upperValue := 33330130707482717801003044545434560159156856483571734379301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 2))
    upperTrace := (.lengthenFreeN 43 (.lengthenDummyN 1 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 3 }
    lowerValue := 237047432651128273616882364520352673035681443854820569
    upperValue := 1754217405656985147421212870812345271534571393872196546279
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 3))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 2 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 4 }
    lowerValue := 1169061853434441904746882219429352211100700492291805
    upperValue := 92327231876683428811642782674333961659714283888010344541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 4))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 3 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 5 }
    lowerValue := 7370259953325109785972609587261074151691782979207
    upperValue := 4859327993509654147981199088122840087353383362526860239
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 5))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 4 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 6 }
    lowerValue := 57051215574749154752409281100231178475341702987
    upperValue := 255754104921560744630589425690675794071230703290887381
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 6))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 5 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 7 }
    lowerValue := 527451047877076469991064456518257967458889674
    upperValue := 13460742364292670770031022404772410214275300173204599
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 7))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 6 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 8 }
    lowerValue := 5708522080462023882009974137923797191792714
    upperValue := 708460124436456356317422231830126853382910535431821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 8))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 7 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 9 }
    lowerValue := 71237050584736562469900027372327480458132
    upperValue := 37287374970339808227232749043690887020153186075359
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 9))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 8 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 10 }
    lowerValue := 1012983927914820594971974115080540864951
    upperValue := 1962493419491568854064881528615309843165957161861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 10))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 9 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 11 }
    lowerValue := 16260400846768214573054018442546755204
    upperValue := 103289127341661518634993764663963675956103008519
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 11))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 10 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 12 }
    lowerValue := 292405316362182264892189484966550985
    upperValue := 5436269860087448349210198140208614524005421501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 12))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 11 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 13 }
    lowerValue := 5853985222798730666289383968421752
    upperValue := 286119466320392018379484112642558659158180079
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 13))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 12 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 14 }
    lowerValue := 129802719740480494245178744519897
    upperValue := 15058919280020632546288637507503087324114741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 14))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 13 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 15 }
    lowerValue := 3174023389005376723753034638215
    upperValue := 792574698948454344541507237237004596006039
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 15))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 14 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 16 }
    lowerValue := 85283789620336764039692665078
    upperValue := 41714457839392333923237223012473926105581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 16))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 15 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 17 }
    lowerValue := 2510417271607347271127598003
    upperValue := 2195497781020649153854590684867048742399
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 17))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 16 (by decide : 0 < 19) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 19 3 1))))) },
  { key := { q := 19, n := 48, r := 18 }
    lowerValue := 80753314692919289425984622
    upperValue := 12129821994589221844500501021364910179
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 18))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 20 18))) },
  { key := { q := 19, n := 48, r := 19 }
    lowerValue := 2832771318428984388226235
    upperValue := 638411683925748518131605316913942641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 19))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 21 19))) },
  { key := { q := 19, n := 48, r := 20 }
    lowerValue := 108185335483234651860703
    upperValue := 33600614943460448322716069311260139
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 20))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 22 20))) },
  { key := { q := 19, n := 48, r := 21 }
    lowerValue := 4492107603557313389608
    upperValue := 1768453418076865701195582595329481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 21))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 23 21))) },
  { key := { q := 19, n := 48, r := 22 }
    lowerValue := 202587712144923099103
    upperValue := 93076495688256089536609610280499
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 22))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 24 22))) },
  { key := { q := 19, n := 48, r := 23 }
    lowerValue := 9916106104027296819
    upperValue := 4898762930960846817716295277921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 23))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 25 23))) },
  { key := { q := 19, n := 48, r := 24 }
    lowerValue := 526549488531556170
    upperValue := 257829627945307727248226067259
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 24))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 26 24))) },
  { key := { q := 19, n := 48, r := 25 }
    lowerValue := 30326956118242231
    upperValue := 13569980418174090907801371961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 25))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 27 25))) },
  { key := { q := 19, n := 48, r := 26 }
    lowerValue := 1894726949387323
    upperValue := 714209495693373205673756419
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 26))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 28 26))) },
  { key := { q := 19, n := 48, r := 27 }
    lowerValue := 128453083306181
    upperValue := 37589973457545958193355601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 27))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 29 27))) },
  { key := { q := 19, n := 48, r := 28 }
    lowerValue := 9455670699325
    upperValue := 1978419655660313589123979
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 28))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 30 28))) }]

end CoveringCodes.Database
