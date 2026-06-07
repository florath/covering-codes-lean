import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 126. Do not edit manually.

def precomputedTable_chunk_126 : Array AnyBoundEntry := #[
  { key := { q := 13, n := 5, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 5 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 5 42)) },
  { key := { q := 13, n := 5, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 5 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 5 43)) },
  { key := { q := 13, n := 5, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 5 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 5 44)) },
  { key := { q := 13, n := 5, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 5 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 5 45)) },
  { key := { q := 13, n := 5, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 5 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 5 46)) },
  { key := { q := 13, n := 5, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 5 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 5 47)) },
  { key := { q := 13, n := 5, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 5 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 5 48)) },
  { key := { q := 13, n := 6, r := 0 }
    lowerValue := 4826809
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 6 0)) },
  { key := { q := 13, n := 6, r := 1 }
    lowerValue := 66121
    upperValue := 186745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 1))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 6, r := 2 }
    lowerValue := 2162
    upperValue := 14365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 2))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 6, r := 3 }
    lowerValue := 132
    upperValue := 1105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 3))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1)))) },
  { key := { q := 13, n := 6, r := 4 }
    lowerValue := 14
    upperValue := 85
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 4))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 13) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 6, r := 5 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 6 5))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 6 5)) },
  { key := { q := 13, n := 6, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 6)) },
  { key := { q := 13, n := 6, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 7)) },
  { key := { q := 13, n := 6, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 8)) },
  { key := { q := 13, n := 6, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 9)) },
  { key := { q := 13, n := 6, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 10)) },
  { key := { q := 13, n := 6, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 11)) },
  { key := { q := 13, n := 6, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 12)) },
  { key := { q := 13, n := 6, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 13)) },
  { key := { q := 13, n := 6, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 14)) },
  { key := { q := 13, n := 6, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 15)) },
  { key := { q := 13, n := 6, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 16)) },
  { key := { q := 13, n := 6, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 17)) },
  { key := { q := 13, n := 6, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 18)) },
  { key := { q := 13, n := 6, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 19)) },
  { key := { q := 13, n := 6, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 20)) },
  { key := { q := 13, n := 6, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 21)) },
  { key := { q := 13, n := 6, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 22)) },
  { key := { q := 13, n := 6, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 23)) },
  { key := { q := 13, n := 6, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 24)) },
  { key := { q := 13, n := 6, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 25)) },
  { key := { q := 13, n := 6, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 26)) },
  { key := { q := 13, n := 6, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 27)) },
  { key := { q := 13, n := 6, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 28)) },
  { key := { q := 13, n := 6, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 29)) },
  { key := { q := 13, n := 6, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 30)) },
  { key := { q := 13, n := 6, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 31)) },
  { key := { q := 13, n := 6, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 32)) },
  { key := { q := 13, n := 6, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 33)) },
  { key := { q := 13, n := 6, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 34)) },
  { key := { q := 13, n := 6, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 35)) },
  { key := { q := 13, n := 6, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 36)) },
  { key := { q := 13, n := 6, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 37)) },
  { key := { q := 13, n := 6, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 38)) },
  { key := { q := 13, n := 6, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 39)) },
  { key := { q := 13, n := 6, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 40)) },
  { key := { q := 13, n := 6, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 41)) },
  { key := { q := 13, n := 6, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 42)) },
  { key := { q := 13, n := 6, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 43)) },
  { key := { q := 13, n := 6, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 44)) },
  { key := { q := 13, n := 6, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 45)) },
  { key := { q := 13, n := 6, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 46)) },
  { key := { q := 13, n := 6, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 47)) },
  { key := { q := 13, n := 6, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 6 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 6 48)) },
  { key := { q := 13, n := 7, r := 0 }
    lowerValue := 62748517
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 7 0)) },
  { key := { q := 13, n := 7, r := 1 }
    lowerValue := 738218
    upperValue := 2427685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 1))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 7, r := 2 }
    lowerValue := 20183
    upperValue := 186745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 2))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 7, r := 3 }
    lowerValue := 987
    upperValue := 14365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 7, r := 4 }
    lowerValue := 80
    upperValue := 1105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 4))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1)))) },
  { key := { q := 13, n := 7, r := 5 }
    lowerValue := 13
    upperValue := 85
    lowerTrace := (.radiusBack (by decide : 5 ≤ 6) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 7 6)))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 13) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 7, r := 6 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 7 6))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 7 6)) },
  { key := { q := 13, n := 7, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 7)) },
  { key := { q := 13, n := 7, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 8)) },
  { key := { q := 13, n := 7, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 9)) },
  { key := { q := 13, n := 7, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 10)) },
  { key := { q := 13, n := 7, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 11)) },
  { key := { q := 13, n := 7, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 12)) },
  { key := { q := 13, n := 7, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 13)) },
  { key := { q := 13, n := 7, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 14)) },
  { key := { q := 13, n := 7, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 15)) },
  { key := { q := 13, n := 7, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 16)) },
  { key := { q := 13, n := 7, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 17)) },
  { key := { q := 13, n := 7, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 18)) },
  { key := { q := 13, n := 7, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 19)) },
  { key := { q := 13, n := 7, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 20)) },
  { key := { q := 13, n := 7, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 21)) },
  { key := { q := 13, n := 7, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 22)) },
  { key := { q := 13, n := 7, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 23)) },
  { key := { q := 13, n := 7, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 24)) },
  { key := { q := 13, n := 7, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 25)) },
  { key := { q := 13, n := 7, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 26)) },
  { key := { q := 13, n := 7, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 27)) },
  { key := { q := 13, n := 7, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 28)) },
  { key := { q := 13, n := 7, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 29)) },
  { key := { q := 13, n := 7, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 30)) },
  { key := { q := 13, n := 7, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 31)) },
  { key := { q := 13, n := 7, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 32)) },
  { key := { q := 13, n := 7, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 33)) },
  { key := { q := 13, n := 7, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 34)) },
  { key := { q := 13, n := 7, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 35)) },
  { key := { q := 13, n := 7, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 36)) },
  { key := { q := 13, n := 7, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 37)) },
  { key := { q := 13, n := 7, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 38)) },
  { key := { q := 13, n := 7, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 39)) },
  { key := { q := 13, n := 7, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 40)) },
  { key := { q := 13, n := 7, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 41)) },
  { key := { q := 13, n := 7, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 42)) },
  { key := { q := 13, n := 7, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 43)) },
  { key := { q := 13, n := 7, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 44)) },
  { key := { q := 13, n := 7, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 45)) },
  { key := { q := 13, n := 7, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 46)) },
  { key := { q := 13, n := 7, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 47)) },
  { key := { q := 13, n := 7, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 7 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 7 48)) },
  { key := { q := 13, n := 8, r := 0 }
    lowerValue := 815730721
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 8 0)) },
  { key := { q := 13, n := 8, r := 1 }
    lowerValue := 8409596
    upperValue := 31559905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 1))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 8, r := 2 }
    lowerValue := 197562
    upperValue := 2427685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 2))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 8, r := 3 }
    lowerValue := 8085
    upperValue := 186745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 8, r := 4 }
    lowerValue := 526
    upperValue := 14365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 4))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 8, r := 5 }
    lowerValue := 53
    upperValue := 1105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1)))) },
  { key := { q := 13, n := 8, r := 6 }
    lowerValue := 13
    upperValue := 85
    lowerTrace := (.radiusBack (by decide : 6 ≤ 7) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 8 7)))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 13) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 8, r := 7 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 8 7))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 8 7)) },
  { key := { q := 13, n := 8, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 8)) },
  { key := { q := 13, n := 8, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 9)) },
  { key := { q := 13, n := 8, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 10)) },
  { key := { q := 13, n := 8, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 11)) },
  { key := { q := 13, n := 8, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 12)) },
  { key := { q := 13, n := 8, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 13)) },
  { key := { q := 13, n := 8, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 14)) },
  { key := { q := 13, n := 8, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 15)) },
  { key := { q := 13, n := 8, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 16)) },
  { key := { q := 13, n := 8, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 17)) },
  { key := { q := 13, n := 8, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 18)) },
  { key := { q := 13, n := 8, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 19)) },
  { key := { q := 13, n := 8, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 20)) },
  { key := { q := 13, n := 8, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 21)) },
  { key := { q := 13, n := 8, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 22)) },
  { key := { q := 13, n := 8, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 23)) },
  { key := { q := 13, n := 8, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 24)) },
  { key := { q := 13, n := 8, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 25)) },
  { key := { q := 13, n := 8, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 26)) },
  { key := { q := 13, n := 8, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 27)) },
  { key := { q := 13, n := 8, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 28)) },
  { key := { q := 13, n := 8, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 29)) },
  { key := { q := 13, n := 8, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 30)) },
  { key := { q := 13, n := 8, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 31)) },
  { key := { q := 13, n := 8, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 32)) },
  { key := { q := 13, n := 8, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 33)) },
  { key := { q := 13, n := 8, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 34)) },
  { key := { q := 13, n := 8, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 35)) },
  { key := { q := 13, n := 8, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 36)) },
  { key := { q := 13, n := 8, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 37)) },
  { key := { q := 13, n := 8, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 38)) },
  { key := { q := 13, n := 8, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 39)) },
  { key := { q := 13, n := 8, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 40)) },
  { key := { q := 13, n := 8, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 41)) },
  { key := { q := 13, n := 8, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 42)) },
  { key := { q := 13, n := 8, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 43)) },
  { key := { q := 13, n := 8, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 44)) },
  { key := { q := 13, n := 8, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 45)) },
  { key := { q := 13, n := 8, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 46)) },
  { key := { q := 13, n := 8, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 47)) },
  { key := { q := 13, n := 8, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 8 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 8 48)) },
  { key := { q := 13, n := 9, r := 0 }
    lowerValue := 10604499373
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 9 0)) },
  { key := { q := 13, n := 9, r := 1 }
    lowerValue := 97288986
    upperValue := 410278765
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 1))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 9, r := 2 }
    lowerValue := 2003496
    upperValue := 31559905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 2))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 9, r := 3 }
    lowerValue := 70488
    upperValue := 2427685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 3))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 9, r := 4 }
    lowerValue := 3838
    upperValue := 186745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 4))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 9, r := 5 }
    lowerValue := 311
    upperValue := 14365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 9, r := 6 }
    lowerValue := 38
    upperValue := 1105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 6))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1)))) },
  { key := { q := 13, n := 9, r := 7 }
    lowerValue := 13
    upperValue := 85
    lowerTrace := (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 9 8)))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 13) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 9, r := 8 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 9 8))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 9 8)) },
  { key := { q := 13, n := 9, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 9)) },
  { key := { q := 13, n := 9, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 10)) },
  { key := { q := 13, n := 9, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 11)) },
  { key := { q := 13, n := 9, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 12)) },
  { key := { q := 13, n := 9, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 13)) },
  { key := { q := 13, n := 9, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 14)) },
  { key := { q := 13, n := 9, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 15)) },
  { key := { q := 13, n := 9, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 16)) },
  { key := { q := 13, n := 9, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 17)) },
  { key := { q := 13, n := 9, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 18)) },
  { key := { q := 13, n := 9, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 19)) },
  { key := { q := 13, n := 9, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 20)) },
  { key := { q := 13, n := 9, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 21)) },
  { key := { q := 13, n := 9, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 22)) },
  { key := { q := 13, n := 9, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 23)) },
  { key := { q := 13, n := 9, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 24)) },
  { key := { q := 13, n := 9, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 25)) },
  { key := { q := 13, n := 9, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 26)) },
  { key := { q := 13, n := 9, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 27)) },
  { key := { q := 13, n := 9, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 28)) },
  { key := { q := 13, n := 9, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 29)) },
  { key := { q := 13, n := 9, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 30)) },
  { key := { q := 13, n := 9, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 31)) },
  { key := { q := 13, n := 9, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 32)) },
  { key := { q := 13, n := 9, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 33)) },
  { key := { q := 13, n := 9, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 34)) },
  { key := { q := 13, n := 9, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 35)) },
  { key := { q := 13, n := 9, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 36)) },
  { key := { q := 13, n := 9, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 37)) },
  { key := { q := 13, n := 9, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 38)) },
  { key := { q := 13, n := 9, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 39)) },
  { key := { q := 13, n := 9, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 40)) },
  { key := { q := 13, n := 9, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 41)) },
  { key := { q := 13, n := 9, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 42)) },
  { key := { q := 13, n := 9, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 43)) },
  { key := { q := 13, n := 9, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 44)) },
  { key := { q := 13, n := 9, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 45)) },
  { key := { q := 13, n := 9, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 46)) },
  { key := { q := 13, n := 9, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 47)) },
  { key := { q := 13, n := 9, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 9 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 9 48)) },
  { key := { q := 13, n := 10, r := 0 }
    lowerValue := 137858491849
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 10 0)) },
  { key := { q := 13, n := 10, r := 1 }
    lowerValue := 1139326379
    upperValue := 5333623945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 1))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 10, r := 2 }
    lowerValue := 20884486
    upperValue := 410278765
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 2))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 10, r := 3 }
    lowerValue := 644316
    upperValue := 31559905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 3))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 10, r := 4 }
    lowerValue := 30176
    upperValue := 2427685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 4))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 10, r := 5 }
    lowerValue := 2050
    upperValue := 186745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 5))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 10, r := 6 }
    lowerValue := 199
    upperValue := 14365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 6))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 10, r := 7 }
    lowerValue := 28
    upperValue := 1105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 7))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1)))) },
  { key := { q := 13, n := 10, r := 8 }
    lowerValue := 13
    upperValue := 85
    lowerTrace := (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 10 9)))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 13) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 10, r := 9 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 10 9))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 10 9)) },
  { key := { q := 13, n := 10, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 10)) },
  { key := { q := 13, n := 10, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 11)) },
  { key := { q := 13, n := 10, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 12)) },
  { key := { q := 13, n := 10, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 13)) },
  { key := { q := 13, n := 10, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 14)) },
  { key := { q := 13, n := 10, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 15)) },
  { key := { q := 13, n := 10, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 16)) },
  { key := { q := 13, n := 10, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 17)) },
  { key := { q := 13, n := 10, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 18)) },
  { key := { q := 13, n := 10, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 19)) },
  { key := { q := 13, n := 10, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 20)) },
  { key := { q := 13, n := 10, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 21)) },
  { key := { q := 13, n := 10, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 22)) },
  { key := { q := 13, n := 10, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 23)) },
  { key := { q := 13, n := 10, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 24)) },
  { key := { q := 13, n := 10, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 25)) },
  { key := { q := 13, n := 10, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 26)) },
  { key := { q := 13, n := 10, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 27)) },
  { key := { q := 13, n := 10, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 28)) },
  { key := { q := 13, n := 10, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 29)) },
  { key := { q := 13, n := 10, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 30)) },
  { key := { q := 13, n := 10, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 31)) },
  { key := { q := 13, n := 10, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 32)) },
  { key := { q := 13, n := 10, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 33)) },
  { key := { q := 13, n := 10, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 34)) },
  { key := { q := 13, n := 10, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 35)) },
  { key := { q := 13, n := 10, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 36)) },
  { key := { q := 13, n := 10, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 37)) },
  { key := { q := 13, n := 10, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 38)) },
  { key := { q := 13, n := 10, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 39)) },
  { key := { q := 13, n := 10, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 40)) },
  { key := { q := 13, n := 10, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 41)) },
  { key := { q := 13, n := 10, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 42)) },
  { key := { q := 13, n := 10, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 43)) },
  { key := { q := 13, n := 10, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 44)) },
  { key := { q := 13, n := 10, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 45)) },
  { key := { q := 13, n := 10, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 46)) }]

end CoveringCodes.Database
