import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 161. Do not edit manually.

def precomputedTable_chunk_161 : Array AnyBoundEntry := #[
  { key := { q := 16, n := 37, r := 21 }
    lowerValue := 5102315223
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 37, r := 22 }
    lowerValue := 463064558
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 37, r := 23 }
    lowerValue := 46798872
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 37, r := 24 }
    lowerValue := 5278647
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 37, r := 25 }
    lowerValue := 666479
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 37, r := 26 }
    lowerValue := 94550
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 37, r := 27 }
    lowerValue := 15143
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 37, r := 28 }
    lowerValue := 2754
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 37, r := 29 }
    lowerValue := 573
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 37, r := 30 }
    lowerValue := 138
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30))) },
  { key := { q := 16, n := 37, r := 31 }
    lowerValue := 39
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 31))) },
  { key := { q := 16, n := 37, r := 32 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 34 33))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 32))) },
  { key := { q := 16, n := 37, r := 33 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 35 34)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 36 33))) },
  { key := { q := 16, n := 37, r := 34 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 36 35))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 37 34)) },
  { key := { q := 16, n := 37, r := 35 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 37 35)) },
  { key := { q := 16, n := 37, r := 36 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 37 36)) },
  { key := { q := 16, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 37 37)) },
  { key := { q := 16, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 37 38)) },
  { key := { q := 16, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 37 39)) },
  { key := { q := 16, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 37 40)) },
  { key := { q := 16, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 37 41)) },
  { key := { q := 16, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 37 42)) },
  { key := { q := 16, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 37 43)) },
  { key := { q := 16, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 37 44)) },
  { key := { q := 16, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 37 45)) },
  { key := { q := 16, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 37 46)) },
  { key := { q := 16, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 37 47)) },
  { key := { q := 16, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 37 48)) },
  { key := { q := 16, n := 38, r := 0 }
    lowerValue := 5708990770823839524233143877797980545530986496
    upperValue := 5708990770823839524233143877797980545530986496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 38 0)) },
  { key := { q := 16, n := 38, r := 1 }
    lowerValue := 9998232523334219832282213446231139309161098
    upperValue := 178405961588244985132285746181186892047843328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 1))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 38, r := 2 }
    lowerValue := 35963052743526385069438876430259537535000
    upperValue := 3658716009133930359158203779106371809574912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 2))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 38, r := 3 }
    lowerValue := 199404181536681156153291308701922454510
    upperValue := 228669750570870647447387736194148238098432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 38, r := 4 }
    lowerValue := 1516124977708283216418599554230221258
    upperValue := 14291859410679415465461733512134264881152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 38, r := 5 }
    lowerValue := 14831331861227737698661411919785592
    upperValue := 893241213167463466591358344508391555072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 38, r := 6 }
    lowerValue := 179354242574549622193003179125605
    upperValue := 55827575822966466661959896531774472192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 38, r := 7 }
    lowerValue := 2609085027448464955975840280349
    upperValue := 3489223488935404166372493533235904512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 38, r := 8 }
    lowerValue := 44768525599799157503139301010
    upperValue := 218076468058462760398280845827244032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 8))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 38, r := 9 }
    lowerValue := 892833709851929720098030222
    upperValue := 13629779253653922524892552864202752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 9))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 38, r := 10 }
    lowerValue := 20462600759821937750081238
    upperValue := 851861203353370157805784554012672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 10))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 38, r := 11 }
    lowerValue := 534177556251755160243675
    upperValue := 53241325209585634862861534625792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 11))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 38, r := 12 }
    lowerValue := 15771894113767692399301
    upperValue := 3327582825599102178928845914112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 12))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 38, r := 13 }
    lowerValue := 523735540143449693889
    upperValue := 207973926599943886183052869632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 13))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 38, r := 14 }
    lowerValue := 19472441556261628993
    upperValue := 12998370412496492886440804352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 14))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 38, r := 15 }
    lowerValue := 807727656085335165
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 15))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 38, r := 16 }
    lowerValue := 37277313979863079
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 16))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 38, r := 17 }
    lowerValue := 1910100115543808
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 17))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 38, r := 18 }
    lowerValue := 108508100913740
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 38, r := 19 }
    lowerValue := 6827624104270
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 38, r := 20 }
    lowerValue := 475681528546
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 38, r := 21 }
    lowerValue := 36699902710
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 38, r := 22 }
    lowerValue := 3137643732
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 38, r := 23 }
    lowerValue := 297613909
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 38, r := 24 }
    lowerValue := 31374822
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 38, r := 25 }
    lowerValue := 3684887
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 38, r := 26 }
    lowerValue := 483636
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 38, r := 27 }
    lowerValue := 71210
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 38, r := 28 }
    lowerValue := 11819
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 38, r := 29 }
    lowerValue := 2225
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 38, r := 30 }
    lowerValue := 478
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30))) },
  { key := { q := 16, n := 38, r := 31 }
    lowerValue := 119
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 31))) },
  { key := { q := 16, n := 38, r := 32 }
    lowerValue := 35
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 32))) },
  { key := { q := 16, n := 38, r := 33 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 35 34))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 36 33))) },
  { key := { q := 16, n := 38, r := 34 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 36 35)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 37 34))) },
  { key := { q := 16, n := 38, r := 35 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 37 36))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 38 35)) },
  { key := { q := 16, n := 38, r := 36 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 38 36)) },
  { key := { q := 16, n := 38, r := 37 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 38 37)) },
  { key := { q := 16, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 38 38)) },
  { key := { q := 16, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 38 39)) },
  { key := { q := 16, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 38 40)) },
  { key := { q := 16, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 38 41)) },
  { key := { q := 16, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 38 42)) },
  { key := { q := 16, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 38 43)) },
  { key := { q := 16, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 38 44)) },
  { key := { q := 16, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 38 45)) },
  { key := { q := 16, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 38 46)) },
  { key := { q := 16, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 38 47)) },
  { key := { q := 16, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 38 48)) },
  { key := { q := 16, n := 39, r := 0 }
    lowerValue := 91343852333181432387730302044767688728495783936
    upperValue := 91343852333181432387730302044767688728495783936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 39 0)) },
  { key := { q := 16, n := 39, r := 1 }
    lowerValue := 155876881114644082572918604171958513188559359
    upperValue := 2854495385411919762116571938898990272765493248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 1))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 39, r := 2 }
    lowerValue := 545952461781840000882968256987094026863122
    upperValue := 58539456146142885746531260465701948953198592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 2))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 39, r := 3 }
    lowerValue := 2945489281218110389590804567862245680223
    upperValue := 3658716009133930359158203779106371809574912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 39, r := 4 }
    lowerValue := 21774622729249368193315609063910206193
    upperValue := 228669750570870647447387736194148238098432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 39, r := 5 }
    lowerValue := 206936320524478933416656888380957885
    upperValue := 14291859410679415465461733512134264881152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 39, r := 6 }
    lowerValue := 2429052492692578271775801961838205
    upperValue := 893241213167463466591358344508391555072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 39, r := 7 }
    lowerValue := 34267882979892752474622597872117
    upperValue := 55827575822966466661959896531774472192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 7))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 39, r := 8 }
    lowerValue := 569673499416495551753869744696
    upperValue := 3489223488935404166372493533235904512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 8))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 39, r := 9 }
    lowerValue := 10995911988072722933697609136
    upperValue := 218076468058462760398280845827244032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 9))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 39, r := 10 }
    lowerValue := 243642142229571363045322845
    upperValue := 13629779253653922524892552864202752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 10))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 39, r := 11 }
    lowerValue := 6141842704556052844106456
    upperValue := 851861203353370157805784554012672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 11))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 39, r := 12 }
    lowerValue := 174893059913043804779201
    upperValue := 53241325209585634862861534625792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 12))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 39, r := 13 }
    lowerValue := 5593585189102154656877
    upperValue := 3327582825599102178928845914112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 13))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 39, r := 14 }
    lowerValue := 200012407660719771141
    upperValue := 207973926599943886183052869632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 14))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 39, r := 15 }
    lowerValue := 7966697287344490838
    upperValue := 4951760157141521099596496896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 15))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 39, r := 16 }
    lowerValue := 352449434530930317
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 16))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 39, r := 17 }
    lowerValue := 17280068138954882
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 17))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 39, r := 18 }
    lowerValue := 937377703792795
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 39, r := 19 }
    lowerValue := 56199042366874
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 39, r := 20 }
    lowerValue := 3721618850601
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 39, r := 21 }
    lowerValue := 272193410768
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 39, r := 22 }
    lowerValue := 21995215446
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 39, r := 23 }
    lowerValue := 1965429205
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 39, r := 24 }
    lowerValue := 194473167
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 39, r := 25 }
    lowerValue := 21348444
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 39, r := 26 }
    lowerValue := 2606561
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 39, r := 27 }
    lowerValue := 355098
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 39, r := 28 }
    lowerValue := 54191
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 39, r := 29 }
    lowerValue := 9309
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 39, r := 30 }
    lowerValue := 1811
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30))) },
  { key := { q := 16, n := 39, r := 31 }
    lowerValue := 402
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 31))) },
  { key := { q := 16, n := 39, r := 32 }
    lowerValue := 103
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 32))) },
  { key := { q := 16, n := 39, r := 33 }
    lowerValue := 31
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 36 33))) },
  { key := { q := 16, n := 39, r := 34 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 36 35))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 37 34))) },
  { key := { q := 16, n := 39, r := 35 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 37 36)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 38 35))) },
  { key := { q := 16, n := 39, r := 36 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 39 36)) },
  { key := { q := 16, n := 39, r := 37 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 39 37)) },
  { key := { q := 16, n := 39, r := 38 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 39 38)) },
  { key := { q := 16, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 39 39)) },
  { key := { q := 16, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 39 40)) },
  { key := { q := 16, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 39 41)) },
  { key := { q := 16, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 39 42)) },
  { key := { q := 16, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 39 43)) },
  { key := { q := 16, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 39 44)) },
  { key := { q := 16, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 39 45)) },
  { key := { q := 16, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 39 46)) },
  { key := { q := 16, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 39 47)) },
  { key := { q := 16, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 39 48)) },
  { key := { q := 16, n := 40, r := 0 }
    lowerValue := 1461501637330902918203684832716283019655932542976
    upperValue := 1461501637330902918203684832716283019655932542976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 40 0)) },
  { key := { q := 16, n := 40, r := 1 }
    lowerValue := 2431783090400836802335582084386494209078090754
    upperValue := 45671926166590716193865151022383844364247891968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 1))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 40, r := 2 }
    lowerValue := 8299223952907155088294131394576311432961384
    upperValue := 936631298338286171944500167451231183251177472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 2))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 40, r := 3 }
    lowerValue := 43599452098273947451895593546175079978905
    upperValue := 58539456146142885746531260465701948953198592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 40, r := 4 }
    lowerValue := 313617548841862625509365820256857141187
    upperValue := 3658716009133930359158203779106371809574912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 4))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 40, r := 5 }
    lowerValue := 2897878868586251737717682020393366224
    upperValue := 228669750570870647447387736194148238098432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 5))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 40, r := 6 }
    lowerValue := 33046297014410397100983682450568607
    upperValue := 14291859410679415465461733512134264881152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 6))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 40, r := 7 }
    lowerValue := 452525917309874438511109099152108
    upperValue := 893241213167463466591358344508391555072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 7))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 40, r := 8 }
    lowerValue := 7295545349122070266252069762565
    upperValue := 55827575822966466661959896531774472192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 8))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 40, r := 9 }
    lowerValue := 136432906255865820418694948369
    upperValue := 3489223488935404166372493533235904512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 9))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 40, r := 10 }
    lowerValue := 2925835415062617200381660531
    upperValue := 218076468058462760398280845827244032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 10))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 40, r := 11 }
    lowerValue := 71306557787577346565526330
    upperValue := 13629779253653922524892552864202752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 11))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 40, r := 12 }
    lowerValue := 1960773848106626126366466
    upperValue := 851861203353370157805784554012672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 12))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 40, r := 13 }
    lowerValue := 60481680571567796183917
    upperValue := 53241325209585634862861534625792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 13))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 40, r := 14 }
    lowerValue := 2082971773950252438660
    upperValue := 3327582825599102178928845914112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 14))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 40, r := 15 }
    lowerValue := 79793384004962030732
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 15))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 40, r := 16 }
    lowerValue := 3389741177668118841
    upperValue := 4951760157141521099596496896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 16))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 40, r := 17 }
    lowerValue := 159315836118120807
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 17))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 40, r := 18 }
    lowerValue := 8269340852411796
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 40, r := 19 }
    lowerValue := 473429018686019
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 40, r := 20 }
    lowerValue := 29872552377567
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 40, r := 21 }
    lowerValue := 2076745530947
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 40, r := 22 }
    lowerValue := 159089520538
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 40, r := 23 }
    lowerValue := 13436782959
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 40, r := 24 }
    lowerValue := 1252542430
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 40, r := 25 }
    lowerValue := 129060062
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 40, r := 26 }
    lowerValue := 14729240
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 40, r := 27 }
    lowerValue := 1866795
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 40, r := 28 }
    lowerValue := 263611
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 40, r := 29 }
    lowerValue := 41642
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 40, r := 30 }
    lowerValue := 7395
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30))) },
  { key := { q := 16, n := 40, r := 31 }
    lowerValue := 1486
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 31))) },
  { key := { q := 16, n := 40, r := 32 }
    lowerValue := 340
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 32))) },
  { key := { q := 16, n := 40, r := 33 }
    lowerValue := 90
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 36 33))) },
  { key := { q := 16, n := 40, r := 34 }
    lowerValue := 28
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 34))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 37 34))) },
  { key := { q := 16, n := 40, r := 35 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 37 36))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 38 35))) },
  { key := { q := 16, n := 40, r := 36 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 38 37)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 39 36))) },
  { key := { q := 16, n := 40, r := 37 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 40 37)) },
  { key := { q := 16, n := 40, r := 38 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 40 38)) },
  { key := { q := 16, n := 40, r := 39 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 40 39)) },
  { key := { q := 16, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 40 40)) },
  { key := { q := 16, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 40 41)) },
  { key := { q := 16, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 40 42)) },
  { key := { q := 16, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 40 43)) },
  { key := { q := 16, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 40 44)) },
  { key := { q := 16, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 40 45)) },
  { key := { q := 16, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 40 46)) },
  { key := { q := 16, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 40 47)) },
  { key := { q := 16, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 40 48)) },
  { key := { q := 16, n := 41, r := 0 }
    lowerValue := 23384026197294446691258957323460528314494920687616
    upperValue := 23384026197294446691258957323460528314494920687616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 41 0)) },
  { key := { q := 16, n := 41, r := 1 }
    lowerValue := 37961081489114361511784021628994364146907338779
    upperValue := 730750818665451459101842416358141509827966271488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 1))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 41, r := 2 }
    lowerValue := 126320934966693568850120774668102856125320992
    upperValue := 14986100773412578751112002679219698932018839552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 2))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 41, r := 3 }
    lowerValue := 646635359490985018651829760420554981821419
    upperValue := 936631298338286171944500167451231183251177472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 41, r := 4 }
    lowerValue := 4529193070715648711577539860126822600867
    upperValue := 58539456146142885746531260465701948953198592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 4))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 41, r := 5 }
    lowerValue := 40721903408264780707880976876769139221
    upperValue := 3658716009133930359158203779106371809574912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 5))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 41, r := 6 }
    lowerValue := 451508338453267455693982617138632227
    upperValue := 228669750570870647447387736194148238098432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 6))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 41, r := 7 }
    lowerValue := 6006621932211572377781152512145585
    upperValue := 14291859410679415465461733512134264881152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 7))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 41, r := 8 }
    lowerValue := 93997541552044802871820867086390
    upperValue := 893241213167463466591358344508391555072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 8))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 41, r := 9 }
    lowerValue := 1704728418760897864121885349118
    upperValue := 55827575822966466661959896531774472192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 9))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 41, r := 10 }
    lowerValue := 35419632691927904661639152640
    upperValue := 3489223488935404166372493533235904512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 10))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 41, r := 11 }
    lowerValue := 835478752960349635177650347
    upperValue := 218076468058462760398280845827244032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 11))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 41, r := 12 }
    lowerValue := 22211053269535014045017941
    upperValue := 13629779253653922524892552864202752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 12))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 41, r := 13 }
    lowerValue := 661595183041901493777126
    upperValue := 851861203353370157805784554012672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 13))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 41, r := 14 }
    lowerValue := 21975235853925888587318
    upperValue := 53241325209585634862861534625792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 14))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 41, r := 15 }
    lowerValue := 810799151033391494893
    upperValue := 1267650600228229401496703205376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 15))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 41, r := 16 }
    lowerValue := 33126754589174996421
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 16))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 41, r := 17 }
    lowerValue := 1495053726912044216
    upperValue := 4951760157141521099596496896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 41, r := 18 }
    lowerValue := 74390501820319443
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 41, r := 19 }
    lowerValue := 4075209622351636
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 41, r := 20 }
    lowerValue := 245552123064968
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 41, r := 21 }
    lowerValue := 16265851783905
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 41, r := 22 }
    lowerValue := 1184429886037
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 41, r := 23 }
    lowerValue := 94837793293
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 41, r := 24 }
    lowerValue := 8356335946
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 41, r := 25 }
    lowerValue := 811195609
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 41, r := 26 }
    lowerValue := 86901207
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 41, r := 27 }
    lowerValue := 10295613
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 41, r := 28 }
    lowerValue := 1352651
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 41, r := 29 }
    lowerValue := 197736
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 41, r := 30 }
    lowerValue := 32295
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30))) },
  { key := { q := 16, n := 41, r := 31 }
    lowerValue := 5923
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 31))) },
  { key := { q := 16, n := 41, r := 32 }
    lowerValue := 1227
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 32))) },
  { key := { q := 16, n := 41, r := 33 }
    lowerValue := 290
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 36 33))) },
  { key := { q := 16, n := 41, r := 34 }
    lowerValue := 79
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 37 34))) },
  { key := { q := 16, n := 41, r := 35 }
    lowerValue := 25
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 35))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 38 35))) },
  { key := { q := 16, n := 41, r := 36 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 38 37))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 39 36))) },
  { key := { q := 16, n := 41, r := 37 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 39 38)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 40 37))) },
  { key := { q := 16, n := 41, r := 38 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 41 38)) },
  { key := { q := 16, n := 41, r := 39 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 41 39)) },
  { key := { q := 16, n := 41, r := 40 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 41 40)) },
  { key := { q := 16, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 41 41)) },
  { key := { q := 16, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 41 42)) },
  { key := { q := 16, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 41 43)) },
  { key := { q := 16, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 41 44)) },
  { key := { q := 16, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 41 45)) },
  { key := { q := 16, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 41 46)) },
  { key := { q := 16, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 41 47)) },
  { key := { q := 16, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 41 48)) },
  { key := { q := 16, n := 42, r := 0 }
    lowerValue := 374144419156711147060143317175368453031918731001856
    upperValue := 374144419156711147060143317175368453031918731001856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 42 0)) },
  { key := { q := 16, n := 42, r := 1 }
    lowerValue := 592938857617608790903555177773959513521265817753
    upperValue := 11692013098647223345629478661730264157247460343808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 1))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 42, r := 2 }
    lowerValue := 1925046919862063157608426378271668757496134573
    upperValue := 239777612374601260017792042867515182912301432832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 2))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 42, r := 3 }
    lowerValue := 9608387441145948768647928259916996393877668
    upperValue := 14986100773412578751112002679219698932018839552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 3))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 42, r := 4 }
    lowerValue := 65577296474103805915845779682708377826714
    upperValue := 936631298338286171944500167451231183251177472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 4))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 42, r := 5 }
    lowerValue := 574121671268937366869972077348493902151
    upperValue := 58539456146142885746531260465701948953198592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 5))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 42, r := 6 }
    lowerValue := 6193986392281711947994926087624850395
    upperValue := 3658716009133930359158203779106371809574912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 6))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 42, r := 7 }
    lowerValue := 80118212540573128692139818591913407
    upperValue := 228669750570870647447387736194148238098432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 7))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 42, r := 8 }
    lowerValue := 1218043485913763250392315071805456
    upperValue := 14291859410679415465461733512134264881152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 8))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 42, r := 9 }
    lowerValue := 21442480049254572585551553205369
    upperValue := 893241213167463466591358344508391555072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 9))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 42, r := 10 }
    lowerValue := 432058932385305019757527886248
    upperValue := 55827575822966466661959896531774472192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 10))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 42, r := 11 }
    lowerValue := 9874029144407254431064667593
    upperValue := 3489223488935404166372493533235904512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 11))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 42, r := 12 }
    lowerValue := 254063400964893845779010592
    upperValue := 218076468058462760398280845827244032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 12))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 42, r := 13 }
    lowerValue := 7316500779746502721307200
    upperValue := 13629779253653922524892552864202752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 13))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 42, r := 14 }
    lowerValue := 234678971155987263453798
    upperValue := 851861203353370157805784554012672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 14))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 42, r := 15 }
    lowerValue := 8351002663239868810833
    upperValue := 20282409603651670423947251286016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 15))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 42, r := 16 }
    lowerValue := 328627481491003078096
    upperValue := 1267650600228229401496703205376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 16))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 42, r := 17 }
    lowerValue := 14264337044314224899
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 17))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 42, r := 18 }
    lowerValue := 681556965607007448
    upperValue := 4951760157141521099596496896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 42, r := 19 }
    lowerValue := 35792198039719730
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 42, r := 20 }
    lowerValue := 2063651427679653
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 42, r := 21 }
    lowerValue := 130542640236274
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 42, r := 22 }
    lowerValue := 9057635684945
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 42, r := 23 }
    lowerValue := 689398420924
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 42, r := 24 }
    lowerValue := 57588247163
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 42, r := 25 }
    lowerValue := 5284376398
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 42 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) }]

end CoveringCodes.Database
