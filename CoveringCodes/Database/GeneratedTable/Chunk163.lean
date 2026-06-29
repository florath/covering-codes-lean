import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 163. Do not edit manually.

def precomputedTable_chunk_163 : Array AnyBoundEntry := #[
  { key := { q := 16, n := 47, r := 31 }
    lowerValue := 79832510
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 31))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 31))) },
  { key := { q := 16, n := 47, r := 32 }
    lowerValue := 10506103
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 32))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 32))) },
  { key := { q := 16, n := 47, r := 33 }
    lowerValue := 1518027
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 33))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 36 33))) },
  { key := { q := 16, n := 47, r := 34 }
    lowerValue := 241569
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 34))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 37 34))) },
  { key := { q := 16, n := 47, r := 35 }
    lowerValue := 42494
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 35))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 38 35))) },
  { key := { q := 16, n := 47, r := 36 }
    lowerValue := 8299
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 36))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 39 36))) },
  { key := { q := 16, n := 47, r := 37 }
    lowerValue := 1809
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 37))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 40 37))) },
  { key := { q := 16, n := 47, r := 38 }
    lowerValue := 443
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 38))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 41 38))) },
  { key := { q := 16, n := 47, r := 39 }
    lowerValue := 123
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 39))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 42 39))) },
  { key := { q := 16, n := 47, r := 40 }
    lowerValue := 39
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 40))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 43 40))) },
  { key := { q := 16, n := 47, r := 41 }
    lowerValue := 16
    upperValue := 65536
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 43 42)))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 44 41))) },
  { key := { q := 16, n := 47, r := 42 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 44 43))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 45 42))) },
  { key := { q := 16, n := 47, r := 43 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 45 44)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 46 43))) },
  { key := { q := 16, n := 47, r := 44 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 47 44)) },
  { key := { q := 16, n := 47, r := 45 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 47 45)) },
  { key := { q := 16, n := 47, r := 46 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 47 46)) },
  { key := { q := 16, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 47 47)) },
  { key := { q := 16, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 47 48)) },
  { key := { q := 16, n := 48, r := 0 }
    lowerValue := 6277101735386680763835789423207666416102355444464034512896
    upperValue := 6277101735386680763835789423207666416102355444464034512896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 48 0)) },
  { key := { q := 16, n := 48, r := 1 }
    lowerValue := 8706105042145188299356157313741562296951949298840547175
    upperValue := 98079714615416886934934209737619787751599303819750539264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 1))
    upperTrace := (.lengthenFreeN 38 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 48, r := 2 }
    lowerValue := 24662411885018056521213532176942831499571176619862544
    upperValue := 4022800794772958253190660946269561606999190195731955712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 2))
    upperTrace := (.lengthenFreeN 42 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 48, r := 3 }
    lowerValue := 107065667499725615862555861219962659745456574701314
    upperValue := 251425049673309890824416309141847600437449387233247232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 3))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 48, r := 4 }
    lowerValue := 633459386252088697059838062768991802495622782013
    upperValue := 15714065604581868176526019321365475027340586702077952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 4))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 48, r := 5 }
    lowerValue := 4790985505389591645310808566217540898965467055
    upperValue := 982129100286366761032876207585342189208786668879872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 5))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 48, r := 6 }
    lowerValue := 44489933829390093650180082724825118195666571
    upperValue := 61383068767897922564554762974083886825549166804992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 6))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 48, r := 7 }
    lowerValue := 493432116429047630486305666611729115538137
    upperValue := 3836441797993620160284672685880242926596822925312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 7))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 48, r := 8 }
    lowerValue := 6406346530668876320688437808621731701663
    upperValue := 239777612374601260017792042867515182912301432832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 8))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 48, r := 9 }
    lowerValue := 95901786866210971291376050875022209119
    upperValue := 14986100773412578751112002679219698932018839552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 9))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 48, r := 10 }
    lowerValue := 1635871852551996555456517067426022374
    upperValue := 936631298338286171944500167451231183251177472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 10))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 48, r := 11 }
    lowerValue := 31498884724401804144521095605326722
    upperValue := 58539456146142885746531260465701948953198592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 11))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 48, r := 12 }
    lowerValue := 679449039749473228758422842253546
    upperValue := 3658716009133930359158203779106371809574912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 12))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 48, r := 13 }
    lowerValue := 16316258765686791919761062059109
    upperValue := 228669750570870647447387736194148238098432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 13))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 48, r := 14 }
    lowerValue := 433949091996659993999779644635
    upperValue := 14291859410679415465461733512134264881152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 14))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 48, r := 15 }
    lowerValue := 12727372762806564083198721757
    upperValue := 340282366920938463463374607431768211456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 15))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 48, r := 16 }
    lowerValue := 410161782476665414095895234
    upperValue := 21267647932558653966460912964485513216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 16))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 48, r := 17 }
    lowerValue := 14480371861431522804957781
    upperValue := 1329227995784915872903807060280344576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 17))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 48, r := 18 }
    lowerValue := 558628044390007096024106
    upperValue := 83076749736557242056487941267521536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 18))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 48, r := 19 }
    lowerValue := 23500881905396911753494
    upperValue := 5192296858534827628530496329220096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 19))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 48, r := 20 }
    lowerValue := 1076294068339086958730
    upperValue := 324518553658426726783156020576256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 20))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 48, r := 21 }
    lowerValue := 53589521794336944612
    upperValue := 20282409603651670423947251286016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 21))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 48, r := 22 }
    lowerValue := 2897907630139268031
    upperValue := 1267650600228229401496703205376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 22))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 48, r := 23 }
    lowerValue := 170069186987528963
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 23))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 48, r := 24 }
    lowerValue := 10826903440755168
    upperValue := 4951760157141521099596496896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 24))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 48, r := 25 }
    lowerValue := 747545473488861
    upperValue := 309485009821345068724781056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 25))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 48, r := 26 }
    lowerValue := 55983107139272
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 26))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 48, r := 27 }
    lowerValue := 4548916826779
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 27))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 48, r := 28 }
    lowerValue := 401284866082
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 28))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 48, r := 29 }
    lowerValue := 38465788699
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 29))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 48, r := 30 }
    lowerValue := 4011297743
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 30))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30))) },
  { key := { q := 16, n := 48, r := 31 }
    lowerValue := 455756112
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 31))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 31))) },
  { key := { q := 16, n := 48, r := 32 }
    lowerValue := 56521892
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 32))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 32))) },
  { key := { q := 16, n := 48, r := 33 }
    lowerValue := 7668374
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 33))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 36 33))) },
  { key := { q := 16, n := 48, r := 34 }
    lowerValue := 1141157
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 34))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 37 34))) },
  { key := { q := 16, n := 48, r := 35 }
    lowerValue := 186857
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 35))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 38 35))) },
  { key := { q := 16, n := 48, r := 36 }
    lowerValue := 33792
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 36))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 39 36))) },
  { key := { q := 16, n := 48, r := 37 }
    lowerValue := 6779
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 37))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 40 37))) },
  { key := { q := 16, n := 48, r := 38 }
    lowerValue := 1517
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 38))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 41 38))) },
  { key := { q := 16, n := 48, r := 39 }
    lowerValue := 381
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 39))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 42 39))) },
  { key := { q := 16, n := 48, r := 40 }
    lowerValue := 108
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 40))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 43 40))) },
  { key := { q := 16, n := 48, r := 41 }
    lowerValue := 35
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 41))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 44 41))) },
  { key := { q := 16, n := 48, r := 42 }
    lowerValue := 16
    upperValue := 65536
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 44 43)))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 45 42))) },
  { key := { q := 16, n := 48, r := 43 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 45 44))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 46 43))) },
  { key := { q := 16, n := 48, r := 44 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 46 45)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 47 44))) },
  { key := { q := 16, n := 48, r := 45 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 48 45)) },
  { key := { q := 16, n := 48, r := 46 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 48 46)) },
  { key := { q := 16, n := 48, r := 47 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 48 47)) },
  { key := { q := 16, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 48 48)) },
  { key := { q := 17, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 0)) },
  { key := { q := 17, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 1)) },
  { key := { q := 17, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 2)) },
  { key := { q := 17, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 3)) },
  { key := { q := 17, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 4)) },
  { key := { q := 17, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 5)) },
  { key := { q := 17, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 6)) },
  { key := { q := 17, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 7)) },
  { key := { q := 17, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 8)) },
  { key := { q := 17, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 9)) },
  { key := { q := 17, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 10)) },
  { key := { q := 17, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 11)) },
  { key := { q := 17, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 12)) },
  { key := { q := 17, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 13)) },
  { key := { q := 17, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 14)) },
  { key := { q := 17, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 15)) },
  { key := { q := 17, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 16)) },
  { key := { q := 17, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 17)) },
  { key := { q := 17, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 18)) },
  { key := { q := 17, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 19)) },
  { key := { q := 17, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 20)) },
  { key := { q := 17, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 21)) },
  { key := { q := 17, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 22)) },
  { key := { q := 17, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 23)) },
  { key := { q := 17, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 24)) },
  { key := { q := 17, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 25)) },
  { key := { q := 17, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 26)) },
  { key := { q := 17, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 27)) },
  { key := { q := 17, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 28)) },
  { key := { q := 17, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 29)) },
  { key := { q := 17, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 30)) },
  { key := { q := 17, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 31)) },
  { key := { q := 17, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 32)) },
  { key := { q := 17, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 33)) },
  { key := { q := 17, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 34)) },
  { key := { q := 17, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 35)) },
  { key := { q := 17, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 36)) },
  { key := { q := 17, n := 0, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 37))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 37)) },
  { key := { q := 17, n := 0, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 38))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 38)) },
  { key := { q := 17, n := 0, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 39))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 39)) },
  { key := { q := 17, n := 0, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 40))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 40)) },
  { key := { q := 17, n := 0, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 41))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 41)) },
  { key := { q := 17, n := 0, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 42))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 42)) },
  { key := { q := 17, n := 0, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 43))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 43)) },
  { key := { q := 17, n := 0, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 44))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 44)) },
  { key := { q := 17, n := 0, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 45))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 45)) },
  { key := { q := 17, n := 0, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 46))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 46)) },
  { key := { q := 17, n := 0, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 47))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 47)) },
  { key := { q := 17, n := 0, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 0 48))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 0 48)) },
  { key := { q := 17, n := 1, r := 0 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 1 0)) },
  { key := { q := 17, n := 1, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 1))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 1)) },
  { key := { q := 17, n := 1, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 2)) },
  { key := { q := 17, n := 1, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 3)) },
  { key := { q := 17, n := 1, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 4)) },
  { key := { q := 17, n := 1, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 5)) },
  { key := { q := 17, n := 1, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 6)) },
  { key := { q := 17, n := 1, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 7)) },
  { key := { q := 17, n := 1, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 8)) },
  { key := { q := 17, n := 1, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 9)) },
  { key := { q := 17, n := 1, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 10)) },
  { key := { q := 17, n := 1, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 11)) },
  { key := { q := 17, n := 1, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 12)) },
  { key := { q := 17, n := 1, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 13)) },
  { key := { q := 17, n := 1, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 14)) },
  { key := { q := 17, n := 1, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 15)) },
  { key := { q := 17, n := 1, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 16)) },
  { key := { q := 17, n := 1, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 17)) },
  { key := { q := 17, n := 1, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 18)) },
  { key := { q := 17, n := 1, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 19)) },
  { key := { q := 17, n := 1, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 20)) },
  { key := { q := 17, n := 1, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 21)) },
  { key := { q := 17, n := 1, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 22)) },
  { key := { q := 17, n := 1, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 23)) },
  { key := { q := 17, n := 1, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 24)) },
  { key := { q := 17, n := 1, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 25)) },
  { key := { q := 17, n := 1, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 26)) },
  { key := { q := 17, n := 1, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 27)) },
  { key := { q := 17, n := 1, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 28)) },
  { key := { q := 17, n := 1, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 29)) },
  { key := { q := 17, n := 1, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 30)) },
  { key := { q := 17, n := 1, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 31)) },
  { key := { q := 17, n := 1, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 32)) },
  { key := { q := 17, n := 1, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 33)) },
  { key := { q := 17, n := 1, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 34)) },
  { key := { q := 17, n := 1, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 35)) },
  { key := { q := 17, n := 1, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 36)) },
  { key := { q := 17, n := 1, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 37)) },
  { key := { q := 17, n := 1, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 38)) },
  { key := { q := 17, n := 1, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 39)) },
  { key := { q := 17, n := 1, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 40)) },
  { key := { q := 17, n := 1, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 41)) },
  { key := { q := 17, n := 1, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 42)) },
  { key := { q := 17, n := 1, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 43)) },
  { key := { q := 17, n := 1, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 44)) },
  { key := { q := 17, n := 1, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 45)) },
  { key := { q := 17, n := 1, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 46)) },
  { key := { q := 17, n := 1, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 47)) },
  { key := { q := 17, n := 1, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 1 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 1 48)) },
  { key := { q := 17, n := 2, r := 0 }
    lowerValue := 289
    upperValue := 289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 2 0)) },
  { key := { q := 17, n := 2, r := 1 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 2 1))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 2 1)) },
  { key := { q := 17, n := 2, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 2)) },
  { key := { q := 17, n := 2, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 3)) },
  { key := { q := 17, n := 2, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 4)) },
  { key := { q := 17, n := 2, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 5)) },
  { key := { q := 17, n := 2, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 6)) },
  { key := { q := 17, n := 2, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 7)) },
  { key := { q := 17, n := 2, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 8)) },
  { key := { q := 17, n := 2, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 9)) },
  { key := { q := 17, n := 2, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 10)) },
  { key := { q := 17, n := 2, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 11)) },
  { key := { q := 17, n := 2, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 12)) },
  { key := { q := 17, n := 2, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 13)) },
  { key := { q := 17, n := 2, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 14)) },
  { key := { q := 17, n := 2, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 15)) },
  { key := { q := 17, n := 2, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 16)) },
  { key := { q := 17, n := 2, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 17)) },
  { key := { q := 17, n := 2, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 18)) },
  { key := { q := 17, n := 2, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 19)) },
  { key := { q := 17, n := 2, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 20)) },
  { key := { q := 17, n := 2, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 21)) },
  { key := { q := 17, n := 2, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 22)) },
  { key := { q := 17, n := 2, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 23)) },
  { key := { q := 17, n := 2, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 24)) },
  { key := { q := 17, n := 2, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 25)) },
  { key := { q := 17, n := 2, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 26)) },
  { key := { q := 17, n := 2, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 27)) },
  { key := { q := 17, n := 2, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 28)) },
  { key := { q := 17, n := 2, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 29)) },
  { key := { q := 17, n := 2, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 30)) },
  { key := { q := 17, n := 2, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 31)) },
  { key := { q := 17, n := 2, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 32)) },
  { key := { q := 17, n := 2, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 33)) },
  { key := { q := 17, n := 2, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 34)) },
  { key := { q := 17, n := 2, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 35)) },
  { key := { q := 17, n := 2, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 36)) },
  { key := { q := 17, n := 2, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 37)) },
  { key := { q := 17, n := 2, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 38)) },
  { key := { q := 17, n := 2, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 39)) },
  { key := { q := 17, n := 2, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 40)) },
  { key := { q := 17, n := 2, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 41)) },
  { key := { q := 17, n := 2, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 42)) },
  { key := { q := 17, n := 2, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 43)) },
  { key := { q := 17, n := 2, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 44)) },
  { key := { q := 17, n := 2, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 45)) },
  { key := { q := 17, n := 2, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 46)) },
  { key := { q := 17, n := 2, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 47)) },
  { key := { q := 17, n := 2, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 2 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 2 48)) },
  { key := { q := 17, n := 3, r := 0 }
    lowerValue := 4913
    upperValue := 4913
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 3 0)) },
  { key := { q := 17, n := 3, r := 1 }
    lowerValue := 119
    upperValue := 145
    lowerTrace := (.primitive "lean_sparse_slicer" (primitiveLower_valid 17 3 1))
    upperTrace := (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1)) },
  { key := { q := 17, n := 3, r := 2 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 3 2))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 3 2)) },
  { key := { q := 17, n := 3, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 3)) },
  { key := { q := 17, n := 3, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 4)) },
  { key := { q := 17, n := 3, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 5)) },
  { key := { q := 17, n := 3, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 6)) },
  { key := { q := 17, n := 3, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 7)) },
  { key := { q := 17, n := 3, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 8)) },
  { key := { q := 17, n := 3, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 9)) },
  { key := { q := 17, n := 3, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 10)) },
  { key := { q := 17, n := 3, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 11)) },
  { key := { q := 17, n := 3, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 12)) },
  { key := { q := 17, n := 3, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 13)) },
  { key := { q := 17, n := 3, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 14)) },
  { key := { q := 17, n := 3, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 15)) },
  { key := { q := 17, n := 3, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 16)) },
  { key := { q := 17, n := 3, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 17)) },
  { key := { q := 17, n := 3, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 18)) },
  { key := { q := 17, n := 3, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 19)) },
  { key := { q := 17, n := 3, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 20)) },
  { key := { q := 17, n := 3, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 21)) },
  { key := { q := 17, n := 3, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 22)) },
  { key := { q := 17, n := 3, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 23)) },
  { key := { q := 17, n := 3, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 24)) },
  { key := { q := 17, n := 3, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 25)) },
  { key := { q := 17, n := 3, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 26)) },
  { key := { q := 17, n := 3, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 27)) },
  { key := { q := 17, n := 3, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 28)) },
  { key := { q := 17, n := 3, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 29)) },
  { key := { q := 17, n := 3, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 30)) },
  { key := { q := 17, n := 3, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 31)) },
  { key := { q := 17, n := 3, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 32)) },
  { key := { q := 17, n := 3, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 33)) },
  { key := { q := 17, n := 3, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 34)) },
  { key := { q := 17, n := 3, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 35)) }]

end CoveringCodes.Database
