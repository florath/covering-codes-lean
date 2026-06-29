import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 162. Do not edit manually.

def precomputedTable_chunk_162 : Array AnyBoundEntry := #[
  { key := { q := 16, n := 42, r := 26 }
    lowerValue := 533359210
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 42, r := 27 }
    lowerValue := 59316697
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 42, r := 28 }
    lowerValue := 7285243
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 42, r := 29 }
    lowerValue := 990921
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 42, r := 30 }
    lowerValue := 149779
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30))) },
  { key := { q := 16, n := 42, r := 31 }
    lowerValue := 25263
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 31))) },
  { key := { q := 16, n := 42, r := 32 }
    lowerValue := 4779
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 32))) },
  { key := { q := 16, n := 42, r := 33 }
    lowerValue := 1020
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 36 33))) },
  { key := { q := 16, n := 42, r := 34 }
    lowerValue := 248
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 37 34))) },
  { key := { q := 16, n := 42, r := 35 }
    lowerValue := 69
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 38 35))) },
  { key := { q := 16, n := 42, r := 36 }
    lowerValue := 23
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 39 36))) },
  { key := { q := 16, n := 42, r := 37 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 39 38))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 40 37))) },
  { key := { q := 16, n := 42, r := 38 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 40 39)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 41 38))) },
  { key := { q := 16, n := 42, r := 39 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 42 39)) },
  { key := { q := 16, n := 42, r := 40 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 42 40)) },
  { key := { q := 16, n := 42, r := 41 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 42 41)) },
  { key := { q := 16, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 42 42)) },
  { key := { q := 16, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 42 43)) },
  { key := { q := 16, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 42 44)) },
  { key := { q := 16, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 42 45)) },
  { key := { q := 16, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 42 46)) },
  { key := { q := 16, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 42 47)) },
  { key := { q := 16, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 42 48)) },
  { key := { q := 16, n := 43, r := 0 }
    lowerValue := 5986310706507378352962293074805895248510699696029696
    upperValue := 5986310706507378352962293074805895248510699696029696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 43 0)) },
  { key := { q := 16, n := 43, r := 1 }
    lowerValue := 9266734839794703332758967608058661375403559900975
    upperValue := 93536104789177786765035829293842113257979682750464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 1))
    upperTrace := (.lengthenFreeN 33 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 43, r := 2 }
    lowerValue := 29370431439878022151605050877023933983793130718
    upperValue := 3836441797993620160284672685880242926596822925312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 2))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 43, r := 3 }
    lowerValue := 143026022850754389733526987624181889853188749
    upperValue := 239777612374601260017792042867515182912301432832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 3))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 43, r := 4 }
    lowerValue := 951796499412573510973911487742736940128096
    upperValue := 14986100773412578751112002679219698932018839552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 4))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 43, r := 5 }
    lowerValue := 8119648005724300704674171648780289398465
    upperValue := 936631298338286171944500167451231183251177472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 5))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 43, r := 6 }
    lowerValue := 85299767569430941826588419509174403650
    upperValue := 58539456146142885746531260465701948953198592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 6))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 43, r := 7 }
    lowerValue := 1073590590080386509338650017340523646
    upperValue := 3658716009133930359158203779106371809574912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 7))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 43, r := 8 }
    lowerValue := 15869676643986791761895246289623677
    upperValue := 228669750570870647447387736194148238098432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 8))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 43, r := 9 }
    lowerValue := 271410802224071039416553586415078
    upperValue := 14291859410679415465461733512134264881152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 9))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 43, r := 10 }
    lowerValue := 5308480755341943463989021192596
    upperValue := 893241213167463466591358344508391555072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 10))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 43, r := 11 }
    lowerValue := 117652884536736605045763443121
    upperValue := 55827575822966466661959896531774472192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 11))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 43, r := 12 }
    lowerValue := 2933001754074623954038819967
    upperValue := 3489223488935404166372493533235904512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 12))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 43, r := 13 }
    lowerValue := 81750382149589382359563957
    upperValue := 218076468058462760398280845827244032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 13))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 43, r := 14 }
    lowerValue := 2535135156861668873723515
    upperValue := 13629779253653922524892552864202752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 14))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 43, r := 15 }
    lowerValue := 87115980382209002217818
    upperValue := 324518553658426726783156020576256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 15))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 43, r := 16 }
    lowerValue := 3306365346907817514870
    upperValue := 20282409603651670423947251286016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 16))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 43, r := 17 }
    lowerValue := 138229786427497782009
    upperValue := 1267650600228229401496703205376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 17))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 43, r := 18 }
    lowerValue := 6352225246572094868
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 43, r := 19 }
    lowerValue := 320336471759193901
    upperValue := 4951760157141521099596496896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 43, r := 20 }
    lowerValue := 17705701682076183
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 43, r := 21 }
    lowerValue := 1071739446650206
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 43, r := 22 }
    lowerValue := 71013563315353
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 43, r := 23 }
    lowerValue := 5150322910848
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 43, r := 24 }
    lowerValue := 408969158320
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 43, r := 25 }
    lowerValue := 35578729067
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 43, r := 26 }
    lowerValue := 3394530101
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 43, r := 27 }
    lowerValue := 355695501
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 43, r := 28 }
    lowerValue := 41010531
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 28))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 43, r := 29 }
    lowerValue := 5214920
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 29))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 43, r := 30 }
    lowerValue := 733476
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30))) },
  { key := { q := 16, n := 43, r := 31 }
    lowerValue := 114506
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 31))) },
  { key := { q := 16, n := 43, r := 32 }
    lowerValue := 19925
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 32))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 32))) },
  { key := { q := 16, n := 43, r := 33 }
    lowerValue := 3885
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 33))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 36 33))) },
  { key := { q := 16, n := 43, r := 34 }
    lowerValue := 854
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 34))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 37 34))) },
  { key := { q := 16, n := 43, r := 35 }
    lowerValue := 213
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 35))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 38 35))) },
  { key := { q := 16, n := 43, r := 36 }
    lowerValue := 61
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 36))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 39 36))) },
  { key := { q := 16, n := 43, r := 37 }
    lowerValue := 21
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 37))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 40 37))) },
  { key := { q := 16, n := 43, r := 38 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 40 39))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 41 38))) },
  { key := { q := 16, n := 43, r := 39 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 41 40)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 42 39))) },
  { key := { q := 16, n := 43, r := 40 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 43 40)) },
  { key := { q := 16, n := 43, r := 41 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 43 41)) },
  { key := { q := 16, n := 43, r := 42 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 43 42)) },
  { key := { q := 16, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 43 43)) },
  { key := { q := 16, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 43 44)) },
  { key := { q := 16, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 43 45)) },
  { key := { q := 16, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 43 46)) },
  { key := { q := 16, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 43 47)) },
  { key := { q := 16, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 43 48)) },
  { key := { q := 16, n := 44, r := 0 }
    lowerValue := 95780971304118053647396689196894323976171195136475136
    upperValue := 95780971304118053647396689196894323976171195136475136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 44 0)) },
  { key := { q := 16, n := 44, r := 1 }
    lowerValue := 144903133591706586455970785471852229918564591734456
    upperValue := 1496577676626844588240573268701473812127674924007424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 1))
    upperTrace := (.lengthenFreeN 34 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 44, r := 2 }
    lowerValue := 448599703547442771788791627583095596836562027889
    upperValue := 61383068767897922564554762974083886825549166804992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 2))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 44, r := 3 }
    lowerValue := 2132635995839020738737276520458955266469167795
    upperValue := 3836441797993620160284672685880242926596822925312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 3))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 44, r := 4 }
    lowerValue := 13846570609908221238560689828159698343043902
    upperValue := 239777612374601260017792042867515182912301432832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 4))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 44, r := 5 }
    lowerValue := 115176091725804834101790882443514246559042
    upperValue := 14986100773412578751112002679219698932018839552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 5))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 44, r := 6 }
    lowerValue := 1179007874538744754346536917812610912415
    upperValue := 936631298338286171944500167451231183251177472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 6))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 44, r := 7 }
    lowerValue := 14449507345026983998411023701310705059
    upperValue := 58539456146142885746531260465701948953198592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 7))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 44, r := 8 }
    lowerValue := 207832525404988298038623093247195747
    upperValue := 3658716009133930359158203779106371809574912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 8))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 44, r := 9 }
    lowerValue := 3455984365491226201916182729380024
    upperValue := 228669750570870647447387736194148238098432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 9))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 44, r := 10 }
    lowerValue := 65669424496145332678297382055097
    upperValue := 14291859410679415465461733512134264881152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 10))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 44, r := 11 }
    lowerValue := 1412772803786585990191275557173
    upperValue := 893241213167463466591358344508391555072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 11))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 44, r := 12 }
    lowerValue := 34155825698778178322937216956
    upperValue := 55827575822966466661959896531774472192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 12))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 44, r := 13 }
    lowerValue := 922372380280791477784936589
    upperValue := 3489223488935404166372493533235904512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 13))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 44, r := 14 }
    lowerValue := 27684454854729515926952864
    upperValue := 218076468058462760398280845827244032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 14))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 44, r := 15 }
    lowerValue := 919762532576594226066954
    upperValue := 5192296858534827628530496329220096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 15))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 44, r := 16 }
    lowerValue := 33710386235460903020257
    upperValue := 324518553658426726783156020576256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 16))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 44, r := 17 }
    lowerValue := 1359268802935635011748
    upperValue := 20282409603651670423947251286016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 17))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 44, r := 18 }
    lowerValue := 60163921889298628324
    upperValue := 1267650600228229401496703205376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 18))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 44, r := 19 }
    lowerValue := 2918060062575206413
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 44, r := 20 }
    lowerValue := 154881558596289432
    upperValue := 4951760157141521099596496896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 44, r := 21 }
    lowerValue := 8987515237605499
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 44, r := 22 }
    lowerValue := 569846108147601
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 44, r := 23 }
    lowerValue := 39468182286799
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 44, r := 24 }
    lowerValue := 2986405747324
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 24))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 44, r := 25 }
    lowerValue := 246973556243
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 25))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 44, r := 26 }
    lowerValue := 22340384107
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 26))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 44, r := 27 }
    lowerValue := 2212919598
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 27))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 44, r := 28 }
    lowerValue := 240403099
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 28))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 44, r := 29 }
    lowerValue := 28698666
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 29))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 44, r := 30 }
    lowerValue := 3773822
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 30))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30))) },
  { key := { q := 16, n := 44, r := 31 }
    lowerValue := 548250
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 31))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 31))) },
  { key := { q := 16, n := 44, r := 32 }
    lowerValue := 88307
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 32))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 32))) },
  { key := { q := 16, n := 44, r := 33 }
    lowerValue := 15837
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 33))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 36 33))) },
  { key := { q := 16, n := 44, r := 34 }
    lowerValue := 3179
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 34))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 37 34))) },
  { key := { q := 16, n := 44, r := 35 }
    lowerValue := 719
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 35))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 38 35))) },
  { key := { q := 16, n := 44, r := 36 }
    lowerValue := 185
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 36))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 39 36))) },
  { key := { q := 16, n := 44, r := 37 }
    lowerValue := 54
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 37))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 40 37))) },
  { key := { q := 16, n := 44, r := 38 }
    lowerValue := 19
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 38))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 41 38))) },
  { key := { q := 16, n := 44, r := 39 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 41 40))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 42 39))) },
  { key := { q := 16, n := 44, r := 40 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 42 41)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 43 40))) },
  { key := { q := 16, n := 44, r := 41 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 44 41)) },
  { key := { q := 16, n := 44, r := 42 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 44 42)) },
  { key := { q := 16, n := 44, r := 43 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 44 43)) },
  { key := { q := 16, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 44 44)) },
  { key := { q := 16, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 44 45)) },
  { key := { q := 16, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 44 46)) },
  { key := { q := 16, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 44 47)) },
  { key := { q := 16, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 44 48)) },
  { key := { q := 16, n := 45, r := 0 }
    lowerValue := 1532495540865888858358347027150309183618739122183602176
    upperValue := 1532495540865888858358347027150309183618739122183602176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 45 0)) },
  { key := { q := 16, n := 45, r := 1 }
    lowerValue := 2267005237967291210589270750222350863341330062401779
    upperValue := 23945242826029513411849172299223580994042798784118784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 1))
    upperTrace := (.lengthenFreeN 35 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 45, r := 2 }
    lowerValue := 6859074328260313743066371089981959054088329568554
    upperValue := 982129100286366761032876207585342189208786668879872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 2))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 45, r := 3 }
    lowerValue := 31850895989944707480901399546997036488798950287
    upperValue := 61383068767897922564554762974083886825549166804992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 3))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 45, r := 4 }
    lowerValue := 201883580028738857181825486170632682447330439
    upperValue := 3836441797993620160284672685880242926596822925312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 4))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 45, r := 5 }
    lowerValue := 1638394431111305947434696131907771435867594
    upperValue := 239777612374601260017792042867515182912301432832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 5))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 45, r := 6 }
    lowerValue := 16353127509572452920093778070576995158290
    upperValue := 14986100773412578751112002679219698932018839552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 6))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 45, r := 7 }
    lowerValue := 195290870447879452287524637239617016715
    upperValue := 936631298338286171944500167451231183251177472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 7))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 45, r := 8 }
    lowerValue := 2735199789125263130644235847710076865
    upperValue := 58539456146142885746531260465701948953198592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 8))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 45, r := 9 }
    lowerValue := 44256764153663166497885329890305618
    upperValue := 3658716009133930359158203779106371809574912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 9))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 45, r := 10 }
    lowerValue := 817657966416068048766242991605929
    upperValue := 228669750570870647447387736194148238098432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 10))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 45, r := 11 }
    lowerValue := 17089549379044405517030650082697
    upperValue := 14291859410679415465461733512134264881152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 11))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 45, r := 12 }
    lowerValue := 401052755584451647956986320433
    upperValue := 893241213167463466591358344508391555072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 12))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 45, r := 13 }
    lowerValue := 10503342770460803202821510852
    upperValue := 55827575822966466661959896531774472192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 13))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 45, r := 14 }
    lowerValue := 305438135627858179750748303
    upperValue := 3489223488935404166372493533235904512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 14))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 45, r := 15 }
    lowerValue := 9821630178050739702902907
    upperValue := 83076749736557242056487941267521536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 15))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 45, r := 16 }
    lowerValue := 348030325135050160441446
    upperValue := 5192296858534827628530496329220096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 16))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 45, r := 17 }
    lowerValue := 13551783823787234907896
    upperValue := 324518553658426726783156020576256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 17))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 45, r := 18 }
    lowerValue := 578523715804097939305
    upperValue := 20282409603651670423947251286016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 18))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 45, r := 19 }
    lowerValue := 27026466455996543017
    upperValue := 1267650600228229401496703205376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 45, r := 20 }
    lowerValue := 1379673343331201658
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 20))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 45, r := 21 }
    lowerValue := 76881066951114155
    upperValue := 4951760157141521099596496896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 21))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 45, r := 22 }
    lowerValue := 4673113350537996
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 22))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 45, r := 23 }
    lowerValue := 309718815068656
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 23))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 45, r := 24 }
    lowerValue := 22380638155760
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 24))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 45, r := 25 }
    lowerValue := 1763711841422
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 25))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 45, r := 26 }
    lowerValue := 151662742627
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 26))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 45, r := 27 }
    lowerValue := 14243473269
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 27))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 45, r := 28 }
    lowerValue := 1462782829
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 28))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 45, r := 29 }
    lowerValue := 164541294
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 29))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 45, r := 30 }
    lowerValue := 20313442
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 30))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30))) },
  { key := { q := 16, n := 45, r := 31 }
    lowerValue := 2759222
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 31))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 31))) },
  { key := { q := 16, n := 45, r := 32 }
    lowerValue := 413609
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 32))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 32))) },
  { key := { q := 16, n := 45, r := 33 }
    lowerValue := 68668
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 33))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 36 33))) },
  { key := { q := 16, n := 45, r := 34 }
    lowerValue := 12681
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 34))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 37 34))) },
  { key := { q := 16, n := 45, r := 35 }
    lowerValue := 2618
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 35))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 38 35))) },
  { key := { q := 16, n := 45, r := 36 }
    lowerValue := 608
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 36))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 39 36))) },
  { key := { q := 16, n := 45, r := 37 }
    lowerValue := 160
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 37))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 40 37))) },
  { key := { q := 16, n := 45, r := 38 }
    lowerValue := 49
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 38))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 41 38))) },
  { key := { q := 16, n := 45, r := 39 }
    lowerValue := 17
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 39))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 42 39))) },
  { key := { q := 16, n := 45, r := 40 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 42 41))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 43 40))) },
  { key := { q := 16, n := 45, r := 41 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 43 42)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 44 41))) },
  { key := { q := 16, n := 45, r := 42 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 45 42)) },
  { key := { q := 16, n := 45, r := 43 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 45 43)) },
  { key := { q := 16, n := 45, r := 44 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 45 44)) },
  { key := { q := 16, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 45 45)) },
  { key := { q := 16, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 45 46)) },
  { key := { q := 16, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 45 47)) },
  { key := { q := 16, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 45 48)) },
  { key := { q := 16, n := 46, r := 0 }
    lowerValue := 24519928653854221733733552434404946937899825954937634816
    upperValue := 24519928653854221733733552434404946937899825954937634816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 46 0)) },
  { key := { q := 16, n := 46, r := 1 }
    lowerValue := 35484701380396847660974750266866782833429559992673857
    upperValue := 383123885216472214589586756787577295904684780545900544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 1))
    upperTrace := (.lengthenFreeN 36 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 46, r := 2 }
    lowerValue := 104980727733720754449421373121109009607133854905841
    upperValue := 15714065604581868176526019321365475027340586702077952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 2))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 46, r := 3 }
    lowerValue := 476429044602986008950704575601425353511570632870
    upperValue := 982129100286366761032876207585342189208786668879872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 3))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 46, r := 4 }
    lowerValue := 2949692508747055193521629865287995271803801691
    upperValue := 61383068767897922564554762974083886825549166804992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 4))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 46, r := 5 }
    lowerValue := 23369472307105004502044008407986558730566717
    upperValue := 3836441797993620160284672685880242926596822925312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 5))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 46, r := 6 }
    lowerValue := 227577607185079588046042893403874002915360
    upperValue := 239777612374601260017792042867515182912301432832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 6))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 46, r := 7 }
    lowerValue := 2649961835509028291632036671938083956741
    upperValue := 14986100773412578751112002679219698932018839552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 7))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 46, r := 8 }
    lowerValue := 36165342449681253436304680153300062644
    upperValue := 936631298338286171944500167451231183251177472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 8))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 46, r := 9 }
    lowerValue := 569811199778910637094161571930804691
    upperValue := 58539456146142885746531260465701948953198592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 9))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 46, r := 10 }
    lowerValue := 10243694229273531684410975205082599
    upperValue := 3658716009133930359158203779106371809574912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 10))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 46, r := 11 }
    lowerValue := 208169690683229251678006147811753
    upperValue := 228669750570870647447387736194148238098432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 11))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 46, r := 12 }
    lowerValue := 4746131004326349303126798672793
    upperValue := 14291859410679415465461733512134264881152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 12))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 46, r := 13 }
    lowerValue := 120655143967155406055101556027
    upperValue := 893241213167463466591358344508391555072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 13))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 46, r := 14 }
    lowerValue := 3402733366589343589658219460
    upperValue := 55827575822966466661959896531774472192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 14))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 46, r := 15 }
    lowerValue := 106012307127515379272729645
    upperValue := 1329227995784915872903807060280344576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 15))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 46, r := 16 }
    lowerValue := 3635905667819227371838583
    upperValue := 83076749736557242056487941267521536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 16))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 46, r := 17 }
    lowerValue := 136879989541501560609828
    upperValue := 5192296858534827628530496329220096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 17))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 46, r := 18 }
    lowerValue := 5642936899305754833287
    upperValue := 324518553658426726783156020576256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 18))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 46, r := 19 }
    lowerValue := 254255475641511485600
    upperValue := 20282409603651670423947251286016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 19))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 46, r := 20 }
    lowerValue := 12501750629154861690
    upperValue := 1267650600228229401496703205376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 20))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 46, r := 21 }
    lowerValue := 670038010337288069
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 21))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 46, r := 22 }
    lowerValue := 39110561788466994
    upperValue := 4951760157141521099596496896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 22))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 46, r := 23 }
    lowerValue := 2485017444770135
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 23))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 46, r := 24 }
    lowerValue := 171835137477015
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 24))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 46, r := 25 }
    lowerValue := 12932342141145
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 25))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 46, r := 26 }
    lowerValue := 1059717193205
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 26))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 46, r := 27 }
    lowerValue := 94612272994
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 27))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 46, r := 28 }
    lowerValue := 9212650068
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 28))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 46, r := 29 }
    lowerValue := 979676072
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 29))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 46, r := 30 }
    lowerValue := 113967408
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 30))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30))) },
  { key := { q := 16, n := 46, r := 31 }
    lowerValue := 14534244
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 31))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 31))) },
  { key := { q := 16, n := 46, r := 32 }
    lowerValue := 2037162
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 32))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 32))) },
  { key := { q := 16, n := 46, r := 33 }
    lowerValue := 314781
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 33))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 36 33))) },
  { key := { q := 16, n := 46, r := 34 }
    lowerValue := 53818
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 34))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 37 34))) },
  { key := { q := 16, n := 46, r := 35 }
    lowerValue := 10225
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 35))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 38 35))) },
  { key := { q := 16, n := 46, r := 36 }
    lowerValue := 2170
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 36))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 39 36))) },
  { key := { q := 16, n := 46, r := 37 }
    lowerValue := 518
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 37))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 40 37))) },
  { key := { q := 16, n := 46, r := 38 }
    lowerValue := 140
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 38))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 41 38))) },
  { key := { q := 16, n := 46, r := 39 }
    lowerValue := 44
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 39))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 42 39))) },
  { key := { q := 16, n := 46, r := 40 }
    lowerValue := 16
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 40))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 43 40))) },
  { key := { q := 16, n := 46, r := 41 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 43 42))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 44 41))) },
  { key := { q := 16, n := 46, r := 42 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 44 43)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 45 42))) },
  { key := { q := 16, n := 46, r := 43 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 46 43)) },
  { key := { q := 16, n := 46, r := 44 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 46 44)) },
  { key := { q := 16, n := 46, r := 45 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 46 45)) },
  { key := { q := 16, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 46 46)) },
  { key := { q := 16, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 46 47)) },
  { key := { q := 16, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 46 48)) },
  { key := { q := 16, n := 47, r := 0 }
    lowerValue := 392318858461667547739736838950479151006397215279002157056
    upperValue := 392318858461667547739736838950479151006397215279002157056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 47 0)) },
  { key := { q := 16, n := 47, r := 1 }
    lowerValue := 555692434081682078951468610411443556666285007477340166
    upperValue := 6129982163463555433433388108601236734474956488734408704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 1))
    upperTrace := (.lengthenFreeN 37 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 47, r := 2 }
    lowerValue := 1608318985539630255030057020019920186472392665462784
    upperValue := 251425049673309890824416309141847600437449387233247232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 2))
    upperTrace := (.lengthenFreeN 41 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 47, r := 3 }
    lowerValue := 7137020689446128102976433699964379392229349920145
    upperValue := 15714065604581868176526019321365475027340586702077952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 3))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 47, r := 4 }
    lowerValue := 43184580515229975954962858268225420214332525270
    upperValue := 982129100286366761032876207585342189208786668879872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 4))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 47, r := 5 }
    lowerValue := 334195672205672373815170613282363038015326311
    upperValue := 61383068767897922564554762974083886825549166804992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 5))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 47, r := 6 }
    lowerValue := 3177144607081316073125959095282554747669788
    upperValue := 3836441797993620160284672685880242926596822925312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 6))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 47, r := 7 }
    lowerValue := 36094933640736620522484701642055154920475
    upperValue := 239777612374601260017792042867515182912301432832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 7))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 47, r := 8 }
    lowerValue := 480318342348306605252350070993207668025
    upperValue := 14986100773412578751112002679219698932018839552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 8))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 47, r := 9 }
    lowerValue := 7374192847932440493863880743355868179
    upperValue := 936631298338286171944500167451231183251177472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 9))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 47, r := 10 }
    lowerValue := 129088952381369009156482878058066902
    upperValue := 58539456146142885746531260465701948953198592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 10))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 47, r := 11 }
    lowerValue := 2552612222612676433834992796109300
    upperValue := 3658716009133930359158203779106371809574912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 11))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 47, r := 12 }
    lowerValue := 56586183696075595469460572386717
    upperValue := 228669750570870647447387736194148238098432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 12))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 47, r := 13 }
    lowerValue := 1397556495153993463764381215957
    upperValue := 14291859410679415465461733512134264881152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 13))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 47, r := 14 }
    lowerValue := 38258963636448254319546046544
    upperValue := 893241213167463466591358344508391555072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 14))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 47, r := 15 }
    lowerValue := 1155978501217455284140869848
    upperValue := 21267647932558653966460912964485513216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 15))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 47, r := 16 }
    lowerValue := 38412816591103661167022628
    upperValue := 1329227995784915872903807060280344576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 16))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 47, r := 17 }
    lowerValue := 1399679380395524478571747
    upperValue := 83076749736557242056487941267521536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 17))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 47, r := 18 }
    lowerValue := 55788446847870390083911
    upperValue := 5192296858534827628530496329220096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 18))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 47, r := 19 }
    lowerValue := 2427463502937241317976
    upperValue := 324518553658426726783156020576256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 19))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 47, r := 20 }
    lowerValue := 115120686988116169342
    upperValue := 20282409603651670423947251286016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 20))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 47, r := 21 }
    lowerValue := 5942908100636962682
    upperValue := 1267650600228229401496703205376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 21))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 47, r := 22 }
    lowerValue := 333643826514543164
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 22))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 47, r := 23 }
    lowerValue := 20357793929125292
    upperValue := 4951760157141521099596496896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 23))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 47, r := 24 }
    lowerValue := 1349561079163157
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 24))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 47, r := 25 }
    lowerValue := 97194430136462
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 25))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 47, r := 26 }
    lowerValue := 7606259335432
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 26))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 47, r := 27 }
    lowerValue := 647139942913
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 27))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 47, r := 28 }
    lowerValue := 59905304820
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 28))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 47, r := 29 }
    lowerValue := 6040148351
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 29))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 47, r := 30 }
    lowerValue := 664296738
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 30))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30))) }]

end CoveringCodes.Database
