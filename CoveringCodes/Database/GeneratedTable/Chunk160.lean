import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 160. Do not edit manually.

def precomputedTable_chunk_160 : Array AnyBoundEntry := #[
  { key := { q := 16, n := 32, r := 16 }
    lowerValue := 80820694694
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 32, r := 17 }
    lowerValue := 5676216044
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 32, r := 18 }
    lowerValue := 449704663
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 32, r := 19 }
    lowerValue := 40234920
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 32, r := 20 }
    lowerValue := 4073321
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 32, r := 21 }
    lowerValue := 468001
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 32, r := 22 }
    lowerValue := 61271
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 32, r := 23 }
    lowerValue := 9189
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 32, r := 24 }
    lowerValue := 1590
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 32, r := 25 }
    lowerValue := 320
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 32, r := 26 }
    lowerValue := 76
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 32, r := 27 }
    lowerValue := 22
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 32, r := 28 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 30 29)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 32, r := 29 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 31 30))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 32, r := 30 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 32 30)) },
  { key := { q := 16, n := 32, r := 31 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 32 31)) },
  { key := { q := 16, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 32)) },
  { key := { q := 16, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 33)) },
  { key := { q := 16, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 34)) },
  { key := { q := 16, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 35)) },
  { key := { q := 16, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 36)) },
  { key := { q := 16, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 37)) },
  { key := { q := 16, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 38)) },
  { key := { q := 16, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 39)) },
  { key := { q := 16, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 40)) },
  { key := { q := 16, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 41)) },
  { key := { q := 16, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 42)) },
  { key := { q := 16, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 43)) },
  { key := { q := 16, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 44)) },
  { key := { q := 16, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 45)) },
  { key := { q := 16, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 46)) },
  { key := { q := 16, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 47)) },
  { key := { q := 16, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 32 48)) },
  { key := { q := 16, n := 33, r := 0 }
    lowerValue := 5444517870735015415413993718908291383296
    upperValue := 5444517870735015415413993718908291383296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 33 0)) },
  { key := { q := 16, n := 33, r := 1 }
    lowerValue := 10976850545836724627850793788121555209
    upperValue := 170141183460469231731687303715884105728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 1))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 33, r := 2 }
    lowerValue := 45638729469009987052491229537522561
    upperValue := 10633823966279326983230456482242756608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 2))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 33, r := 3 }
    lowerValue := 293769541625786121120279615612263
    upperValue := 664613997892457936451903530140172288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 33, r := 4 }
    lowerValue := 2604897497969174806535476149753
    upperValue := 41538374868278621028243970633760768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 4))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 33, r := 5 }
    lowerValue := 29862897536325331227437059773
    upperValue := 2596148429267413814265248164610048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 5))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 33, r := 6 }
    lowerValue := 425412487042706858689841287
    upperValue := 162259276829213363391578010288128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 6))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 33, r := 7 }
    lowerValue := 7330535091568826315302959
    upperValue := 10141204801825835211973625643008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 7))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 33, r := 8 }
    lowerValue := 149878166324171572027891
    upperValue := 633825300114114700748351602688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 8))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 33, r := 9 }
    lowerValue := 3584336305047430346163
    upperValue := 39614081257132168796771975168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 9))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 33, r := 10 }
    lowerValue := 99181780157886992187
    upperValue := 2475880078570760549798248448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 10))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 33, r := 11 }
    lowerValue := 3149050154957322820
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 11))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 33, r := 12 }
    lowerValue := 113985062007557103
    upperValue := 9671406556917033397649408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 12))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 33, r := 13 }
    lowerValue := 4680400841131227
    upperValue := 604462909807314587353088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 13))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 33, r := 14 }
    lowerValue := 217201262772446
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 14))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 13 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 33, r := 15 }
    lowerValue := 11360923349635
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 15))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 33, r := 16 }
    lowerValue := 668590997493
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 33, r := 17 }
    lowerValue := 44227027796
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 33, r := 18 }
    lowerValue := 3287927614
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 33, r := 19 }
    lowerValue := 274870370
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 33, r := 20 }
    lowerValue := 25876969
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 33, r := 21 }
    lowerValue := 2749496
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 33, r := 22 }
    lowerValue := 330768
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 33, r := 23 }
    lowerValue := 45244
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 33, r := 24 }
    lowerValue := 7075
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 33, r := 25 }
    lowerValue := 1274
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 33, r := 26 }
    lowerValue := 267
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 33, r := 27 }
    lowerValue := 66
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 33, r := 28 }
    lowerValue := 20
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 33, r := 29 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 31 30)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 33, r := 30 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 32 31))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30)) },
  { key := { q := 16, n := 33, r := 31 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 31)) },
  { key := { q := 16, n := 33, r := 32 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 32)) },
  { key := { q := 16, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 33)) },
  { key := { q := 16, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 34)) },
  { key := { q := 16, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 35)) },
  { key := { q := 16, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 36)) },
  { key := { q := 16, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 37)) },
  { key := { q := 16, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 38)) },
  { key := { q := 16, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 39)) },
  { key := { q := 16, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 40)) },
  { key := { q := 16, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 41)) },
  { key := { q := 16, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 42)) },
  { key := { q := 16, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 43)) },
  { key := { q := 16, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 44)) },
  { key := { q := 16, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 45)) },
  { key := { q := 16, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 46)) },
  { key := { q := 16, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 47)) },
  { key := { q := 16, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 33 48)) },
  { key := { q := 16, n := 34, r := 0 }
    lowerValue := 87112285931760246646623899502532662132736
    upperValue := 87112285931760246646623899502532662132736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 34 0)) },
  { key := { q := 16, n := 34, r := 1 }
    lowerValue := 170474140766654103026661251472666657795
    upperValue := 2722258935367507707706996859454145691648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 34, r := 2 }
    lowerValue := 687352338181418433962125201225639615
    upperValue := 170141183460469231731687303715884105728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 34, r := 3 }
    lowerValue := 4286444794232442258100675986861841
    upperValue := 10633823966279326983230456482242756608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 34, r := 4 }
    lowerValue := 36785609289424764011929185092842
    upperValue := 664613997892457936451903530140172288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 4))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 34, r := 5 }
    lowerValue := 407697816259092357054016674562
    upperValue := 41538374868278621028243970633760768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 5))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 34, r := 6 }
    lowerValue := 5608219743055030610137755338
    upperValue := 2596148429267413814265248164610048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 6))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 34, r := 7 }
    lowerValue := 93199041381901809686789467
    upperValue := 162259276829213363391578010288128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 7))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 34, r := 8 }
    lowerValue := 1835215697375559231850645
    upperValue := 10141204801825835211973625643008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 8))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 34, r := 9 }
    lowerValue := 42208232762841310227947
    upperValue := 633825300114114700748351602688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 9))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 34, r := 10 }
    lowerValue := 1121439871387649188930
    upperValue := 39614081257132168796771975168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 10))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 34, r := 11 }
    lowerValue := 34130164045812703392
    upperValue := 2475880078570760549798248448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 11))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 34, r := 12 }
    lowerValue := 1181996378197171296
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 12))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 34, r := 13 }
    lowerValue := 46342812749996648
    upperValue := 9671406556917033397649408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 13))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 34, r := 14 }
    lowerValue := 2048949792628608
    upperValue := 604462909807314587353088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 14))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 13 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 34, r := 15 }
    lowerValue := 101858026271277
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 15))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 34, r := 16 }
    lowerValue := 5681822345477
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 16))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 34, r := 17 }
    lowerValue := 355193660399
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 34, r := 18 }
    lowerValue := 24871674876
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 34, r := 19 }
    lowerValue := 1951166500
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 34, r := 20 }
    lowerValue := 171645125
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 34, r := 21 }
    lowerValue := 16960487
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 34, r := 22 }
    lowerValue := 1887055
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 34, r := 23 }
    lowerValue := 237206
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 34, r := 24 }
    lowerValue := 33835
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 34, r := 25 }
    lowerValue := 5507
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 34, r := 26 }
    lowerValue := 1030
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 34, r := 27 }
    lowerValue := 224
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 34, r := 28 }
    lowerValue := 57
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 34, r := 29 }
    lowerValue := 18
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 34, r := 30 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 32 31)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30))) },
  { key := { q := 16, n := 34, r := 31 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 33 32))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 31)) },
  { key := { q := 16, n := 34, r := 32 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 32)) },
  { key := { q := 16, n := 34, r := 33 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 33)) },
  { key := { q := 16, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 34 34)) },
  { key := { q := 16, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 34 35)) },
  { key := { q := 16, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 34 36)) },
  { key := { q := 16, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 34 37)) },
  { key := { q := 16, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 34 38)) },
  { key := { q := 16, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 34 39)) },
  { key := { q := 16, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 34 40)) },
  { key := { q := 16, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 34 41)) },
  { key := { q := 16, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 34 42)) },
  { key := { q := 16, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 34 43)) },
  { key := { q := 16, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 34 44)) },
  { key := { q := 16, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 34 45)) },
  { key := { q := 16, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 34 46)) },
  { key := { q := 16, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 34 47)) },
  { key := { q := 16, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 34 48)) },
  { key := { q := 16, n := 35, r := 0 }
    lowerValue := 1393796574908163946345982392040522594123776
    upperValue := 1393796574908163946345982392040522594123776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 35 0)) },
  { key := { q := 16, n := 35, r := 1 }
    lowerValue := 2649803374350121570999966524791868049665
    upperValue := 43556142965880123323311949751266331066368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 1))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 35, r := 2 }
    lowerValue := 10370433069011123029932681989274801484
    upperValue := 2722258935367507707706996859454145691648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 35, r := 3 }
    lowerValue := 62716460735932721169705021866694598
    upperValue := 170141183460469231731687303715884105728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 35, r := 4 }
    lowerValue := 521445299447131622228282608899694
    upperValue := 10633823966279326983230456482242756608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 4))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 35, r := 5 }
    lowerValue := 5593300229811698897421306270294
    upperValue := 664613997892457936451903530140172288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 5))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 35, r := 6 }
    lowerValue := 74383433640391278695583185507
    upperValue := 41538374868278621028243970633760768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 6))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 35, r := 7 }
    lowerValue := 1193640612622914084301548661
    upperValue := 2596148429267413814265248164610048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 7))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 35, r := 8 }
    lowerValue := 22667996588377787421178087
    upperValue := 162259276829213363391578010288128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 8))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 35, r := 9 }
    lowerValue := 502110644603495048391683
    upperValue := 10141204801825835211973625643008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 9))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 35, r := 10 }
    lowerValue := 12829850793086966476541
    upperValue := 633825300114114700748351602688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 10))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 35, r := 11 }
    lowerValue := 374924515330435512478
    upperValue := 39614081257132168796771975168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 11))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 35, r := 12 }
    lowerValue := 12446323159189036593
    upperValue := 2475880078570760549798248448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 12))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 35, r := 13 }
    lowerValue := 466898184012909538
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 13))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 35, r := 14 }
    lowerValue := 19710995103993193
    upperValue := 9671406556917033397649408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 14))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 13 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 35, r := 15 }
    lowerValue := 933575504107281
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 15))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 35, r := 16 }
    lowerValue := 49495199858563
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 16))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 35, r := 17 }
    lowerValue := 2932893403123
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 35, r := 18 }
    lowerValue := 194087928833
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 35, r := 19 }
    lowerValue := 14341934442
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 35, r := 20 }
    lowerValue := 1183985179
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 35, r := 21 }
    lowerValue := 109326822
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 35, r := 22 }
    lowerValue := 11312738
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 35, r := 23 }
    lowerValue := 1315288
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 35, r := 24 }
    lowerValue := 172429
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 35, r := 25 }
    lowerValue := 25603
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 35, r := 26 }
    lowerValue := 4331
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 35, r := 27 }
    lowerValue := 841
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 35, r := 28 }
    lowerValue := 189
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 35, r := 29 }
    lowerValue := 50
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 35, r := 30 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 30))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30))) },
  { key := { q := 16, n := 35, r := 31 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 33 32)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 31))) },
  { key := { q := 16, n := 35, r := 32 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 34 33))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 32)) },
  { key := { q := 16, n := 35, r := 33 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 33)) },
  { key := { q := 16, n := 35, r := 34 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 34)) },
  { key := { q := 16, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 35 35)) },
  { key := { q := 16, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 35 36)) },
  { key := { q := 16, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 35 37)) },
  { key := { q := 16, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 35 38)) },
  { key := { q := 16, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 35 39)) },
  { key := { q := 16, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 35 40)) },
  { key := { q := 16, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 35 41)) },
  { key := { q := 16, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 35 42)) },
  { key := { q := 16, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 35 43)) },
  { key := { q := 16, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 35 44)) },
  { key := { q := 16, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 35 45)) },
  { key := { q := 16, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 35 46)) },
  { key := { q := 16, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 35 47)) },
  { key := { q := 16, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 35 48)) },
  { key := { q := 16, n := 36, r := 0 }
    lowerValue := 22300745198530623141535718272648361505980416
    upperValue := 22300745198530623141535718272648361505980416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 36 0)) },
  { key := { q := 16, n := 36, r := 1 }
    lowerValue := 41221340477875458671969904385671647885362
    upperValue := 696898287454081973172991196020261297061888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 36, r := 2 }
    lowerValue := 156726322806998497034497742461915100084
    upperValue := 43556142965880123323311949751266331066368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 36, r := 3 }
    lowerValue := 920005671605445077539477063669747050
    upperValue := 2722258935367507707706996859454145691648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 36, r := 4 }
    lowerValue := 7417990560720402581191277830119295
    upperValue := 170141183460469231731687303715884105728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 36, r := 5 }
    lowerValue := 77089291241272510803560921530433
    upperValue := 10633823966279326983230456482242756608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 36, r := 6 }
    lowerValue := 992209076202277182323881652090
    upperValue := 664613997892457936451903530140172288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 36, r := 7 }
    lowerValue := 15393038504599086708659724518
    upperValue := 41538374868278621028243970633760768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 36, r := 8 }
    lowerValue := 282278277369317822056555505
    upperValue := 2596148429267413814265248164610048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 8))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 36, r := 9 }
    lowerValue := 6030183804392065168081911
    upperValue := 162259276829213363391578010288128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 9))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 36, r := 10 }
    lowerValue := 148399434036893612777595
    upperValue := 10141204801825835211973625643008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 10))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 36, r := 11 }
    lowerValue := 4170628773255269535252
    upperValue := 633825300114114700748351602688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 11))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 36, r := 12 }
    lowerValue := 132942187905178144021
    upperValue := 39614081257132168796771975168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 12))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 36, r := 13 }
    lowerValue := 4780443521155565476
    upperValue := 2475880078570760549798248448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 13))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 36, r := 14 }
    lowerValue := 193096732669983364
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 14))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 13 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 36, r := 15 }
    lowerValue := 8732922634380950
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 15))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 36, r := 16 }
    lowerValue := 441120855455033
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 16))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 36, r := 17 }
    lowerValue := 24843952096073
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 17))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 36, r := 18 }
    lowerValue := 1558435384367
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 36, r := 19 }
    lowerValue := 108836015012
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 36, r := 20 }
    lowerValue := 8463417901
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) },
  { key := { q := 16, n := 36, r := 21 }
    lowerValue := 733407893
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 23 21))) },
  { key := { q := 16, n := 36, r := 22 }
    lowerValue := 70922230
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 24 22))) },
  { key := { q := 16, n := 36, r := 23 }
    lowerValue := 7669341
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 25 23))) },
  { key := { q := 16, n := 36, r := 24 }
    lowerValue := 930025
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 26 24))) },
  { key := { q := 16, n := 36, r := 25 }
    lowerValue := 126934
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 27 25))) },
  { key := { q := 16, n := 36, r := 26 }
    lowerValue := 19589
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 28 26))) },
  { key := { q := 16, n := 36, r := 27 }
    lowerValue := 3438
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 29 27))) },
  { key := { q := 16, n := 36, r := 28 }
    lowerValue := 691
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 30 28))) },
  { key := { q := 16, n := 36, r := 29 }
    lowerValue := 161
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 31 29))) },
  { key := { q := 16, n := 36, r := 30 }
    lowerValue := 44
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 33 30))) },
  { key := { q := 16, n := 36, r := 31 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 33 32))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 34 31))) },
  { key := { q := 16, n := 36, r := 32 }
    lowerValue := 16
    upperValue := 256
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 34 33)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 35 32))) },
  { key := { q := 16, n := 36, r := 33 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 35 34))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 36 33)) },
  { key := { q := 16, n := 36, r := 34 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 36 34)) },
  { key := { q := 16, n := 36, r := 35 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 36 35)) },
  { key := { q := 16, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 36 36)) },
  { key := { q := 16, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 36 37)) },
  { key := { q := 16, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 36 38)) },
  { key := { q := 16, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 36 39)) },
  { key := { q := 16, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 36 40)) },
  { key := { q := 16, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 36 41)) },
  { key := { q := 16, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 36 42)) },
  { key := { q := 16, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 36 43)) },
  { key := { q := 16, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 36 44)) },
  { key := { q := 16, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 36 45)) },
  { key := { q := 16, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 36 46)) },
  { key := { q := 16, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 36 47)) },
  { key := { q := 16, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 36 48)) },
  { key := { q := 16, n := 37, r := 0 }
    lowerValue := 356811923176489970264571492362373784095686656
    upperValue := 356811923176489970264571492362373784095686656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 37 0)) },
  { key := { q := 16, n := 37, r := 1 }
    lowerValue := 641748063267068291842754482666139899452674
    upperValue := 11150372599265311570767859136324180752990208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 1))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 37, r := 2 }
    lowerValue := 2372325061343895657517462683419370132147
    upperValue := 696898287454081973172991196020261297061888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 2))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 37, r := 3 }
    lowerValue := 13528847071977960935112823794716835076
    upperValue := 43556142965880123323311949751266331066368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 37, r := 4 }
    lowerValue := 105881979186235629087243403175219188
    upperValue := 2722258935367507707706996859454145691648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 37, r := 5 }
    lowerValue := 1067087717823681846549612095251133
    upperValue := 170141183460469231731687303715884105728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 37, r := 6 }
    lowerValue := 13306369593223131551581139081364
    upperValue := 10633823966279326983230456482242756608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 37, r := 7 }
    lowerValue := 199794677814389063066829763150
    upperValue := 664613997892457936451903530140172288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 7))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 37, r := 8 }
    lowerValue := 3542119172347243025117823664
    upperValue := 41538374868278621028243970633760768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 8))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 37, r := 9 }
    lowerValue := 73068877630905659350706366
    upperValue := 2596148429267413814265248164610048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 9))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 37, r := 10 }
    lowerValue := 1734218723946532290662791
    upperValue := 162259276829213363391578010288128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 10))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 37, r := 11 }
    lowerValue := 46941393823972966690665
    upperValue := 10141204801825835211973625643008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 11))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 37, r := 12 }
    lowerValue := 1439024055149530489311
    upperValue := 633825300114114700748351602688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 12))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 37, r := 13 }
    lowerValue := 49686877765119642587
    upperValue := 39614081257132168796771975168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 13))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 37, r := 14 }
    lowerValue := 1923877991656498898
    upperValue := 2475880078570760549798248448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 14))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 13 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 37, r := 15 }
    lowerValue := 83250743937962558
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 15))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 17 15))) },
  { key := { q := 16, n := 37, r := 16 }
    lowerValue := 4015469125530459
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 16))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 18 16))) },
  { key := { q := 16, n := 37, r := 17 }
    lowerValue := 215472163148210
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 17))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 19 17))) },
  { key := { q := 16, n := 37, r := 18 }
    lowerValue := 12846887210211
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 20 18))) },
  { key := { q := 16, n := 37, r := 19 }
    lowerValue := 850467907711
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 21 19))) },
  { key := { q := 16, n := 37, r := 20 }
    lowerValue := 62505469435
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 37 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 22 20))) }]

end CoveringCodes.Database
