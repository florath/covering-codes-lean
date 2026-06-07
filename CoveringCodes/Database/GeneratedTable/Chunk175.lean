import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 175. Do not edit manually.

def precomputedTable_chunk_175 : Array AnyBoundEntry := #[
  { key := { q := 18, n := 10, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 42)) },
  { key := { q := 18, n := 10, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 43)) },
  { key := { q := 18, n := 10, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 44)) },
  { key := { q := 18, n := 10, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 45)) },
  { key := { q := 18, n := 10, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 46)) },
  { key := { q := 18, n := 10, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 47)) },
  { key := { q := 18, n := 10, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 48)) },
  { key := { q := 18, n := 11, r := 0 }
    lowerValue := 64268410079232
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 11 0)) },
  { key := { q := 18, n := 11, r := 1 }
    lowerValue := 341853245103
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 1))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 11, r := 2 }
    lowerValue := 3996046141
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 2))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 11, r := 3 }
    lowerValue := 77738277
    upperValue := 5509980288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 3))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 11, r := 4 }
    lowerValue := 2263877
    upperValue := 306110016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 4))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 11, r := 5 }
    lowerValue := 93910
    upperValue := 17006112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 5))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 11, r := 6 }
    lowerValue := 5430
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 6))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 11, r := 7 }
    lowerValue := 437
    upperValue := 52488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 11, r := 8 }
    lowerValue := 50
    upperValue := 2916
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 8))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1)))) },
  { key := { q := 18, n := 11, r := 9 }
    lowerValue := 18
    upperValue := 162
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 11 10)))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 18) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 11, r := 10 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 11 10)) },
  { key := { q := 18, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 11)) },
  { key := { q := 18, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 12)) },
  { key := { q := 18, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 13)) },
  { key := { q := 18, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 14)) },
  { key := { q := 18, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 15)) },
  { key := { q := 18, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 16)) },
  { key := { q := 18, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 17)) },
  { key := { q := 18, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 18)) },
  { key := { q := 18, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 19)) },
  { key := { q := 18, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 20)) },
  { key := { q := 18, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 21)) },
  { key := { q := 18, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 22)) },
  { key := { q := 18, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 23)) },
  { key := { q := 18, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 24)) },
  { key := { q := 18, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 25)) },
  { key := { q := 18, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 26)) },
  { key := { q := 18, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 27)) },
  { key := { q := 18, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 28)) },
  { key := { q := 18, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 29)) },
  { key := { q := 18, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 30)) },
  { key := { q := 18, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 31)) },
  { key := { q := 18, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 32)) },
  { key := { q := 18, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 33)) },
  { key := { q := 18, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 34)) },
  { key := { q := 18, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 35)) },
  { key := { q := 18, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 36)) },
  { key := { q := 18, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 37)) },
  { key := { q := 18, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 38)) },
  { key := { q := 18, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 39)) },
  { key := { q := 18, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 40)) },
  { key := { q := 18, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 41)) },
  { key := { q := 18, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 42)) },
  { key := { q := 18, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 43)) },
  { key := { q := 18, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 44)) },
  { key := { q := 18, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 45)) },
  { key := { q := 18, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 46)) },
  { key := { q := 18, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 47)) },
  { key := { q := 18, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 11 48)) },
  { key := { q := 18, n := 12, r := 0 }
    lowerValue := 1156831381426176
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 12 0)) },
  { key := { q := 18, n := 12, r := 1 }
    lowerValue := 5643079909396
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 1))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 12, r := 2 }
    lowerValue := 60004739947
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 2))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 12, r := 3 }
    lowerValue := 1051532017
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 3))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 12, r := 4 }
    lowerValue := 27256096
    upperValue := 5509980288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 12, r := 5 }
    lowerValue := 991313
    upperValue := 306110016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 5))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 12, r := 6 }
    lowerValue := 49290
    upperValue := 17006112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 12, r := 7 }
    lowerValue := 3320
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 12, r := 8 }
    lowerValue := 305
    upperValue := 52488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 12, r := 9 }
    lowerValue := 39
    upperValue := 2916
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 9))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1)))) },
  { key := { q := 18, n := 12, r := 10 }
    lowerValue := 18
    upperValue := 162
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 12 11)))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 18) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 12, r := 11 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 12 11)) },
  { key := { q := 18, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 12)) },
  { key := { q := 18, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 13)) },
  { key := { q := 18, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 14)) },
  { key := { q := 18, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 15)) },
  { key := { q := 18, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 16)) },
  { key := { q := 18, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 17)) },
  { key := { q := 18, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 18)) },
  { key := { q := 18, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 19)) },
  { key := { q := 18, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 20)) },
  { key := { q := 18, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 21)) },
  { key := { q := 18, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 22)) },
  { key := { q := 18, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 23)) },
  { key := { q := 18, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 24)) },
  { key := { q := 18, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 25)) },
  { key := { q := 18, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 26)) },
  { key := { q := 18, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 27)) },
  { key := { q := 18, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 28)) },
  { key := { q := 18, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 29)) },
  { key := { q := 18, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 30)) },
  { key := { q := 18, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 31)) },
  { key := { q := 18, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 32)) },
  { key := { q := 18, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 33)) },
  { key := { q := 18, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 34)) },
  { key := { q := 18, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 35)) },
  { key := { q := 18, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 36)) },
  { key := { q := 18, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 37)) },
  { key := { q := 18, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 38)) },
  { key := { q := 18, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 39)) },
  { key := { q := 18, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 40)) },
  { key := { q := 18, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 41)) },
  { key := { q := 18, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 42)) },
  { key := { q := 18, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 43)) },
  { key := { q := 18, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 44)) },
  { key := { q := 18, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 45)) },
  { key := { q := 18, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 46)) },
  { key := { q := 18, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 47)) },
  { key := { q := 18, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 12 48)) },
  { key := { q := 18, n := 13, r := 0 }
    lowerValue := 20822964865671168
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 13 0)) },
  { key := { q := 18, n := 13, r := 1 }
    lowerValue := 93797139034555
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 1))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 13, r := 2 }
    lowerValue := 914732246779
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 2))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 13, r := 3 }
    lowerValue := 14583113217
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 3))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 13, r := 4 }
    lowerValue := 340548364
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 13, r := 5 }
    lowerValue := 11026185
    upperValue := 5509980288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 5))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 13, r := 6 }
    lowerValue := 480805
    upperValue := 306110016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 6))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 13, r := 7 }
    lowerValue := 27859
    upperValue := 17006112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 13, r := 8 }
    lowerValue := 2142
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 13, r := 9 }
    lowerValue := 221
    upperValue := 52488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 13, r := 10 }
    lowerValue := 32
    upperValue := 2916
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 10))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1)))) },
  { key := { q := 18, n := 13, r := 11 }
    lowerValue := 18
    upperValue := 162
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 13 12)))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 18) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 13, r := 12 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 13 12)) },
  { key := { q := 18, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 13)) },
  { key := { q := 18, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 14)) },
  { key := { q := 18, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 15)) },
  { key := { q := 18, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 16)) },
  { key := { q := 18, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 17)) },
  { key := { q := 18, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 18)) },
  { key := { q := 18, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 19)) },
  { key := { q := 18, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 20)) },
  { key := { q := 18, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 21)) },
  { key := { q := 18, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 22)) },
  { key := { q := 18, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 23)) },
  { key := { q := 18, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 24)) },
  { key := { q := 18, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 25)) },
  { key := { q := 18, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 26)) },
  { key := { q := 18, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 27)) },
  { key := { q := 18, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 28)) },
  { key := { q := 18, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 29)) },
  { key := { q := 18, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 30)) },
  { key := { q := 18, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 31)) },
  { key := { q := 18, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 32)) },
  { key := { q := 18, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 33)) },
  { key := { q := 18, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 34)) },
  { key := { q := 18, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 35)) },
  { key := { q := 18, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 36)) },
  { key := { q := 18, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 37)) },
  { key := { q := 18, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 38)) },
  { key := { q := 18, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 39)) },
  { key := { q := 18, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 40)) },
  { key := { q := 18, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 41)) },
  { key := { q := 18, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 42)) },
  { key := { q := 18, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 43)) },
  { key := { q := 18, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 44)) },
  { key := { q := 18, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 45)) },
  { key := { q := 18, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 46)) },
  { key := { q := 18, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 47)) },
  { key := { q := 18, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 13 48)) },
  { key := { q := 18, n := 14, r := 0 }
    lowerValue := 374813367582081024
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 14 0)) },
  { key := { q := 18, n := 14, r := 1 }
    lowerValue := 1568256768125863
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 1))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 14, r := 2 }
    lowerValue := 14123647885375
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 2))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 14, r := 3 }
    lowerValue := 206523534789
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 14, r := 4 }
    lowerValue := 4387918987
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 14, r := 5 }
    lowerValue := 128011206
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 5))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 14, r := 6 }
    lowerValue := 4970137
    upperValue := 5509980288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 14, r := 7 }
    lowerValue := 252622
    upperValue := 306110016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 14, r := 8 }
    lowerValue := 16709
    upperValue := 17006112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 14, r := 9 }
    lowerValue := 1443
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 14, r := 10 }
    lowerValue := 165
    upperValue := 52488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 10))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 14, r := 11 }
    lowerValue := 26
    upperValue := 2916
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 11))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1)))) },
  { key := { q := 18, n := 14, r := 12 }
    lowerValue := 18
    upperValue := 162
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 14 13)))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 18) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 14, r := 13 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 14 13)) },
  { key := { q := 18, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 14)) },
  { key := { q := 18, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 15)) },
  { key := { q := 18, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 16)) },
  { key := { q := 18, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 17)) },
  { key := { q := 18, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 18)) },
  { key := { q := 18, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 19)) },
  { key := { q := 18, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 20)) },
  { key := { q := 18, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 21)) },
  { key := { q := 18, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 22)) },
  { key := { q := 18, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 23)) },
  { key := { q := 18, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 24)) },
  { key := { q := 18, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 25)) },
  { key := { q := 18, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 26)) },
  { key := { q := 18, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 27)) },
  { key := { q := 18, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 28)) },
  { key := { q := 18, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 29)) },
  { key := { q := 18, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 30)) },
  { key := { q := 18, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 31)) },
  { key := { q := 18, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 32)) },
  { key := { q := 18, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 33)) },
  { key := { q := 18, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 34)) },
  { key := { q := 18, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 35)) },
  { key := { q := 18, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 36)) },
  { key := { q := 18, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 37)) },
  { key := { q := 18, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 38)) },
  { key := { q := 18, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 39)) },
  { key := { q := 18, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 40)) },
  { key := { q := 18, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 41)) },
  { key := { q := 18, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 42)) },
  { key := { q := 18, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 43)) },
  { key := { q := 18, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 44)) },
  { key := { q := 18, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 45)) },
  { key := { q := 18, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 46)) },
  { key := { q := 18, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 47)) },
  { key := { q := 18, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 14 48)) },
  { key := { q := 18, n := 15, r := 0 }
    lowerValue := 6746640616477458432
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 15 0)) },
  { key := { q := 18, n := 15, r := 1 }
    lowerValue := 26354064908115072
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 1))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 15, r := 2 }
    lowerValue := 220471246576173
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 2))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 15, r := 3 }
    lowerValue := 2977313759690
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 15, r := 4 }
    lowerValue := 58024546874
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 15, r := 5 }
    lowerValue := 1540292774
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 15, r := 6 }
    lowerValue := 53891798
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 15, r := 7 }
    lowerValue := 2439382
    upperValue := 5509980288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 15, r := 8 }
    lowerValue := 141574
    upperValue := 306110016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 15, r := 9 }
    lowerValue := 10523
    upperValue := 17006112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 15, r := 10 }
    lowerValue := 1008
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 10))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 15, r := 11 }
    lowerValue := 127
    upperValue := 52488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 11))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 15, r := 12 }
    lowerValue := 22
    upperValue := 2916
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 12))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1)))) },
  { key := { q := 18, n := 15, r := 13 }
    lowerValue := 18
    upperValue := 162
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 15 14)))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 18) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 15, r := 14 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 15 14)) },
  { key := { q := 18, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 15)) },
  { key := { q := 18, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 16)) },
  { key := { q := 18, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 17)) },
  { key := { q := 18, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 18)) },
  { key := { q := 18, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 19)) },
  { key := { q := 18, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 20)) },
  { key := { q := 18, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 21)) },
  { key := { q := 18, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 22)) },
  { key := { q := 18, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 23)) },
  { key := { q := 18, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 24)) },
  { key := { q := 18, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 25)) },
  { key := { q := 18, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 26)) },
  { key := { q := 18, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 27)) },
  { key := { q := 18, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 28)) },
  { key := { q := 18, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 29)) },
  { key := { q := 18, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 30)) },
  { key := { q := 18, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 31)) },
  { key := { q := 18, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 32)) },
  { key := { q := 18, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 33)) },
  { key := { q := 18, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 34)) },
  { key := { q := 18, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 35)) },
  { key := { q := 18, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 36)) },
  { key := { q := 18, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 37)) },
  { key := { q := 18, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 38)) },
  { key := { q := 18, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 39)) },
  { key := { q := 18, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 40)) },
  { key := { q := 18, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 41)) },
  { key := { q := 18, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 42)) },
  { key := { q := 18, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 43)) },
  { key := { q := 18, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 44)) },
  { key := { q := 18, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 45)) },
  { key := { q := 18, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 46)) }]

end CoveringCodes.Database
