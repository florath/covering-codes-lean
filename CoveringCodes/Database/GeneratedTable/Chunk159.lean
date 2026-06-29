import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 159. Do not edit manually.

def precomputedTable_chunk_159 : Array AnyBoundEntry := #[
  { key := { q := 16, n := 27, r := 11 }
    lowerValue := 2754232144654
    upperValue := 3026418949592973312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 11))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 27, r := 12 }
    lowerValue := 136736252593
    upperValue := 189151184349560832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 12))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 27, r := 13 }
    lowerValue := 7836590391
    upperValue := 11821949021847552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 13))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 27, r := 14 }
    lowerValue := 517597267
    upperValue := 738871813865472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 14))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 27, r := 15 }
    lowerValue := 39386871
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 15))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 27, r := 16 }
    lowerValue := 3456831
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 16))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 27, r := 17 }
    lowerValue := 350804
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 27, r := 18 }
    lowerValue := 41332
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 27, r := 19 }
    lowerValue := 5687
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 27, r := 20 }
    lowerValue := 921
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 27, r := 21 }
    lowerValue := 178
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 27, r := 22 }
    lowerValue := 42
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 27, r := 23 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 25 24)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 27, r := 24 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 26 25))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 27, r := 25 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25)) },
  { key := { q := 16, n := 27, r := 26 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 26)) },
  { key := { q := 16, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 27)) },
  { key := { q := 16, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 28)) },
  { key := { q := 16, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 29)) },
  { key := { q := 16, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 30)) },
  { key := { q := 16, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 31)) },
  { key := { q := 16, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 32)) },
  { key := { q := 16, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 33)) },
  { key := { q := 16, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 34)) },
  { key := { q := 16, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 35)) },
  { key := { q := 16, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 36)) },
  { key := { q := 16, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 37)) },
  { key := { q := 16, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 38)) },
  { key := { q := 16, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 39)) },
  { key := { q := 16, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 40)) },
  { key := { q := 16, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 41)) },
  { key := { q := 16, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 42)) },
  { key := { q := 16, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 43)) },
  { key := { q := 16, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 44)) },
  { key := { q := 16, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 45)) },
  { key := { q := 16, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 46)) },
  { key := { q := 16, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 47)) },
  { key := { q := 16, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 27 48)) },
  { key := { q := 16, n := 28, r := 0 }
    lowerValue := 5192296858534827628530496329220096
    upperValue := 5192296858534827628530496329220096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 28 0)) },
  { key := { q := 16, n := 28, r := 1 }
    lowerValue := 12333246694857072751853910520713
    upperValue := 81129638414606681695789005144064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 1))
    upperTrace := (.lengthenFreeN 18 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 28, r := 2 }
    lowerValue := 60749223228168941846129053472
    upperValue := 3327582825599102178928845914112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 2))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 28, r := 3 }
    lowerValue := 466012419035629120604469024
    upperValue := 207973926599943886183052869632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 3))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 28, r := 4 }
    lowerValue := 4955953170980716567188210
    upperValue := 12998370412496492886440804352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 4))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 28, r := 5 }
    lowerValue := 68609422403806139551576
    upperValue := 812398150781030805402550272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 5))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 28, r := 6 }
    lowerValue := 1188989448392807295539
    upperValue := 50774884423814425337659392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 6))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 28, r := 7 }
    lowerValue := 25123451678295956393
    upperValue := 3173430276488401583603712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 7))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 28, r := 8 }
    lowerValue := 635345065091582137
    upperValue := 198339392280525098975232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 8))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 28, r := 9 }
    lowerValue := 18970978236243744
    upperValue := 12396212017532818685952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 9))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 28, r := 10 }
    lowerValue := 662186192250807
    upperValue := 774763251095801167872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 10))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 28, r := 11 }
    lowerValue := 26821438950239
    upperValue := 48422703193487572992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 11))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 28, r := 12 }
    lowerValue := 1253966306831
    upperValue := 3026418949592973312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 12))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 28, r := 13 }
    lowerValue := 67423279933
    upperValue := 189151184349560832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 13))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 28, r := 14 }
    lowerValue := 4160056332
    upperValue := 11821949021847552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 14))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 28, r := 15 }
    lowerValue := 294284092
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 15))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 28, r := 16 }
    lowerValue := 23876325
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 16))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 28, r := 17 }
    lowerValue := 2225365
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 28, r := 18 }
    lowerValue := 238971
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 28, r := 19 }
    lowerValue := 29697
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 28, r := 20 }
    lowerValue := 4297
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 28, r := 21 }
    lowerValue := 730
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 28, r := 22 }
    lowerValue := 148
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 28, r := 23 }
    lowerValue := 36
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 28, r := 24 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 26 25)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 28, r := 25 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 27 26))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 28, r := 26 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26)) },
  { key := { q := 16, n := 28, r := 27 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 27)) },
  { key := { q := 16, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 28)) },
  { key := { q := 16, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 29)) },
  { key := { q := 16, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 30)) },
  { key := { q := 16, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 31)) },
  { key := { q := 16, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 32)) },
  { key := { q := 16, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 33)) },
  { key := { q := 16, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 34)) },
  { key := { q := 16, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 35)) },
  { key := { q := 16, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 36)) },
  { key := { q := 16, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 37)) },
  { key := { q := 16, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 38)) },
  { key := { q := 16, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 39)) },
  { key := { q := 16, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 40)) },
  { key := { q := 16, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 41)) },
  { key := { q := 16, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 42)) },
  { key := { q := 16, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 43)) },
  { key := { q := 16, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 44)) },
  { key := { q := 16, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 45)) },
  { key := { q := 16, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 46)) },
  { key := { q := 16, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 47)) },
  { key := { q := 16, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 28 48)) },
  { key := { q := 16, n := 29, r := 0 }
    lowerValue := 83076749736557242056487941267521536
    upperValue := 83076749736557242056487941267521536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 29 0)) },
  { key := { q := 16, n := 29, r := 1 }
    lowerValue := 190543003982929454257999865292481
    upperValue := 1298074214633706907132624082305024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 1))
    upperTrace := (.lengthenFreeN 19 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 29, r := 2 }
    lowerValue := 905113522068259234049723718950
    upperValue := 53241325209585634862861534625792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 2))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 29, r := 3 }
    lowerValue := 6686776321040702236896926351
    upperValue := 3327582825599102178928845914112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 3))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 29, r := 4 }
    lowerValue := 68386146426749571262867485
    upperValue := 207973926599943886183052869632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 4))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 29, r := 5 }
    lowerValue := 908991720338495151880588
    upperValue := 12998370412496492886440804352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 5))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 29, r := 6 }
    lowerValue := 15098908897146804101412
    upperValue := 812398150781030805402550272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 6))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 29, r := 7 }
    lowerValue := 305231651874875755969
    upperValue := 50774884423814425337659392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 7))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 29, r := 8 }
    lowerValue := 7369877093821072906
    upperValue := 3173430276488401583603712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 8))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 29, r := 9 }
    lowerValue := 209640000902506973
    upperValue := 198339392280525098975232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 9))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 29, r := 10 }
    lowerValue := 6954010140406140
    upperValue := 12396212017532818685952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 10))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 29, r := 11 }
    lowerValue := 266952098179593
    upperValue := 774763251095801167872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 11))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 29, r := 12 }
    lowerValue := 11793115985399
    upperValue := 48422703193487572992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 12))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 29, r := 13 }
    lowerValue := 597154938388
    upperValue := 3026418949592973312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 13))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 29, r := 14 }
    lowerValue := 34567953255
    upperValue := 189151184349560832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 14))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 29, r := 15 }
    lowerValue := 2284474992
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 15))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 29, r := 16 }
    lowerValue := 172314179
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 16))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 29, r := 17 }
    lowerValue := 14847784
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 29, r := 18 }
    lowerValue := 1464520
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 29, r := 19 }
    lowerValue := 165902
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 29, r := 20 }
    lowerValue := 21686
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 29, r := 21 }
    lowerValue := 3292
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 29, r := 22 }
    lowerValue := 585
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 29, r := 23 }
    lowerValue := 124
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 29, r := 24 }
    lowerValue := 32
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 29, r := 25 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 27 26)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 29, r := 26 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 28 27))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 29, r := 27 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27)) },
  { key := { q := 16, n := 29, r := 28 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 28)) },
  { key := { q := 16, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 29)) },
  { key := { q := 16, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 30)) },
  { key := { q := 16, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 31)) },
  { key := { q := 16, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 32)) },
  { key := { q := 16, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 33)) },
  { key := { q := 16, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 34)) },
  { key := { q := 16, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 35)) },
  { key := { q := 16, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 36)) },
  { key := { q := 16, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 37)) },
  { key := { q := 16, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 38)) },
  { key := { q := 16, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 39)) },
  { key := { q := 16, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 40)) },
  { key := { q := 16, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 41)) },
  { key := { q := 16, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 42)) },
  { key := { q := 16, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 43)) },
  { key := { q := 16, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 44)) },
  { key := { q := 16, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 45)) },
  { key := { q := 16, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 46)) },
  { key := { q := 16, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 47)) },
  { key := { q := 16, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 29 48)) },
  { key := { q := 16, n := 30, r := 0 }
    lowerValue := 1329227995784915872903807060280344576
    upperValue := 1329227995784915872903807060280344576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 30 0)) },
  { key := { q := 16, n := 30, r := 1 }
    lowerValue := 2947290456285844507547244036098326
    upperValue := 20769187434139310514121985316880384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 1))
    upperTrace := (.lengthenFreeN 20 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 30, r := 2 }
    lowerValue := 13518581003853669150619440028888
    upperValue := 851861203353370157805784554012672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 2))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 30, r := 3 }
    lowerValue := 96315104312228548704534573531
    upperValue := 53241325209585634862861534625792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 3))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 30, r := 4 }
    lowerValue := 948649703049183096744797632
    upperValue := 3327582825599102178928845914112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 4))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 30, r := 5 }
    lowerValue := 12126147994024906440257078
    upperValue := 207973926599943886183052869632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 5))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 30, r := 6 }
    lowerValue := 193396122640930796443419
    upperValue := 12998370412496492886440804352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 6))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 30, r := 7 }
    lowerValue := 3747380225127336253190
    upperValue := 812398150781030805402550272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 7))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 30, r := 8 }
    lowerValue := 86565810639272001858
    upperValue := 50774884423814425337659392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 8))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 30, r := 9 }
    lowerValue := 2351076177844301132
    upperValue := 3173430276488401583603712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 9))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 30, r := 10 }
    lowerValue := 74296568580215632
    upperValue := 198339392280525098975232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 10))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 30, r := 11 }
    lowerValue := 2710477382112186
    upperValue := 12396212017532818685952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 11))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 30, r := 12 }
    lowerValue := 113487179854946
    upperValue := 774763251095801167872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 12))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 30, r := 13 }
    lowerValue := 5430105523651
    upperValue := 48422703193487572992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 13))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 30, r := 14 }
    lowerValue := 296035144416
    upperValue := 3026418949592973312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 14))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 30, r := 15 }
    lowerValue := 18355670247
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 15))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 30, r := 16 }
    lowerValue := 1293513280
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 16))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 30, r := 17 }
    lowerValue := 103626665
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 30, r := 18 }
    lowerValue := 9450291
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 30, r := 19 }
    lowerValue := 983409
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 30, r := 20 }
    lowerValue := 117192
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 30, r := 21 }
    lowerValue := 16072
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 30, r := 22 }
    lowerValue := 2554
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 30, r := 23 }
    lowerValue := 474
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 30, r := 24 }
    lowerValue := 104
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 30, r := 25 }
    lowerValue := 28
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 30, r := 26 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 28 27)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 30, r := 27 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 29 28))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 30, r := 28 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28)) },
  { key := { q := 16, n := 30, r := 29 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 29)) },
  { key := { q := 16, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 30)) },
  { key := { q := 16, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 31)) },
  { key := { q := 16, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 32)) },
  { key := { q := 16, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 33)) },
  { key := { q := 16, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 34)) },
  { key := { q := 16, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 35)) },
  { key := { q := 16, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 36)) },
  { key := { q := 16, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 37)) },
  { key := { q := 16, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 38)) },
  { key := { q := 16, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 39)) },
  { key := { q := 16, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 40)) },
  { key := { q := 16, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 41)) },
  { key := { q := 16, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 42)) },
  { key := { q := 16, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 43)) },
  { key := { q := 16, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 44)) },
  { key := { q := 16, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 45)) },
  { key := { q := 16, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 46)) },
  { key := { q := 16, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 47)) },
  { key := { q := 16, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 30 48)) },
  { key := { q := 16, n := 31, r := 0 }
    lowerValue := 21267647932558653966460912964485513216
    upperValue := 21267647932558653966460912964485513216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 31 0)) },
  { key := { q := 16, n := 31, r := 1 }
    lowerValue := 45638729469009987052491229537522561
    upperValue := 332306998946228968225951765070086144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 1))
    upperTrace := (.lengthenFreeN 21 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 31, r := 2 }
    lowerValue := 202373637443345804745039184749270
    upperValue := 13629779253653922524892552864202752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 2))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 31, r := 3 }
    lowerValue := 1392252116533107447563237819065
    upperValue := 851861203353370157805784554012672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 3))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 31, r := 4 }
    lowerValue := 13224575577763077861554605252
    upperValue := 53241325209585634862861534625792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 4))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 31, r := 5 }
    lowerValue := 162802867687356944450923038
    upperValue := 3327582825599102178928845914112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 5))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 31, r := 6 }
    lowerValue := 2496983813182281937323329
    upperValue := 207973926599943886183052869632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 6))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 31, r := 7 }
    lowerValue := 46455704255403632588431
    upperValue := 12998370412496492886440804352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 7))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 31, r := 8 }
    lowerValue := 1028627927699552436689
    upperValue := 812398150781030805402550272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 8))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 31, r := 9 }
    lowerValue := 26728333207893900775
    upperValue := 50774884423814425337659392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 9))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 31, r := 10 }
    lowerValue := 806466701700887124
    upperValue := 3173430276488401583603712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 10))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 31, r := 11 }
    lowerValue := 28029248973221762
    upperValue := 198339392280525098975232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 11))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 31, r := 12 }
    lowerValue := 1115320791144312
    upperValue := 12396212017532818685952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 12))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 31, r := 13 }
    lowerValue := 50579770067509
    upperValue := 774763251095801167872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 13))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 31, r := 14 }
    lowerValue := 2605712721186
    upperValue := 48422703193487572992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 14))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 31, r := 15 }
    lowerValue := 152165401984
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 15))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 31, r := 16 }
    lowerValue := 10061156166
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 31, r := 17 }
    lowerValue := 753070505
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 31, r := 18 }
    lowerValue := 63855116
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 31, r := 19 }
    lowerValue := 6144102
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 31, r := 20 }
    lowerValue := 672661
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 31, r := 21 }
    lowerValue := 84115
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 31, r := 22 }
    lowerValue := 12076
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 31, r := 23 }
    lowerValue := 2004
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 31, r := 24 }
    lowerValue := 388
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 31, r := 25 }
    lowerValue := 89
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 31, r := 26 }
    lowerValue := 25
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 31, r := 27 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 29 28)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 31, r := 28 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 30 29))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 31, r := 29 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29)) },
  { key := { q := 16, n := 31, r := 30 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 30)) },
  { key := { q := 16, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 31)) },
  { key := { q := 16, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 32)) },
  { key := { q := 16, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 33)) },
  { key := { q := 16, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 34)) },
  { key := { q := 16, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 35)) },
  { key := { q := 16, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 36)) },
  { key := { q := 16, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 37)) },
  { key := { q := 16, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 38)) },
  { key := { q := 16, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 39)) },
  { key := { q := 16, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 40)) },
  { key := { q := 16, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 41)) },
  { key := { q := 16, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 42)) },
  { key := { q := 16, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 43)) },
  { key := { q := 16, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 44)) },
  { key := { q := 16, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 45)) },
  { key := { q := 16, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 46)) },
  { key := { q := 16, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 47)) },
  { key := { q := 16, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 31 48)) },
  { key := { q := 16, n := 32, r := 0 }
    lowerValue := 340282366920938463463374607431768211456
    upperValue := 340282366920938463463374607431768211456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 32 0)) },
  { key := { q := 16, n := 32, r := 1 }
    lowerValue := 707447748276379341919697728548374660
    upperValue := 5316911983139663491615228241121378304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 1))
    upperTrace := (.lengthenFreeN 22 (@UpperTrace.alphabetExpand 8 16 2 10 1 16777216 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 16 ≤ 2 * 8) (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1))))) },
  { key := { q := 16, n := 32, r := 2 }
    lowerValue := 3036039711645492665691549927568172
    upperValue := 218076468058462760398280845827244032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 2))
    upperTrace := (.lengthenFreeN 26 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))) },
  { key := { q := 16, n := 32, r := 3 }
    lowerValue := 20192305444113309416408252929224
    upperValue := 13629779253653922524892552864202752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 32, r := 4 }
    lowerValue := 185205111512171992779425324016
    upperValue := 851861203353370157805784554012672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 4))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 32, r := 5 }
    lowerValue := 2198814060831126965954574278
    upperValue := 53241325209585634862861534625792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 5))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 32, r := 6 }
    lowerValue := 32479452452369634769459989
    upperValue := 3327582825599102178928845914112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 6))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 32, r := 7 }
    lowerValue := 581118105253410499088054
    upperValue := 207973926599943886183052869632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 7))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 32, r := 8 }
    lowerValue := 12354668094585045546663
    upperValue := 12998370412496492886440804352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 8))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 32, r := 9 }
    lowerValue := 307715896369688414735
    upperValue := 812398150781030805402550272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 9))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 32, r := 10 }
    lowerValue := 8883070367257685626
    upperValue := 50774884423814425337659392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 10))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 32, r := 11 }
    lowerValue := 294785958908401273
    upperValue := 3173430276488401583603712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 11))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 32, r := 12 }
    lowerValue := 11175070630360321
    upperValue := 198339392280525098975232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 12))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 32, r := 13 }
    lowerValue := 481640530413977
    upperValue := 12396212017532818685952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 13))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 32, r := 14 }
    lowerValue := 23517880619499
    upperValue := 774763251095801167872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 14))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 16, n := 32, r := 15 }
    lowerValue := 1297818683547
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 15))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) }]

end CoveringCodes.Database
