import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 156. Do not edit manually.

def precomputedTable_chunk_156 : Array AnyBoundEntry := #[
  { key := { q := 16, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 45)) },
  { key := { q := 16, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 46)) },
  { key := { q := 16, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 47)) },
  { key := { q := 16, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 11 48)) },
  { key := { q := 16, n := 12, r := 0 }
    lowerValue := 281474976710656
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 12 0)) },
  { key := { q := 16, n := 12, r := 1 }
    lowerValue := 1555110368568
    upperValue := 8796093022208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 1))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 12, r := 2 }
    lowerValue := 18726297433
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 2))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 12, r := 3 }
    lowerValue := 371568922
    upperValue := 34359738368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 3))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 12, r := 4 }
    lowerValue := 10902739
    upperValue := 2147483648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 12, r := 5 }
    lowerValue := 448751
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 5))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 12, r := 6 }
    lowerValue := 25240
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 12, r := 7 }
    lowerValue := 1922
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 12, r := 8 }
    lowerValue := 199
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 12, r := 9 }
    lowerValue := 29
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 9))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1)))) },
  { key := { q := 16, n := 12, r := 10 }
    lowerValue := 16
    upperValue := 128
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 12 11)))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 16) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 12, r := 11 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 12 11)) },
  { key := { q := 16, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 12)) },
  { key := { q := 16, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 13)) },
  { key := { q := 16, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 14)) },
  { key := { q := 16, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 15)) },
  { key := { q := 16, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 16)) },
  { key := { q := 16, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 17)) },
  { key := { q := 16, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 18)) },
  { key := { q := 16, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 19)) },
  { key := { q := 16, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 20)) },
  { key := { q := 16, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 21)) },
  { key := { q := 16, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 22)) },
  { key := { q := 16, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 23)) },
  { key := { q := 16, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 24)) },
  { key := { q := 16, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 25)) },
  { key := { q := 16, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 26)) },
  { key := { q := 16, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 27)) },
  { key := { q := 16, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 28)) },
  { key := { q := 16, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 29)) },
  { key := { q := 16, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 30)) },
  { key := { q := 16, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 31)) },
  { key := { q := 16, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 32)) },
  { key := { q := 16, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 33)) },
  { key := { q := 16, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 34)) },
  { key := { q := 16, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 35)) },
  { key := { q := 16, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 36)) },
  { key := { q := 16, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 37)) },
  { key := { q := 16, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 38)) },
  { key := { q := 16, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 39)) },
  { key := { q := 16, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 40)) },
  { key := { q := 16, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 41)) },
  { key := { q := 16, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 42)) },
  { key := { q := 16, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 43)) },
  { key := { q := 16, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 44)) },
  { key := { q := 16, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 45)) },
  { key := { q := 16, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 46)) },
  { key := { q := 16, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 47)) },
  { key := { q := 16, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 12 48)) },
  { key := { q := 16, n := 13, r := 0 }
    lowerValue := 4503599627370496
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 13 0)) },
  { key := { q := 16, n := 13, r := 1 }
    lowerValue := 22977549119238
    upperValue := 140737488355328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 1))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 13, r := 2 }
    lowerValue := 253781112779
    upperValue := 8796093022208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 2))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 13, r := 3 }
    lowerValue := 4581503514
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 3))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 13, r := 4 }
    lowerValue := 121130050
    upperValue := 34359738368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 13, r := 5 }
    lowerValue := 4439251
    upperValue := 2147483648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 5))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 13, r := 6 }
    lowerValue := 219039
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 6))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 13, r := 7 }
    lowerValue := 14354
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 13, r := 8 }
    lowerValue := 1247
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 13, r := 9 }
    lowerValue := 145
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 13, r := 10 }
    lowerValue := 23
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 10))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1)))) },
  { key := { q := 16, n := 13, r := 11 }
    lowerValue := 16
    upperValue := 128
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 13 12)))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 16) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 13, r := 12 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 13 12)) },
  { key := { q := 16, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 13)) },
  { key := { q := 16, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 14)) },
  { key := { q := 16, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 15)) },
  { key := { q := 16, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 16)) },
  { key := { q := 16, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 17)) },
  { key := { q := 16, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 18)) },
  { key := { q := 16, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 19)) },
  { key := { q := 16, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 20)) },
  { key := { q := 16, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 21)) },
  { key := { q := 16, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 22)) },
  { key := { q := 16, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 23)) },
  { key := { q := 16, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 24)) },
  { key := { q := 16, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 25)) },
  { key := { q := 16, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 26)) },
  { key := { q := 16, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 27)) },
  { key := { q := 16, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 28)) },
  { key := { q := 16, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 29)) },
  { key := { q := 16, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 30)) },
  { key := { q := 16, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 31)) },
  { key := { q := 16, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 32)) },
  { key := { q := 16, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 33)) },
  { key := { q := 16, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 34)) },
  { key := { q := 16, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 35)) },
  { key := { q := 16, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 36)) },
  { key := { q := 16, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 37)) },
  { key := { q := 16, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 38)) },
  { key := { q := 16, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 39)) },
  { key := { q := 16, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 40)) },
  { key := { q := 16, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 41)) },
  { key := { q := 16, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 42)) },
  { key := { q := 16, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 43)) },
  { key := { q := 16, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 44)) },
  { key := { q := 16, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 45)) },
  { key := { q := 16, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 46)) },
  { key := { q := 16, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 47)) },
  { key := { q := 16, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 13 48)) },
  { key := { q := 16, n := 14, r := 0 }
    lowerValue := 72057594037927936
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 14 0)) },
  { key := { q := 16, n := 14, r := 1 }
    lowerValue := 341505185013877
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 1))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 14, r := 2 }
    lowerValue := 3483399112344
    upperValue := 140737488355328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 2))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 14, r := 3 }
    lowerValue := 57683638816
    upperValue := 8796093022208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 14, r := 4 }
    lowerValue := 1387729540
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 14, r := 5 }
    lowerValue := 45832521
    upperValue := 34359738368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 5))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 14, r := 6 }
    lowerValue := 2014007
    upperValue := 2147483648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 14, r := 7 }
    lowerValue := 115818
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 14, r := 8 }
    lowerValue := 8663
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 14, r := 9 }
    lowerValue := 845
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 14, r := 10 }
    lowerValue := 109
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 10))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 14, r := 11 }
    lowerValue := 19
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 11))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1)))) },
  { key := { q := 16, n := 14, r := 12 }
    lowerValue := 16
    upperValue := 128
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 14 13)))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 16) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 14, r := 13 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 14 13)) },
  { key := { q := 16, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 14)) },
  { key := { q := 16, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 15)) },
  { key := { q := 16, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 16)) },
  { key := { q := 16, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 17)) },
  { key := { q := 16, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 18)) },
  { key := { q := 16, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 19)) },
  { key := { q := 16, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 20)) },
  { key := { q := 16, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 21)) },
  { key := { q := 16, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 22)) },
  { key := { q := 16, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 23)) },
  { key := { q := 16, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 24)) },
  { key := { q := 16, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 25)) },
  { key := { q := 16, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 26)) },
  { key := { q := 16, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 27)) },
  { key := { q := 16, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 28)) },
  { key := { q := 16, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 29)) },
  { key := { q := 16, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 30)) },
  { key := { q := 16, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 31)) },
  { key := { q := 16, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 32)) },
  { key := { q := 16, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 33)) },
  { key := { q := 16, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 34)) },
  { key := { q := 16, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 35)) },
  { key := { q := 16, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 36)) },
  { key := { q := 16, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 37)) },
  { key := { q := 16, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 38)) },
  { key := { q := 16, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 39)) },
  { key := { q := 16, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 40)) },
  { key := { q := 16, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 41)) },
  { key := { q := 16, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 42)) },
  { key := { q := 16, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 43)) },
  { key := { q := 16, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 44)) },
  { key := { q := 16, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 45)) },
  { key := { q := 16, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 46)) },
  { key := { q := 16, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 47)) },
  { key := { q := 16, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 14 48)) },
  { key := { q := 16, n := 15, r := 0 }
    lowerValue := 1152921504606846976
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 15 0)) },
  { key := { q := 16, n := 15, r := 1 }
    lowerValue := 5101422586755961
    upperValue := 36028797018963968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 1))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 15, r := 2 }
    lowerValue := 48338497530789
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 2))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 15, r := 3 }
    lowerValue := 739300575711
    upperValue := 140737488355328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 15, r := 4 }
    lowerValue := 16315865653
    upperValue := 8796093022208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 15, r := 5 }
    lowerValue := 490382507
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 15, r := 6 }
    lowerValue := 19422158
    upperValue := 34359738368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 15, r := 7 }
    lowerValue := 994892
    upperValue := 2147483648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 15, r := 8 }
    lowerValue := 65318
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 15, r := 9 }
    lowerValue := 5489
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 15, r := 10 }
    lowerValue := 594
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 10))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 15, r := 11 }
    lowerValue := 84
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 11))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 15, r := 12 }
    lowerValue := 16
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 12))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1)))) },
  { key := { q := 16, n := 15, r := 13 }
    lowerValue := 16
    upperValue := 128
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 15 14)))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 16) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 15, r := 14 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 15 14)) },
  { key := { q := 16, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 15)) },
  { key := { q := 16, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 16)) },
  { key := { q := 16, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 17)) },
  { key := { q := 16, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 18)) },
  { key := { q := 16, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 19)) },
  { key := { q := 16, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 20)) },
  { key := { q := 16, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 21)) },
  { key := { q := 16, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 22)) },
  { key := { q := 16, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 23)) },
  { key := { q := 16, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 24)) },
  { key := { q := 16, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 25)) },
  { key := { q := 16, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 26)) },
  { key := { q := 16, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 27)) },
  { key := { q := 16, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 28)) },
  { key := { q := 16, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 29)) },
  { key := { q := 16, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 30)) },
  { key := { q := 16, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 31)) },
  { key := { q := 16, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 32)) },
  { key := { q := 16, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 33)) },
  { key := { q := 16, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 34)) },
  { key := { q := 16, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 35)) },
  { key := { q := 16, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 36)) },
  { key := { q := 16, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 37)) },
  { key := { q := 16, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 38)) },
  { key := { q := 16, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 39)) },
  { key := { q := 16, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 40)) },
  { key := { q := 16, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 41)) },
  { key := { q := 16, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 42)) },
  { key := { q := 16, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 43)) },
  { key := { q := 16, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 44)) },
  { key := { q := 16, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 45)) },
  { key := { q := 16, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 46)) },
  { key := { q := 16, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 47)) },
  { key := { q := 16, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 15 48)) },
  { key := { q := 16, n := 16, r := 0 }
    lowerValue := 18446744073709551616
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 16 0)) },
  { key := { q := 16, n := 16, r := 1 }
    lowerValue := 76542506529915152
    upperValue := 576460752303423488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 1))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 16, r := 2 }
    lowerValue := 677168388594749
    upperValue := 36028797018963968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 2))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 16, r := 3 }
    lowerValue := 9621505107449
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 16, r := 4 }
    lowerValue := 196127743032
    upperValue := 140737488355328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 16, r := 5 }
    lowerValue := 5408008923
    upperValue := 8796093022208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 16, r := 6 }
    lowerValue := 194941389
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 16, r := 7 }
    lowerValue := 9001669
    upperValue := 34359738368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 6 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 16, r := 8 }
    lowerValue := 526544
    upperValue := 2147483648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 7 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 16, r := 9 }
    lowerValue := 38850
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 8 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 16, r := 10 }
    lowerValue := 3623
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 10))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 9 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 16, r := 11 }
    lowerValue := 431
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 11))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 10 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 16, r := 12 }
    lowerValue := 67
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 12))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 11 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))))) },
  { key := { q := 16, n := 16, r := 13 }
    lowerValue := 16
    upperValue := 2048
    lowerTrace := (.lengthBack (by decide : 0 < 16) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 15 14))))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 16) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1)))) },
  { key := { q := 16, n := 16, r := 14 }
    lowerValue := 16
    upperValue := 128
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 16 15)))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 16) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 16 3 1))) },
  { key := { q := 16, n := 16, r := 15 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 16 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 16 16 15)) },
  { key := { q := 16, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 16)) },
  { key := { q := 16, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 17)) },
  { key := { q := 16, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 18)) },
  { key := { q := 16, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 19)) },
  { key := { q := 16, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 20)) },
  { key := { q := 16, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 21)) },
  { key := { q := 16, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 22)) },
  { key := { q := 16, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 23)) },
  { key := { q := 16, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 24)) },
  { key := { q := 16, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 25)) },
  { key := { q := 16, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 26)) },
  { key := { q := 16, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 27)) },
  { key := { q := 16, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 28)) },
  { key := { q := 16, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 29)) },
  { key := { q := 16, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 30)) },
  { key := { q := 16, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 31)) },
  { key := { q := 16, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 32)) },
  { key := { q := 16, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 33)) },
  { key := { q := 16, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 34)) },
  { key := { q := 16, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 35)) },
  { key := { q := 16, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 36)) },
  { key := { q := 16, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 37)) },
  { key := { q := 16, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 38)) },
  { key := { q := 16, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 39)) },
  { key := { q := 16, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 40)) },
  { key := { q := 16, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 41)) },
  { key := { q := 16, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 42)) },
  { key := { q := 16, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 43)) },
  { key := { q := 16, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 44)) },
  { key := { q := 16, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 45)) },
  { key := { q := 16, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 46)) },
  { key := { q := 16, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 47)) },
  { key := { q := 16, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 16 48)) },
  { key := { q := 16, n := 17, r := 0 }
    lowerValue := 295147905179352825856
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 17 0)) }]

end CoveringCodes.Database
