import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 165. Do not edit manually.

def precomputedTable_chunk_165 : Array AnyBoundEntry := #[
  { key := { q := 17, n := 8, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 41)) },
  { key := { q := 17, n := 8, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 42)) },
  { key := { q := 17, n := 8, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 43)) },
  { key := { q := 17, n := 8, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 44)) },
  { key := { q := 17, n := 8, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 45)) },
  { key := { q := 17, n := 8, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 46)) },
  { key := { q := 17, n := 8, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 47)) },
  { key := { q := 17, n := 8, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 48)) },
  { key := { q := 17, n := 9, r := 0 }
    lowerValue := 118587876497
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 9 0)) },
  { key := { q := 17, n := 9, r := 1 }
    lowerValue := 817847425
    upperValue := 3499947505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 1))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 9, r := 2 }
    lowerValue := 12668292
    upperValue := 205879265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 2))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 9, r := 3 }
    lowerValue := 335540
    upperValue := 12110545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 3))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 9, r := 4 }
    lowerValue := 13772
    upperValue := 712385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 4))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 9, r := 5 }
    lowerValue := 843
    upperValue := 41905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 9, r := 6 }
    lowerValue := 77
    upperValue := 2465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 6))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1)))) },
  { key := { q := 17, n := 9, r := 7 }
    lowerValue := 17
    upperValue := 145
    lowerTrace := (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 9 8)))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 17) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 9, r := 8 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 9 8))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 9 8)) },
  { key := { q := 17, n := 9, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 9)) },
  { key := { q := 17, n := 9, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 10)) },
  { key := { q := 17, n := 9, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 11)) },
  { key := { q := 17, n := 9, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 12)) },
  { key := { q := 17, n := 9, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 13)) },
  { key := { q := 17, n := 9, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 14)) },
  { key := { q := 17, n := 9, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 15)) },
  { key := { q := 17, n := 9, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 16)) },
  { key := { q := 17, n := 9, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 17)) },
  { key := { q := 17, n := 9, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 18)) },
  { key := { q := 17, n := 9, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 19)) },
  { key := { q := 17, n := 9, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 20)) },
  { key := { q := 17, n := 9, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 21)) },
  { key := { q := 17, n := 9, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 22)) },
  { key := { q := 17, n := 9, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 23)) },
  { key := { q := 17, n := 9, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 24)) },
  { key := { q := 17, n := 9, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 25)) },
  { key := { q := 17, n := 9, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 26)) },
  { key := { q := 17, n := 9, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 27)) },
  { key := { q := 17, n := 9, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 28)) },
  { key := { q := 17, n := 9, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 29)) },
  { key := { q := 17, n := 9, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 30)) },
  { key := { q := 17, n := 9, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 31)) },
  { key := { q := 17, n := 9, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 32)) },
  { key := { q := 17, n := 9, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 33)) },
  { key := { q := 17, n := 9, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 34)) },
  { key := { q := 17, n := 9, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 35)) },
  { key := { q := 17, n := 9, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 36)) },
  { key := { q := 17, n := 9, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 37)) },
  { key := { q := 17, n := 9, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 38)) },
  { key := { q := 17, n := 9, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 39)) },
  { key := { q := 17, n := 9, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 40)) },
  { key := { q := 17, n := 9, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 41)) },
  { key := { q := 17, n := 9, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 42)) },
  { key := { q := 17, n := 9, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 43)) },
  { key := { q := 17, n := 9, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 44)) },
  { key := { q := 17, n := 9, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 45)) },
  { key := { q := 17, n := 9, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 46)) },
  { key := { q := 17, n := 9, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 47)) },
  { key := { q := 17, n := 9, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 9 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 9 48)) },
  { key := { q := 17, n := 10, r := 0 }
    lowerValue := 2015993900449
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 10 0)) },
  { key := { q := 17, n := 10, r := 1 }
    lowerValue := 12521701246
    upperValue := 59499107585
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 1))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 10, r := 2 }
    lowerValue := 172587442
    upperValue := 3499947505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 2))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 10, r := 3 }
    lowerValue := 4006340
    upperValue := 205879265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 3))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 10, r := 4 }
    lowerValue := 141317
    upperValue := 12110545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 4))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 10, r := 5 }
    lowerValue := 7239
    upperValue := 712385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 5))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 10, r := 6 }
    lowerValue := 531
    upperValue := 41905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 6))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 10, r := 7 }
    lowerValue := 56
    upperValue := 2465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 7))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1)))) },
  { key := { q := 17, n := 10, r := 8 }
    lowerValue := 17
    upperValue := 145
    lowerTrace := (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 10 9)))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 17) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 10, r := 9 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 10 9))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 10 9)) },
  { key := { q := 17, n := 10, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 10)) },
  { key := { q := 17, n := 10, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 11)) },
  { key := { q := 17, n := 10, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 12)) },
  { key := { q := 17, n := 10, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 13)) },
  { key := { q := 17, n := 10, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 14)) },
  { key := { q := 17, n := 10, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 15)) },
  { key := { q := 17, n := 10, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 16)) },
  { key := { q := 17, n := 10, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 17)) },
  { key := { q := 17, n := 10, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 18)) },
  { key := { q := 17, n := 10, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 19)) },
  { key := { q := 17, n := 10, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 20)) },
  { key := { q := 17, n := 10, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 21)) },
  { key := { q := 17, n := 10, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 22)) },
  { key := { q := 17, n := 10, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 23)) },
  { key := { q := 17, n := 10, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 24)) },
  { key := { q := 17, n := 10, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 25)) },
  { key := { q := 17, n := 10, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 26)) },
  { key := { q := 17, n := 10, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 27)) },
  { key := { q := 17, n := 10, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 28)) },
  { key := { q := 17, n := 10, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 29)) },
  { key := { q := 17, n := 10, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 30)) },
  { key := { q := 17, n := 10, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 31)) },
  { key := { q := 17, n := 10, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 32)) },
  { key := { q := 17, n := 10, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 33)) },
  { key := { q := 17, n := 10, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 34)) },
  { key := { q := 17, n := 10, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 35)) },
  { key := { q := 17, n := 10, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 36)) },
  { key := { q := 17, n := 10, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 37)) },
  { key := { q := 17, n := 10, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 38)) },
  { key := { q := 17, n := 10, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 39)) },
  { key := { q := 17, n := 10, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 40)) },
  { key := { q := 17, n := 10, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 41)) },
  { key := { q := 17, n := 10, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 42)) },
  { key := { q := 17, n := 10, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 43)) },
  { key := { q := 17, n := 10, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 44)) },
  { key := { q := 17, n := 10, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 45)) },
  { key := { q := 17, n := 10, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 46)) },
  { key := { q := 17, n := 10, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 47)) },
  { key := { q := 17, n := 10, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 10 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 10 48)) },
  { key := { q := 17, n := 11, r := 0 }
    lowerValue := 34271896307633
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 11 0)) },
  { key := { q := 17, n := 11, r := 1 }
    lowerValue := 193626532812
    upperValue := 1011484828945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 1))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 11, r := 2 }
    lowerValue := 2403864510
    upperValue := 59499107585
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 2))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 11, r := 3 }
    lowerValue := 49662434
    upperValue := 3499947505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 3))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 11, r := 4 }
    lowerValue := 1535688
    upperValue := 205879265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 4))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 11, r := 5 }
    lowerValue := 67630
    upperValue := 12110545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 5))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 11, r := 6 }
    lowerValue := 4151
    upperValue := 712385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 6))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 11, r := 7 }
    lowerValue := 354
    upperValue := 41905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 11, r := 8 }
    lowerValue := 43
    upperValue := 2465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 8))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1)))) },
  { key := { q := 17, n := 11, r := 9 }
    lowerValue := 17
    upperValue := 145
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 11 10)))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 17) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 11, r := 10 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 11 10)) },
  { key := { q := 17, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 11)) },
  { key := { q := 17, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 12)) },
  { key := { q := 17, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 13)) },
  { key := { q := 17, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 14)) },
  { key := { q := 17, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 15)) },
  { key := { q := 17, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 16)) },
  { key := { q := 17, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 17)) },
  { key := { q := 17, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 18)) },
  { key := { q := 17, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 19)) },
  { key := { q := 17, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 20)) },
  { key := { q := 17, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 21)) },
  { key := { q := 17, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 22)) },
  { key := { q := 17, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 23)) },
  { key := { q := 17, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 24)) },
  { key := { q := 17, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 25)) },
  { key := { q := 17, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 26)) },
  { key := { q := 17, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 27)) },
  { key := { q := 17, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 28)) },
  { key := { q := 17, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 29)) },
  { key := { q := 17, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 30)) },
  { key := { q := 17, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 31)) },
  { key := { q := 17, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 32)) },
  { key := { q := 17, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 33)) },
  { key := { q := 17, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 34)) },
  { key := { q := 17, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 35)) },
  { key := { q := 17, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 36)) },
  { key := { q := 17, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 37)) },
  { key := { q := 17, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 38)) },
  { key := { q := 17, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 39)) },
  { key := { q := 17, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 40)) },
  { key := { q := 17, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 41)) },
  { key := { q := 17, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 42)) },
  { key := { q := 17, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 43)) },
  { key := { q := 17, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 44)) },
  { key := { q := 17, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 45)) },
  { key := { q := 17, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 46)) },
  { key := { q := 17, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 47)) },
  { key := { q := 17, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 11 48)) },
  { key := { q := 17, n := 12, r := 0 }
    lowerValue := 582622237229761
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 12 0)) },
  { key := { q := 17, n := 12, r := 1 }
    lowerValue := 3018768068548
    upperValue := 17195242092065
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 1))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 12, r := 2 }
    lowerValue := 34093407293
    upperValue := 1011484828945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 2))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 12, r := 3 }
    lowerValue := 634520286
    upperValue := 59499107585
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 3))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 12, r := 4 }
    lowerValue := 17465466
    upperValue := 3499947505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 12, r := 5 }
    lowerValue := 674464
    upperValue := 205879265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 5))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 12, r := 6 }
    lowerValue := 35600
    upperValue := 12110545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 12, r := 7 }
    lowerValue := 2545
    upperValue := 712385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 12, r := 8 }
    lowerValue := 248
    upperValue := 41905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 12, r := 9 }
    lowerValue := 34
    upperValue := 2465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 9))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1)))) },
  { key := { q := 17, n := 12, r := 10 }
    lowerValue := 17
    upperValue := 145
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 12 11)))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 17) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 12, r := 11 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 12 11)) },
  { key := { q := 17, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 12)) },
  { key := { q := 17, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 13)) },
  { key := { q := 17, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 14)) },
  { key := { q := 17, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 15)) },
  { key := { q := 17, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 16)) },
  { key := { q := 17, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 17)) },
  { key := { q := 17, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 18)) },
  { key := { q := 17, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 19)) },
  { key := { q := 17, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 20)) },
  { key := { q := 17, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 21)) },
  { key := { q := 17, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 22)) },
  { key := { q := 17, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 23)) },
  { key := { q := 17, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 24)) },
  { key := { q := 17, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 25)) },
  { key := { q := 17, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 26)) },
  { key := { q := 17, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 27)) },
  { key := { q := 17, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 28)) },
  { key := { q := 17, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 29)) },
  { key := { q := 17, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 30)) },
  { key := { q := 17, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 31)) },
  { key := { q := 17, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 32)) },
  { key := { q := 17, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 33)) },
  { key := { q := 17, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 34)) },
  { key := { q := 17, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 35)) },
  { key := { q := 17, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 36)) },
  { key := { q := 17, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 37)) },
  { key := { q := 17, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 38)) },
  { key := { q := 17, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 39)) },
  { key := { q := 17, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 40)) },
  { key := { q := 17, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 41)) },
  { key := { q := 17, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 42)) },
  { key := { q := 17, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 43)) },
  { key := { q := 17, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 44)) },
  { key := { q := 17, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 45)) },
  { key := { q := 17, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 46)) },
  { key := { q := 17, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 47)) },
  { key := { q := 17, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 12 48)) },
  { key := { q := 17, n := 13, r := 0 }
    lowerValue := 9904578032905937
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 13 0)) },
  { key := { q := 17, n := 13, r := 1 }
    lowerValue := 47390325516297
    upperValue := 292319115565105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 1))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 13, r := 2 }
    lowerValue := 490884573173
    upperValue := 17195242092065
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 2))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 13, r := 3 }
    lowerValue := 8311768836
    upperValue := 1011484828945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 3))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 13, r := 4 }
    lowerValue := 206131202
    upperValue := 59499107585
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 13, r := 5 }
    lowerValue := 7087014
    upperValue := 3499947505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 5))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 13, r := 6 }
    lowerValue := 328105
    upperValue := 205879265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 6))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 13, r := 7 }
    lowerValue := 20180
    upperValue := 12110545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 13, r := 8 }
    lowerValue := 1646
    upperValue := 712385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 13, r := 9 }
    lowerValue := 180
    upperValue := 41905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 13, r := 10 }
    lowerValue := 27
    upperValue := 2465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 10))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1)))) },
  { key := { q := 17, n := 13, r := 11 }
    lowerValue := 17
    upperValue := 145
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 13 12)))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 17) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 13, r := 12 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 13 12)) },
  { key := { q := 17, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 13)) },
  { key := { q := 17, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 14)) },
  { key := { q := 17, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 15)) },
  { key := { q := 17, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 16)) },
  { key := { q := 17, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 17)) },
  { key := { q := 17, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 18)) },
  { key := { q := 17, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 19)) },
  { key := { q := 17, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 20)) },
  { key := { q := 17, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 21)) },
  { key := { q := 17, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 22)) },
  { key := { q := 17, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 23)) },
  { key := { q := 17, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 24)) },
  { key := { q := 17, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 25)) },
  { key := { q := 17, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 26)) },
  { key := { q := 17, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 27)) },
  { key := { q := 17, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 28)) },
  { key := { q := 17, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 29)) },
  { key := { q := 17, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 30)) },
  { key := { q := 17, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 31)) },
  { key := { q := 17, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 32)) },
  { key := { q := 17, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 33)) },
  { key := { q := 17, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 34)) },
  { key := { q := 17, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 35)) },
  { key := { q := 17, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 36)) },
  { key := { q := 17, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 37)) },
  { key := { q := 17, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 38)) },
  { key := { q := 17, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 39)) },
  { key := { q := 17, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 40)) },
  { key := { q := 17, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 41)) },
  { key := { q := 17, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 42)) },
  { key := { q := 17, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 43)) },
  { key := { q := 17, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 44)) },
  { key := { q := 17, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 45)) }]

end CoveringCodes.Database
